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
    --body '{"modules": [{"docLink": "5ak9IZOz", "groups": [{"group": "n6bsNAOp", "groupId": "PwwK7426", "permissions": [{"allowedActions": [19, 83, 63], "resource": "ojBpZPHy"}, {"allowedActions": [89, 70, 66], "resource": "Uuw9e1ns"}, {"allowedActions": [62, 8, 12], "resource": "RfQuYh2o"}]}, {"group": "MZW8eXw6", "groupId": "Pw2vCoK3", "permissions": [{"allowedActions": [22, 26, 88], "resource": "63c10Ylz"}, {"allowedActions": [94, 25, 30], "resource": "v9QxxWHg"}, {"allowedActions": [42, 9, 51], "resource": "wBFNCbdj"}]}, {"group": "etgZHEPv", "groupId": "WrLx4LtN", "permissions": [{"allowedActions": [92, 95, 63], "resource": "9sSQgXeq"}, {"allowedActions": [78, 89, 17], "resource": "9xqdMspR"}, {"allowedActions": [94, 78, 27], "resource": "nniEVGmC"}]}], "module": "Vd7DGGOP", "moduleId": "LrFZ26NF"}, {"docLink": "dZFCAp11", "groups": [{"group": "BObcXGQK", "groupId": "ynp4QdUM", "permissions": [{"allowedActions": [74, 42, 15], "resource": "778fw4Oa"}, {"allowedActions": [100, 85, 54], "resource": "zg2KEuNp"}, {"allowedActions": [99, 98, 16], "resource": "UIBlcqb9"}]}, {"group": "iYxxDyEI", "groupId": "TwAK2xPP", "permissions": [{"allowedActions": [56, 82, 16], "resource": "qHoQpFzf"}, {"allowedActions": [55, 46, 18], "resource": "kFjVh1cj"}, {"allowedActions": [88, 12, 10], "resource": "gUki9dtL"}]}, {"group": "u0zduPnA", "groupId": "r2I8vsDR", "permissions": [{"allowedActions": [29, 80, 4], "resource": "tGOrq65v"}, {"allowedActions": [30, 14, 4], "resource": "0DSpypEb"}, {"allowedActions": [15, 72, 2], "resource": "F1bQtwnv"}]}], "module": "DDv09U14", "moduleId": "BSuuz66e"}, {"docLink": "nh6X8oE7", "groups": [{"group": "dFvX0mLI", "groupId": "mvwHRRd0", "permissions": [{"allowedActions": [70, 72, 89], "resource": "XLaVFTfK"}, {"allowedActions": [36, 98, 30], "resource": "mm3lxcn9"}, {"allowedActions": [89, 57, 74], "resource": "YmWiBFgz"}]}, {"group": "N7DvXEtv", "groupId": "3aUPw2j2", "permissions": [{"allowedActions": [43, 99, 19], "resource": "SkW4I4vK"}, {"allowedActions": [31, 35, 21], "resource": "9tcUbNBN"}, {"allowedActions": [37, 0, 66], "resource": "l0lsxWyV"}]}, {"group": "TkO8tfUG", "groupId": "JmQIU3xb", "permissions": [{"allowedActions": [49, 74, 58], "resource": "PYZ32GgY"}, {"allowedActions": [20, 64, 87], "resource": "YqWHzzCm"}, {"allowedActions": [17, 30, 47], "resource": "XWxwidrp"}]}], "module": "E5vInWpj", "moduleId": "rsVvIXnO"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "Ozwq74lB", "moduleId": "UuXCRp5S"}' \
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
    --body '[{"field": "RyRXjdcT", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["OQjinlGF", "eowNrwza", "m4wSmKfL"], "preferRegex": true, "regex": "IRz1xDzt"}, "blockedWord": ["lkmbiqBL", "GyVvjhAJ", "uX0sSQP2"], "description": [{"language": "yM8gxF13", "message": ["4BYQFeSu", "8qy7NiyS", "RSa0TPid"]}, {"language": "bnZmg05d", "message": ["z7iK5YEU", "yzeVhvLd", "QhX9HcK3"]}, {"language": "gfXtAHjj", "message": ["jsNb8QjZ", "WT1KTuVW", "yDcD0175"]}], "isCustomRegex": false, "letterCase": "xzvxJbf0", "maxLength": 28, "maxRepeatingAlphaNum": 43, "maxRepeatingSpecialCharacter": 5, "minCharType": 71, "minLength": 30, "profanityFilter": "cZ00CTJP", "regex": "p6J3KN0F", "specialCharacterLocation": "dZUI4ylC", "specialCharacters": ["DMflDktI", "xgM4Uawb", "mZD9Xu03"]}}, {"field": "jYXhGTaA", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["DRuD8SJh", "N80FDMGx", "hMGMEB2N"], "preferRegex": true, "regex": "vXF0lJlm"}, "blockedWord": ["WbmJcCIo", "MyNBT4f6", "5ShaXZHz"], "description": [{"language": "A31CTtca", "message": ["ZcNvNxnn", "WnsCpHDt", "AiHwBz51"]}, {"language": "pM8onR5H", "message": ["8AfZkZmF", "ByxK8uWH", "ogSQCt8F"]}, {"language": "CuJyYgRw", "message": ["o54QBqBY", "rzzuiR1n", "vC2YloO2"]}], "isCustomRegex": true, "letterCase": "R9F3xCAv", "maxLength": 30, "maxRepeatingAlphaNum": 95, "maxRepeatingSpecialCharacter": 57, "minCharType": 57, "minLength": 16, "profanityFilter": "WGZSCIdI", "regex": "daQE0a1Y", "specialCharacterLocation": "hnTrMEbC", "specialCharacters": ["IibCeNtc", "CU2hrEIY", "yLpmMKzR"]}}, {"field": "OzA8Ga9Y", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["kcKn2aXH", "vfINn6PZ", "AF3QKtZZ"], "preferRegex": false, "regex": "BCFMSMCd"}, "blockedWord": ["tDTPpHxd", "Mr508dDe", "wzOyjvkg"], "description": [{"language": "70teGxfl", "message": ["L4ajjGXZ", "nUcCBUe4", "lfTgh4U7"]}, {"language": "8waK1hRf", "message": ["vRPhiBSS", "XS2z52DH", "JxVrLLhG"]}, {"language": "oujfBMwY", "message": ["7tQEaCJX", "0sCGWXCx", "cnoSA503"]}], "isCustomRegex": true, "letterCase": "lnKIfnCF", "maxLength": 92, "maxRepeatingAlphaNum": 0, "maxRepeatingSpecialCharacter": 96, "minCharType": 5, "minLength": 92, "profanityFilter": "VMfbs8MF", "regex": "aXUM6TCp", "specialCharacterLocation": "LGI4Mnuv", "specialCharacters": ["8T3PR1wF", "EIUsxGam", "tvI54DM9"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field '3QVvI5j9' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'doSmebO4' \
    --before 'GqD0QpFn' \
    --endDate '6eRNa58i' \
    --limit '71' \
    --query '4MlmIASV' \
    --roleId 'eyJhvM4k' \
    --startDate 'onVx0NEl' \
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
    --body '{"ageRestriction": 98, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'Ga3VLMJV' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 56}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'yEqjCEwt' \
    --limit '70' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "8XnD4Eqd", "comment": "qo8tClcT", "endDate": "cNYtWhXw", "reason": "lYJza59O", "skipNotif": false, "userIds": ["cV3050RP", "rJu16VRx", "HF5t1M6E"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "RXaGIbUR", "userId": "QNJVNl1g"}, {"banId": "eN3do4Gs", "userId": "SXD7XIBt"}, {"banId": "HW8JDlSd", "userId": "MAPOwUqL"}]}' \
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
    --clientId 'fP9Y5fle' \
    --clientName 'ItfdJbyk' \
    --clientType 'p98QIbE4' \
    --limit '24' \
    --offset '67' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["ufC8XwML", "BtNGQD0R", "5Ke9W3Yz"], "clientUpdateRequest": {"audiences": ["uEThiH4w", "F8O6YEJS", "LvSJELzD"], "baseUri": "jTMkswtw", "clientName": "nxEOF4Lj", "clientPermissions": [{"action": 2, "resource": "nmxN1zL6", "schedAction": 29, "schedCron": "HarScpPv", "schedRange": ["r42SjM7p", "dj91QnGS", "wAoV6M9B"]}, {"action": 86, "resource": "ifMJrmBX", "schedAction": 53, "schedCron": "tCmpUuxC", "schedRange": ["pbyEGluw", "EZgyCthA", "Fk0RBJMT"]}, {"action": 9, "resource": "JFS1MxDK", "schedAction": 93, "schedCron": "B1phlQvI", "schedRange": ["1eBxKHcl", "T8GaHiEP", "7BY9PKLP"]}], "clientPlatform": "Xf4Vw5N2", "deletable": false, "description": "RtXx5OGX", "modulePermissions": [{"moduleId": "JzDQ9XKY", "selectedGroups": [{"groupId": "RjAHQjil", "selectedActions": [67, 11, 19]}, {"groupId": "FV5u8gE3", "selectedActions": [60, 13, 49]}, {"groupId": "WmNGwZRQ", "selectedActions": [17, 64, 7]}]}, {"moduleId": "GxQklcgf", "selectedGroups": [{"groupId": "kf6hxicv", "selectedActions": [31, 27, 13]}, {"groupId": "rlyrtXs2", "selectedActions": [28, 60, 66]}, {"groupId": "2UCZEaLM", "selectedActions": [73, 17, 50]}]}, {"moduleId": "0pSoxzqW", "selectedGroups": [{"groupId": "HC9S6XLu", "selectedActions": [23, 87, 71]}, {"groupId": "cAL1UReN", "selectedActions": [54, 44, 60]}, {"groupId": "HpULcTBR", "selectedActions": [30, 55, 66]}]}], "namespace": "SznIL3um", "oauthAccessTokenExpiration": 80, "oauthAccessTokenExpirationTimeUnit": "draQZzzK", "oauthRefreshTokenExpiration": 16, "oauthRefreshTokenExpirationTimeUnit": "9l6oxs2P", "redirectUri": "ffTUoflw", "scopes": ["QpZtXQsM", "7elpkZ82", "QHwIUP4S"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["yrKg081N", "oMzJLprB", "EK5j16Jd"], "baseUri": "OGHEop3U", "clientId": "lyt4NrAm", "clientName": "oxZX3dXv", "clientPermissions": [{"action": 82, "resource": "MgQpgRJf", "schedAction": 79, "schedCron": "9jp6QAun", "schedRange": ["GAWUfrzu", "fDTObYD9", "GlL7GYiY"]}, {"action": 84, "resource": "o4WifFHu", "schedAction": 97, "schedCron": "10oEOdsJ", "schedRange": ["GxxpfWZm", "NdSSXGir", "hIRvFBIz"]}, {"action": 4, "resource": "TVx8mKc9", "schedAction": 89, "schedCron": "rHimZKSi", "schedRange": ["wvVIFNzm", "YB82aHu1", "7mmJoJGA"]}], "clientPlatform": "f9jri90M", "deletable": true, "description": "PANTKgkJ", "modulePermissions": [{"moduleId": "SIcbNOKe", "selectedGroups": [{"groupId": "sRwYOwn3", "selectedActions": [98, 73, 41]}, {"groupId": "iA9SPwpD", "selectedActions": [23, 100, 40]}, {"groupId": "OtN9HqLh", "selectedActions": [80, 8, 13]}]}, {"moduleId": "mDbCCDia", "selectedGroups": [{"groupId": "JXgzgUE6", "selectedActions": [57, 69, 46]}, {"groupId": "y94SXa2g", "selectedActions": [21, 84, 99]}, {"groupId": "EA3mur4Q", "selectedActions": [42, 90, 61]}]}, {"moduleId": "n09Ps09Z", "selectedGroups": [{"groupId": "Knu6w9k6", "selectedActions": [27, 91, 25]}, {"groupId": "Bh2Ll53w", "selectedActions": [68, 43, 38]}, {"groupId": "Z2K5v100", "selectedActions": [22, 76, 58]}]}], "namespace": "Mzw179YM", "oauthAccessTokenExpiration": 51, "oauthAccessTokenExpirationTimeUnit": "PLp4wwq0", "oauthClientType": "GTrUPqMM", "oauthRefreshTokenExpiration": 96, "oauthRefreshTokenExpirationTimeUnit": "THTZ4aoC", "parentNamespace": "g2EHYNj5", "redirectUri": "kaylwz9s", "scopes": ["xPZr14fn", "B6PrLMCk", "0wNC0qjh"], "secret": "U912UcN6", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'QewSaTj3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'CeWmkK2K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '9fqsVhmh' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["KBEChvLp", "8AwN7Ji4", "5ntq7gvF"], "baseUri": "QzjlVSkc", "clientName": "dQXavYVO", "clientPermissions": [{"action": 24, "resource": "GiIjYkbS", "schedAction": 100, "schedCron": "Yss1aVWl", "schedRange": ["ks2Mhfut", "KiWH7zQ4", "BMdxDqH8"]}, {"action": 21, "resource": "4WvzxZ2v", "schedAction": 18, "schedCron": "itCWZwSC", "schedRange": ["ulV7JomN", "sf0funaF", "5L12sdkC"]}, {"action": 24, "resource": "828u1NKc", "schedAction": 32, "schedCron": "oS949oWa", "schedRange": ["MFVKMuHK", "TW8ivYff", "so3qYXlJ"]}], "clientPlatform": "W1w1XKfm", "deletable": false, "description": "TSvJHP4S", "modulePermissions": [{"moduleId": "anSJdvFS", "selectedGroups": [{"groupId": "PmUlb5re", "selectedActions": [39, 34, 62]}, {"groupId": "7BqMlueC", "selectedActions": [68, 67, 19]}, {"groupId": "P3OTHhsL", "selectedActions": [12, 3, 53]}]}, {"moduleId": "OUHFQGKa", "selectedGroups": [{"groupId": "K5TfpRqX", "selectedActions": [69, 19, 84]}, {"groupId": "SLfqx2w4", "selectedActions": [68, 90, 47]}, {"groupId": "MdiAIvyv", "selectedActions": [63, 56, 67]}]}, {"moduleId": "KDCL61yX", "selectedGroups": [{"groupId": "DsZu5KCG", "selectedActions": [56, 52, 90]}, {"groupId": "2vj9CrTn", "selectedActions": [63, 35, 57]}, {"groupId": "CCWz1NBX", "selectedActions": [91, 13, 16]}]}], "namespace": "BEjdNnqN", "oauthAccessTokenExpiration": 76, "oauthAccessTokenExpirationTimeUnit": "krjgWwNX", "oauthRefreshTokenExpiration": 76, "oauthRefreshTokenExpirationTimeUnit": "v5IqUQpU", "redirectUri": "7kgUFMm6", "scopes": ["GcBvpJG6", "X6Pgah6J", "qoBoCGkv"], "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'R9NmiMFo' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 40, "resource": "WxjLRlpp"}, {"action": 40, "resource": "pPWPGLCN"}, {"action": 24, "resource": "3UVfM1iU"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'GTQIoQIk' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 44, "resource": "6JyA2q4q"}, {"action": 91, "resource": "LJMIEngs"}, {"action": 35, "resource": "IaObGr2B"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '55' \
    --clientId 'tEYLADkk' \
    --namespace $AB_NAMESPACE \
    --resource 'I5AOqNc1' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'Rcic2ERX' \
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
    --body '{"blacklist": ["5DfZK4yM", "Eyqk1Szj", "CKRVxBNG"]}' \
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
    --body '{"active": true, "roleIds": ["y4aSUMDT", "ZacGAXqJ", "YSLO4yF2"]}' \
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
    --limit '38' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ImWBVcNO' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7lzgldtg' \
    --body '{"ACSURL": "qpTywvY8", "AWSCognitoRegion": "1wsYqHy0", "AWSCognitoUserPool": "N5yjKJAm", "AllowedClients": ["CCYK4Ze4", "NH7LVFyO", "7a1Gs9lp"], "AppId": "Qx1iJPiX", "AuthorizationEndpoint": "0tRI9xih", "ClientId": "7IT7RHmn", "EmptyStrFieldList": ["07NTyXo4", "Q1PjeBTw", "YpWE0adV"], "EnableServerLicenseValidation": false, "Environment": "IfNnWHfe", "FederationMetadataURL": "qKs7d75S", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "9ksQWjEd", "JWKSEndpoint": "Jd3J8t5r", "KeyID": "wlY4ucXb", "LogoURL": "WdjE6MMi", "NetflixCertificates": {"encryptedPrivateKey": "kaaB7Att", "encryptedPrivateKeyName": "R0iNjPtq", "publicCertificate": "G7IvUHJf", "publicCertificateName": "p89AkLZi", "rootCertificate": "8NgIylqB", "rootCertificateName": "zJQoFQlY"}, "OrganizationId": "PcrsZSXT", "PlatformName": "yuOLOFQF", "PrivateKey": "ky8yr4kv", "RedirectUri": "6LSJw19P", "RegisteredDomains": [{"affectedClientIDs": ["llB0Tjg6", "ryt2end1", "HiAQHNBh"], "domain": "7giYDpye", "namespaces": ["PhPDQG8C", "7UkgbxK1", "bTZvI2SY"], "roleId": "zEAKTT1e", "ssoCfg": {"googleKey": {"K9KD6W6P": {}, "XK30DWl6": {}, "W3cZJaRO": {}}, "groupConfigs": [{"assignNamespaces": ["2jXSdcxP", "dMaK5IbB", "iMSh42jR"], "group": "hLPMyllz", "roleId": "iJ8t9YDi"}, {"assignNamespaces": ["No38tE3o", "UmCKa1mI", "S0r3Gp9X"], "group": "CFgn9f2v", "roleId": "wzF3Rr4J"}, {"assignNamespaces": ["6xs8SCD9", "Bjx9FyKG", "rGDwRk04"], "group": "QtQLMyQJ", "roleId": "B5pYklgh"}]}}, {"affectedClientIDs": ["yYIARgfK", "qLeeSipO", "tH3TvtfU"], "domain": "sYzNaGbu", "namespaces": ["IGaQitxC", "CLCLIZ7u", "tZ9f0Ben"], "roleId": "oALTMA9d", "ssoCfg": {"googleKey": {"3Bs1mHnE": {}, "yqdpH9lU": {}, "0UGoBRrR": {}}, "groupConfigs": [{"assignNamespaces": ["EXqWGbzx", "WlaIhIfu", "J2eM5Cci"], "group": "OrcPNx1l", "roleId": "D4b8OXkY"}, {"assignNamespaces": ["EgifDuAh", "uGbBnQVv", "5Xjg6UPY"], "group": "jRbWofwD", "roleId": "7RkZKdIZ"}, {"assignNamespaces": ["16nAqhgA", "r4H4XmbI", "kge3BoHf"], "group": "ejRgQ9vh", "roleId": "QP0KqE5z"}]}}, {"affectedClientIDs": ["8WfhVqdv", "PIov4aKn", "FIyYEOie"], "domain": "gjL1Ggyz", "namespaces": ["OYrnbvG0", "1ID4Wfjb", "MtXuAOzf"], "roleId": "m8uk7SGP", "ssoCfg": {"googleKey": {"K64aVtJX": {}, "LSV1uLuc": {}, "es7LVADO": {}}, "groupConfigs": [{"assignNamespaces": ["gHkGTAr6", "6iPZ50vO", "1Z37UIbX"], "group": "XHFk47OX", "roleId": "v2zxO8yO"}, {"assignNamespaces": ["FiHCZSra", "DSVkqqcp", "OkAaP3EI"], "group": "4g9sFGeH", "roleId": "7YlZeH3j"}, {"assignNamespaces": ["kTtbZZXx", "a1rqcHky", "HAAZxbQt"], "group": "LvdOafXv", "roleId": "U0uwhEen"}]}}], "RelyingParty": "EuA0DSfw", "SandboxId": "atnNLONb", "Secret": "kxNrZPWr", "TeamID": "XmRyyyZf", "TokenAuthenticationType": "oVYQOozE", "TokenClaimsMapping": {"e3awRnMv": "HrBgNRJ1", "6A4ATHAF": "P1weNtRq", "9jDHtLSB": "brZOB0xQ"}, "TokenEndpoint": "u7V84rKL", "UserInfoEndpoint": "7cFt5xDd", "UserInfoHTTPMethod": "b1aM2baR", "googleAdminConsoleKey": "qvqFIo65", "scopes": ["gRYKjC1l", "AxCMyVSP", "D2S8Qo6I"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'i6iEKI2f' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'j0792AlT' \
    --body '{"ACSURL": "jdoZQzHg", "AWSCognitoRegion": "ds6H1nyc", "AWSCognitoUserPool": "hkfvCsq4", "AllowedClients": ["Jyfi1gxG", "3CNEe9Ik", "3W8lh0c5"], "AppId": "sDx5nIQI", "AuthorizationEndpoint": "joPMtU1G", "ClientId": "Lwgu67ay", "EmptyStrFieldList": ["YeVyC62b", "SQPMuKyS", "YOHCMnR7"], "EnableServerLicenseValidation": false, "Environment": "WpDPv1jB", "FederationMetadataURL": "lOvRxSNF", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "8TZwYllw", "JWKSEndpoint": "WXDtbJdw", "KeyID": "mdkH4HBn", "LogoURL": "wYesFlYn", "NetflixCertificates": {"encryptedPrivateKey": "TbIz1shM", "encryptedPrivateKeyName": "14CdxcYe", "publicCertificate": "CeU7HdBm", "publicCertificateName": "1y4DgTxz", "rootCertificate": "bG3FUQzz", "rootCertificateName": "auZa7HNu"}, "OrganizationId": "TgBEL2HU", "PlatformName": "48oE0gW2", "PrivateKey": "sltUUIPD", "RedirectUri": "igkNJzCc", "RegisteredDomains": [{"affectedClientIDs": ["2e5mJP7l", "ld1dUe8j", "1yroC4Cc"], "domain": "WtmBVtKL", "namespaces": ["j3K1JFiq", "Nflucgw7", "EZqn5upm"], "roleId": "MIHrEVeF", "ssoCfg": {"googleKey": {"3MwCPIlB": {}, "nmecRPsM": {}, "J6MP1F3x": {}}, "groupConfigs": [{"assignNamespaces": ["ppmQaM4D", "1MDiBX5E", "vNEEDbcG"], "group": "Q10m49UX", "roleId": "ItyCQlXX"}, {"assignNamespaces": ["ExZadFTZ", "Jo1b9xoo", "opm5108P"], "group": "xR07GXr7", "roleId": "hG7NNKGP"}, {"assignNamespaces": ["Pq5TO3SL", "Abn2hW3V", "BZ346OAR"], "group": "dnqiIlX4", "roleId": "EfFKblZb"}]}}, {"affectedClientIDs": ["i5wvte5C", "jYSe3GIU", "PBvRvV1M"], "domain": "1SQRhVHb", "namespaces": ["wndQzIeo", "MUnV2BpB", "mDBcsppN"], "roleId": "UsCW3mfX", "ssoCfg": {"googleKey": {"hH8gKdqe": {}, "KghWnvK1": {}, "FSnapPq9": {}}, "groupConfigs": [{"assignNamespaces": ["zGOJP2wq", "2SpQCbrN", "vcg2nRt4"], "group": "aGKlnCK2", "roleId": "w34sEzyV"}, {"assignNamespaces": ["kGIrhhSx", "E5maHNno", "LWuX2O0C"], "group": "AHs4AkX8", "roleId": "1v9koxCm"}, {"assignNamespaces": ["344eXGRC", "mNncjBTz", "vaKDR7rV"], "group": "9FNk8EHF", "roleId": "ittlQxuw"}]}}, {"affectedClientIDs": ["9Px2YO9w", "1hvDpRHe", "s40GdwPo"], "domain": "zfIWFiVt", "namespaces": ["a1WVAi5P", "dcSZrhcA", "iuSZ9qrr"], "roleId": "Bva4ugRn", "ssoCfg": {"googleKey": {"EGQriQhs": {}, "hUYMGZht": {}, "MlIYRP4v": {}}, "groupConfigs": [{"assignNamespaces": ["ZUuibApI", "RT9itXhG", "vvgNYTNA"], "group": "SaAhM1HG", "roleId": "Ig3UWmeZ"}, {"assignNamespaces": ["UDNiShnp", "WXGbdwW0", "nUAh9n6A"], "group": "pWjKrVZU", "roleId": "c2NBazrF"}, {"assignNamespaces": ["2lFdzj43", "XFNBy04F", "yCV4bN4M"], "group": "O18lCvbF", "roleId": "ilYaNO9J"}]}}], "RelyingParty": "wFI9B65h", "SandboxId": "szaxV19n", "Secret": "wFj6LzUd", "TeamID": "3vK1UAyU", "TokenAuthenticationType": "QDofBFB0", "TokenClaimsMapping": {"O7nfe6cX": "8DakT9Fk", "57kI6OOU": "FP5vF5nX", "UgzeemNF": "ZUPEuIwb"}, "TokenEndpoint": "1bYF80Gh", "UserInfoEndpoint": "OUJFps72", "UserInfoHTTPMethod": "QdsxXFJe", "googleAdminConsoleKey": "vJn8eNNE", "scopes": ["CDnfTd8l", "JJhZ01Sz", "4vo4I5Qb"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TXfaMwWR' \
    --body '{"affectedClientIDs": ["iuac8CEn", "Og4NwINp", "3QdeJpyV"], "assignedNamespaces": ["JZd38nNU", "AjRQiPBt", "k6hL2WPj"], "domain": "kwu0I8l7", "roleId": "jNxO86s9", "ssoCfg": {"googleKey": {"PB0vzue8": {}, "saHjH310": {}, "wYKLDnuq": {}}, "groupConfigs": [{"assignNamespaces": ["6rIqG0dJ", "enc1ZY8b", "AG8uzu7t"], "group": "4WvtM6d1", "roleId": "UkJeiiq1"}, {"assignNamespaces": ["658onBFP", "AIidHcSd", "hKMN1zW7"], "group": "nFZHHiGn", "roleId": "cbgYP2kf"}, {"assignNamespaces": ["oPa0PzWM", "nEldBou4", "HUgYJmKU"], "group": "7m8kS3wZ", "roleId": "xpIC2d37"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'njpATdzf' \
    --body '{"domain": "1DOIh9W6", "ssoGroups": ["k96C3mBW", "2rdwMB74", "gaTUDhKB"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'voL0NniY' \
    --body '{"affectedClientIDs": ["9mvJTrSl", "L0SZobjU", "eb4dAc3w"], "assignedNamespaces": ["5ygJJqUr", "X12waUwC", "qrrq3uk2"], "domain": "DZtsUGnC", "roleId": "r3IeBRbE", "ssoCfg": {"googleKey": {"5fksSZly": {}, "TRkgTi12": {}, "Bxem7O8J": {}}, "groupConfigs": [{"assignNamespaces": ["CrbD5qa4", "RVtpQ3T8", "3JDfwgaS"], "group": "mxoTJ3qE", "roleId": "MrmSb2vg"}, {"assignNamespaces": ["4jEnVQLy", "lJQk3XxZ", "Zqc1YgM7"], "group": "IGW4djVU", "roleId": "DCL5PfgD"}, {"assignNamespaces": ["W0W5iBJJ", "sjZYTsPZ", "uHMb8EM9"], "group": "pBBjUM00", "roleId": "Vgk8drOJ"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'wZcHYs6y' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'SlawnEPS' \
    --body '{"acsUrl": "jEZZ6zyc", "apiKey": "1pcxi9OB", "appId": "GUABhgBf", "federationMetadataUrl": "MG3yNv6z", "isActive": true, "redirectUri": "WBqAhkhq", "secret": "j6j0bqG0", "ssoUrl": "MAxfeySE"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A8C3uLTt' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'rNVc39x2' \
    --body '{"acsUrl": "u0tgp1FL", "apiKey": "sjzYiVHc", "appId": "FnrTNvVk", "federationMetadataUrl": "QSOScePQ", "isActive": false, "redirectUri": "MSIuH1CP", "secret": "SA0Dh0c7", "ssoUrl": "fsl3PSBk"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XyKEMWYD' \
    --rawPID 'false' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["UrPGdJqM", "KrUJhcrs", "5n6e70cJ"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OSuiTPcs' \
    --platformUserId '1qH8pReL' \
    --pidType 'CTT8kM3z' \
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
    --field 'username' \
    --body '{"config": {"minimumAllowedInterval": 26}, "type": "IuSQCkXL"}' \
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
    --identity 'VIEW_ONLY' \
    --body '{"additions": [{"actions": [38, 93, 30], "resource": "EkwdF4rZ"}, {"actions": [12, 63, 15], "resource": "RU0RJnpG"}, {"actions": [82, 89, 77], "resource": "lW5uYKyr"}], "exclusions": [{"actions": [1, 67, 34], "resource": "dGQlRsAT"}, {"actions": [16, 10, 22], "resource": "VOm1V3tT"}, {"actions": [18, 94, 95], "resource": "OPvqlJaM"}], "overrides": [{"actions": [21, 95, 50], "resource": "eRLS0jrx"}, {"actions": [65, 7, 41], "resource": "EQ1nfkNI"}, {"actions": [36, 62, 31], "resource": "tO0wa4YX"}], "replacements": [{"replacement": {"actions": [57, 97, 83], "resource": "p1656RGY"}, "target": "y4zmicFA"}, {"replacement": {"actions": [70, 99, 99], "resource": "bkuGQFE4"}, "target": "Lv1OGiQY"}, {"replacement": {"actions": [85, 35, 77], "resource": "WIB4cGdl"}, "target": "gJ6CDJN3"}]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateRoleOverrideConfigV3' test.out

#- 159 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
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
    --roleId 'CHbdaxKu' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'PqwCtgeK' \
    --after '28' \
    --before '89' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '41' \
    --tagName 'QLPsQDfP' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "FYP61vx6"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'aUh2buiz' \
    --body '{"tagName": "UKBhlXDI"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'RiTG3SDS' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'ZLXFodkv' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["dqZ7uvCE", "jeU7hvlv", "3BqeYPcj"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'bwFvOcmR' \
    --body '{"bulkUserId": ["Ub8mDb1F", "Dvw63xZH", "BbsqCVbJ"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["gBRKbbLa", "yVufubv5", "2hkpNZTD"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["OlHoQW7Z", "wyxEumGG", "fMb280Q5"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "iVwDhKv4", "userId": "gSLowMEw"}, "fields": ["boKQtD7t", "V3pXORzi", "ZH0Nuous"], "limit": 14}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["bnXQ8MAG", "Qg3r28Iv", "NOHviZx7"], "isAdmin": false, "languageTag": "lORQ8QW0", "namespace": "YBSqWaAe", "roles": ["5SEU198l", "JD3q0qxs", "kvKy8QgW"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '47' \
    --platformUserId 'B64Ektsj' \
    --platformId 'o5rVqMrs' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'LGzmYcmG' \
    --endDate 'INN3KB62' \
    --includeTotal 'true' \
    --limit '19' \
    --offset '11' \
    --platformBy 'pHzsYgpg' \
    --platformId 'hdFItgNd' \
    --query '17l6b5kB' \
    --roleIds 'w7AviQQ7' \
    --selectedFields '0On8Bsmx' \
    --skipLoginQueue 'true' \
    --startDate 'iLnH4mJQ' \
    --tagIds 'YG1nZUD5' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["MjstLOuV", "AyzQW4RY", "bYJLPD9n"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TbLBhA11' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iukKPGXu' \
    --body '{"avatarUrl": "x4MrZMql", "country": "8vy7Ii8O", "dateOfBirth": "2kz9Kjyr", "displayName": "lwoxW53o", "languageTag": "fej1oz8H", "skipLoginQueue": false, "tags": ["DH1mLcuP", "3z5lbfzF", "kre73JVe"], "uniqueDisplayName": "O2WHK6IW", "userName": "RBLrtzbY"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yg5v3F19' \
    --activeOnly 'true' \
    --after 'SijTfPpQ' \
    --before 'GrFcg0gy' \
    --limit '78' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Sp43uSCc' \
    --body '{"ban": "bw7YvZp9", "comment": "uTElmel5", "endDate": "xqZnw5F2", "reason": "iKAUy4Dw", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CiKKXts0' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'Wldg7YLv' \
    --namespace $AB_NAMESPACE \
    --userId 'tNccsYzu' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zcZV4tmo' \
    --body '{"context": "3fs943ai", "emailAddress": "cZSHk5DC", "languageTag": "ab3n7GZP", "upgradeToken": "UrW6vOF4"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iXeT1i2w' \
    --body '{"Code": "3B5B0IBJ", "ContactType": "0EjwzUe5", "LanguageTag": "RWyiomMF", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'XDVf26AI' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WKWMjZg3' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UrCUmZ4T' \
    --body '{"deletionDate": 75, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 't4SSjbvg' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'frrWPnQq' \
    --body '{"code": "bt7DD8pH", "country": "O0hMVRTy", "dateOfBirth": "wci1qH6h", "displayName": "EW1pNosF", "emailAddress": "RrblR9VT", "password": "po6FSo1A", "uniqueDisplayName": "ZOaDW1aP", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cAOdSg5i' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hZJdJ9ND' \
    --after '0.485796160351047' \
    --before '0.592519050885592' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uP6FbozU' \
    --body '{"languageTag": "rXVDaAfF", "mfaToken": "Voqiyf9a", "newPassword": "LEtbf4it", "oldPassword": "ud3cjlnj"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ConK9y2Y' \
    --body '{"Permissions": [{"Action": 64, "Resource": "txDXG0AW", "SchedAction": 54, "SchedCron": "0fCiAikZ", "SchedRange": ["xMLncmLa", "GiFq9w67", "4dtENG1X"]}, {"Action": 18, "Resource": "4uKYQmkc", "SchedAction": 78, "SchedCron": "LzoOwtRu", "SchedRange": ["Ch5FP7Bg", "Jn9oZmZ0", "igBeFh1E"]}, {"Action": 6, "Resource": "UYOdde9S", "SchedAction": 78, "SchedCron": "SIiyrvjN", "SchedRange": ["yCSZA9xZ", "IXsHbn8Z", "wGqs9kLU"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UH8n47id' \
    --body '{"Permissions": [{"Action": 90, "Resource": "Sdxn3RDm", "SchedAction": 94, "SchedCron": "z7fKZLxi", "SchedRange": ["R2IEHt02", "91JVUYA6", "bJW8ea4M"]}, {"Action": 78, "Resource": "qEYTXJVt", "SchedAction": 51, "SchedCron": "pgwFwz3m", "SchedRange": ["CuFY9DZP", "IsUzotf6", "sf6KN9Qu"]}, {"Action": 30, "Resource": "LZ9zDiIp", "SchedAction": 15, "SchedCron": "uTytcRNI", "SchedRange": ["BDabueoo", "26WU3nu2", "A2MRYYgX"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FNafsVG2' \
    --body '[{"Action": 14, "Resource": "PtMOhcT3"}, {"Action": 9, "Resource": "h8HliIvj"}, {"Action": 41, "Resource": "p7kLv0tw"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '16' \
    --namespace $AB_NAMESPACE \
    --resource 'IJqHzySx' \
    --userId 'TbX12iZg' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '32QU4LtB' \
    --after 'GGQ0qdtM' \
    --before 'PPH9gyax' \
    --limit '58' \
    --platformId 'naXPZe4R' \
    --targetNamespace 'Bt4gNxdp' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '4QoWDcFn' \
    --status 'P0SX1pmn' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '9hGcoVGF' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'UpXpPzHz' \
    --userId 'FB3RXp3r' \
    --createIfNotFound 'true' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'zdmxlSae' \
    --userId 'yVh5hwgR' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'DULT6v7Q' \
    --skipConflict 'true' \
    --body '{"platformId": "iVg9Yuiw", "platformUserId": "mXNgRilk"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aJIf8faI' \
    --platformId 'sMmuQcoo' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jdL5FfLo' \
    --userId 'dyNQb3Nm' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FE00AZg2' \
    --userId 'KlwTP6jA' \
    --ticket 'izP0ra0K' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'U9RTHfk6' \
    --userId 'geeR06RS' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LKQZunns' \
    --userId 'GuZ7FYv4' \
    --platformToken 'UTQElEu8' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'uQypmfs4' \
    --userId '2GhZLHps' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xnD4tJDU' \
    --body '["TqziHcq8", "Xm7aRT5z", "jE8jYWpr"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '7qj5qTmr' \
    --body '[{"namespace": "4Uqjz6Ky", "roleId": "AZdrhH8i"}, {"namespace": "8PVtBS0D", "roleId": "CJbM5eb5"}, {"namespace": "JD71DeR2", "roleId": "Zn1IwcBI"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ZH6Mfstg' \
    --userId '2UafCard' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'FDB4GT2s' \
    --userId 'QR7Kg9VW' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LQylqAEx' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ye1byAxZ' \
    --body '{"enabled": true, "reason": "MnmbiAUl"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'GbCU2h61' \
    --body '{"emailAddress": "W6EDWrK7", "password": "ezLe66jZ"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zPeZVsYH' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'kwlBzL49' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "L7mWrJNj"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'ocdKJmuS' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'rJonlJLH' \
    --before 'NLc14ZD0' \
    --isWildcard 'false' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "9sPAvXjl", "namespace": "WGOgb0ej", "userId": "PFpZSYUo"}, {"displayName": "DyUpyEP6", "namespace": "NRmVmmtN", "userId": "cD4uhDNd"}, {"displayName": "3lx3fBHj", "namespace": "yP65mHwD", "userId": "C0zt3QAb"}], "members": [{"displayName": "rteTieah", "namespace": "7pyU74oG", "userId": "t8XM51lu"}, {"displayName": "M4kbCxRW", "namespace": "f1nJeFiF", "userId": "XwUCUA8E"}, {"displayName": "QnwxxtZu", "namespace": "QCDAixrf", "userId": "9NXcaJbi"}], "permissions": [{"action": 45, "resource": "SqC2meNC", "schedAction": 98, "schedCron": "jOxRAw3r", "schedRange": ["OMO6aydn", "XQSFCrqW", "xUMVUph2"]}, {"action": 33, "resource": "cfLmRH6o", "schedAction": 38, "schedCron": "fvUU7fWg", "schedRange": ["VhgEDLXD", "3iGLaa0Q", "YPaFG8x1"]}, {"action": 56, "resource": "yjg7Hwzz", "schedAction": 86, "schedCron": "jky8YYp8", "schedRange": ["B0J7JFKx", "LGB0Ycw6", "yJNKIw8k"]}], "roleName": "4VjmNize"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'bVMKATum' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '1a50JZ30' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'WR5EnYP6' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "UqVMsqUy"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '7xVleQ4v' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'ajvhxh6P' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '7ao3Iqrz' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'q9P1GGHV' \
    --after 'Wx8nDIhA' \
    --before 'DzpFBOs1' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'qqhw0beW' \
    --body '{"managers": [{"displayName": "cX2rXLf7", "namespace": "nTtJDt9J", "userId": "t0zY2GwQ"}, {"displayName": "ViGFdtsk", "namespace": "Ior6tKi6", "userId": "lV0SV8xZ"}, {"displayName": "VoZrq4Pi", "namespace": "nyhpqqhH", "userId": "h8fVTvDN"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'nRnHTKwR' \
    --body '{"managers": [{"displayName": "VFVdWTdr", "namespace": "6Dk94fTc", "userId": "qGZxyuAd"}, {"displayName": "fuTN0n7A", "namespace": "Rq26dT5N", "userId": "ao8U46TR"}, {"displayName": "Li3JXmod", "namespace": "940na3t9", "userId": "miCnBjja"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'mor8Hw7j' \
    --after 'tk2g4ZOL' \
    --before 'HpRC1yFo' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'p7bvQtNl' \
    --body '{"members": [{"displayName": "9u0xcfof", "namespace": "zs5Fhcft", "userId": "R2Xv2Xma"}, {"displayName": "V3FBWctW", "namespace": "f09B0gny", "userId": "i2IlIa6H"}, {"displayName": "dn2XhoEF", "namespace": "NbQYo5gy", "userId": "QczZoi5m"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'IUDUGReC' \
    --body '{"permissions": [{"action": 70, "resource": "zBug6fM3", "schedAction": 61, "schedCron": "PT725mAJ", "schedRange": ["OBnx2tOs", "FWXFI9EO", "GD0ULVvN"]}, {"action": 82, "resource": "HgYGCnsZ", "schedAction": 93, "schedCron": "rSAbuCpU", "schedRange": ["VclvHGRv", "3xd1C8Iy", "VXMhl2Sl"]}, {"action": 42, "resource": "mC3dtcD4", "schedAction": 70, "schedCron": "BL1qPyHH", "schedRange": ["i81SL7GN", "bBxxxODQ", "LurC8yPH"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'zJHRWLaT' \
    --body '{"permissions": [{"action": 38, "resource": "0HTuAxbQ", "schedAction": 67, "schedCron": "ECw0izlY", "schedRange": ["D4ifWtJV", "9kkewZos", "VpTHUHa2"]}, {"action": 42, "resource": "ye5lu2Yf", "schedAction": 30, "schedCron": "wvwD2wZ2", "schedRange": ["H5Zv4o1X", "RFZbtOVt", "MKnRB59H"]}, {"action": 93, "resource": "g4PGtQwu", "schedAction": 43, "schedCron": "y9MX2io7", "schedRange": ["TdwkJ1TX", "KOPbwZ4g", "Q1RHhBGR"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '7KzHMWVq' \
    --body '["1WMq1cqY", "VnHpFQwX", "g9d7gxez"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '97' \
    --resource 'yXA1n4Yy' \
    --roleId '365iHE0h' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '3CBIPQhG' \
    --extendExp 'true' \
    --redirectUri 'ErZwBmpq' \
    --password 'Nvx75KgX' \
    --requestId 'uL9cxYuk' \
    --userName 'GsVPK5fU' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'B6jxOHbP' \
    --linkingToken 'wyHFBN6s' \
    --password 'LzJFOzhr' \
    --username '1hTTw6OX' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'true' \
    --clientId 'JwkkAxn9' \
    --linkingToken 'NfWf045f' \
    --password 'u0d3DAyz' \
    --username '9JdPvGxz' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'Uc9zNOA5' \
    --extendExp 'true' \
    --linkingToken 'ugCiUbTS' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'uxlcRp7V' \
    --state '49hRwNwD' \
    --platformId 'F2Le46U2' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'ZoA6rJGd' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'BHHBGJoI' \
    --isTransient 'false' \
    --clientId 'KVK3nOV3' \
    --oneTimeLinkCode 'xx0Ofx6l' \
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
    --codeChallenge 'fsyWV9yH' \
    --codeChallengeMethod 'S256' \
    --clientId 'Z8PmxOUI' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3ZbJHEr1' \
    --userId '6o5nP1ry' \
    --platformUserId 'nTv9UYld' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KI40JTab' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'hEOkyl4M' \
    --codeChallenge 't5jA6xhy' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --loginWebBased 'false' \
    --nonce 'BJkMKwlQ' \
    --oneTimeLinkCode 'HqyFkdPE' \
    --redirectUri 'LPvc4JMX' \
    --scope 'VkzaZ67V' \
    --state 'oKipIKcy' \
    --targetAuthPage 'CLqS5nrY' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'HxtdouFp' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'o8wte18y' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'rJ6XwNHe' \
    --factor 'Glv47UEG' \
    --mfaToken 'trt1or6f' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'QkgNZhpf' \
    --mfaToken '5Og4R49E' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'QLpCRfqI' \
    --factor 'kR3OM0K4' \
    --mfaToken 'MgTp9RMG' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor '7tA0Pu6o' \
    --factors 'ACiwX7Vv' \
    --rememberDevice 'true' \
    --clientId 'i6MObwAZ' \
    --code '4sJcqQXl' \
    --factor 'MDNnbhS2' \
    --mfaToken 'j8ceTeco' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9XgIc7GQ' \
    --userId 'sb42CPrR' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'UkUDg0gD' \
    --clientId 'GxkayURO' \
    --redirectUri 'i68ypo54' \
    --requestId 'YoqO3FFe' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'vXWecNHm' \
    --additionalData 'mLcZr3pG' \
    --clientId 'kslEhtjn' \
    --createHeadless 'true' \
    --deviceId '4rlNmdKu' \
    --macAddress 'ib4BnkWJ' \
    --platformToken 'nLhKVwgE' \
    --serviceLabel '0.4355466301935661' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'mqVUTnqW' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'DCQK2dYQ' \
    --simultaneousTicket 'AzcaFYdE' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'dZ512zob' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'wNlHfV6T' \
    --clientId '9XZ7zHTq' \
    --clientSecret 'ObQMMAI8' \
    --code '9vy0q4B3' \
    --codeVerifier 'Pd8PTyTj' \
    --extendNamespace 'rYozCBvr' \
    --extendExp 'true' \
    --password '0hymLdBe' \
    --redirectUri 'TSwi6fCJ' \
    --refreshToken 'pXjMPdwl' \
    --scope 'YpyeXmLW' \
    --username 'OFYP69wo' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'yHOG5cxc' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '7Sp7AKay' \
    --code '6VRS2QDo' \
    --error 'gw0rfrEd' \
    --openidAssocHandle 'FB3IQLSi' \
    --openidClaimedId 'bzY8LY8V' \
    --openidIdentity '6JhSmnz1' \
    --openidMode 'QZQ3ZjbT' \
    --openidNs 'KSHxVCkl' \
    --openidOpEndpoint 'GYYLOFMF' \
    --openidResponseNonce 'aZHPAAjC' \
    --openidReturnTo 'Aw5LRNEE' \
    --openidSig 'faZwXLBT' \
    --openidSigned 'l3HWE3Gj' \
    --state 'CUg3zrq9' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'HEcKo2Ns' \
    --platformToken 'jK6q5N4p' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'A8chjoas' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'AMm7qrGz' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'Y9qmEdPL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'rzytFa9w' \
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
    --clientId 'SIuYcjNM' \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'xgO9tMVj' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'WHDd3rKE' \
    --limit '23' \
    --offset '40' \
    --platformBy 'ACLEUUjV' \
    --platformId 'jHhsDUZ7' \
    --query '2jdnKDK1' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "GJYOh0ig", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "RYsKpTNq", "policyId": "x0zwbFTK", "policyVersionId": "xoFXPcNi"}, {"isAccepted": true, "localizedPolicyVersionId": "MK7SUs6J", "policyId": "RsvW2duT", "policyVersionId": "fyJIfft6"}, {"isAccepted": false, "localizedPolicyVersionId": "RNc0l9RL", "policyId": "H0FEplDL", "policyVersionId": "JWUlYXGy"}], "authType": "BtKOI8nA", "code": "hIKCtXMh", "country": "KcM8EQLJ", "dateOfBirth": "dkeKjhaS", "displayName": "NCqJGb2V", "emailAddress": "yDaJt5I2", "password": "FOyYdK6D", "reachMinimumAge": false, "uniqueDisplayName": "JwMgFQQ6"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'SoYY4w3P' \
    --query 'CegarPDV' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "YO4866OY", "languageTag": "QZ0DlLEZ"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "aqbKHSee", "emailAddress": "UGLRNlFe"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "UYGdeMCp", "languageTag": "AU1fYvMg"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "zgPpqGbV", "password": "SCEmUe8t", "uniqueDisplayName": "avoPZMtA", "username": "X7M9NFUp"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'RhlzvfCc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'ivyt8Zoz' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "EwaCar0j", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "HsiXQGr7", "policyId": "SMXB2xii", "policyVersionId": "mFa92CYF"}, {"isAccepted": true, "localizedPolicyVersionId": "c38IOWHG", "policyId": "7BfsW02e", "policyVersionId": "zgBRh1Ax"}, {"isAccepted": false, "localizedPolicyVersionId": "3fvTqoKR", "policyId": "IRaEKAzi", "policyVersionId": "3EHpWpSL"}], "authType": "2bYBoDXl", "code": "OPQlwFD5", "country": "q7TfbY2W", "dateOfBirth": "WdonVVOS", "displayName": "LD5h3kwe", "emailAddress": "2jKgJ7J0", "password": "yaTmMHv0", "reachMinimumAge": false, "uniqueDisplayName": "Z5njCzoM"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "SlZQxbGJ", "country": "4geYtUFZ", "dateOfBirth": "DffHor3S", "displayName": "hxmvvAgN", "languageTag": "4WFXC8fr", "uniqueDisplayName": "tYZOg0bW", "userName": "HaDirrkh"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "6XbBFXNX", "country": "LUNGwqsF", "dateOfBirth": "0DajrL7T", "displayName": "1k26dPdD", "languageTag": "IXG76w9t", "uniqueDisplayName": "AvXCVwuy", "userName": "wHnjiWue"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "I7Tapte3", "emailAddress": "cjwmthoo", "languageTag": "ipc740Dn", "upgradeToken": "H2G7c3ZT"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "9fVdmm9J", "contactType": "oSWWvwj0", "languageTag": "aa8VuoZB", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "YPVUSMEj", "country": "eORjIWG6", "dateOfBirth": "y3ethqHS", "displayName": "f9ZgvQJF", "emailAddress": "QDUgAoXU", "password": "2g6OBEDA", "uniqueDisplayName": "bqIh8Oe9", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "cuooLjuJ", "password": "GigJb9Qd"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "pmKVnw0M", "mfaToken": "G2cWRvGt", "newPassword": "jHmoUrI6", "oldPassword": "I8oDZtD3"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'BfmpVhAs' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GJPBOzW9' \
    --redirectUri 'OGfQ3hHb' \
    --ticket 'XzOVHoAM' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'D7IADokO' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GHrSkBGw' \
    --ticket 'da1tpsTi' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'Bh8MPPhY' \
    --clientId 'wkfNGmSl' \
    --redirectUri '2o6sZVI0' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'T3KZNCMj' \
    --code 'sYTPRS1X' \
    --state 'pxd2R7Qg' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0UlZtfYd' \
    --code 'yNDu0hyU' \
    --state '9M0kB5Rl' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "vQDOkC0j", "userIds": ["kIbZ8CsH", "kZrNns9p", "aRtcH6Un"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "KjkmvwPt", "code": "K1sC4jFC", "emailAddress": "fVLVwHj3", "languageTag": "wo8uOraC", "newPassword": "LdFHWrBs"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kjssu2Xe' \
    --activeOnly 'true' \
    --after 'EW0hEBIa' \
    --before 'waCy6PCM' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eAPjH7kB' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kSAjXAQt' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qHmnvyr4' \
    --after '0.18180037895536072' \
    --before '0.2419154728503503' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LH4Ks5jQ' \
    --after 'iymOIMtY' \
    --before 'Pvg6MZjn' \
    --limit '23' \
    --platformId 'N318jXvU' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '0dS9D3r0' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'vshxvUlF' \
    --body '{"platformId": "yoS4CPMz", "platformUserId": "gQ22yotr"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'erNP0CDR' \
    --body '{"chosenNamespaces": ["50J5VeFY", "b3kJiqPx", "MJn2Xo70"], "requestId": "k8XAyneZ"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Oe1Eb4rJ' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ixsZFZsY' \
    --password '4bI9tE2Y' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'ap65qPnu' \
    --before 'PsTtR14Q' \
    --isWildcard 'false' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'PSfqnNU9' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "irfYa12k", "emailAddress": "am7dFNQi", "languageTag": "aJZAXsNn"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "C0Rv0pnF", "emailAddress": "V8KGp32X", "languageTag": "44rM16U1", "upgradeToken": "ApPv7jMY"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'xuTDkWiC' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["4nLe5L0Y", "IaYHBReL", "s469eCEU"], "oneTimeLinkCode": "PQ1zfu89"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'usHYpDXm' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "4GpLGfAT"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '7kEsk1tB' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'oeNOitcs' \
    --code 'g28MjaC8' \
    --error 'FJ9ey4RZ' \
    --state 'MtzlqDPI' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'ixF0H7Xq' \
    --payload '15A5MVIb' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'UjZ1TykD' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'e8e7ff9D' \
    --code 'LJ1OC0OW' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'ivbWt80c' \
    --upgradeSuccessToken 'shZMKTie' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '13' \
    --namespace 'rswCXhqj' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'PccoauVC' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'DPUnQtfV' \
    --endDate 'V0xf2TbV' \
    --limit '80' \
    --offset '16' \
    --startDate '1vVLp2gB' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'DoNhnfhw' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "1VzyV2xX", "deviceId": "QuBwPokp", "deviceType": "m7m37CeG", "enabled": true, "endDate": "PrfNhihK", "ext": {"2gmVM2gs": {}, "2k3kYqFZ": {}, "g8Kh3aOh": {}}, "reason": "09jwvp7t"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'WPQ1LwPn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'nPQGNYlF' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'EkepgE3Q' \
    --startDate 'gjIqQOsf' \
    --deviceType 'vE5mAH1Z' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '9DrhMXVe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'PWDHbMLr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'MSVqFGkb' \
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
    --limit '45' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 67, "userInfo": {"country": "LE10bYZ1"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "sgepQINB", "policyId": "JAAKoawE", "policyVersionId": "nKeVhO9o"}, {"isAccepted": false, "localizedPolicyVersionId": "sY4mIv8k", "policyId": "Mm5YMFKv", "policyVersionId": "UU3PHLFd"}, {"isAccepted": false, "localizedPolicyVersionId": "aRmml8B9", "policyId": "FWud1xaA", "policyVersionId": "2uLshoOi"}], "authType": "EMAILPASSWD", "code": "VkNcHge3", "country": "JELlUggu", "dateOfBirth": "tp0FGH8b", "displayName": "omisNDMi", "emailAddress": "fRYIi85K", "password": "yV9n31Bg", "passwordMD5Sum": "pJKjCwvh", "reachMinimumAge": true, "uniqueDisplayName": "saojzc2f", "username": "Xuc3YMgH"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["K5qPa5mH", "LwLPZxWT", "3ZXu5Sar"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["YjAXt54x", "jqyY0IRd", "bsXVpmm9"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'MLSaowHD' \
    --body '{"avatarUrl": "AZL9BEws", "country": "DCWIlL9a", "dateOfBirth": "3kihmkOQ", "displayName": "EwKa0GZ5", "languageTag": "AUMKCTKq", "skipLoginQueue": true, "tags": ["ekdvyRkx", "QkOxd3Wm", "x19Y4ikz"], "uniqueDisplayName": "ma4Hxp3f", "userName": "n3QPGQof"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AzoMY1SE' \
    --body '{"code": "yvcm9kS2", "emailAddress": "zr590Pgt"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tyqojts3' \
    --body '{"factor": "lUIgEhtC", "mfaToken": "aqYyr27M"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tps4R3vB' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '7xtbH7Ib' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OYfbMti1' \
    --body '{"assignedNamespaces": ["wKMGDvL6", "ZhkFRVlm", "D5wGcHTc"], "roleId": "M068t8Of"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'SrntxiYO' \
    --body '{"assignedNamespaces": ["6YvUHEIL", "LTYfXysw", "3hvN751t"], "roleId": "QyyUeUiW"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OccFuIyg' \
    --body '{"assignedNamespaces": ["HgmlTQ0b", "vOxefrWp", "r3DeaNFz"], "roleId": "S4iqZSbH"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '89' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "EBL8PJIB"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'nB1SlDE7' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'IOfEt5iW' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'n14b85Xm' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "1luXZyhu"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'jB0048kB' \
    --body '{"permissions": [{"action": 84, "resource": "uQbl3TED", "schedAction": 8, "schedCron": "evI2TSqz", "schedRange": ["YGTAtbSs", "oqizPWNm", "bw3F8Rem"]}, {"action": 98, "resource": "xdAWE18o", "schedAction": 100, "schedCron": "FbWX8poH", "schedRange": ["P6kA7sVE", "o8vZETJr", "4ZvmByjR"]}, {"action": 38, "resource": "d1MZiDMZ", "schedAction": 98, "schedCron": "s6B9uGAy", "schedRange": ["nOLM0Cwj", "5PW3TfFC", "1RhLctZj"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'cG9bgEwt' \
    --body '{"permissions": [{"action": 6, "resource": "LWRRXvYp", "schedAction": 98, "schedCron": "ebqi3qNL", "schedRange": ["FMAekok2", "72hiUvj5", "uO6qjpZE"]}, {"action": 94, "resource": "WO2QAqLK", "schedAction": 65, "schedCron": "kopbEIwE", "schedRange": ["tKdItyi5", "6LfO9UrV", "PGPtp0Zr"]}, {"action": 71, "resource": "iYkFeYEA", "schedAction": 97, "schedCron": "DflIOe58", "schedRange": ["pjJ5Wgyh", "xIFknHcH", "McDnVAjy"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '1DgdkSpt' \
    --body '["G4X0bYZS", "Vbz0mdeo", "J2i5Ph1t"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'GgrsrZou' \
    --after 'x3AaWKty' \
    --before 'PY3j5NgU' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'BreYTIhd' \
    --body '{"assignedNamespaces": ["WDyu7btH", "ngqd8xrn", "RhQKXaZm"], "namespace": "IAQCnPJU", "userId": "WBjcqFL5"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'qQXmsKRR' \
    --body '{"namespace": "y01O09ck", "userId": "mMphYfzK"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["HtYWiCLN", "5Zo1jd2S", "PC61vm47"], "emailAddresses": ["iMDzILku", "gDZfGQR4", "UqInoqCn"], "isAdmin": false, "isNewStudio": true, "languageTag": "bapxsqOT", "namespace": "zzlTedxz", "roleId": "voih3tRc"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "JHCX9PYo", "country": "4e3lBQmk", "dateOfBirth": "Sm3BuKJ5", "displayName": "tvgwI7NY", "languageTag": "nLxfEwjP", "skipLoginQueue": true, "tags": ["49eoO8CT", "9kfYdAFX", "L3Gqzt4U"], "uniqueDisplayName": "afmHe3cd", "userName": "dwzbU4QS"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "cC8010P0", "mfaToken": "RIlk2Jkz"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'yiRPCna7' \
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
    --body '{"factor": "w2fRbCoM", "mfaToken": "SOQ6uA6K"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'Jrw3mn7q' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'JyIriEwT' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'RLlMrT5C' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'ZwNazUSX' \
    --factor 'XTEKOC3v' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'lBZMhFaC' \
    --languageTag 'iM7sD9lD' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "TY7bIvpJ", "mfaToken": "IvFXpnn2"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'nHKvKe2V' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'doQnIYMU' \
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
    --clientId 'qjY76qqZ' \
    --linkingToken '2QrqY3Mr' \
    --password 'o9YAvHzM' \
    --username 'c1rCe5b4' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'D2xKvUBE' \
    --extendExp 'true' \
    --linkingToken 'pvvCro4Q' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'KByGA0fI' \
    --factor 'OCRqSMEb' \
    --mfaToken 'TTWRTgL9' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'RCJBgdHh' \
    --codeChallenge '4dgXltE8' \
    --codeChallengeMethod 'plain' \
    --additionalData 'YSDWA5GQ' \
    --clientId 'ZISb4n90' \
    --createHeadless 'true' \
    --deviceId '18Z4qBQu' \
    --macAddress '51zK1BFt' \
    --platformToken 'fOAxQKZV' \
    --serviceLabel '0.10125266942629452' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'qkMt4znd' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform '2ab00A4j' \
    --simultaneousTicket 'oCXLpTkq' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'Dv3ljHTS' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'pu2vmlPU' \
    --codeChallengeMethod 'S256' \
    --additionalData '6bwfqb2e' \
    --clientId 'VqOWj28m' \
    --clientSecret '4vf0ldhz' \
    --code 'U5OUnmEZ' \
    --codeVerifier '0LPZgwJf' \
    --extendNamespace 'Vqjx95yr' \
    --extendExp 'true' \
    --loginQueueTicket 'SlImYTqi' \
    --password 'O5Hn1xzC' \
    --redirectUri 'ljY6fdnE' \
    --refreshToken 'JPgyYB9t' \
    --scope 'EPUztPqs' \
    --username 'DvWq8CsJ' \
    --grantType 'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'oJkjuXvR' \
    --code '2dUmfwgh' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId '4CVLtlRb' \
    --rawPUID 'false' \
    --body '{"pidType": "yVB87GCK", "platformUserIds": ["H2X6p126", "W8kPC3tF", "WutfmplF"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'eqUR2TJr' \
    --platformUserId 'IApIfqxt' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "pzrEizpC", "policyId": "ZFPH3CCP", "policyVersionId": "x0oHaDd0"}, {"isAccepted": true, "localizedPolicyVersionId": "m5WV4Waz", "policyId": "fyDWO5aF", "policyVersionId": "LsC0tcNs"}, {"isAccepted": true, "localizedPolicyVersionId": "gnp8yyE7", "policyId": "7yXKgB6w", "policyVersionId": "IwnqTiCD"}], "authType": "EMAILPASSWD", "country": "R8zj6Qrh", "dateOfBirth": "S0w79fIF", "displayName": "xReeWaC2", "emailAddress": "k4XpCEUj", "password": "8XSKarFo", "passwordMD5Sum": "g2czvf30", "uniqueDisplayName": "gTKQ2w6y", "username": "RXoYlHko", "verified": false}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "sJ4rcty3", "policyId": "Q3JGCXJf", "policyVersionId": "gPdFqoo2"}, {"isAccepted": false, "localizedPolicyVersionId": "Bqrivkbo", "policyId": "X2ePhQkS", "policyVersionId": "U2xgZwzb"}, {"isAccepted": true, "localizedPolicyVersionId": "omN0FIch", "policyId": "HK38Qj73", "policyVersionId": "pPrPXkJD"}], "authType": "EMAILPASSWD", "code": "OSj4y1Ba", "country": "EpQjvtxs", "dateOfBirth": "uZoEuEHy", "displayName": "XZ5lwoll", "emailAddress": "fRQs4IiP", "password": "mzfZwedS", "passwordMD5Sum": "rBYReIDe", "reachMinimumAge": false, "uniqueDisplayName": "dJ5UDy6u", "username": "5BLIQD2N"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'Lp1JOtCP' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "0uK3kTq8", "policyId": "srcsHC8c", "policyVersionId": "8042X4D5"}, {"isAccepted": false, "localizedPolicyVersionId": "fJEVObVB", "policyId": "R2yAdHvC", "policyVersionId": "9dzj6KOU"}, {"isAccepted": true, "localizedPolicyVersionId": "HhqKPAU0", "policyId": "ExUMXDLp", "policyVersionId": "hp8uWNYa"}], "authType": "EMAILPASSWD", "code": "nBUmWJka", "country": "bhVjdMmi", "dateOfBirth": "SvKrZhNn", "displayName": "L48cO6OS", "emailAddress": "8sft5zP7", "password": "W6jXeqQh", "passwordMD5Sum": "ToxQFkE1", "reachMinimumAge": true, "uniqueDisplayName": "QK3qC6qg", "username": "mCw4L0Mf"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "doMv4njF", "country": "87KlzsV2", "dateOfBirth": "i1IQ9ciu", "displayName": "Rv4WcBS1", "languageTag": "QOLDG6zV", "uniqueDisplayName": "v2Fyqqa0", "userName": "Zf2JsKgC"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "DkET6IJi", "emailAddress": "Fmufo7lq"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "iUG3gWk6", "country": "R3Hj18pU", "dateOfBirth": "w64A6wEW", "displayName": "ccdXGsrl", "emailAddress": "tjebWJT0", "password": "HmJw32gB", "reachMinimumAge": false, "uniqueDisplayName": "yfCTjeg0", "username": "1QGoWQKR", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "S2gtuDLM", "displayName": "TLuXBCak", "emailAddress": "29k7G0bE", "password": "EMbFagGy", "uniqueDisplayName": "R1bu23X2", "username": "Xj9he3Ma"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "RscjHz2O", "mfaToken": "888C7EnF"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'N2knTcFn' \
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
    --body '{"factor": "Iltv3c3r", "mfaToken": "eYwLxkqE"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'G1004FZJ' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'HM7KMT9x' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'GKMl06EM' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'I3nfbAdz' \
    --factor 'tY8OeJia' \
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
    --action 'hd1yxcg8' \
    --languageTag 'cxsCj1G7' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "IW0xe0Bv", "mfaToken": "Yg42vNnE"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'l2bBcY59' \
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
    --factor 'SPSKPtoT' \
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
    --userId 'JI9pnN9t' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "u6GLj5qL", "emailAddress": "xqNNAzUF", "languageTag": "EoKqKkPI", "namespace": "r8A7Fjle", "namespaceDisplayName": "j9qZAz3n"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "dVVibFGu", "policyId": "EryXyjP1", "policyVersionId": "4iP3LgWt"}, {"isAccepted": true, "localizedPolicyVersionId": "gbbKTZ8n", "policyId": "xivc8Eg3", "policyVersionId": "aV462Zhb"}, {"isAccepted": false, "localizedPolicyVersionId": "ko4ncjbf", "policyId": "XbWZoPsN", "policyVersionId": "D7luJ01y"}], "code": "sz7QXATo", "country": "tKZCes2m", "dateOfBirth": "kxKPbUM3", "displayName": "FXJYkAuJ", "emailAddress": "Mtz5rlES", "password": "GSwGMRG7", "reachMinimumAge": false, "uniqueDisplayName": "g9LaSDuU", "username": "XlQJsImB", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE