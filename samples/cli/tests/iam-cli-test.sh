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
    --body '{"modules": [{"docLink": "sa5NUyOO", "groups": [{"group": "iVP7lfpo", "groupId": "8y4zoXss", "permissions": [{"allowedActions": [7, 87, 35], "resource": "TTNwAkMF"}, {"allowedActions": [69, 56, 60], "resource": "FVnxi1hZ"}, {"allowedActions": [35, 61, 17], "resource": "2aoYYwgk"}]}, {"group": "57ijOsN2", "groupId": "bX6Agl6A", "permissions": [{"allowedActions": [47, 13, 33], "resource": "uE9CLxCE"}, {"allowedActions": [90, 91, 86], "resource": "rVaEp2Zw"}, {"allowedActions": [95, 75, 10], "resource": "ZlHLZcun"}]}, {"group": "qnbMRTAU", "groupId": "MlOeSni0", "permissions": [{"allowedActions": [64, 69, 15], "resource": "6Xe1UyrG"}, {"allowedActions": [99, 23, 19], "resource": "batWUSv0"}, {"allowedActions": [63, 77, 57], "resource": "gOn8diEz"}]}], "module": "id38WSXp", "moduleId": "5ONpa9l3"}, {"docLink": "7Ug0LivX", "groups": [{"group": "owOI8c3L", "groupId": "EyRjycGk", "permissions": [{"allowedActions": [70, 61, 29], "resource": "T1Gv0BLa"}, {"allowedActions": [27, 51, 18], "resource": "9vjV5M2u"}, {"allowedActions": [6, 71, 97], "resource": "9SjcLMU1"}]}, {"group": "cTaCS0FG", "groupId": "MHbgHAfh", "permissions": [{"allowedActions": [6, 44, 11], "resource": "ARLqXh8E"}, {"allowedActions": [95, 89, 60], "resource": "vTIigcyI"}, {"allowedActions": [81, 82, 90], "resource": "iqy8Ppvn"}]}, {"group": "DCPSkqDE", "groupId": "zjHOWwmf", "permissions": [{"allowedActions": [1, 13, 94], "resource": "02lSypzk"}, {"allowedActions": [68, 46, 4], "resource": "dZFOcavP"}, {"allowedActions": [79, 86, 20], "resource": "HrOzuTQz"}]}], "module": "LxEi7wap", "moduleId": "p4mHgtjx"}, {"docLink": "Mzc6dbnW", "groups": [{"group": "1IF1lP4c", "groupId": "DKE4q0De", "permissions": [{"allowedActions": [99, 49, 85], "resource": "FxlPFCMm"}, {"allowedActions": [64, 4, 38], "resource": "Zt6fwINE"}, {"allowedActions": [99, 76, 2], "resource": "csqYyg7C"}]}, {"group": "kLPs8ypB", "groupId": "vJzibFod", "permissions": [{"allowedActions": [45, 95, 39], "resource": "bRYIqfwW"}, {"allowedActions": [52, 77, 11], "resource": "dSy4hOHl"}, {"allowedActions": [12, 73, 95], "resource": "TsVZlcl4"}]}, {"group": "vCS2qneD", "groupId": "LbZyEiDw", "permissions": [{"allowedActions": [55, 29, 48], "resource": "u6fxZMr2"}, {"allowedActions": [59, 26, 13], "resource": "svQH8yPa"}, {"allowedActions": [44, 84, 89], "resource": "CDMBWwWx"}]}], "module": "z7VDrkn4", "moduleId": "s4Kk2Ad4"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "6mv8BTnE", "moduleId": "DFRswEFh"}' \
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
    --body '[{"field": "l0YF6CYB", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["nguGdqDO", "IdUJ1MCt", "uTJ2zs19"], "preferRegex": true, "regex": "DGKLTOe6"}, "blockedWord": ["qxxtqp2f", "IdelZSQ3", "6iu2fCH2"], "description": [{"language": "UlTYiAn4", "message": ["l8EPni3J", "6FPiooHg", "j0hzz2uz"]}, {"language": "QgSJb4KA", "message": ["SjYa3yh0", "dPz5wMCT", "5r1tuM7j"]}, {"language": "6MhsS9co", "message": ["uHwoFNcd", "6BkWJJVy", "tegnphId"]}], "isCustomRegex": false, "letterCase": "COoicSoY", "maxLength": 57, "maxRepeatingAlphaNum": 100, "maxRepeatingSpecialCharacter": 99, "minCharType": 2, "minLength": 90, "profanityFilter": "1RogBsqA", "regex": "eX3qSMLN", "specialCharacterLocation": "c9ffFk5n", "specialCharacters": ["PuhTzj96", "HHEwm9Eg", "V6IBWY7h"]}}, {"field": "29pb9Tk6", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["OnWaClll", "LyoVloH1", "E7VvqQ00"], "preferRegex": false, "regex": "GvNWafdN"}, "blockedWord": ["H5RxAoPJ", "CWYeAiuH", "0poCMPMF"], "description": [{"language": "6p8yWN9F", "message": ["gXwz6hcD", "JqsOTQLs", "uO8GissQ"]}, {"language": "tulCqeIr", "message": ["dYE7FyjW", "eCMqZX6j", "nfLiYBVe"]}, {"language": "OCVRFCUh", "message": ["fFbbCRP2", "cvPNWynr", "V3HFoo0c"]}], "isCustomRegex": true, "letterCase": "DKALss01", "maxLength": 36, "maxRepeatingAlphaNum": 16, "maxRepeatingSpecialCharacter": 59, "minCharType": 81, "minLength": 85, "profanityFilter": "BLZsBdmw", "regex": "yqCMKLGj", "specialCharacterLocation": "yswN33qt", "specialCharacters": ["NhQkaOMS", "9Uh1VNKw", "zPo9ctGM"]}}, {"field": "POjGtZuy", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["OGOx99B6", "iAnzR2TE", "Dl7B9U8Z"], "preferRegex": true, "regex": "uM8WF6Jv"}, "blockedWord": ["WTSaNUvC", "GpBG6VbX", "MiXpbYzc"], "description": [{"language": "dzn3cmoL", "message": ["5RGhMNeY", "QuOtEEXM", "T2AOYYcr"]}, {"language": "T7Z941ES", "message": ["fggNv8dw", "xurlRp96", "RlZ0lIPM"]}, {"language": "lqHxvLzW", "message": ["EAnlFbO6", "te3gtL3d", "WH4uyW8G"]}], "isCustomRegex": true, "letterCase": "MZ6i75NN", "maxLength": 84, "maxRepeatingAlphaNum": 87, "maxRepeatingSpecialCharacter": 95, "minCharType": 55, "minLength": 37, "profanityFilter": "TyAlMJ1f", "regex": "hh1jSPse", "specialCharacterLocation": "Sn4NzVd4", "specialCharacters": ["YasIPeNy", "wJ6KpkeP", "ZnMeduYC"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field '6apz7mtW' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '7EzmqHro' \
    --before 'hmFOVPzr' \
    --endDate '596cDKmr' \
    --limit '50' \
    --query 'jn7zkROz' \
    --roleId 'RHvy1Kuz' \
    --startDate 'ePuD0IC5' \
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
    --body '{"ageRestriction": 53, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '4hXxgUZB' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 44}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'DDrN1JOU' \
    --limit '50' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "1PRBxePg", "comment": "BK8twUDV", "endDate": "MU1yR8l9", "reason": "MoYbNYsR", "skipNotif": true, "userIds": ["w83hLs0B", "DhryC6Yz", "cmMnkigY"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "zyGZexK8", "userId": "QaJ49Bbv"}, {"banId": "tsQ49IUe", "userId": "G5iGPkLH"}, {"banId": "Jl5CT8CL", "userId": "3ePGbQzL"}]}' \
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
    --clientId '46glkort' \
    --clientName 'bbn2Cn3F' \
    --clientType '3BUb3eKj' \
    --limit '13' \
    --offset '88' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["CSBtO8zm", "MezE5giQ", "A74sNpSC"], "clientUpdateRequest": {"audiences": ["QdYHBXK4", "8A0q8oPc", "tvFTUi6w"], "baseUri": "wkIaslOk", "clientName": "XbRYKrcX", "clientPermissions": [{"action": 61, "resource": "cXvY4Lyh", "schedAction": 91, "schedCron": "07R1Wc1u", "schedRange": ["anOOpIwm", "CPXHTbwN", "42JGla7p"]}, {"action": 21, "resource": "aZBVVrq6", "schedAction": 96, "schedCron": "v893Bafw", "schedRange": ["e7tgxee4", "9bPx2yyy", "eUwjS2TN"]}, {"action": 71, "resource": "PnIOqFHB", "schedAction": 56, "schedCron": "LjlhGlAd", "schedRange": ["Y7PXpSle", "iV2ZEx9F", "IDO7YpmX"]}], "clientPlatform": "jujJfBbw", "deletable": true, "description": "71s3fZ2J", "modulePermissions": [{"moduleId": "YgOaOLtI", "selectedGroups": [{"groupId": "j2hN4A0f", "selectedActions": [57, 61, 33]}, {"groupId": "THyBDbBw", "selectedActions": [34, 92, 78]}, {"groupId": "Qy1XHLYD", "selectedActions": [58, 92, 27]}]}, {"moduleId": "kkCUUAxA", "selectedGroups": [{"groupId": "ccQHD0aN", "selectedActions": [32, 72, 73]}, {"groupId": "oLJFeAis", "selectedActions": [32, 69, 41]}, {"groupId": "vu5xEZu1", "selectedActions": [66, 34, 85]}]}, {"moduleId": "lofeJPPs", "selectedGroups": [{"groupId": "etiRwGzv", "selectedActions": [81, 85, 81]}, {"groupId": "zMLHxEyT", "selectedActions": [91, 16, 71]}, {"groupId": "RM79BRm4", "selectedActions": [86, 9, 62]}]}], "namespace": "7VCHjr51", "oauthAccessTokenExpiration": 14, "oauthAccessTokenExpirationTimeUnit": "58OfEBvd", "oauthRefreshTokenExpiration": 18, "oauthRefreshTokenExpirationTimeUnit": "nJ4U8w6y", "redirectUri": "6056RPlk", "scopes": ["8PVxqAV1", "ur1tbf4h", "8cwYsYHu"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["DCselSH0", "W6bKLN2P", "muC5SGe7"], "baseUri": "Ng0lZiVq", "clientId": "fBk3kkAd", "clientName": "4flG2fVd", "clientPermissions": [{"action": 80, "resource": "Buqbf7ml", "schedAction": 84, "schedCron": "r8yGjTQn", "schedRange": ["795JTDHC", "V6eu8b41", "XRpPS6ie"]}, {"action": 79, "resource": "PQydq6Ie", "schedAction": 41, "schedCron": "2koBusTW", "schedRange": ["LEWklDkD", "nryEzMFD", "kL34vCdz"]}, {"action": 77, "resource": "4soyZark", "schedAction": 82, "schedCron": "YPA1uLFe", "schedRange": ["h9YVqGNm", "FWmimb76", "1lUhqdUL"]}], "clientPlatform": "gPMFzNK0", "deletable": false, "description": "jKWmgVyX", "modulePermissions": [{"moduleId": "50sSZjGb", "selectedGroups": [{"groupId": "pmAvMJ3D", "selectedActions": [66, 38, 12]}, {"groupId": "HoB1aNdR", "selectedActions": [40, 62, 20]}, {"groupId": "kQB9gWRh", "selectedActions": [56, 71, 84]}]}, {"moduleId": "sQYBEBId", "selectedGroups": [{"groupId": "r9Fr8Yr7", "selectedActions": [45, 38, 20]}, {"groupId": "avp6zUlp", "selectedActions": [72, 13, 100]}, {"groupId": "nvwEfnDa", "selectedActions": [53, 81, 98]}]}, {"moduleId": "HUjYOGxN", "selectedGroups": [{"groupId": "f8eHlECG", "selectedActions": [27, 42, 21]}, {"groupId": "5x0EupIR", "selectedActions": [74, 57, 5]}, {"groupId": "5dfFmONR", "selectedActions": [29, 62, 64]}]}], "namespace": "nqA20YOQ", "oauthAccessTokenExpiration": 53, "oauthAccessTokenExpirationTimeUnit": "ax8n9nqg", "oauthClientType": "pSHr85lV", "oauthRefreshTokenExpiration": 17, "oauthRefreshTokenExpirationTimeUnit": "vD0rEgyZ", "parentNamespace": "lbjcrKVW", "redirectUri": "8VfNusNw", "scopes": ["6w7cDKXV", "m0D2cFDM", "oQumfa04"], "secret": "jiWx5A7w", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '9okLyF5N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'rAKF43MP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'k2VF4t7T' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["iGtuJe7f", "jgWO6Hi4", "5xci2feT"], "baseUri": "wfFwByUh", "clientName": "hegZiKNH", "clientPermissions": [{"action": 34, "resource": "RRHwWUQ8", "schedAction": 45, "schedCron": "IwxVnJJm", "schedRange": ["oug2EYPB", "azSLjfck", "rvCJ5lCR"]}, {"action": 37, "resource": "06mLhSFt", "schedAction": 39, "schedCron": "TETW70YF", "schedRange": ["d5lsIc9q", "RrW4yiyB", "8RLEsw8U"]}, {"action": 50, "resource": "uvgmsCJo", "schedAction": 61, "schedCron": "ZmTxMDRG", "schedRange": ["vVpH9ewL", "cEg9cnM1", "xJVFnhzs"]}], "clientPlatform": "4jyBAlLa", "deletable": false, "description": "kJKaS4H8", "modulePermissions": [{"moduleId": "QFKBofCS", "selectedGroups": [{"groupId": "k7bCHaVj", "selectedActions": [51, 11, 2]}, {"groupId": "25K7SUkI", "selectedActions": [31, 37, 30]}, {"groupId": "suwIojOf", "selectedActions": [81, 54, 22]}]}, {"moduleId": "ETuBO1Kc", "selectedGroups": [{"groupId": "E4BzpM8e", "selectedActions": [77, 23, 37]}, {"groupId": "gJXgdqDx", "selectedActions": [87, 60, 98]}, {"groupId": "VQGbnRVT", "selectedActions": [87, 18, 6]}]}, {"moduleId": "VkcXrHIo", "selectedGroups": [{"groupId": "A5RifQs4", "selectedActions": [5, 64, 45]}, {"groupId": "If9wgEFv", "selectedActions": [85, 23, 72]}, {"groupId": "Oo8a2oHM", "selectedActions": [61, 98, 92]}]}], "namespace": "PnmvA28I", "oauthAccessTokenExpiration": 91, "oauthAccessTokenExpirationTimeUnit": "QPJHcFPx", "oauthRefreshTokenExpiration": 96, "oauthRefreshTokenExpirationTimeUnit": "41EhScoZ", "redirectUri": "unaa20Ab", "scopes": ["cyyMwngS", "w2QuoczO", "xoWcgKWb"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'vUXZwWwG' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 68, "resource": "Onlh0UQl"}, {"action": 59, "resource": "3UvA5Ddg"}, {"action": 38, "resource": "abeluWLJ"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'UrbQChSf' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 6, "resource": "wMYAZEsU"}, {"action": 7, "resource": "HH6M9wED"}, {"action": 90, "resource": "AY1ay3aZ"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '49' \
    --clientId '7pNNDDHM' \
    --namespace $AB_NAMESPACE \
    --resource 'VLo7efZQ' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'WPnpHl6P' \
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
    --body '{"blacklist": ["yoyxYUvL", "zVdJ1sOq", "0YnpuRea"]}' \
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
    --body '{"active": true, "roleIds": ["MtRzqcRq", "4cGTVyBj", "HFriRqT9"]}' \
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
    --limit '16' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GJrYsdQK' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7GM29ydj' \
    --body '{"ACSURL": "XBkGzn3h", "AWSCognitoRegion": "tNkMxLUv", "AWSCognitoUserPool": "4H2maZTv", "AllowedClients": ["SyES4mr8", "cGebndkA", "7VG6Zkap"], "AppId": "E9BH5ODz", "AuthorizationEndpoint": "DShHGJlI", "ClientId": "HJAWTVXH", "EmptyStrFieldList": ["ycDNtUI9", "ZYD3H800", "9sdIPSFN"], "EnableServerLicenseValidation": false, "Environment": "mBq37DEB", "FederationMetadataURL": "DFtkCUyR", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "GDcjFG6z", "JWKSEndpoint": "3RIkLczT", "KeyID": "k3j7oQsd", "LogoURL": "pWvm58Sd", "NetflixCertificates": {"encryptedPrivateKey": "ibbOGpGG", "encryptedPrivateKeyName": "OG2HSQYe", "publicCertificate": "YqexBsMO", "publicCertificateName": "q0ilM86p", "rootCertificate": "szdTMfnQ", "rootCertificateName": "945W4DWH"}, "OrganizationId": "tBHyn1E5", "PlatformName": "FRkaimoO", "RedirectUri": "Rxi3cJLp", "RegisteredDomains": [{"affectedClientIDs": ["n6gBYh5T", "QjElBlvj", "NE0VY1dX"], "domain": "OnEI026N", "namespaces": ["MW46etmx", "9FQmXG7u", "yped3Ad7"], "roleId": "rJropae3", "ssoCfg": {"googleKey": {"OuYllxlD": {}, "R5kdu0xd": {}, "jXHlILIq": {}}, "groupConfigs": [{"assignNamespaces": ["jtjHVKJk", "wDggBRr2", "hGQarKUZ"], "group": "ba3iVYYH", "roleId": "0jvJMXKi"}, {"assignNamespaces": ["vYyY3Gzt", "PR2unMB4", "G2dVI9VW"], "group": "n9d2XA0u", "roleId": "1NfLDbqF"}, {"assignNamespaces": ["kZXPpx49", "AlcJ56jH", "7HFntBZh"], "group": "U4ZOlFzP", "roleId": "ApA0yz3F"}]}}, {"affectedClientIDs": ["CI8bT8VR", "3qJBGdg3", "YLkVuDdu"], "domain": "11XGu3fK", "namespaces": ["UaomTbP3", "hENyxshF", "N465NKz5"], "roleId": "NTJCfoby", "ssoCfg": {"googleKey": {"espWTyzC": {}, "6VoL8QNd": {}, "cjA14pom": {}}, "groupConfigs": [{"assignNamespaces": ["tX96pbyH", "Fwu9KXnc", "xVLv2eDz"], "group": "26MEkfTB", "roleId": "6jUNSFDV"}, {"assignNamespaces": ["rCnkbfKW", "KkudwxTH", "QPS1Vn8H"], "group": "4fEV1Dx7", "roleId": "o7QP0bqq"}, {"assignNamespaces": ["HBkjRQ9r", "X9TZLVxe", "bZ77Lgfq"], "group": "vpHKyKCc", "roleId": "ZI6pO085"}]}}, {"affectedClientIDs": ["yu6kGuH5", "ePOeDBDB", "uYJ8cEeP"], "domain": "5sMSHcoV", "namespaces": ["5JiMO1Zt", "ZjUcUBB3", "DIEdQ053"], "roleId": "LNbO9pQA", "ssoCfg": {"googleKey": {"oMEvqbBw": {}, "DHv2REkL": {}, "uVBqPd1i": {}}, "groupConfigs": [{"assignNamespaces": ["9WFedRjz", "N1dATQxo", "8ibpWISb"], "group": "JKlNOOXM", "roleId": "jnUqI6OZ"}, {"assignNamespaces": ["1wuNthwr", "iPwt0Id1", "XhqaHSQy"], "group": "J13PVwit", "roleId": "gDjSAFKs"}, {"assignNamespaces": ["Dk3UpiZe", "cBrfpZtW", "cvC5vLDs"], "group": "NjQFbCOT", "roleId": "8GSvdNvK"}]}}], "Secret": "YGreUB7H", "TeamID": "CcjV8u1w", "TokenAuthenticationType": "LC3iRY19", "TokenClaimsMapping": {"KzQrMGlI": "sTyn0ZaT", "CdJEss6d": "aZLgNVo0", "rHUIH9AL": "IwEIfsnE"}, "TokenEndpoint": "BpjyJwbA", "UserInfoEndpoint": "kWBYUcu2", "UserInfoHTTPMethod": "9wbWmAzx", "googleAdminConsoleKey": "iQ8qQaY2", "scopes": ["JhMEzb7j", "v5bufBMJ", "M3TH5ScU"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Gqh9HNO3' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FECyUhHJ' \
    --body '{"ACSURL": "W5t6iQRk", "AWSCognitoRegion": "2TDqHDT6", "AWSCognitoUserPool": "QqhxJObK", "AllowedClients": ["pdinFKND", "ogjeGSHr", "vNw2cVtY"], "AppId": "uXRSHnmo", "AuthorizationEndpoint": "sNLDc4X9", "ClientId": "biVJ6qMC", "EmptyStrFieldList": ["n7DzUMur", "q7Kjxr0G", "XtYaVuAh"], "EnableServerLicenseValidation": true, "Environment": "GL52B7lE", "FederationMetadataURL": "JwOHXJPQ", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "Dyfvp5I6", "JWKSEndpoint": "0BMkFlvp", "KeyID": "oK8Db8Cl", "LogoURL": "1t6J0IpQ", "NetflixCertificates": {"encryptedPrivateKey": "rWduHROc", "encryptedPrivateKeyName": "TpRqiibN", "publicCertificate": "aw9R5Qba", "publicCertificateName": "VxOD5ypm", "rootCertificate": "ulk7TldU", "rootCertificateName": "MKFzjOsB"}, "OrganizationId": "zIpqquia", "PlatformName": "4OgyCQQr", "RedirectUri": "qfU3nQOk", "RegisteredDomains": [{"affectedClientIDs": ["NKgSbq7s", "BEuDAXgC", "iTRyMSeK"], "domain": "4WLS02vv", "namespaces": ["ecA0kBXQ", "MmhIUsrW", "XQCkxV2h"], "roleId": "b4hbiJTh", "ssoCfg": {"googleKey": {"vJWnOzQ0": {}, "gXJxEOpG": {}, "xCBKfLeD": {}}, "groupConfigs": [{"assignNamespaces": ["VIwbG7LE", "3WEjOi7R", "kr6Q67rZ"], "group": "p0WhiV8P", "roleId": "U1MJgZKd"}, {"assignNamespaces": ["QXndf86s", "EKlIlrQE", "Xx4VSKpd"], "group": "oKgoh8DK", "roleId": "tHVicPxV"}, {"assignNamespaces": ["ZRx3tB8Z", "lCYKe3zB", "QTDtYLUj"], "group": "0QadZd13", "roleId": "TfWwdKxd"}]}}, {"affectedClientIDs": ["58hCY7uK", "GSKhQVyN", "74Zq0zVE"], "domain": "N67J8GFM", "namespaces": ["ZdqRc2dO", "l1VrFhiK", "QaXQXi0r"], "roleId": "m5yTNqup", "ssoCfg": {"googleKey": {"bjiPkN0v": {}, "EZN8NtYW": {}, "tIiuTDvh": {}}, "groupConfigs": [{"assignNamespaces": ["COeG17H0", "Py5qpA6M", "PlsGWPxd"], "group": "EwZGiJ38", "roleId": "dorAtfHj"}, {"assignNamespaces": ["KzkPoYzs", "d7RC0st4", "RxL4HAaG"], "group": "M7bthEZt", "roleId": "x0l5nC3y"}, {"assignNamespaces": ["Du1HNWgS", "ZX1fw0Ix", "NJLc6x8u"], "group": "CKy4iKnf", "roleId": "iydi3vt7"}]}}, {"affectedClientIDs": ["SrGrw0aO", "zhTHxnTS", "gNZtKY5a"], "domain": "MIwl6Mxq", "namespaces": ["OX0fyG1j", "z6PLajFH", "qyBP6Ak6"], "roleId": "wQVZ3E5Q", "ssoCfg": {"googleKey": {"1SzIRAJG": {}, "d97GrgmG": {}, "KPtsDFQc": {}}, "groupConfigs": [{"assignNamespaces": ["JqOYXyNI", "UlsakfzG", "tFXZ5ohd"], "group": "sftVRXQ0", "roleId": "QBs6lSAc"}, {"assignNamespaces": ["Y1L3EAd4", "naUIDXsE", "qjKSQVzP"], "group": "AaloJowS", "roleId": "pSilX3df"}, {"assignNamespaces": ["2qWPMRXi", "iiNevSXv", "JGmahj81"], "group": "xFg0TnnH", "roleId": "grlqkUkW"}]}}], "Secret": "I6wh3dAv", "TeamID": "FHEYxvBn", "TokenAuthenticationType": "6TkT5m5x", "TokenClaimsMapping": {"q1oa8bfF": "hplAq7zG", "92iAbnya": "kTZzSTes", "rkEDYZNG": "WIico4hS"}, "TokenEndpoint": "H5CvBvWZ", "UserInfoEndpoint": "MbPpevlT", "UserInfoHTTPMethod": "0T3LxD8O", "googleAdminConsoleKey": "s6JTD8aC", "scopes": ["PRZ02oGl", "GQea8OEE", "waAr6AFN"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7BgVdPeb' \
    --body '{"affectedClientIDs": ["Zox7geqg", "A23Q3vcx", "HdYVObGv"], "assignedNamespaces": ["ShEny7HE", "ac4VIA0M", "PZzlIUhD"], "domain": "lXX05IPe", "roleId": "CmdyU8XH", "ssoCfg": {"googleKey": {"0YI41jgE": {}, "1cv7pteB": {}, "DjK5rsCD": {}}, "groupConfigs": [{"assignNamespaces": ["OIo3gocQ", "m9gvJ7bG", "GRKGPhR2"], "group": "RalnvfX1", "roleId": "qijYpzFu"}, {"assignNamespaces": ["JEDMHaDK", "3pORsZoq", "YMxKzDO0"], "group": "hdCWfSJZ", "roleId": "GWzsFCmS"}, {"assignNamespaces": ["8wmV5a4O", "h7MnN6Aj", "J4eBjnqw"], "group": "eQzKmRXF", "roleId": "asc0oP11"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0aBPvLe0' \
    --body '{"domain": "X48UoeZg", "ssoGroups": ["I4wYS4zU", "mwckBCvu", "ThnPjrzE"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XKERCq3S' \
    --body '{"affectedClientIDs": ["uFUiO57B", "pbbiL7CK", "Z2ocJPrC"], "assignedNamespaces": ["uLAOvZXD", "NUvbbInJ", "XeMB2RNW"], "domain": "FmLproXF", "roleId": "AFdWuGRq", "ssoCfg": {"googleKey": {"VeBTlmtl": {}, "8Dby53aH": {}, "cnf3a0C1": {}}, "groupConfigs": [{"assignNamespaces": ["h2pIO7ld", "Qup1zGKK", "KKaS80oW"], "group": "NjEMgi5Y", "roleId": "Xl6jKPgF"}, {"assignNamespaces": ["0ceNpryO", "Xn9szYPL", "4rsW1ORS"], "group": "UrlSmQmo", "roleId": "9apzWsyM"}, {"assignNamespaces": ["qGNk8baQ", "XM2YCCZi", "NCnJNgoO"], "group": "h78yxrL6", "roleId": "da9NLjmI"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'vAicvAJ3' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'IHG2f33b' \
    --body '{"acsUrl": "YQAjIHo0", "apiKey": "WcSGY31d", "appId": "Ye7ySQ95", "federationMetadataUrl": "aeDOMccw", "isActive": false, "redirectUri": "re8PRCxA", "secret": "wTnEhy3u", "ssoUrl": "oqAzVMws"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GhvlEPJX' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'aoZYLVeN' \
    --body '{"acsUrl": "VHBzkHyj", "apiKey": "wXX49Sq9", "appId": "BlmDyVa3", "federationMetadataUrl": "Cu5jOnYz", "isActive": true, "redirectUri": "s5mTRTH9", "secret": "6uZYRKP8", "ssoUrl": "7WrR3mOl"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hNn88aMh' \
    --rawPID 'true' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["tINT9TMD", "irNW8NIv", "AYTQu7Md"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AVdetLSs' \
    --platformUserId 'W2NcpVZS' \
    --pidType 'x9mrOIV0' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    --body '{"config": {"minimumAllowedInterval": 25}, "type": "ztAenvaa"}' \
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
    --identity 'VIEW_ONLY' \
    --body '{"additions": [{"actions": [75, 43, 10], "resource": "FAmHwuua"}, {"actions": [98, 49, 20], "resource": "uR2gRaQe"}, {"actions": [19, 60, 15], "resource": "cF2pfxPm"}], "exclusions": [{"actions": [39, 58, 60], "resource": "vYvB5zhw"}, {"actions": [2, 41, 42], "resource": "FwUj5jiS"}, {"actions": [63, 4, 15], "resource": "xl2GcDMc"}], "overrides": [{"actions": [3, 98, 55], "resource": "xrMndY0e"}, {"actions": [48, 89, 91], "resource": "46mPgIh8"}, {"actions": [35, 66, 15], "resource": "V4Mml98W"}], "replacements": [{"replacement": {"actions": [53, 62, 75], "resource": "SHTsgvVI"}, "target": "YkN7pytT"}, {"replacement": {"actions": [34, 16, 84], "resource": "Wqv2hq1L"}, "target": "MuLR467Y"}, {"replacement": {"actions": [89, 75, 7], "resource": "5KR8Mr8u"}, "target": "XTAi5nAC"}]}' \
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
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'YxXQWX6q' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '810fWllh' \
    --after '92' \
    --before '16' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '1' \
    --tagName '1UidCSK2' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "xSCC0n06"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'SV7c6AMI' \
    --body '{"tagName": "Fx5fIPsO"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'XpPl1sCz' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'qGi1TsiQ' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["l1MPkVh4", "JEkhIHkU", "h13vNXFv"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'oJ8olF6P' \
    --body '{"bulkUserId": ["MNmUPPya", "qR8P12LR", "LnIaNezZ"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["cfmuop9G", "f5NFfj0L", "WOFfNCDE"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["szBWIft3", "J3lGdRdc", "RH3hvouM"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "feer6RRU", "userId": "pIJ6F3Us"}, "fields": ["qV49Ppod", "QN7M1FLC", "l2zYaiJ7"], "limit": 25}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["kmDYXaQ7", "BnutjSaJ", "vIlKGBTz"], "isAdmin": true, "languageTag": "PP5CWetg", "namespace": "yz7jSOk9", "roles": ["J9ZDZ3Te", "eW8voxc8", "2RWBwDCT"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '12' \
    --platformUserId 'ldb3HMhx' \
    --platformId '5ahwegA8' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'wA91WPh8' \
    --endDate 'uetYbjmH' \
    --includeTotal 'false' \
    --limit '62' \
    --offset '93' \
    --platformBy 'pgrbUjpI' \
    --platformId 'or1Xk13E' \
    --query '8ZibjDZr' \
    --roleIds 'tW9dYyIG' \
    --skipLoginQueue 'false' \
    --startDate '7EK0CGWC' \
    --tagIds 'Izdmp4v5' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ygpOCAnt", "f4VEvSw2", "wWCqvzGh"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RauaJKzC' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F93wyVY0' \
    --body '{"avatarUrl": "JMTlFQQ7", "country": "qcP1RFku", "dateOfBirth": "YbnT2xx2", "displayName": "S5h8zQw4", "languageTag": "YwlM33yI", "skipLoginQueue": true, "tags": ["44lEOIsD", "7fmlj6p3", "xkVaVLXQ"], "uniqueDisplayName": "MCMSnn9k", "userName": "jJLtzf51"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'J2LJXPVj' \
    --activeOnly 'true' \
    --after 'WzVEs8Dq' \
    --before 'mfOBa0tK' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Rd1VNGf9' \
    --body '{"ban": "aHa5uBgj", "comment": "hpAzCHk6", "endDate": "oVGMcda1", "reason": "9c5rYdaG", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 't94A2UrH' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'uLXR7r1E' \
    --namespace $AB_NAMESPACE \
    --userId 'i4Z7nHkX' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sygfnjRr' \
    --body '{"context": "jY2w3nv2", "emailAddress": "JETbfbqj", "languageTag": "xqKC7pnD", "upgradeToken": "IrPP47Yi"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pioEdmP7' \
    --body '{"Code": "pxLPPoBy", "ContactType": "ISOgSxqU", "LanguageTag": "H02WZAYD", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'h1ocwrYC' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'A18zGnuD' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 't1rfjdtu' \
    --body '{"deletionDate": 42, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SnqALS1z' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ie9JOXsw' \
    --body '{"code": "qsRA0y1o", "country": "HpuWrlNx", "dateOfBirth": "kHh8xZOj", "displayName": "JF6LkZDm", "emailAddress": "laWl68ge", "password": "vjxnc7x1", "uniqueDisplayName": "FwC3EKGq", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kjTG5DP7' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'idAp74uW' \
    --after '0.41911290092463516' \
    --before '0.17859608811005667' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'izuD8nrQ' \
    --body '{"languageTag": "XLz5bn1H", "mfaToken": "VSQagFzY", "newPassword": "WTSvdqUW", "oldPassword": "msrgZPYK"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '1psHAhbO' \
    --body '{"Permissions": [{"Action": 51, "Resource": "qHqmjTNa", "SchedAction": 21, "SchedCron": "pPVOn3sG", "SchedRange": ["SzSSwFne", "rT25iazI", "77p0jUDp"]}, {"Action": 73, "Resource": "Gy7ly8ZF", "SchedAction": 34, "SchedCron": "FWr1bd2J", "SchedRange": ["d4GveXWc", "bbkYFzs1", "Q8Gv865I"]}, {"Action": 1, "Resource": "G9zjjZJt", "SchedAction": 70, "SchedCron": "kI1jaAM1", "SchedRange": ["NP4edVkk", "ojbBahyt", "qTBu1u9R"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oa82ke1s' \
    --body '{"Permissions": [{"Action": 55, "Resource": "bKxx5Ur2", "SchedAction": 27, "SchedCron": "gqV7Fgas", "SchedRange": ["JYa9hmJv", "6pWzKQDQ", "9I5R6qgO"]}, {"Action": 64, "Resource": "5II7MIgG", "SchedAction": 36, "SchedCron": "BALtGu9K", "SchedRange": ["xexbGwU4", "N4MXhYIe", "nkSx0WEi"]}, {"Action": 9, "Resource": "zLs9kGmH", "SchedAction": 77, "SchedCron": "42Tcev2S", "SchedRange": ["vbPfFVat", "AGbuzch1", "obH3n2N0"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WSYTjgeI' \
    --body '[{"Action": 63, "Resource": "ohAQ7eo3"}, {"Action": 36, "Resource": "4feB3lnZ"}, {"Action": 59, "Resource": "vmcLj70j"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '79' \
    --namespace $AB_NAMESPACE \
    --resource '8TKC9w9E' \
    --userId 'vMUxJFXM' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Jqi7iq1P' \
    --after 'cP3k6qtg' \
    --before 'cqSiUtAJ' \
    --limit '90' \
    --platformId 'c9sH0KMQ' \
    --targetNamespace 'qgnmJGS2' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '5gZssXEh' \
    --status 'Din6oht3' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'obsWNkOy' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'TUCu4jd5' \
    --userId 'KuEpDc1G' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'OqKqSwSM' \
    --userId 'Zkj9MHfn' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'GdCW1f6w' \
    --skipConflict 'true' \
    --body '{"platformId": "gV5RGuUi", "platformUserId": "MZt4Ijwy"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '3vTC1OL2' \
    --platformId 'p1WYrUp0' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'taejmxIl' \
    --userId 'Bv3KMIaN' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TB8AipBq' \
    --userId 'Ba5P8fYX' \
    --ticket 'A519dUdx' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '08Y1hnPy' \
    --userId 'xaTQLVgp' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FoF6MwVz' \
    --userId 'ornZYFFs' \
    --platformToken '6p7CVI8A' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'aARiK3Bl' \
    --userId 'T8b6PlVp' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mswx7ha8' \
    --body '["AjTOFK53", "aF1HVfDi", "SAoKbiiP"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '7sxYnjZl' \
    --body '[{"namespace": "84vc3Phq", "roleId": "ciPlpIWk"}, {"namespace": "hGD9daeg", "roleId": "DzAH2rQV"}, {"namespace": "wPqUUyDm", "roleId": "QB3xzaum"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'anCpj86Y' \
    --userId 'SyXReSIY' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'WwYZqzcF' \
    --userId 'uHgRbkiU' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'agVrEFhy' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'btFryrK0' \
    --body '{"enabled": false, "reason": "VuBNmYEP"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'hrCsfWo9' \
    --body '{"emailAddress": "UrV5ylde", "password": "EZgS3Pfr"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '6TUb8MiM' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'hqLJvDiV' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "ohX9U0xc"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'rtSSNhtA' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'EatN41Sv' \
    --before '2GKIfhO6' \
    --isWildcard 'true' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "FMbRno0d", "namespace": "V3isGiX5", "userId": "42ibRRJX"}, {"displayName": "0O9hyycq", "namespace": "pgG3tLUS", "userId": "YMA4O3p3"}, {"displayName": "kEwTAqX7", "namespace": "J2kL4CuC", "userId": "TNn2zVls"}], "members": [{"displayName": "AhSsUI8W", "namespace": "ZpKNvdJK", "userId": "kPjsKFAf"}, {"displayName": "GU5gx7mW", "namespace": "81dgVUJi", "userId": "pSMvcRKL"}, {"displayName": "NAULuo6D", "namespace": "DXZL1plM", "userId": "383B9hE7"}], "permissions": [{"action": 64, "resource": "qdJZEDrF", "schedAction": 10, "schedCron": "GEAGdTRM", "schedRange": ["gkZ1IM2r", "VizxdeHB", "zU6rhJye"]}, {"action": 89, "resource": "ThdERIsn", "schedAction": 24, "schedCron": "sbbW93Y7", "schedRange": ["OPMku6C9", "GlOYpk1x", "GT0N51rB"]}, {"action": 59, "resource": "yt2IJeu6", "schedAction": 56, "schedCron": "PtS7lhEv", "schedRange": ["GW4kyZ5e", "hk5a2gST", "xaqfmzxN"]}], "roleName": "f4LZuGn2"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'qJSNIXZJ' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'i6fokuSd' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'ttBZYBzt' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "e3pWhjQN"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '5kqzNNiB' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '2ZW01guv' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'L93fArTo' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'JjC4n8we' \
    --after 'kEQWeZUb' \
    --before 'kgjxD8Dz' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'P6dxpoow' \
    --body '{"managers": [{"displayName": "fy0izMRQ", "namespace": "edRXz057", "userId": "Vy5OVaIA"}, {"displayName": "RY760Cwj", "namespace": "EOQKeISF", "userId": "AM2spqDj"}, {"displayName": "jMjbX5HW", "namespace": "K2xcyXQD", "userId": "r9btKLdE"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'fIAWrHnD' \
    --body '{"managers": [{"displayName": "wGPu2JNy", "namespace": "M0UUStOu", "userId": "rRtJaozg"}, {"displayName": "3YS4huhQ", "namespace": "Nj7Vfla8", "userId": "SAUD7UhI"}, {"displayName": "AHLgTRK1", "namespace": "W25PIZPR", "userId": "ZIBJCryf"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '8YGOaqdB' \
    --after 'GRmUCapd' \
    --before 'fUfYaC0B' \
    --limit '87' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'wf3YhpSQ' \
    --body '{"members": [{"displayName": "ztIfmtlW", "namespace": "nWSJNIzA", "userId": "D7uMDc2c"}, {"displayName": "VrUwPrS9", "namespace": "3TrGe0lq", "userId": "ZlX8bagB"}, {"displayName": "3X3fTjwT", "namespace": "bUriHPKo", "userId": "olhO1ShO"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'OfqbgZhQ' \
    --body '{"permissions": [{"action": 41, "resource": "GU4VYlVR", "schedAction": 89, "schedCron": "Oikhvv9p", "schedRange": ["J8Qp1tBY", "TyYby91k", "kvJP2tR6"]}, {"action": 76, "resource": "JfiRc4Ri", "schedAction": 45, "schedCron": "rx03ovG0", "schedRange": ["iRPTbOcz", "cifYVYZb", "xHReXxOS"]}, {"action": 54, "resource": "Ise4DPkT", "schedAction": 54, "schedCron": "S9zLsrjC", "schedRange": ["mn1CHbgl", "c3IbKcZl", "lFewIpSU"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'g3EXfFl8' \
    --body '{"permissions": [{"action": 51, "resource": "gqIbaDcg", "schedAction": 27, "schedCron": "DjlE1ITr", "schedRange": ["TP5P4oLM", "ertcRra2", "W8qBdfHZ"]}, {"action": 69, "resource": "6WmDMVde", "schedAction": 36, "schedCron": "cU79UG8Q", "schedRange": ["hMOpKpxZ", "aoFYVuYo", "6yZZABZM"]}, {"action": 9, "resource": "J6pJRaH0", "schedAction": 50, "schedCron": "IvdBhSKu", "schedRange": ["P8OVslvT", "7DsBAerl", "g7KmbM7g"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 't05Hzqpx' \
    --body '["KSMYKKSy", "X5c8Myzq", "hpRW98Kt"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '1' \
    --resource 'tJgPSkS8' \
    --roleId 'otxiFNKk' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'irrZQ6fH' \
    --extendExp 'true' \
    --redirectUri 'Wv4RP9fS' \
    --password 'rQdWHgdr' \
    --requestId 'ICIubxfT' \
    --userName 'JkjwHOXj' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'PjpBK2iK' \
    --linkingToken 'uh3InUuD' \
    --password 'OeAqF1Om' \
    --username 'CIi43AEv' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'true' \
    --clientId 'xT5rdTkk' \
    --linkingToken 'cS1NCcSD' \
    --password '6xeCDozc' \
    --username 'n7SXqElO' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'xoH1LJhG' \
    --extendExp 'false' \
    --linkingToken 'jjZyGI2m' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'QaFYS2Qf' \
    --state '2b2JXHGY' \
    --platformId 'QeADOpqd' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'mt54g1pf' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'PI4Cm7v0' \
    --isTransient 'false' \
    --clientId 'T11Mb5Jl' \
    --oneTimeLinkCode 'fyOmdaAG' \
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
    --codeChallenge 'l8cx8pqx' \
    --codeChallengeMethod 'plain' \
    --clientId 'jIbNPKan' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DeWGaXqy' \
    --userId 'YXxTstTv' \
    --platformUserId 'Ep3VBYM7' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UaLka9Kh' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'Llf9FmA4' \
    --codeChallenge 'gsu2SONz' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --loginWebBased 'false' \
    --nonce 'F6vdjIam' \
    --oneTimeLinkCode 'ERSRw2EK' \
    --redirectUri 'vHuDhAXT' \
    --scope 'Br4fLVaP' \
    --state 'FAi7jvoH' \
    --targetAuthPage 'sOq2Cxyq' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId '7uNuBIUi' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'yxQ9MaI2' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'r3yLRKPZ' \
    --factor '2PFZCgL0' \
    --mfaToken 'PqrTUNK8' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'oO0BrHR2' \
    --mfaToken '9NI2pIUM' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'nRpNTIiD' \
    --factor 'WoCTltCA' \
    --mfaToken 'hxVhszvI' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'QXPagxVZ' \
    --factors 'C07nXNy4' \
    --rememberDevice 'true' \
    --clientId 'tcFjrLFt' \
    --code '8yxHHQge' \
    --factor 'edwOGHkd' \
    --mfaToken 'czi2SHUx' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iQeLvBvT' \
    --userId '7jtEtUY5' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'upoR0zAd' \
    --clientId 'qcPtUKgZ' \
    --redirectUri 'MVBWi0Oh' \
    --requestId 'WExcUI9g' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'X6XX2jIH' \
    --additionalData 'gWOcvOcJ' \
    --clientId 'EXWWWlao' \
    --createHeadless 'false' \
    --deviceId 'GPvrjKGP' \
    --macAddress 'tnHcHl7i' \
    --platformToken '9rZ6bYe6' \
    --serviceLabel '0.6764545304587546' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'uZHF19PB' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform '7Q28rik7' \
    --simultaneousTicket '5ObXkmjJ' \
    --nativePlatform 'steam' \
    --nativePlatformTicket '85kC1s1Z' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'mumIjEap' \
    --clientId 'IDaCIzEN' \
    --clientSecret 'x5tj9CSU' \
    --code 'Q0QT3K0B' \
    --codeVerifier 'Gm68N0uA' \
    --extendNamespace 'iRIv2jpV' \
    --extendExp 'false' \
    --password 'nbST91zD' \
    --redirectUri '6oTw3L3t' \
    --refreshToken 'zspfP0QP' \
    --scope 'nxinYXoM' \
    --username '9BUqlZXX' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'os0AHZCi' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '0rora7mx' \
    --code 'iNInt3sr' \
    --error '5b6zqqe8' \
    --openidAssocHandle 'ZlifL8NC' \
    --openidClaimedId '7ukzeuBh' \
    --openidIdentity 'ntRmlJGU' \
    --openidMode 'si3VOL8x' \
    --openidNs 'ReezVFmn' \
    --openidOpEndpoint '8Ij95Wwy' \
    --openidResponseNonce 'J4vCBw6R' \
    --openidReturnTo 'VbIknmFz' \
    --openidSig 'yVIlqkEH' \
    --openidSigned 'xhx0oCuj' \
    --state 'SN3tWc9f' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'xvhokIqr' \
    --platformToken 'rxBJ6oUu' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode '8ntdN1Ek' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'M84cwVUP' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'qviuDzZD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'YsFET2a9' \
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
    --clientId 'BSA89czO' \
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
    --requestId '7nQrd4lO' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'UQ17QIpd' \
    --limit '10' \
    --offset '69' \
    --platformBy 'ovTL8hYj' \
    --platformId 'KQYn4d5Z' \
    --query 'Bvrgx6M4' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "w6jUEqXQ", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vu86KS8Z", "policyId": "vizpoSUr", "policyVersionId": "GKDB3cyL"}, {"isAccepted": false, "localizedPolicyVersionId": "Op1ttQJy", "policyId": "DXMrpIoF", "policyVersionId": "wPMmOzIS"}, {"isAccepted": true, "localizedPolicyVersionId": "hE5Vbrbi", "policyId": "7Khpe34g", "policyVersionId": "fQ6tIQwU"}], "authType": "Zq4YEXB4", "code": "eP3dGb5I", "country": "KnLdhnGE", "dateOfBirth": "iZDNLrGu", "displayName": "KVWpVsSW", "emailAddress": "1D299IFN", "password": "QsVN0hVv", "reachMinimumAge": false, "uniqueDisplayName": "CyJzSK4L"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'yNChh8om' \
    --query 'iJtovJ9G' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "xDWQyT47", "languageTag": "WYEWMCkH"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "XSmJAcU9", "emailAddress": "wK7wZDYl"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "972Kjkgp", "languageTag": "fehzOOMy"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "XRyIsYHC", "password": "TwZx7CX3", "uniqueDisplayName": "sAEDFnG2", "username": "SyXRIdkB"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'rnX7vmwx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'OyI9hlHb' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "hNoDcUCL", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "O5RWgZnw", "policyId": "vQJZHr7o", "policyVersionId": "jLks6gCn"}, {"isAccepted": false, "localizedPolicyVersionId": "mo5Bzrof", "policyId": "H85SbXFR", "policyVersionId": "8Wl9h8K4"}, {"isAccepted": false, "localizedPolicyVersionId": "7LkVjkN5", "policyId": "cm5x2I31", "policyVersionId": "LzKUezAZ"}], "authType": "vUJwTXXQ", "code": "Nj2K6gRE", "country": "3hdqzuuM", "dateOfBirth": "aF4fbgrT", "displayName": "j0YxsJqm", "emailAddress": "lOdrr2nO", "password": "NUa5NN37", "reachMinimumAge": true, "uniqueDisplayName": "JbWfs3ug"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "x9oRGjwE", "country": "Zb5Bjkib", "dateOfBirth": "8HnQY8bH", "displayName": "poQc7A4l", "languageTag": "HppOD1mR", "uniqueDisplayName": "nZdBpiGu", "userName": "1262ldpt"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "JLtcUx5F", "country": "54DFWPB2", "dateOfBirth": "EBNSRjrN", "displayName": "psn36nd6", "languageTag": "yKxW0rCz", "uniqueDisplayName": "5IH4Kq69", "userName": "tjXrMAcE"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "Zwn0m5XI", "emailAddress": "fk8JImej", "languageTag": "LwDDagjG", "upgradeToken": "aHdmoptn"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Le6qfjLR", "contactType": "M6i7NacD", "languageTag": "mcV6Ch4z", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JgExI941", "country": "jJR0a5Qk", "dateOfBirth": "3GAIe09I", "displayName": "LXRWy1QN", "emailAddress": "Mo0LJVbp", "password": "PTY9QrcG", "uniqueDisplayName": "65eBwO0u", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "72BKGZDU", "password": "H0lpl2WJ"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "uRldyU7b", "mfaToken": "awecedsY", "newPassword": "ctPX69z3", "oldPassword": "R88rXgvO"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'HTX84AJS' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eSRT6puD' \
    --redirectUri 'Y3VztQXi' \
    --ticket 'DUPYSHUX' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'D9hsiWWO' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SRbmdKvz' \
    --ticket 'bHr3s36m' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'ZR4DrU1v' \
    --clientId 'ZP7GvZiL' \
    --redirectUri '5wLAyvlo' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'IK6KlsrU' \
    --code 'Ws6DlvPo' \
    --state 'kNOKr3uo' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'H1Jdvg1g' \
    --code 'fx1F6enU' \
    --state 'UbJ8vTJ2' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "0yWXHQAY", "userIds": ["ZlDCWaMr", "GEJFvuZO", "Ks5MdTCp"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "XyyUFvEj", "code": "UZrgmF57", "emailAddress": "1rnCmBgT", "languageTag": "6iyX6hmX", "newPassword": "35kcxUTz"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zgxEvUUK' \
    --activeOnly 'true' \
    --after 'iKFZv9ZQ' \
    --before 'ZQFi2LVZ' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '1Hrl9MSm' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HasLZpIe' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'g0o7bivg' \
    --after '0.009540405224882087' \
    --before '0.39076425512053037' \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '8JNyNOZn' \
    --after 'gEc90uhb' \
    --before 'OuIT3wIK' \
    --limit '91' \
    --platformId 'CaxTrAYN' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mIS9Y60y' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'YX8XD4KV' \
    --body '{"platformId": "DlOwG8PN", "platformUserId": "tuDCC6l6"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'aHqAFCQW' \
    --body '{"chosenNamespaces": ["r2hZnUf3", "5nL74kDX", "4I14CaUQ"], "requestId": "hcEzXqYK"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '04zxe0pj' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '8t5HZdkK' \
    --password 'zqfvLUj1' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'pXR24Va4' \
    --before 'q7an8ScO' \
    --isWildcard 'true' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'IbyS7fL9' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "VCbfZd31", "emailAddress": "UH4I0uzv", "languageTag": "65UEX2aY"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "0wPR2S3v", "emailAddress": "FaKgeZbs", "languageTag": "SFrxFbS8", "upgradeToken": "9mllvgz0"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '3HGMsbAh' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["cSTp6Od4", "T6PCX75V", "8EjwNIPT"], "oneTimeLinkCode": "YaIG5SzS"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'phIzKXDp' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "NGLiJ8hM"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'NAExv8Ie' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'bQFRdYR3' \
    --code '4awU7cCq' \
    --error 'ITRwqoEJ' \
    --state 'NC74rKDx' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'GA9i0cYS' \
    --payload 'zxbughZu' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'I8RIStf1' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '4SvsZHOZ' \
    --code 'hrPloVPd' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'iGrijDyO' \
    --upgradeSuccessToken '5ZFrmM4n' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '47' \
    --namespace 'XjHm34OI' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '3uz0m2oN' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'lQQiWZQD' \
    --endDate 'uI4LSNEa' \
    --limit '44' \
    --offset '20' \
    --startDate 'AlutPwUh' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'fBFvxT63' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "faho10VK", "deviceId": "XPNQwTu4", "deviceType": "hsf0LmQL", "enabled": false, "endDate": "su0j81kj", "ext": {"PVf3yLTO": {}, "AieDF5tV": {}, "2NgfGK1j": {}}, "reason": "UkIlL5Bg"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'e1rk4oET' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'PWsbm0Yg' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '68il9eth' \
    --startDate 'ZzX5kmVq' \
    --deviceType '7BEQKBgN' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'Gf1H1Ear' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '1rsWoa5n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'rR0nsQw9' \
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
    --limit '83' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 47, "userInfo": {"country": "y8wzyFsY"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "R42WL6jo", "policyId": "WbgFcfX1", "policyVersionId": "KUyRaWgM"}, {"isAccepted": true, "localizedPolicyVersionId": "i9DarkeE", "policyId": "tr7jciHQ", "policyVersionId": "Jo626e5Y"}, {"isAccepted": false, "localizedPolicyVersionId": "CkpaQ62F", "policyId": "1IkfE1Kv", "policyVersionId": "wiGrr7eJ"}], "authType": "EMAILPASSWD", "code": "9k9YdzDq", "country": "rIAwEKLa", "dateOfBirth": "PrZypIKj", "displayName": "t3KzV7Ft", "emailAddress": "W8NVJivm", "password": "tjAYX8aF", "passwordMD5Sum": "yIBE42fl", "reachMinimumAge": true, "uniqueDisplayName": "JybxDrwF", "username": "hyu7gC1W"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["bepkyj21", "XAQce5zv", "RYt9nzwf"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["n2z1JxrR", "jvIYRBH6", "jR6ojyeI"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Bq3EOzd8' \
    --body '{"avatarUrl": "HfVqToBb", "country": "69wBAzG3", "dateOfBirth": "CC3enLdL", "displayName": "paETFG8o", "languageTag": "WSP3fzWE", "skipLoginQueue": false, "tags": ["iwogj1V5", "wlClBFMu", "ssqmFUNS"], "uniqueDisplayName": "X9gHuiol", "userName": "W0Anko6T"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'M1Zpg9hY' \
    --body '{"code": "geQ5Sdck", "emailAddress": "WvVilUOO"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OfNfKuv8' \
    --body '{"factor": "sfYMxBsE", "mfaToken": "Iuy8DTsL"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'GgyZwzcy' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'aiHHiKEV' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'IeKLWhJE' \
    --body '{"assignedNamespaces": ["s8M6Ak2z", "RneYF6rK", "pb6lvXkc"], "roleId": "bdG8eHE3"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'TZMOefmn' \
    --body '{"assignedNamespaces": ["T2pO7j8x", "bHmwvpj9", "qYCcTuBf"], "roleId": "qqbJZVSN"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bfpIAqjG' \
    --body '{"assignedNamespaces": ["RtRFWeAi", "QqEijB9u", "Ckmhg6GC"], "roleId": "E10BiZxd"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '0' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "xaOc2iyS"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '3P9GFzJG' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'LwTinY8c' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'M0Jm24VQ' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "Qv0PEawV"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'kGAAbdE4' \
    --body '{"permissions": [{"action": 85, "resource": "uoLF1vbM", "schedAction": 58, "schedCron": "KLv1ZoaN", "schedRange": ["yMGKEyVH", "wc93bFwc", "ziwTapfr"]}, {"action": 40, "resource": "9w3IhA16", "schedAction": 16, "schedCron": "gpkUIAvq", "schedRange": ["1A1iVcUw", "shngY86C", "dbki5cji"]}, {"action": 49, "resource": "cKP7hu6E", "schedAction": 16, "schedCron": "fK0mbLE6", "schedRange": ["8jfhwzyt", "C8CQLFX6", "WJh5LTsk"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'LXoZsmsR' \
    --body '{"permissions": [{"action": 39, "resource": "NKUKqgQO", "schedAction": 67, "schedCron": "TtFqLOCT", "schedRange": ["LGK2gynC", "ptyvwolc", "HxBFHZx0"]}, {"action": 40, "resource": "LZd43tQl", "schedAction": 75, "schedCron": "ajRSgQ7m", "schedRange": ["eN3HZLyV", "cAoGO2bc", "f2HyPJHK"]}, {"action": 33, "resource": "WeVYhFLt", "schedAction": 60, "schedCron": "AjvQVfRu", "schedRange": ["XrHXCAnq", "Ot2MYnlX", "dhxjy9hd"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'auniZrGN' \
    --body '["ETLzvAT5", "4QBLcvLQ", "UQuFANpS"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'ST8cbvtQ' \
    --after 'kn9KXmfF' \
    --before '0PIypyqX' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId '9FqScvh6' \
    --body '{"assignedNamespaces": ["sxhTotEC", "LX8bnnjt", "uomtJS6C"], "namespace": "aKS03eO5", "userId": "vYpWmfgW"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'U5x4x2Z7' \
    --body '{"namespace": "IFTH1VQn", "userId": "TPBSHrUp"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["TTNqF7xH", "Zw0cj2jx", "7AKTGfnG"], "emailAddresses": ["5ZxxR4t8", "6LdaFAka", "yGU9wVLE"], "isAdmin": true, "isNewStudio": false, "languageTag": "kDkDGnEB", "namespace": "MxB7bsDA", "roleId": "67faGJbD"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "e5PdwFaa", "country": "tdKgDETm", "dateOfBirth": "ME3xME2Y", "displayName": "k0k3phjL", "languageTag": "IOX8dPls", "skipLoginQueue": false, "tags": ["zhG3PPNU", "j0KxUfzf", "g4GRezB5"], "uniqueDisplayName": "s13T8rCA", "userName": "g0bDi5ja"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "JHkKxGA8", "mfaToken": "jKTWAtzq"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '12zvM2js' \
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
    --body '{"factor": "Bv1SDOXa", "mfaToken": "edMP8uhU"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'QW7i4fKs' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'Eza6n0hF' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'kdbYGtNM' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'Mo1eeCQv' \
    --factor 'I3ASa1g8' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'PS2YvfDt' \
    --languageTag 'VUlBth3h' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "IuFRzuGs", "mfaToken": "fnUuyawq"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '0k28wupr' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'x4uwiO20' \
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
    --extendExp 'false' \
    --clientId 'qv85JoGJ' \
    --linkingToken 'iYK9cLXo' \
    --password 'VdkFfaYh' \
    --username 'SPLphI0O' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'xruC0dg0' \
    --extendExp 'true' \
    --linkingToken 'MhRqODQo' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'HehjXlrJ' \
    --factor 'fNGIQlYg' \
    --mfaToken 'iNkKH0kc' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'UMy7Z8uk' \
    --codeChallenge 'xwMxMgdE' \
    --codeChallengeMethod 'S256' \
    --additionalData 'Yc2dXSCJ' \
    --clientId 'b1QIkKxK' \
    --createHeadless 'false' \
    --deviceId 'nrf1VFm6' \
    --macAddress 'D7eMbNKi' \
    --platformToken 'GVHerE9c' \
    --serviceLabel '0.33044868212870715' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'q9zHL0Qo' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'Hlr0cDyV' \
    --simultaneousTicket 'bKxyDXkW' \
    --nativePlatform 'steam' \
    --nativePlatformTicket '5ZyJSiyj' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'qlszNzWc' \
    --codeChallengeMethod 'S256' \
    --additionalData 'PpoS5VN2' \
    --clientId 'GznZ9GMv' \
    --clientSecret '17D6OIAW' \
    --code 'ZS12gdhp' \
    --codeVerifier 'aLIAobNH' \
    --extendNamespace 'gpWny5lB' \
    --extendExp 'true' \
    --loginQueueTicket 'mWIxw7SZ' \
    --password '2DTT5vBl' \
    --redirectUri '2wyMcoeA' \
    --refreshToken 'SWBSpPEF' \
    --scope 'KpiGRAMo' \
    --username 'yDWbbyCI' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'SzOKLTyD' \
    --code 'IJ0WIO3k' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'nJbM4ZFW' \
    --rawPUID 'false' \
    --body '{"pidType": "xEW6IhDi", "platformUserIds": ["2OYhvKjU", "EZPKb60k", "yogDS2rc"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'nw5yrLaq' \
    --platformUserId '23zYYWXo' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "p1K4msNy", "policyId": "w8JSoqjn", "policyVersionId": "6nhnINQK"}, {"isAccepted": true, "localizedPolicyVersionId": "3jLsjMCD", "policyId": "xkjaCZBf", "policyVersionId": "jwVc3IeY"}, {"isAccepted": true, "localizedPolicyVersionId": "P41fIfPw", "policyId": "96RTaFMv", "policyVersionId": "aQ8ka6jE"}], "authType": "EMAILPASSWD", "country": "BvyPM00X", "dateOfBirth": "kXUzZKhm", "displayName": "FBc6OH9k", "emailAddress": "x5F5pONQ", "password": "WN0e5PxN", "passwordMD5Sum": "MyZSyKEu", "uniqueDisplayName": "H0t7JqOI", "username": "chDcUDot", "verified": true}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "HiS2KSPk", "policyId": "HownezMY", "policyVersionId": "f9ORdfoj"}, {"isAccepted": true, "localizedPolicyVersionId": "bhKxymi9", "policyId": "AAdyCTm4", "policyVersionId": "cB2AO2jW"}, {"isAccepted": false, "localizedPolicyVersionId": "TlGBMIy0", "policyId": "aGEim7eB", "policyVersionId": "bkDfcX48"}], "authType": "EMAILPASSWD", "code": "JyfuYHpL", "country": "HG1vjP3Z", "dateOfBirth": "CmjK3Lni", "displayName": "wbzRskl6", "emailAddress": "H03mo9e6", "password": "JD0zRrw3", "passwordMD5Sum": "VE6nlD0e", "reachMinimumAge": true, "uniqueDisplayName": "kNMtfNS5", "username": "8YW31lkM"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'VUuOOxCe' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "WM4wrEs1", "policyId": "iOuY4cbw", "policyVersionId": "5Ory9MrQ"}, {"isAccepted": true, "localizedPolicyVersionId": "3UXJvr0T", "policyId": "kQjedmcd", "policyVersionId": "M0BacVKi"}, {"isAccepted": false, "localizedPolicyVersionId": "eoz1dV6Z", "policyId": "JHdpMLlf", "policyVersionId": "8jxWPg2w"}], "authType": "EMAILPASSWD", "code": "gc1t8FZ3", "country": "cKYACA1o", "dateOfBirth": "O5HrqrKE", "displayName": "x7fdPX9s", "emailAddress": "sq8xLktk", "password": "wUyrQok1", "passwordMD5Sum": "8iu7kiCj", "reachMinimumAge": false, "uniqueDisplayName": "YsU3jdd9", "username": "rrHZDPIa"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "FURQso97", "country": "xc4aCWvx", "dateOfBirth": "bvYS8ZsS", "displayName": "Q1RjOfdr", "languageTag": "JhZoa1c2", "uniqueDisplayName": "jesoz6dM", "userName": "EBZCjD03"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "yNPXksDz", "emailAddress": "ymsvomww"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6W0EYQLP", "country": "xMOCwr1z", "dateOfBirth": "p6MdMGMr", "displayName": "LhYbH0GJ", "emailAddress": "iAzPiTHi", "password": "RtXQu1J3", "reachMinimumAge": true, "uniqueDisplayName": "t26HjISa", "username": "pBWVnbIv", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "Ow7EEcmP", "displayName": "UGbT9Bvy", "emailAddress": "6LL9HwMU", "password": "qzLBRA0G", "uniqueDisplayName": "xRjyx5xQ", "username": "0TLp1qTT"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "l1QXKypB", "mfaToken": "k9mGt7SU"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'ldSeFShM' \
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
    --body '{"factor": "zUQ3o0Oj", "mfaToken": "DrjciS91"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'VIoVkXnW' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '1RCN66RV' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '5lNg3WHs' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'VKAe1Jgk' \
    --factor 'cOaUMIlB' \
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
    --action 'Pw2xDyL0' \
    --languageTag 'OWzQ9lpc' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "Yxr2PxeT", "mfaToken": "56N8FArg"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'mJgMc6Cg' \
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
    --factor 'gFvDG2S0' \
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
    --userId 'XQcO482T' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "2pHrrBYY", "emailAddress": "ybWHTy3c", "languageTag": "pJOZ3aXv", "namespace": "fC89Fiag", "namespaceDisplayName": "hb5eUfRB"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "gHL4UOqw", "policyId": "xgQFYdBW", "policyVersionId": "qy5NLWHY"}, {"isAccepted": false, "localizedPolicyVersionId": "2r3D9l3p", "policyId": "sDJO1aQl", "policyVersionId": "TuA3QqdR"}, {"isAccepted": false, "localizedPolicyVersionId": "cf2fCSLp", "policyId": "uOczn6Gf", "policyVersionId": "XqHeaDVK"}], "code": "PHzYnIe9", "country": "oPUFXJRm", "dateOfBirth": "F1Iz5b6T", "displayName": "IqvkUvP2", "emailAddress": "SN1CzlhI", "password": "3ktPQpAI", "reachMinimumAge": false, "uniqueDisplayName": "TnVTxyq4", "username": "8GJ7kd9K", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE