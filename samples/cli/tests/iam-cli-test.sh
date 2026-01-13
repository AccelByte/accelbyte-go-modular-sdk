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
    --forceDelete 'false' \
    --body '{"modules": [{"docLink": "a1z6d2zP", "groups": [{"group": "QuwuDqGt", "groupId": "hiPIHHPP", "permissions": [{"allowedActions": [57, 66, 62], "resource": "09qv1UIU"}, {"allowedActions": [100, 48, 80], "resource": "pARHnnP6"}, {"allowedActions": [1, 79, 82], "resource": "Yh5y0AaP"}]}, {"group": "Ecjjv7V5", "groupId": "dNgDK52q", "permissions": [{"allowedActions": [78, 49, 88], "resource": "Tak93VBA"}, {"allowedActions": [95, 72, 47], "resource": "JS1atkWC"}, {"allowedActions": [43, 43, 13], "resource": "A7Q7HE51"}]}, {"group": "4GojFJ3z", "groupId": "wVSgPpEn", "permissions": [{"allowedActions": [10, 81, 88], "resource": "xAh7m3Rj"}, {"allowedActions": [52, 90, 98], "resource": "sglyCd8Z"}, {"allowedActions": [72, 33, 78], "resource": "oDXee4yb"}]}], "module": "qGsIGmMm", "moduleId": "3DTkW3cB"}, {"docLink": "GMDrq1dy", "groups": [{"group": "9qHLHzQh", "groupId": "tZvUUSL7", "permissions": [{"allowedActions": [17, 39, 50], "resource": "h4ZpV37L"}, {"allowedActions": [18, 12, 10], "resource": "2kmMm67l"}, {"allowedActions": [49, 71, 23], "resource": "M0EyiZI1"}]}, {"group": "XfXJZzcQ", "groupId": "1hS7KTuF", "permissions": [{"allowedActions": [86, 77, 48], "resource": "UboyFxWu"}, {"allowedActions": [20, 24, 4], "resource": "MT8faApb"}, {"allowedActions": [50, 29, 59], "resource": "WuSQ7W21"}]}, {"group": "3oe9QX35", "groupId": "uQnwe6I2", "permissions": [{"allowedActions": [13, 69, 91], "resource": "jxJMl1hl"}, {"allowedActions": [48, 71, 56], "resource": "kmnSJP2B"}, {"allowedActions": [67, 60, 88], "resource": "8EErxky3"}]}], "module": "Ka4Vq8dl", "moduleId": "XyQE7bpG"}, {"docLink": "3xp4qYsH", "groups": [{"group": "QiCWWphA", "groupId": "fHrTgpu5", "permissions": [{"allowedActions": [100, 12, 100], "resource": "EeFAX5PL"}, {"allowedActions": [13, 28, 5], "resource": "pxj3qoz6"}, {"allowedActions": [63, 28, 17], "resource": "y3RZLmJA"}]}, {"group": "VXJrSHwK", "groupId": "AGtIo83u", "permissions": [{"allowedActions": [82, 92, 63], "resource": "EoQKWHFl"}, {"allowedActions": [54, 22, 85], "resource": "OC2pjtMG"}, {"allowedActions": [3, 61, 47], "resource": "VexSTnJG"}]}, {"group": "oZFfetta", "groupId": "hqHKgEN8", "permissions": [{"allowedActions": [27, 58, 29], "resource": "wsgi3LNU"}, {"allowedActions": [41, 3, 87], "resource": "lK1ah1Fl"}, {"allowedActions": [83, 16, 18], "resource": "kBjBy5as"}]}], "module": "qt9zjV90", "moduleId": "arLcdqXa"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "f6VZUm84", "moduleId": "Qypj1LK5"}' \
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
    --body '[{"field": "60kWOs4C", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["JQInYv19", "tZz3oaS1", "gYxhHJsF"], "preferRegex": false, "regex": "f2s5kSjZ"}, "blockedWord": ["oG3XzILs", "pMi2srVd", "m5KhiVgt"], "description": [{"language": "z7dVrZ0G", "message": ["ajr3lHAg", "fOZfDjHS", "7kOxld9W"]}, {"language": "gp8lIASH", "message": ["8rHOhqxb", "Mmic5ZDZ", "UCHc8kHJ"]}, {"language": "72afOM8G", "message": ["DYVOcYJl", "Y5thpSES", "87gWty7n"]}], "isCustomRegex": false, "letterCase": "rckAwmQr", "maxLength": 46, "maxRepeatingAlphaNum": 44, "maxRepeatingSpecialCharacter": 26, "minCharType": 12, "minLength": 27, "profanityFilter": "BprCEFih", "regex": "w38rVHXR", "specialCharacterLocation": "PjS5xIdu", "specialCharacters": ["lZzQk5Xh", "6RuCyFyL", "fIdkvmu6"]}}, {"field": "UXoWx7ny", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["lYvxge4Q", "VVWABMke", "uldmIYPw"], "preferRegex": false, "regex": "C5LIkwMz"}, "blockedWord": ["IKtRDuYy", "onkg9Foh", "M3vreFil"], "description": [{"language": "rnqNNfex", "message": ["rg5O2AHB", "NABv5GJu", "3N8Vq7wH"]}, {"language": "HJZOtlLl", "message": ["YRJxLAxZ", "2lJavWFY", "peiJpDl3"]}, {"language": "vkl4QEWO", "message": ["gxUhhbPW", "ztVwPTJc", "cqqPlnTa"]}], "isCustomRegex": true, "letterCase": "1nL1X2a1", "maxLength": 8, "maxRepeatingAlphaNum": 82, "maxRepeatingSpecialCharacter": 92, "minCharType": 87, "minLength": 19, "profanityFilter": "9gE2SLAc", "regex": "EC3BPFNZ", "specialCharacterLocation": "oNXiN63H", "specialCharacters": ["WTK8LJnQ", "V5Wqgj2K", "9lcUN5qF"]}}, {"field": "s6Ziolne", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["xgQWjgLI", "llSsPRd0", "11RtLhH3"], "preferRegex": true, "regex": "hNAPMBWZ"}, "blockedWord": ["d26kTSwj", "YHfX78yT", "xpV0k3gH"], "description": [{"language": "pNekTF5p", "message": ["5Kht2s48", "tvXnMKXg", "Q7C5wFIG"]}, {"language": "hnMK2FIM", "message": ["sewsib14", "1VMAZQ6v", "ettGoPZZ"]}, {"language": "FM630ds1", "message": ["aqpcBi9u", "hex3z2wg", "R8hdZeBu"]}], "isCustomRegex": false, "letterCase": "l0M9jQ60", "maxLength": 54, "maxRepeatingAlphaNum": 27, "maxRepeatingSpecialCharacter": 75, "minCharType": 10, "minLength": 21, "profanityFilter": "FQyrtEn8", "regex": "ADOfAsvJ", "specialCharacterLocation": "KswCPYKW", "specialCharacters": ["BrOqx421", "xxkEdbuR", "fewkBhYa"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'lYIrj11Y' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'c2Jnyj7o' \
    --before 'SJ1kzVGQ' \
    --endDate '5KrnSzBV' \
    --limit '77' \
    --query '9aNqlxGA' \
    --roleId 'IzbCGYBp' \
    --startDate 'P3UZ55Cm' \
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
    --body '{"ageRestriction": 35, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 't31qBtCc' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 55}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '7gRwnSMk' \
    --limit '75' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "M8vDCMKn", "comment": "7BtnDMV2", "endDate": "NsDNPsdA", "reason": "bwv8igAa", "skipNotif": true, "userIds": ["gPO4hswI", "QxykvYcY", "dWQQRvix"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "5jm5LSM1", "userId": "8gZkvrhw"}, {"banId": "fmIkHSkd", "userId": "ReYG3PyJ"}, {"banId": "nharZtr0", "userId": "uiFz9nqJ"}]}' \
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
    --clientId 'GsQgnoOs' \
    --clientName 'J3f3GzW1' \
    --clientType '92jlVywf' \
    --limit '68' \
    --offset '77' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["LwQjWKxh", "Hp8H24fr", "e3dTuYQ0"], "clientUpdateRequest": {"audiences": ["28TqUcAA", "4in1sIA0", "KqQLT8Ll"], "baseUri": "cYGy2PGf", "clientName": "Vk6n9KzU", "clientPermissions": [{"action": 40, "resource": "Yy6CuzMR", "schedAction": 65, "schedCron": "6dGrt97x", "schedRange": ["KA1Bh4Vy", "56X8gsLx", "BDEnlTgx"]}, {"action": 5, "resource": "A8FAFPOy", "schedAction": 81, "schedCron": "C6e5xJOC", "schedRange": ["x1TkbskX", "ZQtBcnJz", "hjFYfYEo"]}, {"action": 20, "resource": "fpLXyo1j", "schedAction": 4, "schedCron": "WdWl3WhC", "schedRange": ["fKKWN0j0", "AD6gW5Bt", "mDwH3iJs"]}], "clientPlatform": "ghhIbLGj", "deletable": true, "description": "pouRoIYQ", "modulePermissions": [{"moduleId": "RcUaWw0F", "selectedGroups": [{"groupId": "yVfoYQmK", "selectedActions": [55, 62, 49]}, {"groupId": "aDpYiOGP", "selectedActions": [57, 87, 28]}, {"groupId": "mKA9Dk19", "selectedActions": [10, 64, 93]}]}, {"moduleId": "iyi4C8yE", "selectedGroups": [{"groupId": "ieVgHKLg", "selectedActions": [91, 37, 14]}, {"groupId": "rvcNJbhS", "selectedActions": [69, 47, 15]}, {"groupId": "0tdz3JtK", "selectedActions": [84, 39, 66]}]}, {"moduleId": "05vpX4En", "selectedGroups": [{"groupId": "1xB79ipU", "selectedActions": [30, 87, 29]}, {"groupId": "h7ujHobY", "selectedActions": [51, 16, 94]}, {"groupId": "sPakULIW", "selectedActions": [82, 7, 16]}]}], "namespace": "EJHtN0tK", "oauthAccessTokenExpiration": 4, "oauthAccessTokenExpirationTimeUnit": "HWtLl1I1", "oauthRefreshTokenExpiration": 88, "oauthRefreshTokenExpirationTimeUnit": "WReEVnBB", "redirectUri": "0eO1Qu6Y", "scopes": ["jZY6HA9i", "aQahvV2K", "P0FrqZgj"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["rwWXMxBi", "SYGW2BRg", "Tguy34xe"], "baseUri": "jLecQyhA", "clientId": "6qKM1Q05", "clientName": "ynVlEPWE", "clientPermissions": [{"action": 42, "resource": "SP2hSevx", "schedAction": 70, "schedCron": "8VQpaKKq", "schedRange": ["mU5WAhb3", "ykN7cv4p", "JBpVpEs3"]}, {"action": 98, "resource": "Sn2siBLq", "schedAction": 18, "schedCron": "gFpN0ELp", "schedRange": ["IcmtMiyI", "rqUBfQYk", "pb6zsM1F"]}, {"action": 26, "resource": "W9Y9xmIB", "schedAction": 1, "schedCron": "c6zJc26R", "schedRange": ["iDDTudCG", "g9RWIfTI", "s87T3vD3"]}], "clientPlatform": "sEwWPyow", "deletable": true, "description": "FptpUG3p", "modulePermissions": [{"moduleId": "epqyGp7u", "selectedGroups": [{"groupId": "C3Ztjw79", "selectedActions": [4, 33, 7]}, {"groupId": "p9UoBQq7", "selectedActions": [65, 25, 59]}, {"groupId": "pRwNiuEl", "selectedActions": [26, 76, 15]}]}, {"moduleId": "ubw1keOJ", "selectedGroups": [{"groupId": "DvxDh9z5", "selectedActions": [10, 13, 31]}, {"groupId": "WDQpY5fi", "selectedActions": [69, 29, 64]}, {"groupId": "pSjwyzbx", "selectedActions": [62, 26, 1]}]}, {"moduleId": "28pbMuEB", "selectedGroups": [{"groupId": "7FEQ5JW1", "selectedActions": [75, 3, 40]}, {"groupId": "g0Q0W0vM", "selectedActions": [65, 83, 50]}, {"groupId": "Pz2FWaO8", "selectedActions": [54, 54, 8]}]}], "namespace": "wLQzwsr3", "oauthAccessTokenExpiration": 42, "oauthAccessTokenExpirationTimeUnit": "vepMVmc5", "oauthClientType": "IzmgiXEx", "oauthRefreshTokenExpiration": 2, "oauthRefreshTokenExpirationTimeUnit": "W5WCAYAE", "parentNamespace": "hJ4yBtlh", "redirectUri": "nLXF8pL0", "scopes": ["UFXQut6d", "6nIBuZET", "vtaDU7iB"], "secret": "qFtbZuSv", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'wFj9QOxa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '69NVtPII' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'xd7kfOKg' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["f5WR3paG", "DvmLIeXT", "CrN9xesZ"], "baseUri": "0Jj0tkvX", "clientName": "txihCFvd", "clientPermissions": [{"action": 7, "resource": "PvxdhJy6", "schedAction": 39, "schedCron": "tRiPjPGy", "schedRange": ["tbhIgq5h", "9bMBMujt", "dhnkyCED"]}, {"action": 90, "resource": "Ycv8eqvc", "schedAction": 11, "schedCron": "kJtL1T39", "schedRange": ["23qfEbqN", "UTgRrBWP", "7NJUiqUM"]}, {"action": 69, "resource": "6GJ8Hr0K", "schedAction": 56, "schedCron": "mFiyukTr", "schedRange": ["IaOqn4Fk", "xGI8BGNd", "jQ20oCW8"]}], "clientPlatform": "1opiABgR", "deletable": false, "description": "ojClwCCi", "modulePermissions": [{"moduleId": "19Lc43pA", "selectedGroups": [{"groupId": "BFS0wEfX", "selectedActions": [10, 23, 0]}, {"groupId": "K1b6eeo0", "selectedActions": [84, 15, 60]}, {"groupId": "Wn0SPAp7", "selectedActions": [4, 14, 90]}]}, {"moduleId": "cphZMJHt", "selectedGroups": [{"groupId": "Bob8n1s4", "selectedActions": [97, 64, 94]}, {"groupId": "nJDZIGqA", "selectedActions": [91, 52, 99]}, {"groupId": "qg708bV9", "selectedActions": [18, 20, 73]}]}, {"moduleId": "b2vxZ0YQ", "selectedGroups": [{"groupId": "Vd39Ssm2", "selectedActions": [1, 85, 44]}, {"groupId": "L1L1DTyJ", "selectedActions": [73, 12, 90]}, {"groupId": "l7jD16Oc", "selectedActions": [84, 21, 72]}]}], "namespace": "yQ5Hfj7t", "oauthAccessTokenExpiration": 54, "oauthAccessTokenExpirationTimeUnit": "ykcgimxx", "oauthRefreshTokenExpiration": 13, "oauthRefreshTokenExpirationTimeUnit": "VaoTPxaw", "redirectUri": "v1XPCoEJ", "scopes": ["gWtTk2HB", "44FVzqHR", "L4iLTxyg"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'ribTp0L4' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 45, "resource": "7ocpVtcb"}, {"action": 32, "resource": "AtCsPsna"}, {"action": 30, "resource": "U6gjZOpE"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '49CnSnTi' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 25, "resource": "oPnPZ9cS"}, {"action": 72, "resource": "YBawVICC"}, {"action": 1, "resource": "07tNXnHr"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '68' \
    --clientId 'RotM5lhs' \
    --namespace $AB_NAMESPACE \
    --resource 'KjnWlct2' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'lUWLwyLT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'AdminGetConfigValueV3' test.out

#- 134 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
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
    --body '{"blacklist": ["XlElmoIv", "Z8eCf1bp", "mu2tH6Kj"]}' \
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
    --body '{"active": false, "roleIds": ["lkZSbZgN", "pKQ9MD21", "2irMUQjk"]}' \
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
    --limit '67' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TTHTuj1g' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'O5zlGyOy' \
    --body '{"ACSURL": "s6Web8rG", "AWSCognitoRegion": "VDHai70i", "AWSCognitoUserPool": "zEkIEhNa", "AllowedClients": ["3m6l4LEg", "cw54jGVD", "CawfNNfL"], "AppId": "KWUFLDWe", "AuthorizationEndpoint": "PZMKmyoD", "ClientId": "Flp9nXNm", "EmptyStrFieldList": ["xAGS1JFA", "bnduJLBn", "x4Zwxnmx"], "EnableServerLicenseValidation": false, "Environment": "vwdH54OR", "FederationMetadataURL": "CcEPLnv6", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "WpJoufPo", "JWKSEndpoint": "hOzsqwVP", "KeyID": "fDWzh1ub", "LogoURL": "T4hCazBO", "NetflixCertificates": {"encryptedPrivateKey": "K15n87aN", "encryptedPrivateKeyName": "tl4BhkXA", "publicCertificate": "Q0CMfXze", "publicCertificateName": "tEmcxHxy", "rootCertificate": "t7meTarX", "rootCertificateName": "VITtcgEV"}, "OrganizationId": "Zzxkr90L", "PlatformName": "2ku4iAwW", "PrivateKey": "wRPIH67g", "RedirectUri": "eF6xMgc8", "RegisteredDomains": [{"affectedClientIDs": ["8uPwLjvL", "0um6DOsZ", "NxGUs20V"], "domain": "mjHS2Mtb", "namespaces": ["4LY56Hak", "75bkGY1L", "xlihw56O"], "roleId": "9UTdGQUl", "ssoCfg": {"googleKey": {"uCEeWu5U": {}, "pjoIV7z2": {}, "nLAmGzRN": {}}, "groupConfigs": [{"assignNamespaces": ["5S5gvgiT", "2ycKIian", "GkRbupMp"], "group": "wdODw6cA", "roleId": "2o1KQvjk"}, {"assignNamespaces": ["ff1m9qjG", "XnWOXT2k", "a0wt44L6"], "group": "WQkyk3Xs", "roleId": "cDLeEqPg"}, {"assignNamespaces": ["sWCtzrqy", "ogajvrvz", "nxJ1lnm6"], "group": "y3g0f6jZ", "roleId": "5YdNHoaw"}]}}, {"affectedClientIDs": ["EJQlEBrm", "KNMbP7mc", "vvI8xkQD"], "domain": "j3C7TNc9", "namespaces": ["HmZ7cwno", "WyXI41F1", "ROqHVF3j"], "roleId": "aPyJuTED", "ssoCfg": {"googleKey": {"sKEoBF8M": {}, "wywqDQ8e": {}, "jzb3lGMQ": {}}, "groupConfigs": [{"assignNamespaces": ["3MYlNgen", "IPROyuXj", "6sOtelBD"], "group": "rRb1Uaog", "roleId": "sXMa9PDy"}, {"assignNamespaces": ["OyyhzF7A", "7JHDXFWU", "BoogAxEl"], "group": "APKjCWOr", "roleId": "4E8lfgpL"}, {"assignNamespaces": ["kQy1mXMP", "WXyv15Hu", "5pyg3YLv"], "group": "ktEBxZPz", "roleId": "Vif7guIL"}]}}, {"affectedClientIDs": ["LydQFuYN", "iRycOeZq", "2dPmeCLz"], "domain": "vdIv61rd", "namespaces": ["ro2n8Xfs", "rbs4En0T", "MjX6uMj6"], "roleId": "O39MY4DH", "ssoCfg": {"googleKey": {"Lc25np7e": {}, "f3rr70jR": {}, "BZnWSyhf": {}}, "groupConfigs": [{"assignNamespaces": ["SYXOsRSM", "RdMlUtvk", "fhicvpab"], "group": "cYurHq4A", "roleId": "Y3EAubEC"}, {"assignNamespaces": ["NBhlrfAl", "UTO82XTO", "0oifFbmF"], "group": "Hav63sa2", "roleId": "U0rqLOFu"}, {"assignNamespaces": ["ciaw0t3q", "ihnwjntp", "BBh919LF"], "group": "0jkGYVsp", "roleId": "hto6pcEJ"}]}}], "RelyingParty": "swaBE4CB", "SandboxId": "VDoTWXFl", "Secret": "XYHR1IkH", "TeamID": "7dIeHbO7", "TokenAuthenticationType": "uGoHk7vN", "TokenClaimsMapping": {"kbX6i3Uq": "bRN2APoG", "YZbnIw6w": "u9r02Ecd", "fvoHB6f8": "N3dpbKTW"}, "TokenEndpoint": "o01o0mOo", "UserInfoEndpoint": "njTUlLtp", "UserInfoHTTPMethod": "2hHI6d3I", "googleAdminConsoleKey": "pk6kKtzd", "scopes": ["xZrm48Bp", "ZjhZd8Yh", "1Dz7tE3W"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NugUAeQJ' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YnHnSByt' \
    --body '{"ACSURL": "DXF66t0Y", "AWSCognitoRegion": "2y8ODVYM", "AWSCognitoUserPool": "h2ggZ3bT", "AllowedClients": ["y0GGZ3QC", "AFbxKPyw", "WFtStcSJ"], "AppId": "l4jkcPQq", "AuthorizationEndpoint": "AURXKFNI", "ClientId": "DDxtCXxO", "EmptyStrFieldList": ["BfcJ45zR", "B1ZFKaWu", "WTwGD69V"], "EnableServerLicenseValidation": true, "Environment": "sun6FxBL", "FederationMetadataURL": "E7b1qP2o", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": true, "Issuer": "NTiwO1s1", "JWKSEndpoint": "FZat0GYr", "KeyID": "6N6adT1O", "LogoURL": "pUZfoF6J", "NetflixCertificates": {"encryptedPrivateKey": "LNBbmgoe", "encryptedPrivateKeyName": "QkaoUlIS", "publicCertificate": "w5boMiBR", "publicCertificateName": "P9fqHjI6", "rootCertificate": "3OlVdVOt", "rootCertificateName": "3ALxgN3t"}, "OrganizationId": "0rxJlzsN", "PlatformName": "smYQYLHR", "PrivateKey": "sQnUBxQ6", "RedirectUri": "VLoPN7gg", "RegisteredDomains": [{"affectedClientIDs": ["y3Z2a4cX", "QaWDUhIY", "AXq59H01"], "domain": "SR73orBP", "namespaces": ["4gAhGJrm", "jY1X7a6U", "BAXacqmG"], "roleId": "wmA4n8xm", "ssoCfg": {"googleKey": {"teEk2HAe": {}, "dBUrLrtf": {}, "uOyX53xh": {}}, "groupConfigs": [{"assignNamespaces": ["VtMsuuYh", "OyI67dWH", "LEslxfL6"], "group": "Q8DAxGqe", "roleId": "exCioPaU"}, {"assignNamespaces": ["wh54IBPY", "GfumDNDz", "r8NIAcLy"], "group": "RezQT997", "roleId": "USZh6Oj9"}, {"assignNamespaces": ["2k2FhDvo", "q5Q31kts", "7u9rbmEg"], "group": "ukpFqkZ0", "roleId": "5zMf9k4l"}]}}, {"affectedClientIDs": ["BIYzjCQP", "gGLMNITX", "uUpsHvEf"], "domain": "stuCNLiT", "namespaces": ["UQnscBHK", "gonmRTuj", "PfZZ1UM6"], "roleId": "AbJOBglM", "ssoCfg": {"googleKey": {"12mgbN2l": {}, "VgUEaM27": {}, "l3zHfVq1": {}}, "groupConfigs": [{"assignNamespaces": ["6RFtt9TV", "8lG8sOoa", "IvX244O7"], "group": "A6o31b2P", "roleId": "367vyqSO"}, {"assignNamespaces": ["8q8beVNq", "okyuqKkD", "bsgyS9wI"], "group": "z7OnUNv4", "roleId": "s4HtCxcU"}, {"assignNamespaces": ["fVbvqdu3", "GrS4PvhH", "5KILpuOo"], "group": "LAs4hxCg", "roleId": "QwHPnODu"}]}}, {"affectedClientIDs": ["RRd2R6xh", "86AgBwHn", "yx0Z5S4R"], "domain": "fmv2ocP5", "namespaces": ["y3X94DKr", "KBzqiaed", "wCpuZwk5"], "roleId": "uuUOnaV5", "ssoCfg": {"googleKey": {"C0LYgemD": {}, "k2Wddd1A": {}, "EosRB8xO": {}}, "groupConfigs": [{"assignNamespaces": ["UUmGntQU", "rkMyHKgw", "VbBp0kkF"], "group": "2zIo1bOl", "roleId": "hJu37CJj"}, {"assignNamespaces": ["kkr1zVIz", "IkqmrE4i", "z9mnG3E9"], "group": "EGAOVoPs", "roleId": "kAbfKag5"}, {"assignNamespaces": ["jgh8dnrg", "0Vb6Y7uv", "KIJrij2D"], "group": "nzcjLxTR", "roleId": "K7L5sQt8"}]}}], "RelyingParty": "pNQru7ha", "SandboxId": "xIANMsZ7", "Secret": "ztQSVoDz", "TeamID": "FNr9v7mT", "TokenAuthenticationType": "pD4RNn2V", "TokenClaimsMapping": {"9ZVCg60h": "oYuJ25Ja", "bnMl11pn": "ScjWLrn5", "OFLjLteh": "WYfm9KwB"}, "TokenEndpoint": "wedHU1Ff", "UserInfoEndpoint": "1cf7D0jd", "UserInfoHTTPMethod": "tGa93uah", "googleAdminConsoleKey": "adj6IaEv", "scopes": ["C6oKCYwa", "jKiWqjTG", "Y0a0jQdn"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'u9MBV1yR' \
    --body '{"affectedClientIDs": ["g9qFlqGD", "7mKRc2yl", "FOMfYUnG"], "assignedNamespaces": ["FKmqsjj7", "U3At8s9F", "OZZnPtqL"], "domain": "9aJebhW8", "roleId": "VlaD6N93", "ssoCfg": {"googleKey": {"QlZP147I": {}, "uW7VlaFn": {}, "k0xWRWkB": {}}, "groupConfigs": [{"assignNamespaces": ["UcZ7GX5v", "orFBR3wp", "3OGNRgZB"], "group": "bjDZOFyO", "roleId": "ZFZ3EnIE"}, {"assignNamespaces": ["qWecblrg", "K65rJfhw", "UQlyPaJk"], "group": "A5QRT4mC", "roleId": "qRX9Lwzp"}, {"assignNamespaces": ["N3wPX5II", "bzbwD1If", "Ie0pLpZa"], "group": "cPziz48r", "roleId": "hpmN9Sms"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xCuOUfgN' \
    --body '{"domain": "QKUfHzSm", "ssoGroups": ["tg3Fylp9", "8sNCoV9y", "pVCcZ2oO"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Q27YxiM0' \
    --body '{"affectedClientIDs": ["RX4CRmvm", "oTHNOTAe", "IpXfO9NI"], "assignedNamespaces": ["3xDg9Czs", "6jWq5Evf", "H3FmD5cV"], "domain": "JrYjS0Pg", "roleId": "y8xLumL2", "ssoCfg": {"googleKey": {"q4m4m47O": {}, "Kdxnaaaz": {}, "JkWuYcuo": {}}, "groupConfigs": [{"assignNamespaces": ["edi2DaGm", "PAMif531", "9MMU5LKM"], "group": "5jOJqHqz", "roleId": "1gdRuntN"}, {"assignNamespaces": ["VMXKYGnt", "4no44Kxx", "wRMH3gjX"], "group": "nkC69jkR", "roleId": "u2QawhUl"}, {"assignNamespaces": ["HZttMziO", "TnSTp6lG", "vRsSy56L"], "group": "nH9E4g4L", "roleId": "88DCiLkp"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'bEPB71js' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'kA1XquBY' \
    --body '{"acsUrl": "c8FisGdE", "apiKey": "Lmio7Ya1", "appId": "RifkPyuj", "federationMetadataUrl": "Gppwih0Y", "isActive": true, "redirectUri": "KH4mWcWT", "secret": "PiVMNQvM", "ssoUrl": "jrTmQHid"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'K6PHpdxz' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '1l70pZRz' \
    --body '{"acsUrl": "89V3Kozw", "apiKey": "YCgLkgB8", "appId": "HucD6mVo", "federationMetadataUrl": "0Vnqb7Zc", "isActive": true, "redirectUri": "kdTXX2SP", "secret": "qkj0mScp", "ssoUrl": "1BmbVsEg"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RMiIeDTU' \
    --rawPID 'false' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["wLixXZPB", "TpHrfLdj", "lnNCHqAk"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Y10xMNQe' \
    --platformUserId 'umBoQE4D' \
    --pidType 'Z4XQNwDc' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    --body '{"config": {"minimumAllowedInterval": 53}, "type": "KuUmV4Uq"}' \
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
    --body '{"additions": [{"actions": [61, 7, 18], "resource": "4Nt8nFJL"}, {"actions": [28, 29, 47], "resource": "f9aEtijE"}, {"actions": [6, 66, 28], "resource": "abjiZEkJ"}], "exclusions": [{"actions": [82, 18, 13], "resource": "FZ9HuRMG"}, {"actions": [23, 58, 17], "resource": "Wd7o1d7j"}, {"actions": [23, 24, 44], "resource": "W9o0f7hv"}], "overrides": [{"actions": [72, 86, 50], "resource": "oRc1Mlpi"}, {"actions": [49, 23, 51], "resource": "FJVShMpR"}, {"actions": [5, 33, 62], "resource": "QajfK5hU"}], "replacements": [{"replacement": {"actions": [22, 23, 82], "resource": "sYYsQfed"}, "target": "Ya8IQOGI"}, {"replacement": {"actions": [96, 92, 28], "resource": "nM1hh1aE"}, "target": "VekaGh4P"}, {"replacement": {"actions": [43, 45, 52], "resource": "k2FogfEn"}, "target": "ZBPSyJ2p"}]}' \
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
    --identity 'VIEW_ONLY' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'di7YEnML' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'LTFm4lTr' \
    --after '21' \
    --before '50' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '59' \
    --tagName 'xvt8YZxk' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "tKmtKjZw"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'UP1Ypdz5' \
    --body '{"tagName": "9REI4N1T"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'jr4vG3wR' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '6eQ48MRV' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["67EKDClb", "GvFnWdjo", "ApWDpHkO"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'VdWKNJSp' \
    --body '{"bulkUserId": ["CoGN3u3K", "tDmXc1q3", "UcQCeJBF"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["1oXhSZbV", "z8JHHfDh", "nrGqgQcK"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BNKfFHkI", "TCrHixlE", "4qxou4NR"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "mleZxMkg", "userId": "XkKh3kFz"}, "fields": ["HaGH7yQM", "7sZpPu18", "DW0AEXDq"], "limit": 66}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["Bzn6mKJK", "fYl9YmPc", "AuI7Hl2M"], "isAdmin": false, "languageTag": "S81XJ6J9", "namespace": "JEjEKG5s", "roles": ["orvGlnZU", "KMaOY4nX", "hhkNnlLH"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '81' \
    --platformUserId 'CJGjTcyC' \
    --platformId 'kuHVPsRN' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'GkCDu62l' \
    --endDate 'LwG1r9H8' \
    --includeTotal 'true' \
    --limit '47' \
    --offset '80' \
    --platformBy 'DrlsspCY' \
    --platformId 'lBo5vJOE' \
    --query 'lnwYw4vS' \
    --roleIds 'hanNZb6w' \
    --selectedFields 'EeWRdwpe' \
    --skipLoginQueue 'true' \
    --startDate 'tQYZ3ZgT' \
    --tagIds '9nKcHK5k' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["2fhYE0fw", "7osQcFRj", "sDndKTZX"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pK0EbHTd' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Z5w6jYoh' \
    --body '{"avatarUrl": "5lQOj5A5", "country": "u1Yivdjx", "dateOfBirth": "WF1qgkKy", "displayName": "AV5Mpn1K", "languageTag": "fl6PbJxW", "skipLoginQueue": true, "tags": ["GSaUP7CJ", "Trd7QTVZ", "gVDHRElO"], "uniqueDisplayName": "Z1CnapK8", "userName": "gIciY1wd"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'i3Ll8mMe' \
    --activeOnly 'false' \
    --after 'VMs5Kxqv' \
    --before 'vv7nMeDV' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'u7QT6Vhr' \
    --body '{"ban": "rU3RTbYi", "comment": "4q32smjc", "endDate": "AyngWj7S", "reason": "EDmNTj83", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId '5HWTjvSp' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '99yH7BRI' \
    --namespace $AB_NAMESPACE \
    --userId 'pz4SikCL' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hCchZ7va' \
    --body '{"context": "02glFZ8m", "emailAddress": "QABdRTLo", "languageTag": "nlCTcJej", "upgradeToken": "SlQ2Pbmm"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FVp5pXG0' \
    --body '{"Code": "07SMD2sq", "ContactType": "pt8PA8W6", "LanguageTag": "oHNZ6HS5", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '6MoqQr8a' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ouhgjrLr' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '2d1RxKA8' \
    --body '{"deletionDate": 19, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Col5iGQL' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yjG2Hl7Y' \
    --body '{"code": "tBWikUIh", "country": "jc6vJALC", "dateOfBirth": "EmYMGbSH", "displayName": "bFkgEuXb", "emailAddress": "HQBH0X07", "password": "c7WncFJE", "uniqueDisplayName": "o7V5WJro", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'J1ZJC7w2' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '1Qrye0gQ' \
    --after '0.8176875551647985' \
    --before '0.023307933258302715' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mWZncJ01' \
    --body '{"languageTag": "pLisDV4U", "mfaToken": "0WBwFzOl", "newPassword": "g5CBfcBZ", "oldPassword": "DTuiF6yF"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '0Z3htXth' \
    --body '{"Permissions": [{"Action": 23, "Resource": "PRKKGAkV", "SchedAction": 46, "SchedCron": "zOB7nMHu", "SchedRange": ["rHHfpwAU", "eq3ypvw3", "t1U8o3g4"]}, {"Action": 52, "Resource": "H7nKeSEB", "SchedAction": 61, "SchedCron": "mbOyT9vW", "SchedRange": ["fVt9dig4", "PPPcNXhw", "BCK0l2QM"]}, {"Action": 79, "Resource": "0CQorm0C", "SchedAction": 51, "SchedCron": "xVvZsRDI", "SchedRange": ["lh5wwMBr", "HeXzQTCO", "tyKdTivX"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hyYUoATb' \
    --body '{"Permissions": [{"Action": 63, "Resource": "jA5kjgNv", "SchedAction": 96, "SchedCron": "vajbVtQ8", "SchedRange": ["cp4kilHk", "aqZ7Uare", "WjWsFDcy"]}, {"Action": 64, "Resource": "qu3DlHHE", "SchedAction": 23, "SchedCron": "IthzeVFg", "SchedRange": ["2wiOv2GU", "vAAlY7Pn", "nvqvQObR"]}, {"Action": 47, "Resource": "rJgwYVhV", "SchedAction": 30, "SchedCron": "6JmzQCON", "SchedRange": ["cPnk5Fx8", "GiMaiNLm", "zHWhtd3Z"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HkUu46aJ' \
    --body '[{"Action": 29, "Resource": "QDU6Yfe6"}, {"Action": 43, "Resource": "FkFvPski"}, {"Action": 14, "Resource": "0lhcjHlp"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '91' \
    --namespace $AB_NAMESPACE \
    --resource 'MUKhQVIG' \
    --userId 'OLDDGFz0' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HSoSFDZM' \
    --after 'lyKzXKwx' \
    --before 'qL0KjJom' \
    --limit '35' \
    --platformId '9Q7RcwFD' \
    --targetNamespace 'Xonouv8y' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mODxjq32' \
    --status 'zdLr2JuL' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'myvsphXA' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Y5c4DVVl' \
    --userId 'u0LK48S2' \
    --createIfNotFound 'false' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'c6YecSnX' \
    --userId 'ppNx3gnb' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'JbvvD1po' \
    --skipConflict 'true' \
    --body '{"platformId": "W69ZFUw8", "platformUserId": "vxpwH2pf"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '4g54kX8u' \
    --platformId 'lM2lVHYp' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EUGEKm5G' \
    --userId '5pAyQTJ9' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Utt7PvuL' \
    --userId 'ZAFHTi51' \
    --ticket 'I8agrE37' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nEetLbPo' \
    --userId 'nxSXD3k8' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EMI13L39' \
    --userId 'O4ncGeS3' \
    --platformToken 'tkAZcUjK' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'bmrY1NVi' \
    --userId 'k2R17UtW' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WPsv9dpn' \
    --body '["yjKddJU9", "HBHqsIHK", "j7JVp4n4"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '2elVc8Pw' \
    --body '[{"namespace": "o2KxF3F3", "roleId": "t48NPJ3Z"}, {"namespace": "iEybrnuK", "roleId": "Ezj9wva5"}, {"namespace": "C86VqC8T", "roleId": "MIPVafyT"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'KYtcXhOF' \
    --userId 'gCwaboyR' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'llMOaZM2' \
    --userId 'GJ6ULPeL' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tTsQ9Tl7' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NCUjEgpM' \
    --body '{"enabled": true, "reason": "DwbUYiCM"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'AuJsWMX8' \
    --body '{"emailAddress": "ggtJQcdL", "password": "BimrLNW7"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nFV0qYAA' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '6BKcx7lt' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "T3X11bBq"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId '19PK0VuD' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'T0JeChqc' \
    --before 'hG0IUJSR' \
    --isWildcard 'true' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "TGedxOoQ", "namespace": "GMgCYEi2", "userId": "iJI6dujQ"}, {"displayName": "97bxFgqn", "namespace": "G86Oy4b0", "userId": "zjN9FUmF"}, {"displayName": "5gn2gz7C", "namespace": "F4QxV8ml", "userId": "CYZ0fxnU"}], "members": [{"displayName": "ybEvJ8TJ", "namespace": "MS9ytDvR", "userId": "ZKbFmuoR"}, {"displayName": "6XWeB2Ck", "namespace": "NeivsXDq", "userId": "4zsqZNzm"}, {"displayName": "uGfReczW", "namespace": "rp6Dfgzy", "userId": "UBSmxwNd"}], "permissions": [{"action": 90, "resource": "bF8SMXoF", "schedAction": 98, "schedCron": "tZYUP1pV", "schedRange": ["gL0DE8s1", "papRmsoM", "NZ1ERAyV"]}, {"action": 86, "resource": "SKRe6skx", "schedAction": 87, "schedCron": "z6GCHp3u", "schedRange": ["x2HXCGHa", "qPn0irvZ", "YrBq265H"]}, {"action": 14, "resource": "Dr66Q58G", "schedAction": 20, "schedCron": "SLhw8ywg", "schedRange": ["WwqryEnH", "bbjwrMco", "pJ8eFICl"]}], "roleName": "Uj8T09aE"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'MYNfuaKq' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'Q5GVVm9y' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'aIiQlGcR' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "WRmc6OkE"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'cQfAQKBi' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'uZzC4sNZ' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'PUCy4BOE' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'ZIpGoSr3' \
    --after 'VPbiz2n7' \
    --before '5lGwuOig' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '90LJdvsf' \
    --body '{"managers": [{"displayName": "CrKQAzY6", "namespace": "ytHN31v4", "userId": "ajNXGY3d"}, {"displayName": "IpLNBHQW", "namespace": "3TqivNBh", "userId": "zLabbFuI"}, {"displayName": "ft5i1AjG", "namespace": "srPfGXfm", "userId": "r7NCTmDm"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'g5o1vFb7' \
    --body '{"managers": [{"displayName": "RBgskAFA", "namespace": "3AZNYvI8", "userId": "JqseuE4Q"}, {"displayName": "ugTQu8qL", "namespace": "4v5hDbxI", "userId": "tyIRfbMp"}, {"displayName": "GwGWUAwL", "namespace": "jKmGWSsZ", "userId": "dQQ5MxmT"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'XfBet1Mb' \
    --after 'zjikQlX7' \
    --before 'Qic8pKpx' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'fJyzyBVG' \
    --body '{"members": [{"displayName": "cqO263MU", "namespace": "ZqJkuD6N", "userId": "G7c0Fzbq"}, {"displayName": "Totzhsle", "namespace": "DiS7jJbm", "userId": "PrRleBCF"}, {"displayName": "UJAd2GJM", "namespace": "eMrhP3Df", "userId": "XZASSbqF"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'xoTkEkwI' \
    --body '{"permissions": [{"action": 35, "resource": "4QTJS0nj", "schedAction": 71, "schedCron": "YosSh6U2", "schedRange": ["fmnVqJ4F", "kwRlcwBb", "N0vPSZY1"]}, {"action": 66, "resource": "E96yti2m", "schedAction": 88, "schedCron": "TfaM0bYO", "schedRange": ["Fv58tySv", "smXrb0l9", "1XvZluSg"]}, {"action": 30, "resource": "jGrjVIGK", "schedAction": 54, "schedCron": "u2nli1ON", "schedRange": ["M0SffykZ", "Mf4THh8d", "fZ9zEZiN"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'fUwO0CRp' \
    --body '{"permissions": [{"action": 11, "resource": "dZ4QlNcU", "schedAction": 55, "schedCron": "hQ5Rn77x", "schedRange": ["St68H9yX", "mZZO61op", "C4WlXeUR"]}, {"action": 98, "resource": "8BEz5YQF", "schedAction": 21, "schedCron": "r52vYAB8", "schedRange": ["Gzf8sJ2o", "SMA5dQ9q", "pZrYpWlR"]}, {"action": 50, "resource": "bi9uzCbg", "schedAction": 65, "schedCron": "BbUscdZ5", "schedRange": ["HXcwMZwg", "NcM58cur", "EOiOI4MC"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'D2t338LO' \
    --body '["KdIIe2HI", "7NheSNLn", "CJxKLusL"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '84' \
    --resource 'b0L1M2MB' \
    --roleId '4Byb9kTE' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'vljT3MUF' \
    --extendExp 'false' \
    --redirectUri '4Ulwn6qS' \
    --password 'JHpq4VKV' \
    --requestId 'ghM0HWEG' \
    --userName 'tF0n96Cn' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'wH94x2xk' \
    --linkingToken 'YzvXlKQZ' \
    --password 'Dj1dkXgX' \
    --username 'vCDJMoEh' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'true' \
    --clientId 'PoC9xE4f' \
    --linkingToken '7FhFcQWZ' \
    --password 'f1g3GCoL' \
    --username 'hKBIt78B' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'ZTUaaAv2' \
    --extendExp 'true' \
    --linkingToken 'X0mIVB4o' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'SLTam3KW' \
    --state 'Tb2On8XG' \
    --platformId '5pEexVjU' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'hAMfgeJm' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData '87fALATs' \
    --isTransient 'true' \
    --clientId 'Srqsaz9y' \
    --oneTimeLinkCode '8ox1NJXQ' \
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
    --codeChallenge 'slbGwBRB' \
    --codeChallengeMethod 'plain' \
    --clientId 'qaLAXwry' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qaJOj6Mv' \
    --userId 'azehRqhX' \
    --platformUserId 'dS7VJ6ZZ' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'e56Kpnmi' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'FghYzmv1' \
    --codeChallenge 'nkNUuNzS' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --loginWebBased 'false' \
    --nonce 'ZYFdUqS4' \
    --oneTimeLinkCode 'JFYW9g3n' \
    --redirectUri 'UJbyRfun' \
    --scope 'ZIHC7ekz' \
    --state '1rsenGoc' \
    --targetAuthPage 'KPvhXl67' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'alDUQBz0' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'lGAbVpmQ' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'e9e3s6Jy' \
    --factor '2N7Gycwu' \
    --mfaToken 'dlcuCxa6' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'gKm5Msid' \
    --mfaToken 'hYcqFdjH' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'HIt8ZhC5' \
    --factor 'Jodzkxpc' \
    --mfaToken 'FCv91i08' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'FDUhUUTY' \
    --factors 'mOm9Dv1G' \
    --rememberDevice 'true' \
    --clientId 'RLPj0NvK' \
    --code 'l9CorHob' \
    --factor 'AEJgl9Z5' \
    --mfaToken 'mnEjvJFn' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fQP2IFbB' \
    --userId 'm0CB0Yrz' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'Bv8lq5JY' \
    --clientId 'zU3si9qq' \
    --redirectUri 'je5FFI9D' \
    --requestId 'KvcidL8a' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'VEnTd89A' \
    --additionalData 'tVuuRpKx' \
    --clientId 'iyJusy9X' \
    --createHeadless 'false' \
    --deviceId 'PgApFHNI' \
    --macAddress 'koD8gBoH' \
    --platformToken 'vH53hbWU' \
    --serviceLabel '0.05817258740840092' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'PBQlbQuu' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'F22iCOIn' \
    --simultaneousTicket 'fn2QpeV0' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket '4exsULPi' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'aCQp6Nnu' \
    --clientId 'zHXlfZGG' \
    --clientSecret 'G2mNap9o' \
    --code 'I6fmLoeM' \
    --codeVerifier 'gExi5CiT' \
    --extendNamespace 'ylCCCMFy' \
    --extendExp 'true' \
    --password 'r2YTacVn' \
    --redirectUri 'dV2cdJrs' \
    --refreshToken 'DS4Xeaet' \
    --scope 'Lc6lc8Iw' \
    --username 'sOIaGfrt' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'ZlyhbVCv' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'DglJhGVf' \
    --code 'yujY2tUp' \
    --error 'vaD8XnQz' \
    --openidAssocHandle 'goD0ctJV' \
    --openidClaimedId 'JCIQlKa5' \
    --openidIdentity 'kBZnPgZ3' \
    --openidMode '4sUG2QKv' \
    --openidNs 'FR3OGAXn' \
    --openidOpEndpoint 'H0PK7vei' \
    --openidResponseNonce 'RjbadNZU' \
    --openidReturnTo 'htdB3NO5' \
    --openidSig 'Geobe4L0' \
    --openidSigned 'tMexZiTu' \
    --state 'CsOLlr8n' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'hbuzrDMo' \
    --platformToken 'T6YBnMXA' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'bMPtSv3n' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'DHppOrXY' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'hTSndRRy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'p1jrQ4T6' \
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
    --clientId 'CccT8DER' \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'IMnngrEs' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'yhLdiExz' \
    --limit '16' \
    --offset '88' \
    --platformBy '3EJREGst' \
    --platformId 'HJgWi588' \
    --query 'ZZizx5p5' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "3xOKvczk", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "F5OEqpUY", "policyId": "2ViwrB9D", "policyVersionId": "EsNaYNom"}, {"isAccepted": false, "localizedPolicyVersionId": "RJkQ9vdD", "policyId": "5bKcbLUy", "policyVersionId": "oqWAPf7S"}, {"isAccepted": true, "localizedPolicyVersionId": "tHolugg5", "policyId": "HF0zu07d", "policyVersionId": "ptC7CJRM"}], "authType": "1FSD7qyk", "code": "jINVtOOb", "country": "OO4lXb6s", "dateOfBirth": "ktX5ASiQ", "displayName": "E6A6alw4", "emailAddress": "7UeaTtRa", "password": "Cf0b150Z", "reachMinimumAge": true, "uniqueDisplayName": "vUMRoM7L"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'BVk1EZHV' \
    --query 'TXfb646L' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "9DSkgZa6", "languageTag": "kX0KMDtn"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ksQcJm6I", "emailAddress": "zdUG89oX"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "FceLPAEE", "languageTag": "8x7WrPyR"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "SEpP1y47", "password": "ddUO7SIj", "uniqueDisplayName": "bdqzhmZK", "username": "TQD7AME3"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '9zeuyspE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'dOYD11mA' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "LQ0ZIv2s", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "1C6Y37WQ", "policyId": "sBrno5fe", "policyVersionId": "cSdpzntR"}, {"isAccepted": false, "localizedPolicyVersionId": "ICJGA4kU", "policyId": "XzctTdXE", "policyVersionId": "MifzcXyT"}, {"isAccepted": true, "localizedPolicyVersionId": "LYCACM1K", "policyId": "2XfEU9fa", "policyVersionId": "gZag07Vy"}], "authType": "mAx73Vm3", "code": "ZDmIbmyd", "country": "6Q2TZFws", "dateOfBirth": "EjZvJ3cV", "displayName": "wj48TQRt", "emailAddress": "zLAUeD0S", "password": "vYTYTml6", "reachMinimumAge": true, "uniqueDisplayName": "aKoT5VBZ"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "t4OALAAc", "country": "RUZ1NDQb", "dateOfBirth": "yhVp6VfU", "displayName": "yb3zn4gb", "languageTag": "nG6CW2Vk", "uniqueDisplayName": "fT9MbvgB", "userName": "3pzqLBbL"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "uj4cTlpG", "country": "LFLjQYND", "dateOfBirth": "XqFRfgFz", "displayName": "xj3Hd4zD", "languageTag": "cBHJfu1Q", "uniqueDisplayName": "MMk1LyZO", "userName": "gGQimlxq"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "Qdma1QHw", "emailAddress": "HLl2muxY", "languageTag": "qMlc3Q9d", "upgradeToken": "iWnqHRoQ"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "QWuUhhFI", "contactType": "auF7YVQw", "languageTag": "GONZUm0C", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6SjwyFYe", "country": "65lxkxaA", "dateOfBirth": "kbVq0lvC", "displayName": "NLfwzkVL", "emailAddress": "MSiEkZKk", "password": "RDDDwDEK", "uniqueDisplayName": "R5vBX0rO", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "vWYcwnGS", "password": "jEZrTrgF"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "G050v17k", "mfaToken": "i39kUrZf", "newPassword": "YQ6wImjh", "oldPassword": "irnazcUW"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'k8aCFDW6' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0JhX8myZ' \
    --redirectUri 'RyXDU73k' \
    --ticket 'DhDdxZue' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'sUkaZV9S' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qQ5Ql8qD' \
    --ticket 'Bj0cILkP' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'yiGHxlDG' \
    --clientId 'bjUoh1AW' \
    --redirectUri '7XGP4OrY' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'fM8A0yy1' \
    --code 'bRjYsnCt' \
    --state 'lozVhXDK' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'neYnacBB' \
    --code 'gvAHg9do' \
    --state '9FB1dfZQ' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "6mgVj3dx", "userIds": ["rL4U5qkY", "bfECIPPD", "tG56F2cV"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "VR3ZwVms", "code": "WyS7tc3O", "emailAddress": "OyKRfGsv", "languageTag": "n8mg8ujX", "newPassword": "Okikwk71"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'T2c2klIc' \
    --activeOnly 'false' \
    --limit '37' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lP5AsJlU' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZFf5ov8H' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iNrFlpBT' \
    --after '0.4886934077190179' \
    --before '0.8671449804324378' \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zlLX7xRp' \
    --after 'lWGCgfvI' \
    --before 'y9aMXgeP' \
    --limit '8' \
    --platformId 'MZsUR9L9' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ewEz4qLy' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '0fkXsW8j' \
    --body '{"platformId": "71vUtGCN", "platformUserId": "hdaIhqJ2"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'QfwmQpLq' \
    --body '{"chosenNamespaces": ["6sOikj0a", "cAlc7qDa", "YNEIVmf1"], "requestId": "MCapMedl"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '91oHFqo7' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G2lSbeWC' \
    --password 'mc9IEILn' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'AYNMMFnn' \
    --before '1NUiAxBA' \
    --isWildcard 'false' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '2hdpNivq' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "qms4Gvec", "emailAddress": "uUhKH1ZA", "languageTag": "9vzQhwzW"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "T9eWAAIc", "emailAddress": "9RrApxfa", "languageTag": "a5Qnh9Mu", "upgradeToken": "6YtkpS84"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'eRGDM1HG' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["wWSzwrMu", "KrCRg0ov", "21O2qj1p"], "oneTimeLinkCode": "J9XPa7Y4"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'ytRYhqK6' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "orLR4ss3"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 's2fLZm24' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'LBnXhLG0' \
    --code 'hoGQajNZ' \
    --error 'UpDRLnFk' \
    --state 'Fnf96V5m' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'RKiQ9A0a' \
    --payload 'sTkq4zCk' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'NE3m4Ubs' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 't1loWIK2' \
    --code 'yH5mZbnU' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'f0ZnSR03' \
    --upgradeSuccessToken 'ztdR32UQ' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '19' \
    --namespace 'sRp6yPxX' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'E8CVv35O' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'BDveUdGG' \
    --endDate 'TjOFdSjH' \
    --limit '28' \
    --offset '30' \
    --startDate 'lbx619Uw' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Qwe2gBgd' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "8k0P1Zak", "deviceId": "7DXLW2Gg", "deviceType": "bBONAzv7", "enabled": false, "endDate": "Hty2rVhT", "ext": {"CcDVcYjv": {}, "upZGYqH5": {}, "ocVmQzLf": {}}, "reason": "bbl2LelK"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'Vr9kJBdI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'fZnPRq7v' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '67m7rCie' \
    --startDate 'hT064Dv0' \
    --deviceType '9H1suhj6' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'flnc00WG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '1Uu5z42V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'cwRbjkHR' \
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
    --limit '15' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "EPKT2MIq", "policyId": "tkrMACiY", "policyVersionId": "6fn8Nngs"}, {"isAccepted": false, "localizedPolicyVersionId": "W5GU3Inw", "policyId": "hZmN49wF", "policyVersionId": "pJR8x0fN"}, {"isAccepted": false, "localizedPolicyVersionId": "A9Mjw647", "policyId": "ZnsjvJgf", "policyVersionId": "rkFwK1Pp"}], "count": 62, "userInfo": {"country": "tOrLvU6Q"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "94JK4pIz", "policyId": "hSDNsA68", "policyVersionId": "sAsBUxiz"}, {"isAccepted": true, "localizedPolicyVersionId": "HpAD5BdW", "policyId": "u2u3veyO", "policyVersionId": "8PMMCgYO"}, {"isAccepted": false, "localizedPolicyVersionId": "pgkzioIk", "policyId": "owMbUXHy", "policyVersionId": "ghjwz0Y3"}], "authType": "EMAILPASSWD", "code": "JGPIusxr", "country": "acMhBKWD", "dateOfBirth": "sS7CmRoH", "displayName": "HkDhY5qp", "emailAddress": "O3F815gC", "password": "XuQVcu8e", "passwordMD5Sum": "7k8ozPwg", "reachMinimumAge": false, "uniqueDisplayName": "podRs4HP", "username": "uQwLRLjc"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["XMzSSqgW", "92Rw2I9V", "1flykcYl"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["XzLuYUAE", "tbC9ruKd", "Z8W0Cgab"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'TXtdQdWh' \
    --body '{"avatarUrl": "0O63ei75", "country": "V5Fb1PtM", "dateOfBirth": "eQyCv9MR", "displayName": "tnbqNXLi", "languageTag": "4GpgIvXh", "skipLoginQueue": true, "tags": ["KSXTfYAF", "vrzn4sGS", "pQbGvLvz"], "uniqueDisplayName": "aUAmhNyG", "userName": "oCIIkbgk"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'DEBn4mCa' \
    --body '{"code": "hVp3s6eE", "emailAddress": "24IK8RXI"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Q1h1MKh5' \
    --body '{"factor": "WfLY7wpt", "mfaToken": "kWssiNOF"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ymRcTYfg' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'eedA2975' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UzFGHUHl' \
    --body '{"assignedNamespaces": ["0gEGUNhM", "0rwN799G", "cRpRw5Pm"], "roleId": "jtG3DuRl"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'MfIBRsf5' \
    --body '{"assignedNamespaces": ["eGyo3a4h", "v2RV3XUy", "33WMTOuB"], "roleId": "W91a5d4T"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '9Jzytpku' \
    --body '{"assignedNamespaces": ["5ReIE1bV", "FI40FPru", "kTMNdtb2"], "roleId": "kfqrBkaI"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '24' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "iXg3WP0t"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'R2rYJIa6' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'SCJ4De4y' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '2pIIEXWe' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "M8gQnu5M"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'e92BYp5P' \
    --body '{"permissions": [{"action": 28, "resource": "fRFEyBTK", "schedAction": 19, "schedCron": "b0IAskHn", "schedRange": ["UV5chWVs", "psWKd4sB", "MeI0MZlL"]}, {"action": 82, "resource": "4pr9lEde", "schedAction": 5, "schedCron": "cIwA6yej", "schedRange": ["i0s71dO6", "ndqCGwbe", "wDU7buGn"]}, {"action": 63, "resource": "kOGURS6w", "schedAction": 32, "schedCron": "dJTX7oKP", "schedRange": ["0FFLPVNo", "5yzWxwQl", "sRaxgcaI"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'uaWKpJHI' \
    --body '{"permissions": [{"action": 78, "resource": "X5d9xJi3", "schedAction": 35, "schedCron": "PaIllMn9", "schedRange": ["Ngf6TvVX", "aDCKcdqj", "5VqyMvVH"]}, {"action": 4, "resource": "fBknXwy7", "schedAction": 8, "schedCron": "pTS3JqYy", "schedRange": ["PzCUzn8A", "ZJe1X2X6", "hMFGiZkJ"]}, {"action": 90, "resource": "6J9R98b4", "schedAction": 19, "schedCron": "kj4RhsRN", "schedRange": ["iIUA0Y3w", "WtNtKwj7", "GU45m78G"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'LXRPsQ3l' \
    --body '["6EFHWKJe", "pDdHtCZ0", "pUlLjyBV"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '1fyzDiJI' \
    --after 'VAnkDhYo' \
    --before 'YMDjJUvs' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'LRarpwPY' \
    --body '{"assignedNamespaces": ["LlNetmHr", "390SGfOc", "Uxrn82v8"], "namespace": "42Ybe1O3", "userId": "mpXlaAEm"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'q6k1T271' \
    --body '{"namespace": "cHCsKezP", "userId": "6PUlRaMM"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["m5V1xFvt", "3DHt8W58", "hzKlXid3"], "emailAddresses": ["RGtQ5N51", "LxEgTPrx", "9K1wj1H7"], "isAdmin": false, "isNewStudio": false, "languageTag": "dT3CtK7O", "namespace": "Ip2QZNb6", "roleId": "gFtiCUXm"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "lAQtUYGY", "country": "fGhgx1ZJ", "dateOfBirth": "SudEW73s", "displayName": "sE0X4r0J", "languageTag": "QkKbQk0Y", "skipLoginQueue": true, "tags": ["sNWQxSVP", "LT5YwMYc", "qfBLWpdd"], "uniqueDisplayName": "VJrAidud", "userName": "68EXNp7w"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "N25D90hL", "mfaToken": "wBSt9tvj"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'KrCr35CA' \
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
    --body '{"factor": "PCHqIpE5", "mfaToken": "tO9bArC9"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag '8KUHcRHz' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'IJHoT2tf' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'ZCa91Fi4' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'e7T9kYbL' \
    --factor '4ginWIWA' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'GjQ8FXbf' \
    --languageTag '2F95gv8o' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "aBSuCHdx", "mfaToken": "8hcamaiE"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'YnzdGhTQ' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '5LLNPXDL' \
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
    --clientId 'ZNBLVXeV' \
    --linkingToken 'WpzusJYM' \
    --password '0LZE5qqI' \
    --username 'gbJj9FQV' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'rwe7b0rB' \
    --extendExp 'true' \
    --linkingToken '5HaLiGbh' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'WNNfQ0uZ' \
    --factor '0V04kKuk' \
    --mfaToken 'pAuDhdHn' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'dS4tP7kT' \
    --codeChallenge 'LyeegsRM' \
    --codeChallengeMethod 'plain' \
    --additionalData 'GMtBUbGD' \
    --clientId 'L738IgVQ' \
    --createHeadless 'false' \
    --deviceId 'pubnfI4c' \
    --macAddress 'hQY36EBn' \
    --platformToken 'LrKVQx2i' \
    --serviceLabel '0.6395151482045686' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'hxP8ds7m' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'CQTnRLJi' \
    --simultaneousTicket 'olHAugaI' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'FpJozSNj' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'R51NdTC9' \
    --codeChallengeMethod 'S256' \
    --additionalData 'mK2kshms' \
    --clientId 'mff4eVCo' \
    --clientSecret 'buGivXQh' \
    --code 'DFgsAmpb' \
    --codeVerifier 'RiMkq5B0' \
    --extendNamespace 'iPdENXAW' \
    --extendExp 'false' \
    --loginQueueTicket 'mGmzKQgQ' \
    --password 'DzX4xFE7' \
    --redirectUri 'k0hzsgsF' \
    --refreshToken 'OTjAV1Qe' \
    --scope 'roNds7VP' \
    --username '2SyuuIbi' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'pmwubEr1' \
    --code 'uFDNUg8d' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'FIk6q9UO' \
    --rawPUID 'false' \
    --body '{"pidType": "ZsnzHWqF", "platformUserIds": ["GRmoFrGw", "wr2FZhjQ", "wak8xuYP"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId '1qAhhCsI' \
    --platformUserId 'nEwMtY4J' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "6FIXEPK0", "policyId": "qDGgurvu", "policyVersionId": "QOqfLruA"}, {"isAccepted": true, "localizedPolicyVersionId": "w48zoznK", "policyId": "28ryT4iP", "policyVersionId": "VoeIOBnN"}, {"isAccepted": true, "localizedPolicyVersionId": "d9ZFLll5", "policyId": "qaT7NFjf", "policyVersionId": "aAJPRhOM"}], "authType": "EMAILPASSWD", "country": "DzXr6QHK", "dateOfBirth": "bpiwS1Ok", "displayName": "WiSzpHCp", "emailAddress": "2aoYdkec", "password": "8yPEpmB6", "passwordMD5Sum": "x40xuhRE", "uniqueDisplayName": "MQV5Jq57", "username": "ER9BCzgT", "verified": true}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "JiZdiH2Y", "policyId": "j83mTmBj", "policyVersionId": "Aw1ek9xV"}, {"isAccepted": false, "localizedPolicyVersionId": "xxJDl3nT", "policyId": "6Z5TBrQN", "policyVersionId": "5kmexBWm"}, {"isAccepted": true, "localizedPolicyVersionId": "6dM71mac", "policyId": "fbd2lrJs", "policyVersionId": "ILxlhErQ"}], "authType": "EMAILPASSWD", "code": "3wUehwQt", "country": "Cq47UifW", "dateOfBirth": "SWuQLNfc", "displayName": "bcOQj1fw", "emailAddress": "BPykTn0T", "password": "7orCqf0U", "passwordMD5Sum": "5lP0YAxK", "reachMinimumAge": true, "uniqueDisplayName": "qbmZGIit", "username": "SxPKBlCK"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'KVRsix33' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "LGj7YJqT", "policyId": "SPzJ9Ok4", "policyVersionId": "g0tGJmXB"}, {"isAccepted": false, "localizedPolicyVersionId": "Zwepn0yg", "policyId": "EfhMPubv", "policyVersionId": "tnqBCZSy"}, {"isAccepted": true, "localizedPolicyVersionId": "UIe1JsmM", "policyId": "DyezFSS4", "policyVersionId": "52JwpQb8"}], "authType": "EMAILPASSWD", "code": "SeZxsSlb", "country": "mjv93ICi", "dateOfBirth": "ib9lmqJk", "displayName": "S45a3KzK", "emailAddress": "yL4x36gA", "password": "MRIUS4Pv", "passwordMD5Sum": "QELeRkNx", "reachMinimumAge": true, "uniqueDisplayName": "xuoZll5H", "username": "NOoOv1AM"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "u2xGbNJx", "country": "ef6bT7n7", "dateOfBirth": "gaGedSe3", "displayName": "1GUUuDKi", "languageTag": "WWdasHkf", "uniqueDisplayName": "gWBPXozL", "userName": "LKFGHTUM"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ghpDrKa0", "emailAddress": "YEkA190C"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CzW9Mr03", "country": "BVdkS1cO", "dateOfBirth": "gCidXaZV", "displayName": "04v07iNu", "emailAddress": "ZLvxuril", "password": "OJGC9XP0", "reachMinimumAge": false, "uniqueDisplayName": "ojRLzaTg", "username": "76xtRJBo", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "dO3eLQiy", "displayName": "1a6TThtz", "emailAddress": "GeMWECkR", "password": "Py1pkVx7", "uniqueDisplayName": "RdK2yPx0", "username": "uMIPsH4z"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "av2QoS25", "mfaToken": "AgIThvlh"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'pJFPPkUG' \
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
    --body '{"factor": "qjvboI8K", "mfaToken": "KamnegBC"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'P4u3LpDd' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'cn7SK273' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'wnLSJcxy' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'CboorFbj' \
    --factor 'xoPu7dvE' \
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
    --action '2w5L8StJ' \
    --languageTag 'Qq7U008V' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "ISkXZYsX", "mfaToken": "B1ib0Lwt"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'xQHACz4u' \
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
    --factor 'sR6IJbVq' \
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
    --userId 'ojjN6mQt' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "I2vAOSsi", "emailAddress": "06KNoW9A", "languageTag": "mykKqF3N", "namespace": "MTrlF6wE", "namespaceDisplayName": "2GPhMUTR"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "cTLgl8GF", "policyId": "jf2dawBy", "policyVersionId": "tackAMjM"}, {"isAccepted": true, "localizedPolicyVersionId": "dq6Si4V7", "policyId": "FxFimTjT", "policyVersionId": "xq9Wuf5q"}, {"isAccepted": true, "localizedPolicyVersionId": "4V38BRkH", "policyId": "bzPk0ZV6", "policyVersionId": "NsdeO9ji"}], "code": "AUnSPkIC", "country": "bTzXDgdU", "dateOfBirth": "fhIkrBAi", "displayName": "hg2q2uqw", "emailAddress": "JG65v8lE", "password": "opTgwsF6", "reachMinimumAge": false, "uniqueDisplayName": "aC4tt1Pd", "username": "anSO8Rut", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE