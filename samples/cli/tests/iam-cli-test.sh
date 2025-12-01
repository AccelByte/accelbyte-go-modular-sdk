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
    --body '{"modules": [{"docLink": "J57j2hOT", "groups": [{"group": "zYHnopPY", "groupId": "zaoEYZ84", "permissions": [{"allowedActions": [91, 85, 6], "resource": "2jFdQ2u6"}, {"allowedActions": [46, 19, 69], "resource": "K5HQteaT"}, {"allowedActions": [65, 97, 8], "resource": "diSynhdW"}]}, {"group": "ENMkLuhs", "groupId": "yoPDuFND", "permissions": [{"allowedActions": [31, 53, 10], "resource": "UJRAPXpp"}, {"allowedActions": [57, 85, 43], "resource": "1GeBD1Bh"}, {"allowedActions": [72, 82, 87], "resource": "g7gQdHxM"}]}, {"group": "EBRixN8m", "groupId": "FLw9GXNB", "permissions": [{"allowedActions": [75, 51, 98], "resource": "EIvd654M"}, {"allowedActions": [80, 50, 79], "resource": "GL1q2Zz2"}, {"allowedActions": [42, 86, 44], "resource": "wl3D0hjz"}]}], "module": "4CifraAZ", "moduleId": "qjduSLsE"}, {"docLink": "M7usbsc9", "groups": [{"group": "6z2oScmp", "groupId": "r6enJnrx", "permissions": [{"allowedActions": [83, 42, 73], "resource": "kfvDjmAo"}, {"allowedActions": [91, 13, 46], "resource": "3TV8l3sF"}, {"allowedActions": [93, 95, 50], "resource": "xn18Zvsr"}]}, {"group": "p7uQRBzB", "groupId": "UikiPI1s", "permissions": [{"allowedActions": [74, 4, 99], "resource": "RhOD463l"}, {"allowedActions": [71, 41, 69], "resource": "2Xc6Ha3J"}, {"allowedActions": [4, 60, 15], "resource": "IUE6GwcG"}]}, {"group": "mvpR22W7", "groupId": "3IaCa6sE", "permissions": [{"allowedActions": [13, 93, 95], "resource": "IHlgewpL"}, {"allowedActions": [10, 86, 92], "resource": "uzLZtWug"}, {"allowedActions": [7, 85, 90], "resource": "ffmN16hM"}]}], "module": "diwEjToX", "moduleId": "Z5yMdlPU"}, {"docLink": "UT9Wrkjg", "groups": [{"group": "axJi36QJ", "groupId": "VS8hdzEx", "permissions": [{"allowedActions": [28, 75, 39], "resource": "Y48yVMQw"}, {"allowedActions": [97, 74, 49], "resource": "5WK3Pp9n"}, {"allowedActions": [16, 38, 72], "resource": "q9ECWQz2"}]}, {"group": "j9Ji8FPt", "groupId": "J0gjg7U0", "permissions": [{"allowedActions": [10, 43, 22], "resource": "DF7alSIJ"}, {"allowedActions": [73, 32, 49], "resource": "xpYona1R"}, {"allowedActions": [90, 2, 6], "resource": "umSKZcgb"}]}, {"group": "uEySNWFr", "groupId": "95UJukqO", "permissions": [{"allowedActions": [25, 95, 65], "resource": "z5kgBw4E"}, {"allowedActions": [55, 3, 67], "resource": "rdogB2W9"}, {"allowedActions": [83, 16, 21], "resource": "Tw3Lh50x"}]}], "module": "weF853VV", "moduleId": "o3DvYTdq"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "TxRj7my5", "moduleId": "t6qmgvLf"}' \
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
    --body '[{"field": "OFo50YiH", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["FEEE7GvK", "gMV3jxcQ", "0EPTMZlJ"], "preferRegex": true, "regex": "zvfR06iw"}, "blockedWord": ["FfSxmGww", "g5Hw5LhH", "5B5nCzYm"], "description": [{"language": "7uOtTC0t", "message": ["F8VxXGjA", "oQnqv7lQ", "TuVSm6HT"]}, {"language": "Mx0ZDRTe", "message": ["qYKk7Jy7", "aDkKndpx", "FqxhF1Pl"]}, {"language": "ACu93cwM", "message": ["nNvuUBQ6", "Sslsdrtk", "ww8hTZLA"]}], "isCustomRegex": false, "letterCase": "3nLb0yjB", "maxLength": 14, "maxRepeatingAlphaNum": 86, "maxRepeatingSpecialCharacter": 10, "minCharType": 6, "minLength": 3, "profanityFilter": "JUN5SWiJ", "regex": "eUbTlFQ3", "specialCharacterLocation": "VjULvd6Q", "specialCharacters": ["FVhTxEbN", "9owQYx1l", "FT5X3ffD"]}}, {"field": "6CxB6jth", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["gBPj01Hu", "thA8bJDH", "LkU1BvS6"], "preferRegex": false, "regex": "VM6E5W4x"}, "blockedWord": ["2DJP9pmP", "zuNHEUJs", "9Pt4WZXG"], "description": [{"language": "isRduxF8", "message": ["FFmUp4jT", "MSJLMl61", "z6FoyInh"]}, {"language": "iBHi5L9Z", "message": ["sTnmzeEY", "yZgjgRKV", "c8KNYRfl"]}, {"language": "P6Nhqo9V", "message": ["jPiotxhd", "qKyLbLPC", "kLDtr05Q"]}], "isCustomRegex": false, "letterCase": "ZqwTp3hk", "maxLength": 81, "maxRepeatingAlphaNum": 4, "maxRepeatingSpecialCharacter": 85, "minCharType": 68, "minLength": 70, "profanityFilter": "3gx1MJ05", "regex": "6vZ6Lmwr", "specialCharacterLocation": "3pYyGFzM", "specialCharacters": ["tFYceNNP", "QaotWYny", "2BGCbaUM"]}}, {"field": "3tX7tGj0", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["RpoA2Txk", "JBVkOshz", "h0WDw66O"], "preferRegex": true, "regex": "sQkNBE0R"}, "blockedWord": ["Xa1qlhhc", "gqikcEQC", "f3QQP9uT"], "description": [{"language": "5ybxWyVd", "message": ["G2CzIWS9", "7vlk0YHZ", "ORTNLSqz"]}, {"language": "uUT4L4uD", "message": ["44nc3XGg", "gwzLStMV", "q9vLqitZ"]}, {"language": "Dy0WMueW", "message": ["MzS1U7f0", "VtayMhWF", "a3yDjFAh"]}], "isCustomRegex": false, "letterCase": "XEkygaFg", "maxLength": 71, "maxRepeatingAlphaNum": 82, "maxRepeatingSpecialCharacter": 41, "minCharType": 1, "minLength": 42, "profanityFilter": "2JIsaKXK", "regex": "yH7Oa8L8", "specialCharacterLocation": "hFDegxs8", "specialCharacters": ["3Z2AwTp2", "trSmWE3p", "P4gYaPfd"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'Y1EBxNfR' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'IBECN3Nu' \
    --before 'itcjzoUO' \
    --endDate 'Wapo4yh5' \
    --limit '17' \
    --query 'IQApjPCO' \
    --roleId 'kcA4IPoe' \
    --startDate 'OYXrviBc' \
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
    --body '{"ageRestriction": 29, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'yRUZq4DW' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 18}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'Jw5QFqq8' \
    --limit '76' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "9yc1mzcu", "comment": "qQmeFs1B", "endDate": "2Xs5E1bu", "reason": "7LG9hhYK", "skipNotif": true, "userIds": ["NohsjKLH", "db2UclrW", "K2hz3vgN"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "2hUzrwcf", "userId": "2rZtp5kn"}, {"banId": "9it0oFoT", "userId": "o43tuugS"}, {"banId": "3RHTdXA1", "userId": "xoPjcYXw"}]}' \
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
    --clientId 'lysusenO' \
    --clientName 'THs8HQ6S' \
    --clientType 'vH69edXR' \
    --limit '54' \
    --offset '62' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["YBm9sQQj", "ZSc7zJTJ", "XIBeBGFh"], "clientUpdateRequest": {"audiences": ["PhRAwqDn", "v2qyo0cw", "TuAklgIe"], "baseUri": "xfYFLmti", "clientName": "nTbJOFVd", "clientPermissions": [{"action": 23, "resource": "bXu61rEZ", "schedAction": 79, "schedCron": "1MCxumv4", "schedRange": ["k6FPvI26", "qL3T4ORo", "cqQSvEvX"]}, {"action": 28, "resource": "ELJ1A3Kz", "schedAction": 100, "schedCron": "Lx0uLU61", "schedRange": ["untJg30E", "D5I2ZG1w", "RPrOKvzv"]}, {"action": 8, "resource": "ipx7Iacg", "schedAction": 58, "schedCron": "xT0riSdP", "schedRange": ["GdE3lDPy", "FJk8j2ys", "hs3O1zbM"]}], "clientPlatform": "fLZOzZHb", "deletable": true, "description": "7R0fRBoF", "modulePermissions": [{"moduleId": "LetUMf1s", "selectedGroups": [{"groupId": "egnGRcJi", "selectedActions": [10, 23, 84]}, {"groupId": "ngsQ0JiX", "selectedActions": [17, 42, 23]}, {"groupId": "AEJCU3A2", "selectedActions": [8, 21, 89]}]}, {"moduleId": "BeQRo7Mz", "selectedGroups": [{"groupId": "yod1HCYb", "selectedActions": [81, 60, 64]}, {"groupId": "7V04woyK", "selectedActions": [5, 1, 5]}, {"groupId": "2Da84qfe", "selectedActions": [26, 36, 20]}]}, {"moduleId": "BJTky8ho", "selectedGroups": [{"groupId": "Yq3SYIFu", "selectedActions": [3, 95, 25]}, {"groupId": "vWRaBIkg", "selectedActions": [69, 0, 90]}, {"groupId": "cwVuzPV2", "selectedActions": [43, 80, 26]}]}], "namespace": "BCfnbHg8", "oauthAccessTokenExpiration": 33, "oauthAccessTokenExpirationTimeUnit": "BczTHBPK", "oauthRefreshTokenExpiration": 60, "oauthRefreshTokenExpirationTimeUnit": "qgAREJEc", "redirectUri": "SgisIKny", "scopes": ["yNj3OKSP", "BRbbWtg3", "N3zWPOdL"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["saRg53Cm", "QdBAczQT", "QSTCzGsw"], "baseUri": "vVegm69w", "clientId": "z1raHjDH", "clientName": "pEfywNlu", "clientPermissions": [{"action": 9, "resource": "UCAJOH3S", "schedAction": 19, "schedCron": "Lo10xLsX", "schedRange": ["rVzYXha0", "1gTijAzq", "ZsQ5Epko"]}, {"action": 66, "resource": "WARuqe26", "schedAction": 22, "schedCron": "Dz09Z5EI", "schedRange": ["d37qsarC", "5SMS3pwm", "3sFznByX"]}, {"action": 3, "resource": "ErHPXf6n", "schedAction": 39, "schedCron": "4cRAKSoo", "schedRange": ["vSgTWbNA", "G4YQOrzp", "6qJbsP2p"]}], "clientPlatform": "XuZnbYEl", "deletable": false, "description": "7rhsBZib", "modulePermissions": [{"moduleId": "GDe3FfJh", "selectedGroups": [{"groupId": "bhx7ZSTF", "selectedActions": [79, 97, 16]}, {"groupId": "zvKQzsX3", "selectedActions": [4, 73, 68]}, {"groupId": "7Q1fPF3l", "selectedActions": [42, 68, 5]}]}, {"moduleId": "hW8Z9sy1", "selectedGroups": [{"groupId": "wtWMjD6L", "selectedActions": [25, 64, 92]}, {"groupId": "rhA38X6B", "selectedActions": [95, 96, 14]}, {"groupId": "tgaZTl5O", "selectedActions": [8, 74, 18]}]}, {"moduleId": "T32mqunC", "selectedGroups": [{"groupId": "b1iNaycm", "selectedActions": [28, 46, 86]}, {"groupId": "TTEEn8OC", "selectedActions": [21, 13, 48]}, {"groupId": "lnIiOHaX", "selectedActions": [10, 51, 68]}]}], "namespace": "O91bjIMo", "oauthAccessTokenExpiration": 99, "oauthAccessTokenExpirationTimeUnit": "XiesLVKb", "oauthClientType": "WzGoFZ73", "oauthRefreshTokenExpiration": 1, "oauthRefreshTokenExpirationTimeUnit": "qS78KRUo", "parentNamespace": "PU11LTKI", "redirectUri": "2HF467KM", "scopes": ["y2tyxb6y", "8MYf9zXf", "bb3yvl9G"], "secret": "zZc0NRBu", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'beDmi1pJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '5BSU7VXT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'OrktHJME' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["89udnlbe", "ZdSGVuaT", "5xGDbULt"], "baseUri": "zQs3GAm3", "clientName": "8U4MQr2f", "clientPermissions": [{"action": 12, "resource": "Z2DxbTec", "schedAction": 71, "schedCron": "TlRWmn7Q", "schedRange": ["X9rRNkBe", "xV0aFFwC", "0AD9od6M"]}, {"action": 9, "resource": "YCNl6efI", "schedAction": 53, "schedCron": "bzpvAwdW", "schedRange": ["5UMFuQpY", "kohclW3t", "jomWvyue"]}, {"action": 32, "resource": "11LwiYtZ", "schedAction": 58, "schedCron": "qr5puxiA", "schedRange": ["6VatK2Hv", "iqB6NBce", "YDvLVMpd"]}], "clientPlatform": "tI5yRn3A", "deletable": false, "description": "TA4VIIVG", "modulePermissions": [{"moduleId": "buXl8EIg", "selectedGroups": [{"groupId": "hoqcEM2I", "selectedActions": [74, 20, 10]}, {"groupId": "1ZrVXldO", "selectedActions": [65, 5, 49]}, {"groupId": "T1Vkb9pT", "selectedActions": [61, 26, 0]}]}, {"moduleId": "NZcRImCi", "selectedGroups": [{"groupId": "QduhORQQ", "selectedActions": [21, 16, 34]}, {"groupId": "jqM9YiN3", "selectedActions": [91, 89, 60]}, {"groupId": "Hy7YyjLO", "selectedActions": [54, 84, 93]}]}, {"moduleId": "5TpsUjcd", "selectedGroups": [{"groupId": "FurqAXbR", "selectedActions": [52, 5, 43]}, {"groupId": "cF5NTB6W", "selectedActions": [28, 98, 47]}, {"groupId": "QHiGE3zX", "selectedActions": [78, 64, 13]}]}], "namespace": "CylwFlus", "oauthAccessTokenExpiration": 99, "oauthAccessTokenExpirationTimeUnit": "YfVds5ao", "oauthRefreshTokenExpiration": 3, "oauthRefreshTokenExpirationTimeUnit": "DXfdYM8x", "redirectUri": "AdGt4p00", "scopes": ["JMr4nXcI", "hq5GviwW", "tEcNGEDW"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'g7ElDDZM' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 66, "resource": "cD7JU4n0"}, {"action": 48, "resource": "7kgwI6Ml"}, {"action": 62, "resource": "newyq2e6"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'VdtgQU7f' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 21, "resource": "zfRbhWEM"}, {"action": 66, "resource": "GYsDCcxi"}, {"action": 97, "resource": "89exbj9I"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '11' \
    --clientId 'XQcx3wu1' \
    --namespace $AB_NAMESPACE \
    --resource 'fVN2N3Tf' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'Z2QvFHpt' \
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
    --body '{"blacklist": ["rriMogwb", "zPCEJrT1", "lcvCUXHN"]}' \
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
    --body '{"active": false, "roleIds": ["1dPcIYJF", "lNgSvLhE", "mo2dPE5S"]}' \
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
    --limit '77' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XP7wccKC' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CoUJtphc' \
    --body '{"ACSURL": "kRx6WzhN", "AWSCognitoRegion": "PsZhDoZo", "AWSCognitoUserPool": "eNequdgj", "AllowedClients": ["wgpCajcN", "xsERpPA2", "BlCfiCXI"], "AppId": "cZggcLJL", "AuthorizationEndpoint": "Mxg2Xbis", "ClientId": "zbUBOQEA", "EmptyStrFieldList": ["vOfchOyY", "pDpiOrMV", "xwcPhgzV"], "EnableServerLicenseValidation": true, "Environment": "d9rsIQDo", "FederationMetadataURL": "n8BsOPJk", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "tQOg6v5T", "JWKSEndpoint": "giYxXwex", "KeyID": "JR0xiKeL", "LogoURL": "ubLmkgWq", "NetflixCertificates": {"encryptedPrivateKey": "DuAHhF7g", "encryptedPrivateKeyName": "ZBFLxTIh", "publicCertificate": "2yS8fn1a", "publicCertificateName": "oDU0mMQI", "rootCertificate": "IMlf3GKi", "rootCertificateName": "D1HpgtGU"}, "OrganizationId": "CtwB3q7T", "PlatformName": "6As3he0X", "PrivateKey": "NoNvGNbS", "RedirectUri": "grwbzYTI", "RegisteredDomains": [{"affectedClientIDs": ["0YLX7nex", "oyMQb9WC", "pAviQcyS"], "domain": "ppstaDdP", "namespaces": ["sJYiouz7", "KajxY3gm", "xrfZzQCq"], "roleId": "pkzLlhoS", "ssoCfg": {"googleKey": {"aajPzJFi": {}, "eLDMgKwv": {}, "1N2KOF7Q": {}}, "groupConfigs": [{"assignNamespaces": ["hirFEHZ5", "XL0ksEzL", "BpTgS1BF"], "group": "2sVGoJYA", "roleId": "FwyrOVsH"}, {"assignNamespaces": ["vBe0P3Ff", "LWQ4hiy7", "EvHCMyZ5"], "group": "z4gcAQNr", "roleId": "QxAu7eGP"}, {"assignNamespaces": ["ZULjzr7F", "JPlw3toC", "jbRri0C0"], "group": "bDgsRsKD", "roleId": "umrLxBOI"}]}}, {"affectedClientIDs": ["5GC8jfbF", "L4t600TD", "oMC3ddiY"], "domain": "q3xHtXVr", "namespaces": ["ragB439Q", "LDejEh3B", "lrHb7v9v"], "roleId": "PVgMepHg", "ssoCfg": {"googleKey": {"g20Ype19": {}, "iR7RdybN": {}, "LBK3kbhx": {}}, "groupConfigs": [{"assignNamespaces": ["vCZDO8Nc", "CXEvqwVa", "m4HOfblK"], "group": "CUeYQkNu", "roleId": "kQKLwRZd"}, {"assignNamespaces": ["hsJuY8Hb", "Zu0ZIEQP", "74e5DBLh"], "group": "uOQIXDvw", "roleId": "rcPdGK39"}, {"assignNamespaces": ["MM2nW9RN", "meY1OSq2", "blg9PpTH"], "group": "s7qDZ7pr", "roleId": "CZPwUbbF"}]}}, {"affectedClientIDs": ["ZGQemhgV", "JX9LPC3B", "GwEIClJ5"], "domain": "0wQkRUCx", "namespaces": ["sQKOUtU2", "Mn9boxGn", "C5l4f36g"], "roleId": "ZTz0GJ1V", "ssoCfg": {"googleKey": {"D8KjWqQv": {}, "rSN9B3bu": {}, "X6Dg49ql": {}}, "groupConfigs": [{"assignNamespaces": ["G4PRQMV5", "MlMxBLXM", "we2j8fEa"], "group": "a03PzsIp", "roleId": "pbPC9iSC"}, {"assignNamespaces": ["zxOtZ36k", "QViLpllq", "KQF5T1t8"], "group": "L0XKyHyU", "roleId": "VqBtL1sK"}, {"assignNamespaces": ["PG9L66q8", "QGdN4m6P", "KrKRpOcV"], "group": "ev6MgJ0E", "roleId": "9Hxr7ymr"}]}}], "RelyingParty": "Nig1ZBz9", "SandboxId": "mTFB4qmR", "Secret": "kt9Mus3w", "TeamID": "5YYDLpik", "TokenAuthenticationType": "y1Hhkkqi", "TokenClaimsMapping": {"ovW6B2jt": "DfAkOky8", "Mk5MhpGP": "Lii0rMAY", "cAvmHBKV": "gtAgPu6g"}, "TokenEndpoint": "6yOPvVv0", "UserInfoEndpoint": "iQRLGxn9", "UserInfoHTTPMethod": "IqjYPXP1", "googleAdminConsoleKey": "ElkXiE2x", "scopes": ["wMOAwP5E", "xPvrael5", "XuXcGrOM"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'N0vIJ7G5' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'V1w6Fa2A' \
    --body '{"ACSURL": "82XxhWrI", "AWSCognitoRegion": "yYT6EvPl", "AWSCognitoUserPool": "lLtbLo4f", "AllowedClients": ["xkuR94np", "HUfUyt3R", "q6vwyTCa"], "AppId": "hb1Cikvy", "AuthorizationEndpoint": "V3K8t5Gq", "ClientId": "zac4ZGVz", "EmptyStrFieldList": ["472hAKpY", "2O26jc4T", "h4rPup87"], "EnableServerLicenseValidation": false, "Environment": "x7SC1dqS", "FederationMetadataURL": "WDTxzS3A", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "JU7y6FzA", "JWKSEndpoint": "gMepDQpC", "KeyID": "0XkIaHD4", "LogoURL": "Bha0MrDS", "NetflixCertificates": {"encryptedPrivateKey": "mEn638a0", "encryptedPrivateKeyName": "ZUeamJ5Y", "publicCertificate": "QODHuVZW", "publicCertificateName": "cQqo0hze", "rootCertificate": "mvZ4poEC", "rootCertificateName": "jwLuF8i9"}, "OrganizationId": "gcybqTu2", "PlatformName": "HunYaWlK", "PrivateKey": "HgIU55p7", "RedirectUri": "PxSyGK2F", "RegisteredDomains": [{"affectedClientIDs": ["36nGwLYb", "d4XShQyi", "aTwdiy4o"], "domain": "npvqGdCB", "namespaces": ["D3iuI4zm", "4rHaNXaW", "8lTTCmp6"], "roleId": "wzzXk9kb", "ssoCfg": {"googleKey": {"y7Yqb4hL": {}, "k9bOi3rB": {}, "rC3s7cKU": {}}, "groupConfigs": [{"assignNamespaces": ["Jha9U1f3", "B5vVfhE1", "l8ilzVnD"], "group": "4Vn1io0b", "roleId": "49NclD7K"}, {"assignNamespaces": ["JD1XjPMF", "mZRt33uy", "Y6pu1geF"], "group": "VaOmH1ND", "roleId": "g0K8wvL6"}, {"assignNamespaces": ["QYWK08s5", "TvArc3Mo", "35bVmgJt"], "group": "eUm9DmdW", "roleId": "h6ayzFYk"}]}}, {"affectedClientIDs": ["VTZ5p4VZ", "5E7DoPqm", "WDCZyVZh"], "domain": "sT6nvLPz", "namespaces": ["PzBzdt6B", "F9glYGKR", "wIOB8KYL"], "roleId": "DiDavbQ6", "ssoCfg": {"googleKey": {"OIqIcgF4": {}, "eDX2ZHQZ": {}, "p0SfB4T1": {}}, "groupConfigs": [{"assignNamespaces": ["4u1Hc0rn", "CBz2gawt", "oTxKjbxa"], "group": "cHHHOASx", "roleId": "n8G1oyd5"}, {"assignNamespaces": ["HJovGh8u", "edS8N63m", "WVmdwvMd"], "group": "CWrpiQ8g", "roleId": "0Piptydj"}, {"assignNamespaces": ["GKP2ownB", "3geJ6pQO", "UKJFXOsj"], "group": "hcEp9zEM", "roleId": "H4fBYaXc"}]}}, {"affectedClientIDs": ["43HfPYZL", "aVVYJQoF", "johl0GaA"], "domain": "2s4wVZ8f", "namespaces": ["yAUxf7QC", "HwWxm6QV", "WxvXYXrV"], "roleId": "JpGUrHMx", "ssoCfg": {"googleKey": {"08DA1rgr": {}, "z5awSPeF": {}, "u9mg6AbF": {}}, "groupConfigs": [{"assignNamespaces": ["IiD1wgGB", "BPhiGIXs", "m4uEcqL5"], "group": "MqkVolAf", "roleId": "PYOINwTW"}, {"assignNamespaces": ["KOJK3dqX", "Y7VQgqGH", "yfKG4zr6"], "group": "qdjEowOk", "roleId": "SIOPGrP3"}, {"assignNamespaces": ["t9ffHpNJ", "bdhrKFRY", "Yh6Ni46z"], "group": "w2fHRmQj", "roleId": "3HT7aO42"}]}}], "RelyingParty": "ayYRWmPR", "SandboxId": "vPaAsb4V", "Secret": "acqLS5PX", "TeamID": "VoPcixjx", "TokenAuthenticationType": "6i3bmFky", "TokenClaimsMapping": {"fWO3YUJb": "XkBq8Cdp", "FrC1fSk5": "da1RPEW6", "tBx5EZhQ": "mgKeMiIY"}, "TokenEndpoint": "JG8QgJgu", "UserInfoEndpoint": "MzSp6CUg", "UserInfoHTTPMethod": "3uiQWHsY", "googleAdminConsoleKey": "MBhRktjb", "scopes": ["xd87e4DN", "qHOfbwE7", "gVqsjqN8"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'W5BQwWt0' \
    --body '{"affectedClientIDs": ["iAbGVjU6", "qohA43EQ", "hhYlftvx"], "assignedNamespaces": ["5X1uKaFH", "KDAbjcdy", "QPSNGJOY"], "domain": "V78yAKst", "roleId": "V6XpW9cT", "ssoCfg": {"googleKey": {"VbhYy6qi": {}, "P5HMfEsP": {}, "bMTDUeTn": {}}, "groupConfigs": [{"assignNamespaces": ["E3zLPdEF", "D7QaMYHO", "wpuWNuFL"], "group": "NLYJhDbV", "roleId": "yZbFaBfG"}, {"assignNamespaces": ["NO5rEE1a", "Ji6Amn4S", "BRaNY3h5"], "group": "lmZ7B37f", "roleId": "za9hASkT"}, {"assignNamespaces": ["9qjN6Dh8", "PZ0IlXZJ", "wfwgBqd0"], "group": "Pl1V87jU", "roleId": "ZK0tWfm9"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Ukr2oMgi' \
    --body '{"domain": "tfaPj3ni", "ssoGroups": ["iw31MJP8", "ma2AZF1B", "xjIUNoyC"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Ogzr6t1v' \
    --body '{"affectedClientIDs": ["GDKbPvfz", "oCh08kv2", "BWXf8Bgh"], "assignedNamespaces": ["U81VmIYs", "DohL9yf4", "cLvndFE0"], "domain": "Js3wsZqL", "roleId": "NdkhPDqx", "ssoCfg": {"googleKey": {"KGA2Z1ua": {}, "EAeOGfCL": {}, "7aXIzxOr": {}}, "groupConfigs": [{"assignNamespaces": ["0opDYxHP", "MyuaYXjJ", "yoLjBTUV"], "group": "Zoo7K0nj", "roleId": "0QVYbqwq"}, {"assignNamespaces": ["glYPnrL0", "LPf2592D", "oV6TkGx9"], "group": "8hdYvw3V", "roleId": "mygEbLP0"}, {"assignNamespaces": ["IppAKEe7", "oVfOG3Pf", "bVCC1aOw"], "group": "6iuE8SZf", "roleId": "AJLbSeL7"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'K4vvds4c' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'wAetLV9N' \
    --body '{"acsUrl": "Gzu2jkxO", "apiKey": "xaNWIpGy", "appId": "9JJjbXsY", "federationMetadataUrl": "z9vdVDW8", "isActive": true, "redirectUri": "7my1lozG", "secret": "ctKCRIjh", "ssoUrl": "iC3WfpxT"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UHEeN0S0' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '00AvHO14' \
    --body '{"acsUrl": "mA4AXSgF", "apiKey": "yZFuwlSf", "appId": "Hl2sqcGv", "federationMetadataUrl": "5NH4dbPB", "isActive": true, "redirectUri": "SRLyVg7U", "secret": "ofQgWDkQ", "ssoUrl": "AoXi0xWE"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ScnN9y3K' \
    --rawPID 'true' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["VlukI5gC", "G1iXP0E7", "Kuh0VMtf"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FRH1gZ6L' \
    --platformUserId '75JytVRd' \
    --pidType 'C36b5d3E' \
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
    --field 'dob' \
    --body '{"config": {"minimumAllowedInterval": 47}, "type": "AwfX6qPG"}' \
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
    --identity 'USER' \
    --body '{"additions": [{"actions": [20, 10, 76], "resource": "Cq8y636Z"}, {"actions": [17, 0, 17], "resource": "H5R88irQ"}, {"actions": [50, 75, 69], "resource": "zVVreWct"}], "exclusions": [{"actions": [84, 12, 97], "resource": "ZXkG4e1L"}, {"actions": [52, 72, 47], "resource": "IFC72fjm"}, {"actions": [96, 78, 9], "resource": "0hH51Iqn"}], "overrides": [{"actions": [27, 66, 17], "resource": "Pn4xpZin"}, {"actions": [0, 16, 31], "resource": "UyK92R1o"}, {"actions": [97, 94, 32], "resource": "C8gg7b9F"}], "replacements": [{"replacement": {"actions": [96, 89, 44], "resource": "49DbmPqq"}, "target": "tbJ4CdGD"}, {"replacement": {"actions": [40, 98, 6], "resource": "mMNlsdnE"}, "target": "dzH0slnt"}, {"replacement": {"actions": [80, 68, 83], "resource": "76SknUoD"}, "target": "K823m4bv"}]}' \
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
    --roleId '2Kqd7hey' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'EsBdtKMs' \
    --after '17' \
    --before '8' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '77' \
    --tagName 'P5P18mMv' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "Y9L3DDmO"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'V9uDtHJD' \
    --body '{"tagName": "m6PwcF4z"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'tUvGeorx' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'y0XQD5zB' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["Ut3MAh7u", "SUEH6VM5", "EWoA6VdS"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'CqJetHAY' \
    --body '{"bulkUserId": ["X3SSVVwe", "d8frN7zD", "59jCZVKI"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["FiBOvtMa", "yW00EvSC", "e4Ug1L4L"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Xn4ZuhB6", "e3g2kVQS", "eUbDBJks"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "CUhGERBe", "userId": "qG6e7Ks4"}, "fields": ["W0BmvP1X", "CI05gszC", "egXJxlG8"], "limit": 32}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["nU0gKZ8E", "AAN6nnzz", "Wzxt2Fwo"], "isAdmin": true, "languageTag": "45Q9siLj", "namespace": "NvW7x1hu", "roles": ["al21Ya5i", "PNK1vhJi", "YuHCEF4u"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '77' \
    --platformUserId 'DDtgt4Ff' \
    --platformId '0nKR1nKN' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'PDabIFy3' \
    --endDate 'hEVznB93' \
    --includeTotal 'true' \
    --limit '82' \
    --offset '85' \
    --platformBy 'B2uk1wa2' \
    --platformId 'E9S88zEq' \
    --query 'LJqaRZGq' \
    --roleIds 'c9j0ki3w' \
    --selectedFields 'B3TumAkH' \
    --skipLoginQueue 'false' \
    --startDate 'Iy0PdUlY' \
    --tagIds 'Bit5KBXv' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["S7U0UMo5", "20Od2evv", "J5j5uoeu"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NC1nbzqZ' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F2Nw7iKX' \
    --body '{"avatarUrl": "c28Jh82S", "country": "w0iFMzGb", "dateOfBirth": "p3Hz1FJW", "displayName": "sFSo8jyz", "languageTag": "UzzKUqRs", "skipLoginQueue": false, "tags": ["Rc6FQuHG", "y0QkQ65x", "vQMSTALZ"], "uniqueDisplayName": "UP8ibYBX", "userName": "32Uarcrn"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xgjE1vyV' \
    --activeOnly 'false' \
    --after 'qqE38THy' \
    --before 'GndaDavf' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zwhhCSqq' \
    --body '{"ban": "RhyMmLut", "comment": "GSA4VIl8", "endDate": "TxMpLgw6", "reason": "fkF5FUee", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aeraCGrD' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'YfbnaorD' \
    --namespace $AB_NAMESPACE \
    --userId 'JIORvfuS' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LPt5q1vl' \
    --body '{"context": "EYEGLCuP", "emailAddress": "50WSA6mv", "languageTag": "LrbVZqqQ", "upgradeToken": "nnAu2tzD"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IY9TE9Tu' \
    --body '{"Code": "GSg9WRTA", "ContactType": "nycqIHhD", "LanguageTag": "RstKscl5", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'WhRZQ6Pg' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'h3uwo9zm' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y8BEzCX4' \
    --body '{"deletionDate": 32, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SmODs85C' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yCbsfKm9' \
    --body '{"code": "DYbvXTVI", "country": "18mQSguH", "dateOfBirth": "JxmQDTZD", "displayName": "ROtW1YLF", "emailAddress": "pkguJojq", "password": "knDJqDzV", "uniqueDisplayName": "xiHfJLNn", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XZVtJ4dQ' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '6dXNMkUf' \
    --after '0.5801925553208276' \
    --before '0.9223129757296392' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '85tbxiLs' \
    --body '{"languageTag": "L2ATZJD5", "mfaToken": "O7uJkuRG", "newPassword": "l0eqlWzr", "oldPassword": "8UXZRckB"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xMET0X58' \
    --body '{"Permissions": [{"Action": 70, "Resource": "HD9uQea3", "SchedAction": 64, "SchedCron": "DPr5wC9F", "SchedRange": ["qS5zZijs", "G0OKh8Wk", "JxIf3IfK"]}, {"Action": 88, "Resource": "379BVsIq", "SchedAction": 35, "SchedCron": "QUaK9ptN", "SchedRange": ["5uwvSot1", "Hn1XhAGt", "3AEgk1Pu"]}, {"Action": 10, "Resource": "5F6AWuL6", "SchedAction": 44, "SchedCron": "L73gh56y", "SchedRange": ["Ddk2qVC3", "mlYkKBlP", "CuWvvo4Q"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hbMDRQ4y' \
    --body '{"Permissions": [{"Action": 77, "Resource": "yi8svmUl", "SchedAction": 6, "SchedCron": "vHSi7OpC", "SchedRange": ["J7BGUd13", "3UDd7hm6", "UZ1vut4w"]}, {"Action": 71, "Resource": "MzQqSe77", "SchedAction": 91, "SchedCron": "CfhVlETD", "SchedRange": ["om1AHlqA", "QiypVoUy", "6JDZ16xN"]}, {"Action": 29, "Resource": "tdGzMTX2", "SchedAction": 18, "SchedCron": "r8vUCvpJ", "SchedRange": ["7I1Cf1Lw", "EM5zxz4E", "BIMvDO96"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YAf97V1t' \
    --body '[{"Action": 63, "Resource": "YvYpDIlw"}, {"Action": 6, "Resource": "7ubCulD6"}, {"Action": 63, "Resource": "1Ik48OVo"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '47' \
    --namespace $AB_NAMESPACE \
    --resource '6892kG8f' \
    --userId '9JGYBIPz' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iJXGiB77' \
    --after 'FrZtrBOV' \
    --before 'Qdaq7lHK' \
    --limit '19' \
    --platformId '5AneoMbf' \
    --targetNamespace 'u134ZAph' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zXMapHql' \
    --status 'FK5BkgXy' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '00ZNRh56' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'UpmMuZS9' \
    --userId 'od0f9DBd' \
    --createIfNotFound 'true' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '1GIVXDUR' \
    --userId 'fXb0NOHf' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'xg0AfWTw' \
    --skipConflict 'false' \
    --body '{"platformId": "jMW69OYK", "platformUserId": "IcvJsXpa"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PFP1FdTN' \
    --platformId 'H4T8MiWy' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'F9blMrgm' \
    --userId 'CKSY89Pw' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RD3ZJVje' \
    --userId 'oI3ln3k0' \
    --ticket 'ggSQsFE0' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BUXg6d5B' \
    --userId 'trnYcTTN' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rF3zevpI' \
    --userId 'HoL078C0' \
    --platformToken 'jk9Dke8e' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'RQDpd4rV' \
    --userId 'HW9SPx5M' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '9RGNMLlZ' \
    --body '["wjqSGnD6", "g9plhYuP", "9ecd9Z0o"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mZdvGiHY' \
    --body '[{"namespace": "bJV79I21", "roleId": "eRgtG08r"}, {"namespace": "8TcrqQKn", "roleId": "8XpTqIl3"}, {"namespace": "Hm6dhwjn", "roleId": "3MYdB9yr"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'v57Ov3vB' \
    --userId 'T2e2M8RZ' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'gzQfKZQA' \
    --userId '5quMyW4P' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Wtpd5PJi' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xkfuCg8l' \
    --body '{"enabled": true, "reason": "PDLuoeT2"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'UFBkxw3F' \
    --body '{"emailAddress": "wIJTpWel", "password": "MNE5vCL6"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '4fB7pgJx' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '8CpQJvnI' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "hgh9UfDs"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'kVKjkBBI' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'gIWEzFgy' \
    --before 'glOVg810' \
    --isWildcard 'true' \
    --limit '91' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "g9yPgNxn", "namespace": "U5HSMTKt", "userId": "4gsZbH7Y"}, {"displayName": "1ALMaPwq", "namespace": "UTdM4DQa", "userId": "ZmonaRC0"}, {"displayName": "mZJTdDKD", "namespace": "JVlu9JBa", "userId": "SMDnYK0Q"}], "members": [{"displayName": "U93K4fDH", "namespace": "9hNvHoIM", "userId": "M4effF85"}, {"displayName": "nrZnUdYv", "namespace": "AvSL3tQu", "userId": "eO19CvWp"}, {"displayName": "kkGD2zjK", "namespace": "Xl6rt7VY", "userId": "YSS2fKio"}], "permissions": [{"action": 42, "resource": "f3EawaY7", "schedAction": 32, "schedCron": "ViBnYuHn", "schedRange": ["tkKAapuu", "tKqNz5SA", "bkrgsYn2"]}, {"action": 35, "resource": "Gk8ue8Yh", "schedAction": 72, "schedCron": "r069Zike", "schedRange": ["4IvYn9HF", "xFsqFf3a", "Xp1M64mb"]}, {"action": 5, "resource": "CifXKops", "schedAction": 29, "schedCron": "QckEIU8D", "schedRange": ["SjaVuGf7", "48pwmErR", "Y3nzfuYx"]}], "roleName": "DWWLfO99"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'FGBA7hp7' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'hNHLgPub' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '4quezBJ1' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "fY1QZLhA"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'qa5BH7aC' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'XMFRCQG8' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '5WAAMosA' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'ukW8cZDz' \
    --after 'NkLj8npl' \
    --before 'LEd303JA' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '8rPckpEA' \
    --body '{"managers": [{"displayName": "StgV4csb", "namespace": "tdoPOZco", "userId": "wTp5i6bS"}, {"displayName": "WTEGGmuO", "namespace": "qIA7snJ4", "userId": "NI4AkhXq"}, {"displayName": "gyQV8z9b", "namespace": "9FKyelA2", "userId": "W9WmSEB9"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '2AnR5OmG' \
    --body '{"managers": [{"displayName": "FNeLLvGA", "namespace": "2J0A0mb0", "userId": "JRjxigk9"}, {"displayName": "FF6xeeTr", "namespace": "lszg4tJz", "userId": "nVGJF6wJ"}, {"displayName": "2dZ1O503", "namespace": "fRmjLQd1", "userId": "osRvf6Kh"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'xq4Lldzs' \
    --after 'Sl4E9qRd' \
    --before 'T54uCnZU' \
    --limit '56' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'JKAzYdaS' \
    --body '{"members": [{"displayName": "HYYkvnv7", "namespace": "aTVMZKXS", "userId": "rp166PNh"}, {"displayName": "7zyFRjhn", "namespace": "ZlgTgcDw", "userId": "fQR0t6da"}, {"displayName": "ov4cKIAG", "namespace": "1ZC935P7", "userId": "5ByXfnbR"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'JMA2tY3o' \
    --body '{"permissions": [{"action": 96, "resource": "3jL2hx85", "schedAction": 39, "schedCron": "RGYquQIe", "schedRange": ["UzFc4LC8", "KlPvStW0", "1QA6wgTW"]}, {"action": 62, "resource": "djodJtuf", "schedAction": 2, "schedCron": "pNZQmW3U", "schedRange": ["8C4l8UUU", "GnGcXlVk", "61LlIXMl"]}, {"action": 84, "resource": "bXqoP9Hd", "schedAction": 11, "schedCron": "fmLMpOQ1", "schedRange": ["Xd3fili3", "IImvbLuu", "FRrYhIH4"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '166eIJAf' \
    --body '{"permissions": [{"action": 42, "resource": "Vbm8XQEQ", "schedAction": 2, "schedCron": "Y3thxVP4", "schedRange": ["lSdYWah1", "8Iuli8Ak", "ZL48Q60l"]}, {"action": 74, "resource": "fMvAWuRq", "schedAction": 27, "schedCron": "VoM0JJfK", "schedRange": ["63dHFebt", "mIP6pxaC", "ME0mWQBD"]}, {"action": 89, "resource": "YdAQErLb", "schedAction": 37, "schedCron": "05mqwxbd", "schedRange": ["xeQkUwwm", "14wJD0zb", "DitXbbqz"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'G6qbeoRM' \
    --body '["4OcTCFxd", "MV5ny7XM", "rCxHbfBO"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '83' \
    --resource '89hPM5db' \
    --roleId 'cDTdl0qR' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'OPsGz8h9' \
    --extendExp 'false' \
    --redirectUri 'hwiQRDiB' \
    --password 'hq6MvsHy' \
    --requestId '113Te0Zj' \
    --userName 'C8x5S4Hz' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'VzyMJeMi' \
    --linkingToken 'dZv7G884' \
    --password 'nU9qAV5w' \
    --username 'pNKqSGSR' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'AaCPk5WA' \
    --linkingToken 'T5fkboYA' \
    --password 'YR2iGheQ' \
    --username 'kHX97EID' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'bNgXXztc' \
    --extendExp 'false' \
    --linkingToken '6pEA31uN' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 't95X9JC2' \
    --state 'RRscrFQV' \
    --platformId 'SavmJb0Z' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'jG5CyFGb' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'BUZghvAB' \
    --isTransient 'true' \
    --clientId 'u8Uuu0K9' \
    --oneTimeLinkCode 'gLoavfUx' \
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
    --codeChallenge '8OOpy549' \
    --codeChallengeMethod 'plain' \
    --clientId 'nGrvJKag' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aqHzBu3B' \
    --userId 'TnRforFn' \
    --platformUserId 'fb3obmXG' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'q7QKaW57' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'cWtkyaLu' \
    --codeChallenge 'MVr9RECU' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --loginWebBased 'false' \
    --nonce 'SRlDYR33' \
    --oneTimeLinkCode 'mDR4ppKx' \
    --redirectUri 'dmDpQ9Hu' \
    --scope 'QvsyQpY9' \
    --state 'hfcm7cUN' \
    --targetAuthPage 'gMpCL5Ob' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'kL7Yt5Kh' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'pKsvb2tT' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'xxH1shE6' \
    --factor 'aKFoMRC9' \
    --mfaToken 'NWwHOfOp' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'BZqXKLah' \
    --mfaToken 'OLp42ipR' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '3pComIl6' \
    --factor 'LyQW5PHl' \
    --mfaToken 'af5aGPHV' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'n7yDXO0c' \
    --factors 'YCzS7Eqn' \
    --rememberDevice 'true' \
    --clientId 's7QK0uQ2' \
    --code 'Kv0MdPNV' \
    --factor '0qaUXYoS' \
    --mfaToken 'VEqsqIh0' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mSOWkVFq' \
    --userId 'BgpUZ1M6' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'SIv6vh1a' \
    --clientId 'O2ruRDtz' \
    --redirectUri 'CZSFXIKs' \
    --requestId 'bF24k9k4' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '5tTO2GRn' \
    --additionalData '0BXd3UYG' \
    --clientId '9BrDmuzg' \
    --createHeadless 'true' \
    --deviceId '8UwQisSc' \
    --macAddress '4RNfuntP' \
    --platformToken 'N1NwjzBI' \
    --serviceLabel '0.6422458449160116' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'xDue5gYu' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'Au6KdYQS' \
    --simultaneousTicket 'yiaP7YX1' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'IK402FxW' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData '8BDj1vkv' \
    --clientId 'XsXlp1gn' \
    --clientSecret '2vCsMSGw' \
    --code 'nVPttz9c' \
    --codeVerifier 'Em3iWcbi' \
    --extendNamespace 'q4YBfq0C' \
    --extendExp 'true' \
    --password 'cFxNiZW1' \
    --redirectUri 'nkkYsS5G' \
    --refreshToken 'd5MsE8y6' \
    --scope 'kzfQkbCo' \
    --username '3zjxrvFG' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'j84Erif7' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'FB9WP8ck' \
    --code 'ZyaTe3nS' \
    --error '1b7mWejx' \
    --openidAssocHandle 'kAzthpcA' \
    --openidClaimedId 'R4DQ1OUF' \
    --openidIdentity 'OoSFmcTb' \
    --openidMode 'LizSfGli' \
    --openidNs '5b97SLAZ' \
    --openidOpEndpoint 'hbYZuCdy' \
    --openidResponseNonce 'PoRaaKjR' \
    --openidReturnTo 'ypCsXCh0' \
    --openidSig 'mDC9A0GK' \
    --openidSigned 'TGaMG8G9' \
    --state 'cwmk7soo' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '4plDf40l' \
    --platformToken 'UouwWjRV' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'KJlG7j7O' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'PC8zbdOA' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'hIR01z6g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'ODTnxOcd' \
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
    --clientId 'P1HgLJmH' \
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
    --requestId 'YcpRxGdv' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '3HK1IG4g' \
    --limit '70' \
    --offset '42' \
    --platformBy 'ef1WKmoy' \
    --platformId 'qfVZrOxB' \
    --query '8LGo4MTM' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "tznudFSk", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zE9j6ylW", "policyId": "vxmpuRyi", "policyVersionId": "VkrxY4nW"}, {"isAccepted": false, "localizedPolicyVersionId": "uSee0TTW", "policyId": "3rxZa2EQ", "policyVersionId": "MCB9mw0I"}, {"isAccepted": false, "localizedPolicyVersionId": "H2fyjV17", "policyId": "86OoWeEi", "policyVersionId": "6CWjlIW0"}], "authType": "QCJpraii", "code": "fmESDDgY", "country": "NlgaSEZv", "dateOfBirth": "LUhWYMrr", "displayName": "xjzPpIkr", "emailAddress": "nYHf0B0p", "password": "ahohrpoo", "reachMinimumAge": false, "uniqueDisplayName": "YrxyZMXj"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'DDLAVgzc' \
    --query 'jLMPo36X' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "HC187rFJ", "languageTag": "d1AXV1rL"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "GDNz6sss", "emailAddress": "Ib4RA2KO"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "slRU6Lj5", "languageTag": "rUrDles2"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "8Rc73Oar", "password": "4XshuKJX", "uniqueDisplayName": "L7Yrx0e8", "username": "p2TnTSF0"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'fxUOKTko' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'TjzQPucm' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "H7JdKBNi", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "DbtuzRUy", "policyId": "5Z9FKAbB", "policyVersionId": "uHt08Oyh"}, {"isAccepted": true, "localizedPolicyVersionId": "nzCuzHSu", "policyId": "k5LhDqEu", "policyVersionId": "rvvZWpAm"}, {"isAccepted": false, "localizedPolicyVersionId": "8cz6MyLE", "policyId": "f1f91yen", "policyVersionId": "DkjoPZGo"}], "authType": "s8Ggfus5", "code": "PeKwtwGT", "country": "hL0s2s3D", "dateOfBirth": "70aQQGOY", "displayName": "Lvmf2NNt", "emailAddress": "9k41R9yS", "password": "1bUSxejr", "reachMinimumAge": false, "uniqueDisplayName": "BibdIQvo"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "rCVDAxgj", "country": "v3sL0mDt", "dateOfBirth": "Zzfu40sk", "displayName": "FH9ke995", "languageTag": "FdINqgfF", "uniqueDisplayName": "EWt7P1xG", "userName": "vFOyYtdF"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "RHpNzvEd", "country": "V1tVdJ0e", "dateOfBirth": "1H4XXsQy", "displayName": "2dopMUKy", "languageTag": "poJHNidD", "uniqueDisplayName": "0ucTQGmO", "userName": "Pzw7bpMA"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "cHbC8q0W", "emailAddress": "5acB0i5U", "languageTag": "KtT6I3tb", "upgradeToken": "AF5xpAwP"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "OrDZGsOr", "contactType": "lhL1o1P5", "languageTag": "iyyj5YD2", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Nos3ELBw", "country": "8erkWd5r", "dateOfBirth": "8uN4tRBb", "displayName": "XmBoOZrJ", "emailAddress": "Ms9mnQt5", "password": "KMesk7Wp", "uniqueDisplayName": "EdmThsbs", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "CfJjMgm1", "password": "tSMu63lF"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "1keY0yHK", "mfaToken": "YvfKvpnQ", "newPassword": "hXFh1f7V", "oldPassword": "aFrh2FyI"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'ierh7jgW' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UxFvjn8L' \
    --redirectUri 'UeHdfrOd' \
    --ticket '1zMihzri' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8K2p9Mbo' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ViTbblQg' \
    --ticket 'bLjWuNR2' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '4UNtfvjR' \
    --clientId 'tyTfvOC8' \
    --redirectUri 'r9WQXRRW' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '2HKVMzuv' \
    --code '8pGA81kC' \
    --state 'DkFsWWEP' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VnbEAtvb' \
    --code '5CC4pdxu' \
    --state 'C2juSaJa' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "oxTdw75G", "userIds": ["npbsppn8", "IwgFG9lf", "525aY4bm"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "wxeKAZGr", "code": "DGqqDkwK", "emailAddress": "Yyg01pGP", "languageTag": "V55h1ezr", "newPassword": "xq1fHlM1"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jUO8dsRo' \
    --activeOnly 'true' \
    --limit '60' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OYadVoCx' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WF5X3vN9' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Jv12EQih' \
    --after '0.38539991876929625' \
    --before '0.3885264218905632' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'k5bgvNAL' \
    --after 'EBNpadss' \
    --before 'WiE1HSKP' \
    --limit '20' \
    --platformId 'ewhICOym' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Eu2LGNgK' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'ephrltM1' \
    --body '{"platformId": "3OaR0lST", "platformUserId": "AOxRszrm"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '4HL0XEHO' \
    --body '{"chosenNamespaces": ["VbsE47q8", "BRNsIv7x", "qNzeSXVa"], "requestId": "rYKIdsda"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wo8CVCVW' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '8rOLvvCH' \
    --password 'eZUxJntX' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'qXI0vEQc' \
    --before 'zxH2JzBi' \
    --isWildcard 'true' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'kJNKd7Ot' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "IhxHg2iP", "emailAddress": "M2G0XoTg", "languageTag": "guCRGreU"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "kxqH9axT", "emailAddress": "WlvhKmqu", "languageTag": "VaZQin4H", "upgradeToken": "7W4tjODh"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'I4AuOGh9' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["9CSQufGE", "DWKTrvP3", "ttoHnaoL"], "oneTimeLinkCode": "6NO8pwgt"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'Zyqj8nyt' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "lItktbbF"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '7Hl3EVYo' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '3WphLALm' \
    --code 'jOU1H0xI' \
    --error '4QItThex' \
    --state 'F3zA79ZI' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'OAOSCCw6' \
    --payload 'u8V6yzz3' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'E6cYB1ef' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '55GkPSEG' \
    --code 'Ns7hQoeT' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'gO4Fg6Mb' \
    --upgradeSuccessToken 'kQCTPhvG' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '19' \
    --namespace 'r8aBYZDJ' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '1RqoBG05' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '0KndRhyG' \
    --endDate 'pwzD5npX' \
    --limit '6' \
    --offset '55' \
    --startDate '18TRDbeZ' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'l3Cpe1lT' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "IYnOX82d", "deviceId": "8EZ7Ud56", "deviceType": "HzTOXNUB", "enabled": false, "endDate": "zmxMexFu", "ext": {"zYKyg0Xm": {}, "uLOvwOMv": {}, "GYHbGrWH": {}}, "reason": "dwzvpCCq"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'YHLv5KcQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'CfuU5nZN' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'PU71p0h8' \
    --startDate '8TmwqRal' \
    --deviceType 'K06camTx' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'rY2Wq7hx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '8SL60DqW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'jGBwGOku' \
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
    --limit '49' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zLDexQSI", "policyId": "V1w5aALD", "policyVersionId": "EyG2UZ85"}, {"isAccepted": false, "localizedPolicyVersionId": "XBr3OFr3", "policyId": "dopgGkce", "policyVersionId": "f1DTtOCT"}, {"isAccepted": false, "localizedPolicyVersionId": "qJD8XX72", "policyId": "FrhLtQ4O", "policyVersionId": "Et6U9FrF"}], "count": 100, "userInfo": {"country": "ZsKN1fX5"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "9w2JjezL", "policyId": "3VgnmVVT", "policyVersionId": "YN8ZB4do"}, {"isAccepted": true, "localizedPolicyVersionId": "of6XlBNS", "policyId": "ngbxQMeC", "policyVersionId": "dpVV80li"}, {"isAccepted": false, "localizedPolicyVersionId": "bL2d6kcW", "policyId": "USFToUIY", "policyVersionId": "iJsNVEEC"}], "authType": "EMAILPASSWD", "code": "QTqfL1TV", "country": "qYKbBQm4", "dateOfBirth": "9kXBssGz", "displayName": "fmjZuVJs", "emailAddress": "PpO1NFHP", "password": "myVT8U5d", "passwordMD5Sum": "dXmPiclL", "reachMinimumAge": true, "uniqueDisplayName": "d1Ew4fKa", "username": "NVYSMLNA"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["JcBVqDeh", "7GgKqt5s", "kbmlEu5z"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jyRfKHMT", "HhhEjpTB", "gWFHmU0s"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NjlYx1H9' \
    --body '{"avatarUrl": "3KmhVcML", "country": "ED9vf5xu", "dateOfBirth": "PRweZlIL", "displayName": "NvU5lapi", "languageTag": "zb94gdwo", "skipLoginQueue": true, "tags": ["6EzIb0pu", "mhHsfPKq", "9FcjSBYC"], "uniqueDisplayName": "hX3Svx5g", "userName": "4SuTICRX"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZQcGXY3w' \
    --body '{"code": "0nKb7aKz", "emailAddress": "WOAESu2k"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'XlKH44IB' \
    --body '{"factor": "KRLkqJgs", "mfaToken": "VAEGZF4i"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hijCxC2R' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'IPASgXb6' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'agSzW9r2' \
    --body '{"assignedNamespaces": ["CR0Sl70N", "1QLhnN1i", "1BDNAe61"], "roleId": "vWVu2PSj"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yJOHzzEc' \
    --body '{"assignedNamespaces": ["AMtc1PA4", "95Q3qC8H", "2EyMw8Mt"], "roleId": "croFLlxV"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OeKNWkWi' \
    --body '{"assignedNamespaces": ["DJWvk5Zf", "6z3UEJHG", "CkvseuFY"], "roleId": "S04SzOfS"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '22' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "5fc1Jet7"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'nkj3Cs54' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '8M3RlJMw' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'xrjlt0kb' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "YFgAhhOL"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'tCQUJLwE' \
    --body '{"permissions": [{"action": 53, "resource": "ULaXVfoe", "schedAction": 32, "schedCron": "fdSvBXew", "schedRange": ["pzs5p9qB", "48iv2YkM", "qSU8SDDZ"]}, {"action": 38, "resource": "8kI0NPZm", "schedAction": 2, "schedCron": "QdopxslF", "schedRange": ["YbLWaUAS", "2vy0xB9z", "65p14HKN"]}, {"action": 9, "resource": "9glY2Lji", "schedAction": 27, "schedCron": "WWHcVm2l", "schedRange": ["2OsDo9p7", "HoVKcu0t", "JVKk1QO5"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'KCbEZ1oS' \
    --body '{"permissions": [{"action": 8, "resource": "MHa4b1Ff", "schedAction": 49, "schedCron": "56Md6U2a", "schedRange": ["k25Bum79", "Kk2lSyqB", "P9uxs7U2"]}, {"action": 18, "resource": "aPE16Ywe", "schedAction": 6, "schedCron": "9eVFeBdC", "schedRange": ["PJxrMmjA", "bQ6EpNsR", "S0L2Bi4h"]}, {"action": 40, "resource": "r8ejQOU5", "schedAction": 43, "schedCron": "dx4if9yn", "schedRange": ["6FlP9Tfo", "1H9FMRMe", "uOS6VjPJ"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'j7uNRSKP' \
    --body '["Avvze5Bk", "nEXsJt58", "3yc4uhkC"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'dLNAWI1k' \
    --after 'DCb4JblZ' \
    --before 'KsHxbezl' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'e16RwMl6' \
    --body '{"assignedNamespaces": ["dA6G6qjt", "1uD3m2Hd", "YO8AIVGB"], "namespace": "9TvsH9r8", "userId": "kxpt5MQo"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'teBruQl1' \
    --body '{"namespace": "JqiE00Hu", "userId": "S9PrCOwV"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["sVi5HqZI", "t6Mszxdh", "OiDKPb1Z"], "emailAddresses": ["a14WjSv6", "zkq68Y6B", "soOyVPli"], "isAdmin": true, "isNewStudio": true, "languageTag": "vI9Z5JLQ", "namespace": "vmZlcNua", "roleId": "MuIK2XCU"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "GBgCqs05", "country": "6Dm0dacD", "dateOfBirth": "w4SLuByj", "displayName": "Sc9YVbIe", "languageTag": "47Vm6qzT", "skipLoginQueue": true, "tags": ["wbX0k4M5", "YGMHdrMe", "S6LrmyeA"], "uniqueDisplayName": "XzQ7RZIj", "userName": "RQSxTXjx"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "4nlP9Q93", "mfaToken": "ZjVtexk0"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'TuWBNlZe' \
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
    --body '{"factor": "xFKXGkjU", "mfaToken": "IzsYeQrT"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'vvK79DLi' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'OPtSQWPi' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'G29wAErQ' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'bEUGo2mp' \
    --factor 'EilJAzzE' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'LZlCwBJf' \
    --languageTag 'sJOmgH1n' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "Zj9v9wE8", "mfaToken": "raNuc5UU"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'J7ZLar6V' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'j3dLZUlz' \
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
    --clientId 'MjM1Q8kD' \
    --linkingToken 'TxihLUYK' \
    --password 'IxPrmwy9' \
    --username 'yOwNeTUA' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData '32oTbn5g' \
    --extendExp 'true' \
    --linkingToken 'OwZmC3pU' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'zg6uYq8o' \
    --factor '6mQlPWkB' \
    --mfaToken 'ExclQz4O' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'kHYFM3vF' \
    --codeChallenge 'BZye7mqY' \
    --codeChallengeMethod 'plain' \
    --additionalData 'eRdJnsqS' \
    --clientId 'ZEmAxvhD' \
    --createHeadless 'true' \
    --deviceId 'pvjqRV9V' \
    --macAddress 'GoqumxIT' \
    --platformToken '3fExd9w2' \
    --serviceLabel '0.9368541943986148' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'V99U6nk3' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'RQ6ubIoI' \
    --simultaneousTicket 'uTy3ezhe' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 't1LWPdjV' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'fRtrBwYj' \
    --codeChallengeMethod 'plain' \
    --additionalData 'Zmf8urmI' \
    --clientId 'DqKUOFjg' \
    --clientSecret 'RkfyCAak' \
    --code 'tAsGdL6h' \
    --codeVerifier 'A1V2kokY' \
    --extendNamespace 'wqjPKJOJ' \
    --extendExp 'true' \
    --loginQueueTicket '3HwPQX6l' \
    --password '2QPj0dzu' \
    --redirectUri 'MPoWGO2h' \
    --refreshToken 'k89898Qf' \
    --scope '7Lwm6T24' \
    --username '5uEg44sH' \
    --grantType 'urn:ietf:params:oauth:grant-type:login_queue_ticket' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'KethmzYd' \
    --code 'fE319QQ6' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'Yr96CK89' \
    --rawPUID 'true' \
    --body '{"pidType": "d68R3whk", "platformUserIds": ["VXkuXn5a", "Cxm05PAu", "kHgxkWZg"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'Beqvaepo' \
    --platformUserId 'fi9sURAo' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "0SJrUXGi", "policyId": "G0ngm8aJ", "policyVersionId": "Gi89eHwH"}, {"isAccepted": true, "localizedPolicyVersionId": "ILE1u864", "policyId": "pfbj18fW", "policyVersionId": "sfPDdA3n"}, {"isAccepted": false, "localizedPolicyVersionId": "5BJGi0kq", "policyId": "pLnrmt5v", "policyVersionId": "WrtvrRGu"}], "authType": "EMAILPASSWD", "country": "5R26vFtP", "dateOfBirth": "O6acTLUw", "displayName": "bzAKgIeJ", "emailAddress": "K1NoG4ho", "password": "F9Ns3qs9", "passwordMD5Sum": "mhg7yZ2T", "uniqueDisplayName": "PTrM7EWj", "username": "GxzzxkWK", "verified": false}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "2VegRX1B", "policyId": "KBdupMKq", "policyVersionId": "iJiJcU05"}, {"isAccepted": false, "localizedPolicyVersionId": "Kldpp9DQ", "policyId": "44dC9Vcl", "policyVersionId": "rMBVzx12"}, {"isAccepted": true, "localizedPolicyVersionId": "MSS40oSO", "policyId": "ZCcBG477", "policyVersionId": "cRNdj6UR"}], "authType": "EMAILPASSWD", "code": "fM5LiBY8", "country": "XONV3InA", "dateOfBirth": "2kVK3nu6", "displayName": "RTBNOxku", "emailAddress": "MFbKY8IT", "password": "gJbPcCrw", "passwordMD5Sum": "0krw3DDO", "reachMinimumAge": false, "uniqueDisplayName": "jbkahOBD", "username": "SmAJtO0j"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'RYYBPvaH' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "gKuEG5GM", "policyId": "H0yqjXym", "policyVersionId": "psqg0VjA"}, {"isAccepted": true, "localizedPolicyVersionId": "UFfpW7Jz", "policyId": "Fo8n8MHc", "policyVersionId": "01K4yWDw"}, {"isAccepted": false, "localizedPolicyVersionId": "FWmd1q5U", "policyId": "3lDf95XV", "policyVersionId": "4FcZw8Gl"}], "authType": "EMAILPASSWD", "code": "KTJeSZDb", "country": "H8pPStx6", "dateOfBirth": "VBZAdgGC", "displayName": "tYTGzMJQ", "emailAddress": "pmbef587", "password": "l9aWSN2V", "passwordMD5Sum": "5rNAKE3Y", "reachMinimumAge": true, "uniqueDisplayName": "IXD1v5p4", "username": "UIhwRzgd"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "rETrlpr8", "country": "XCrkXKzl", "dateOfBirth": "rxGWXFGv", "displayName": "z8rv1ECf", "languageTag": "ye1lecBm", "uniqueDisplayName": "H6WMPTOf", "userName": "yadeQlpW"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CF4mJWoo", "emailAddress": "UGDvddYK"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vZam8zkl", "country": "228fm69N", "dateOfBirth": "XgYbGd97", "displayName": "ml3PxUuO", "emailAddress": "bfu0qKKM", "password": "uroHfC39", "reachMinimumAge": false, "uniqueDisplayName": "oeWhiAMO", "username": "1JWnRkoj", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "6H8bXiip", "displayName": "AAVyTHsV", "emailAddress": "rGZvVR4U", "password": "V1HscCcy", "uniqueDisplayName": "dSiuO9Ii", "username": "VUA5RRg6"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "dhAoOobO", "mfaToken": "qN8rbjgf"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'RY5Ro1wm' \
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
    --body '{"factor": "T23ssoNt", "mfaToken": "7CspCye0"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'zmcwQXDH' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '3T9CLmLA' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'pmeiMlu6' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'KluXZmv3' \
    --factor 'XPkAh1pJ' \
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
    --action 'FWGx2hDE' \
    --languageTag 'bNNJ4m7K' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "KzRLkEgK", "mfaToken": "vcbrIolS"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'mYYEHopM' \
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
    --factor 'c8TFFbl9' \
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
    --userId 'AkowAqUT' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "e8HsiQ4e", "emailAddress": "mmUvgCqZ", "languageTag": "ztUHPELQ", "namespace": "oKHhDT5w", "namespaceDisplayName": "kWunqaec"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zmbygkfp", "policyId": "KzNToFWf", "policyVersionId": "lgtjQlj7"}, {"isAccepted": true, "localizedPolicyVersionId": "M8OdORrE", "policyId": "eDa1CRm4", "policyVersionId": "OOQ6sOTH"}, {"isAccepted": false, "localizedPolicyVersionId": "mr8dB11q", "policyId": "Mz5kSk6c", "policyVersionId": "UjKdAowO"}], "code": "y9Nx5nzZ", "country": "Ln5S351B", "dateOfBirth": "QOtU8JEF", "displayName": "oossjuvn", "emailAddress": "BwxT9zRx", "password": "OCt2T2Ps", "reachMinimumAge": true, "uniqueDisplayName": "F3VuAX2R", "username": "4O0VC4jt", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE