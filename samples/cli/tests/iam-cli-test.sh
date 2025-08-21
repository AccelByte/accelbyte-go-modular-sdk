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
    --body '{"modules": [{"docLink": "LQrTpjWz", "groups": [{"group": "ml3SOEGg", "groupId": "ONbcjUTn", "permissions": [{"allowedActions": [2, 49, 21], "resource": "6ZGvG5hA"}, {"allowedActions": [17, 60, 39], "resource": "I8U9qK2O"}, {"allowedActions": [34, 92, 75], "resource": "uM9WZACx"}]}, {"group": "B8B59X0K", "groupId": "3vQ545NH", "permissions": [{"allowedActions": [14, 18, 6], "resource": "0MdE5DQn"}, {"allowedActions": [35, 61, 13], "resource": "S2n5vrAs"}, {"allowedActions": [17, 37, 41], "resource": "TYjjIMKK"}]}, {"group": "ikVQpKMp", "groupId": "lQ8iEH5G", "permissions": [{"allowedActions": [76, 88, 77], "resource": "VAm16sn5"}, {"allowedActions": [2, 56, 96], "resource": "gheOBpeE"}, {"allowedActions": [93, 87, 77], "resource": "wfYNDrbi"}]}], "module": "9Iwu9I65", "moduleId": "u7FuN6Db"}, {"docLink": "Sqf6Eiib", "groups": [{"group": "J2wPJ5OZ", "groupId": "oa55DvFU", "permissions": [{"allowedActions": [32, 16, 76], "resource": "B5c0c1kq"}, {"allowedActions": [20, 87, 90], "resource": "717ntHYL"}, {"allowedActions": [73, 9, 7], "resource": "WTeKF3bk"}]}, {"group": "V6qm2VKn", "groupId": "Il4hwMyH", "permissions": [{"allowedActions": [0, 60, 6], "resource": "IBHjkIve"}, {"allowedActions": [84, 23, 83], "resource": "UzYNyuyF"}, {"allowedActions": [65, 64, 71], "resource": "wHShV58c"}]}, {"group": "cswwa836", "groupId": "D1zFM51d", "permissions": [{"allowedActions": [17, 97, 69], "resource": "uWUFk2G0"}, {"allowedActions": [80, 6, 43], "resource": "EOcsN8Xk"}, {"allowedActions": [68, 37, 30], "resource": "fb5GdsdT"}]}], "module": "53ZhRjXl", "moduleId": "7iJ1EyMo"}, {"docLink": "ByD1ouVi", "groups": [{"group": "u90NfORx", "groupId": "VXgKan3j", "permissions": [{"allowedActions": [38, 61, 20], "resource": "heFsswTL"}, {"allowedActions": [28, 73, 36], "resource": "1glumZ68"}, {"allowedActions": [5, 76, 35], "resource": "e2Asqauu"}]}, {"group": "hewXEuO8", "groupId": "uOfzOrqV", "permissions": [{"allowedActions": [77, 49, 44], "resource": "BHfoyCnI"}, {"allowedActions": [30, 33, 66], "resource": "rhvkzurt"}, {"allowedActions": [55, 28, 44], "resource": "mqKo2gZC"}]}, {"group": "vc2XQkP0", "groupId": "kdCZYgXN", "permissions": [{"allowedActions": [33, 53, 58], "resource": "Uu0ozfNi"}, {"allowedActions": [6, 31, 80], "resource": "fBBZUIVg"}, {"allowedActions": [59, 58, 73], "resource": "nYYnQgvM"}]}], "module": "s2ghPe3i", "moduleId": "ZvzaySta"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "3hBLccpp", "moduleId": "kL7mByV9"}' \
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
    --body '[{"field": "InEvL79K", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["idvCyAc3", "TJZWfZgo", "jPvVPQIz"], "preferRegex": true, "regex": "cCrGz9KN"}, "blockedWord": ["fiyc9GAL", "WpQxwGQP", "IbKLD7uv"], "description": [{"language": "116kwwxI", "message": ["G8kToD80", "fDwOEZaT", "6ITdJJra"]}, {"language": "1ewkGe8p", "message": ["LRgzpjx6", "CBzEMIJ3", "Xy9b7qKW"]}, {"language": "dfywze1z", "message": ["kGDnxQpj", "9Lxavt95", "lkE73yKT"]}], "isCustomRegex": true, "letterCase": "k2WngKfC", "maxLength": 81, "maxRepeatingAlphaNum": 68, "maxRepeatingSpecialCharacter": 33, "minCharType": 36, "minLength": 1, "profanityFilter": "SZQRNLN2", "regex": "71m0HpFW", "specialCharacterLocation": "Nh9GAxLw", "specialCharacters": ["TJNLedsU", "MwdrpCQ8", "EYep2bmP"]}}, {"field": "ylRJlFsx", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["En7mC9qz", "RLskNSdq", "rgRSIwZo"], "preferRegex": true, "regex": "oC53bs8g"}, "blockedWord": ["PtqXJfOs", "0yzChVxm", "MVGijiR0"], "description": [{"language": "F4au6DYV", "message": ["hRbph3WQ", "wggoW8K9", "OLPVEe8m"]}, {"language": "LxDEPzeO", "message": ["FLhGeTEB", "HrhcxGb4", "yc2J5A32"]}, {"language": "tGivo6uE", "message": ["MRiSQXKb", "SAmdNLk2", "hiBNXfLw"]}], "isCustomRegex": false, "letterCase": "TwTWxiGZ", "maxLength": 87, "maxRepeatingAlphaNum": 75, "maxRepeatingSpecialCharacter": 65, "minCharType": 27, "minLength": 34, "profanityFilter": "pzFFtbxf", "regex": "76Rx5K1d", "specialCharacterLocation": "vnjN9Qof", "specialCharacters": ["SR7gLa8f", "jyP8EQ0e", "eNV7fVfH"]}}, {"field": "NvuaMKxp", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["LHg62eC8", "M1Ned1vE", "MY7AtFui"], "preferRegex": true, "regex": "vUCBcHek"}, "blockedWord": ["ZBNHbfjf", "Lm5br2or", "SCoyXJp8"], "description": [{"language": "ESLrLkPl", "message": ["vI8TcrSr", "1us7BPWY", "eiVeyZ5H"]}, {"language": "skU44bYe", "message": ["VKqf1805", "YTmWTgc9", "GyS1q9qI"]}, {"language": "jkesSl6x", "message": ["QDNnVDLg", "nlUTIlhD", "Ef3wd9tv"]}], "isCustomRegex": false, "letterCase": "x3eJ8vgr", "maxLength": 88, "maxRepeatingAlphaNum": 46, "maxRepeatingSpecialCharacter": 5, "minCharType": 17, "minLength": 94, "profanityFilter": "KO5UOsvH", "regex": "kar3pMvv", "specialCharacterLocation": "VDPuEHif", "specialCharacters": ["LN7m4cg5", "Plg77HoC", "WH9VqKCY"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'ETSjJTr3' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '4zYRojNw' \
    --before 'EQ3yb9fT' \
    --endDate 'GOjAAWWS' \
    --limit '4' \
    --query 'XNWu50mv' \
    --roleId 'iLYtONei' \
    --startDate 'wlEV6jC2' \
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
    --body '{"ageRestriction": 24, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '76vB2AcT' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 28}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '99UNpfDB' \
    --limit '33' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "amObyG9a", "comment": "jWDuSiCG", "endDate": "jmADtPpE", "reason": "gjPvvLE2", "skipNotif": false, "userIds": ["gXkuYpxX", "R61kYALu", "NqVHzVnp"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "6XWYWuCq", "userId": "q94H7X3H"}, {"banId": "JHkMR2yt", "userId": "0f0pjxJ8"}, {"banId": "gbsqmFvA", "userId": "8CPV0YPp"}]}' \
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
    --clientId 'pgpZPNhz' \
    --clientName 'RWNQ7SKl' \
    --clientType 'FIUNFF2t' \
    --limit '71' \
    --offset '65' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["IAY42uBB", "u5vQHkvm", "BkVFLXam"], "clientUpdateRequest": {"audiences": ["4vXYTsBp", "hmk4zz8M", "YprO8ZVL"], "baseUri": "8NkfwmMH", "clientName": "rVTUmz7w", "clientPermissions": [{"action": 2, "resource": "aUiKJqY4", "schedAction": 39, "schedCron": "gAFtRt55", "schedRange": ["t5WTRP1R", "A4PKEW3H", "rxahwK8K"]}, {"action": 87, "resource": "SCIgk20I", "schedAction": 80, "schedCron": "SbJTFfc5", "schedRange": ["aosQPoJe", "KRi1cPZB", "513WkTwm"]}, {"action": 20, "resource": "D9BZma3R", "schedAction": 79, "schedCron": "nRCAkUIm", "schedRange": ["jKoIMLpw", "gPHtj9jd", "BFDc4Nmq"]}], "clientPlatform": "PxSYitqf", "deletable": true, "description": "C6dCSJQD", "modulePermissions": [{"moduleId": "C3PP8RdS", "selectedGroups": [{"groupId": "qmC1b4Yt", "selectedActions": [33, 16, 95]}, {"groupId": "kInc1bw9", "selectedActions": [96, 16, 46]}, {"groupId": "6pJ2L7OB", "selectedActions": [95, 13, 68]}]}, {"moduleId": "JfMrDboW", "selectedGroups": [{"groupId": "7un8XmQ8", "selectedActions": [47, 22, 94]}, {"groupId": "g9Fq7xla", "selectedActions": [89, 36, 66]}, {"groupId": "fWOL16Xe", "selectedActions": [18, 80, 97]}]}, {"moduleId": "KMMog49N", "selectedGroups": [{"groupId": "yZXPk6m5", "selectedActions": [48, 6, 14]}, {"groupId": "Iqytidnn", "selectedActions": [87, 58, 69]}, {"groupId": "HX6eOGYl", "selectedActions": [78, 79, 62]}]}], "namespace": "afFIifIR", "oauthAccessTokenExpiration": 5, "oauthAccessTokenExpirationTimeUnit": "wcFiaJAc", "oauthRefreshTokenExpiration": 65, "oauthRefreshTokenExpirationTimeUnit": "IdC69EPX", "redirectUri": "ayAsasx8", "scopes": ["kM8XRLII", "kIJv1rIa", "JxfGhsh2"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Fuo8UYTf", "7FqjP8K6", "1ZFsqbxC"], "baseUri": "k0hEWLBf", "clientId": "QNkL2DwT", "clientName": "tj2Pg1CD", "clientPermissions": [{"action": 87, "resource": "XLDwX0oB", "schedAction": 62, "schedCron": "NcBuUGT2", "schedRange": ["kW1820j6", "gkHnpKD6", "JG4xZVxZ"]}, {"action": 81, "resource": "eDWtg4jS", "schedAction": 35, "schedCron": "W1PlGVKg", "schedRange": ["K2iIuyNu", "EfT6jNkg", "UIi97QNG"]}, {"action": 27, "resource": "PJZASCLA", "schedAction": 5, "schedCron": "qGs628no", "schedRange": ["ix9xi9Cu", "2pKr6rBh", "NKiNz67r"]}], "clientPlatform": "n5M7mYt9", "deletable": false, "description": "dacPUm82", "modulePermissions": [{"moduleId": "pt6Mv5Ll", "selectedGroups": [{"groupId": "E1so1VUg", "selectedActions": [86, 66, 23]}, {"groupId": "PuYAIJ2O", "selectedActions": [83, 11, 25]}, {"groupId": "zUp6C7by", "selectedActions": [2, 50, 85]}]}, {"moduleId": "3A8M6mrX", "selectedGroups": [{"groupId": "DqX2p72A", "selectedActions": [99, 15, 88]}, {"groupId": "tiJYsy8m", "selectedActions": [53, 55, 73]}, {"groupId": "eLXp1mJe", "selectedActions": [3, 51, 9]}]}, {"moduleId": "cO48XZLu", "selectedGroups": [{"groupId": "IVqADcoJ", "selectedActions": [97, 25, 57]}, {"groupId": "AhUibC8p", "selectedActions": [33, 88, 82]}, {"groupId": "6kAbDrZB", "selectedActions": [29, 80, 64]}]}], "namespace": "Rc0uWbl5", "oauthAccessTokenExpiration": 16, "oauthAccessTokenExpirationTimeUnit": "JFQBy5HH", "oauthClientType": "I5xFekeq", "oauthRefreshTokenExpiration": 50, "oauthRefreshTokenExpirationTimeUnit": "BggEyHEF", "parentNamespace": "NVviGhSR", "redirectUri": "9mRUD8bQ", "scopes": ["YVNEIMpA", "uoq6fupw", "55XToQ8e"], "secret": "GbYryZae", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'GrWJ8sDB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'd06aKyMI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'YoJ6KFYo' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["0prgNUY0", "9zOiavdS", "MCGjw75p"], "baseUri": "GU8F26uu", "clientName": "8R1Az4nR", "clientPermissions": [{"action": 70, "resource": "TihbviOm", "schedAction": 21, "schedCron": "6PnmHGVb", "schedRange": ["p5zU2rzh", "E65XxSRB", "WW9yrMwo"]}, {"action": 87, "resource": "tpjpZUhT", "schedAction": 31, "schedCron": "LlmUxvQ1", "schedRange": ["QrZv770j", "CWkVcC76", "QSS36Bll"]}, {"action": 7, "resource": "8As2LESd", "schedAction": 55, "schedCron": "czovOnQI", "schedRange": ["WZvKvV5X", "s5uHaEBX", "Ul0Sdf5X"]}], "clientPlatform": "f75UCPTD", "deletable": true, "description": "03lqKAZs", "modulePermissions": [{"moduleId": "WsREimNU", "selectedGroups": [{"groupId": "VgZTAj3z", "selectedActions": [21, 84, 44]}, {"groupId": "RVsBjWIp", "selectedActions": [6, 7, 19]}, {"groupId": "424x6WH5", "selectedActions": [65, 31, 11]}]}, {"moduleId": "DiIgfXWh", "selectedGroups": [{"groupId": "DNa5Yfil", "selectedActions": [37, 57, 87]}, {"groupId": "Q3YmvAqU", "selectedActions": [65, 89, 96]}, {"groupId": "uJphPBR9", "selectedActions": [92, 93, 45]}]}, {"moduleId": "RbQXDsuD", "selectedGroups": [{"groupId": "kFhFwx32", "selectedActions": [75, 71, 10]}, {"groupId": "b3LoKnsW", "selectedActions": [37, 79, 50]}, {"groupId": "solFqOnD", "selectedActions": [55, 52, 37]}]}], "namespace": "IxSVVgho", "oauthAccessTokenExpiration": 18, "oauthAccessTokenExpirationTimeUnit": "cwKFkRVh", "oauthRefreshTokenExpiration": 23, "oauthRefreshTokenExpirationTimeUnit": "fi3yv3RV", "redirectUri": "jmX4SzHB", "scopes": ["g9dYOJVN", "QqhxIJDP", "eVrDTomO"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'UcyTC3e9' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 35, "resource": "s6tvY8MB"}, {"action": 22, "resource": "A40rQi3K"}, {"action": 60, "resource": "q4zV1dE0"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'aKgdl2eI' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 86, "resource": "TQqCMoaw"}, {"action": 20, "resource": "WFnvBut3"}, {"action": 31, "resource": "VnnfDh7q"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '62' \
    --clientId 'gc0L57FY' \
    --namespace $AB_NAMESPACE \
    --resource 'GSWN4KWM' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'rhiR5L4f' \
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
    --body '{"blacklist": ["pbxzCJBb", "Tk3eF3sV", "v5F387Jf"]}' \
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
    --body '{"active": false, "roleIds": ["c3Iz1swE", "LJQcjY8Q", "woJqfGua"]}' \
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
    --limit '18' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '12mNztMj' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YCZxUJ3T' \
    --body '{"ACSURL": "PAh85KyQ", "AWSCognitoRegion": "htZFlhAN", "AWSCognitoUserPool": "iag7JQMp", "AllowedClients": ["9TPcIVBX", "Cq4iHGSF", "I4UXgU8F"], "AppId": "uk7iqZZU", "AuthorizationEndpoint": "AH8kFXKk", "ClientId": "OMz2vXlf", "EmptyStrFieldList": ["firI7nqq", "m4weVNUq", "kfbD0YBO"], "EnableServerLicenseValidation": false, "Environment": "GzTWpx9b", "FederationMetadataURL": "9WVKc3uz", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "x9fuLxbm", "JWKSEndpoint": "BRUuTZTv", "KeyID": "Dl2mrUpU", "LogoURL": "U7cl4m9z", "NetflixCertificates": {"encryptedPrivateKey": "LwmD5aHd", "encryptedPrivateKeyName": "PRmglOOc", "publicCertificate": "5hApaRmk", "publicCertificateName": "kyRpSRI4", "rootCertificate": "mcJYlLHO", "rootCertificateName": "zHQ0yPv5"}, "OrganizationId": "ERwLA43m", "PlatformName": "hxBj33C0", "PrivateKey": "KYMFLAMs", "RedirectUri": "CFt2WCvh", "RegisteredDomains": [{"affectedClientIDs": ["8faLTVuM", "Jtx3Y4Np", "9UDVzRb5"], "domain": "EXyOlpHg", "namespaces": ["ymK3aWLW", "iLzfsVqC", "A75AT5xK"], "roleId": "f4ABPCY9", "ssoCfg": {"googleKey": {"fySfgCDG": {}, "no0JqyZq": {}, "IyqcRPSJ": {}}, "groupConfigs": [{"assignNamespaces": ["8lbSzEq3", "GZqKlOjT", "wvcTrHgB"], "group": "6BNl7sjY", "roleId": "bL1Jh1mc"}, {"assignNamespaces": ["NWlgRjkD", "ZU9QlkV5", "RHlsd5IO"], "group": "ednzRQs9", "roleId": "UiLYgKc1"}, {"assignNamespaces": ["ayeakmSv", "qyeUKYEI", "Ox45TaRg"], "group": "5pEqtDet", "roleId": "ePSx27Uq"}]}}, {"affectedClientIDs": ["vKw6ifk2", "8Esg6xCL", "Qqp4rVdS"], "domain": "d4EQojhE", "namespaces": ["0lnOKuqR", "3x9HOfKU", "KSBY5PuI"], "roleId": "OTVOtKfM", "ssoCfg": {"googleKey": {"tOxc4xgA": {}, "qMeZfEYn": {}, "ljM2Ka38": {}}, "groupConfigs": [{"assignNamespaces": ["Jg5Lrp59", "wXTQ9XUm", "LRNs7UXl"], "group": "t3c6vhcR", "roleId": "SajdJ5KM"}, {"assignNamespaces": ["CdxTBtKA", "ED0kak20", "IkRa7441"], "group": "vQRELxhn", "roleId": "Rr9ki8cn"}, {"assignNamespaces": ["fJIfr2w7", "E4iBXMxv", "Zi8ThCGL"], "group": "cXO6G7fa", "roleId": "zlcW8IXi"}]}}, {"affectedClientIDs": ["wzB0bE8v", "AZQq2Wqz", "BWpPuWTT"], "domain": "GgX46BGu", "namespaces": ["9XB7WXbk", "qPTPuiak", "MTCNbmyT"], "roleId": "4rO33OXb", "ssoCfg": {"googleKey": {"IPxzkN9x": {}, "vz5gFh1H": {}, "QtT9tSGL": {}}, "groupConfigs": [{"assignNamespaces": ["vNIewQKn", "3shlcLYK", "I7dCksjt"], "group": "H5lxKaZO", "roleId": "skP11xsg"}, {"assignNamespaces": ["ACbHAiC5", "atLpZJKk", "gIkyjUx3"], "group": "vydJriGx", "roleId": "CDtKlmCN"}, {"assignNamespaces": ["2fGZ9lnZ", "lMcB4jZ0", "tjsfipKJ"], "group": "GoHzDicw", "roleId": "a8dmc2J6"}]}}], "RelyingParty": "zwsELFNV", "SandboxId": "kcs0rnQz", "Secret": "d0G7ow1U", "TeamID": "L1M7iUAm", "TokenAuthenticationType": "NOKs7i37", "TokenClaimsMapping": {"0hf8bClx": "rD8qzhLh", "aYMWM9QX": "83We9m5N", "XWOe3pNA": "aTVIDa9e"}, "TokenEndpoint": "CWhHWucj", "UserInfoEndpoint": "u8OzcKCQ", "UserInfoHTTPMethod": "oQmfKRkH", "googleAdminConsoleKey": "VXNeXfbp", "scopes": ["5PXTGcDE", "UhlEEOJg", "4cyz0Yck"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9OnD0x5M' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'f9zedIUN' \
    --body '{"ACSURL": "Zr24ReDa", "AWSCognitoRegion": "h886QJg5", "AWSCognitoUserPool": "ljnkhcnz", "AllowedClients": ["NFQt4KGU", "z9g0iLCq", "19yYfBPI"], "AppId": "6NAWwRkX", "AuthorizationEndpoint": "aolcz7tr", "ClientId": "4thBOSd2", "EmptyStrFieldList": ["wFbYVjf2", "HT7pymAm", "HFiJvwKH"], "EnableServerLicenseValidation": true, "Environment": "7UgeQ1NL", "FederationMetadataURL": "cGIjf62Q", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "HS1owGye", "JWKSEndpoint": "hymnknrb", "KeyID": "Y0al4jwp", "LogoURL": "yFstGqv1", "NetflixCertificates": {"encryptedPrivateKey": "ePmFAglt", "encryptedPrivateKeyName": "fUHQKu2Q", "publicCertificate": "cV2aaGBO", "publicCertificateName": "JEhrYywr", "rootCertificate": "aqaYSSDL", "rootCertificateName": "lvVqdD3O"}, "OrganizationId": "nttlGxTs", "PlatformName": "tTF2MCku", "PrivateKey": "mNpZPVWP", "RedirectUri": "XH2rwIkK", "RegisteredDomains": [{"affectedClientIDs": ["OaG6Zlze", "JVeeyM2l", "oXpiC6dy"], "domain": "6ePF0vdG", "namespaces": ["Da2lrbja", "BHxafBMN", "mEXr11lX"], "roleId": "EFbHmabY", "ssoCfg": {"googleKey": {"quVu4XAt": {}, "mtc4NQN1": {}, "ApEIU2L8": {}}, "groupConfigs": [{"assignNamespaces": ["FUE4sUca", "BvtvjonN", "a80XC0T6"], "group": "dxGuDKng", "roleId": "dxrfnuAW"}, {"assignNamespaces": ["XkDcOIUu", "gYpTYGsm", "bK88PgKP"], "group": "zuEEfrMJ", "roleId": "21DeIwMQ"}, {"assignNamespaces": ["QhKHxnou", "aF8IpQ8D", "e4kvjdzL"], "group": "XwCeZk3z", "roleId": "tM7hw6Sg"}]}}, {"affectedClientIDs": ["mVTjBkmG", "kYY6dJtq", "5tiLrK8e"], "domain": "MmBOSepe", "namespaces": ["iEEi04sV", "vX8MzEV7", "vZXlxnYD"], "roleId": "PygBr6ve", "ssoCfg": {"googleKey": {"l6ZFcxUH": {}, "bL9YS2nX": {}, "FF0PWNwO": {}}, "groupConfigs": [{"assignNamespaces": ["Kdgagccc", "SOK8aF2R", "T05UI38W"], "group": "362TjVX4", "roleId": "7Xln1G1R"}, {"assignNamespaces": ["fMLXz1qm", "2GJU2RZk", "yCOEicPt"], "group": "UUSGPhsB", "roleId": "ahO1xyyO"}, {"assignNamespaces": ["5pShsuld", "oAi4z53Q", "glpvC09A"], "group": "r9f3nwL3", "roleId": "VVgNYbZS"}]}}, {"affectedClientIDs": ["S0HikO9i", "r76A7LkB", "Ll0lMjnN"], "domain": "ztbGVDyf", "namespaces": ["ww4syu3l", "gC407JHO", "Auc67Bjv"], "roleId": "kZtuOKzy", "ssoCfg": {"googleKey": {"2TCCkNwH": {}, "3zFNyfM3": {}, "ZYrOYHKM": {}}, "groupConfigs": [{"assignNamespaces": ["F6eyn1sH", "YcPeHTow", "X6n5qvAx"], "group": "nRJZcDNT", "roleId": "dVqtRXyJ"}, {"assignNamespaces": ["onufJurV", "iQ9TxCYj", "N4J3WGh7"], "group": "srPZFYJA", "roleId": "TWdbEXsK"}, {"assignNamespaces": ["Volyxra0", "BltdNrBu", "byBgbJtq"], "group": "OLDmSeEn", "roleId": "Porl1Bty"}]}}], "RelyingParty": "NqWDMuLh", "SandboxId": "wtH51Uye", "Secret": "F944pH8j", "TeamID": "GsUl3XWU", "TokenAuthenticationType": "hlps6fWA", "TokenClaimsMapping": {"Ryw3Ygw8": "wJtYvENY", "7Cv2TpTs": "Iu2nrlAX", "OSaqGSuA": "Z7Tn26ZC"}, "TokenEndpoint": "dlV7Pqbg", "UserInfoEndpoint": "4kNzYxxb", "UserInfoHTTPMethod": "7iiIR7tQ", "googleAdminConsoleKey": "kkVxtKQr", "scopes": ["6qojcLJM", "Iv0Jh39v", "nJUUmBQx"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iqpdSQC8' \
    --body '{"affectedClientIDs": ["xlEVTfw7", "ABMpdirJ", "VmoWU4yq"], "assignedNamespaces": ["s7j17yoZ", "gL4FleDt", "kfeCqdmU"], "domain": "jSsTpZQi", "roleId": "8gXvhfAg", "ssoCfg": {"googleKey": {"OMdrLcYY": {}, "xke9jVMt": {}, "h1fRV3DK": {}}, "groupConfigs": [{"assignNamespaces": ["ElGcBZ2j", "TpdYM96Y", "S8ANTFx6"], "group": "yu3mlLlM", "roleId": "N4EHTppk"}, {"assignNamespaces": ["v4Xp6ajZ", "tJBS8djM", "tADCyRye"], "group": "EUw7jqDO", "roleId": "idHFuhOn"}, {"assignNamespaces": ["yAY06ogV", "ytSLiPjw", "rZe5Jl1p"], "group": "X4JUe4oR", "roleId": "pyiuxV5q"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tOZJlFBJ' \
    --body '{"domain": "dNYez5my", "ssoGroups": ["5s87Iu7p", "FXKfuVTt", "1C24dPZb"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'y29WpWau' \
    --body '{"affectedClientIDs": ["vvIHwnMu", "bY8cvaPS", "KZSBCFjH"], "assignedNamespaces": ["hAyBygqt", "9xbZauqM", "96obro3H"], "domain": "cEbflbs6", "roleId": "9hj5Z7k3", "ssoCfg": {"googleKey": {"yTjmWk3b": {}, "viAW3Xrv": {}, "5l9kr0Jq": {}}, "groupConfigs": [{"assignNamespaces": ["Asv1t0zG", "okP6mm6a", "derKSSyV"], "group": "pHrqmrJc", "roleId": "e64YUuoV"}, {"assignNamespaces": ["y3OPlftZ", "FTo2CeZ3", "oxnWa3N9"], "group": "vsKFXnJf", "roleId": "7ZVh40QL"}, {"assignNamespaces": ["Xxzyxe09", "ZYP3IT4n", "gWVJVYt9"], "group": "9hpYF3zJ", "roleId": "sI8tuuAN"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'b7hkDcDu' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'NinSEXc7' \
    --body '{"acsUrl": "Vvpif9Ha", "apiKey": "QiIWsnms", "appId": "DfnItyAu", "federationMetadataUrl": "PW4hx1FV", "isActive": true, "redirectUri": "jL217I0U", "secret": "Zc6SUxW4", "ssoUrl": "P2x7EnAU"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fHvIiooi' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Qg23YESG' \
    --body '{"acsUrl": "QbY04rIS", "apiKey": "J4JOYWyZ", "appId": "BA4exxhq", "federationMetadataUrl": "2BcLa8kX", "isActive": true, "redirectUri": "Q1tHMhAZ", "secret": "E6BOgov0", "ssoUrl": "o5ibmC2D"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xA4COgnX' \
    --rawPID 'true' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["Grg0MDz8", "iMXIdeBr", "cog2xeya"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0igvNZcM' \
    --platformUserId 'mGRVWaMQ' \
    --pidType 'nGD2aaHq' \
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
    --field 'display_name' \
    --body '{"config": {"minimumAllowedInterval": 6}, "type": "LIppHRS6"}' \
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
    --body '{"additions": [{"actions": [40, 100, 16], "resource": "3stBUYNG"}, {"actions": [65, 56, 48], "resource": "3qikWBHV"}, {"actions": [46, 56, 77], "resource": "0k6b4DCX"}], "exclusions": [{"actions": [6, 37, 73], "resource": "sDQZLn4a"}, {"actions": [62, 23, 36], "resource": "kFozfFu6"}, {"actions": [39, 37, 13], "resource": "vJOnjNRf"}], "overrides": [{"actions": [49, 90, 30], "resource": "sarZeB6p"}, {"actions": [36, 10, 99], "resource": "7IXDU1WZ"}, {"actions": [41, 30, 7], "resource": "eXH5QsKX"}], "replacements": [{"replacement": {"actions": [50, 12, 3], "resource": "nZV9M9K0"}, "target": "MB6C34Yl"}, {"replacement": {"actions": [61, 69, 36], "resource": "LBHFlEZQ"}, "target": "sk7KbXpX"}, {"replacement": {"actions": [45, 60, 55], "resource": "P0sQtzR4"}, "target": "JKO2y6Oi"}]}' \
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
    --identity 'VIEW_ONLY' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'FvOe8Z8y' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'YCy58KsD' \
    --after '74' \
    --before '75' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '21' \
    --tagName '8fY7mBAV' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "FGMFht9K"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'gkv527pY' \
    --body '{"tagName": "x5fNSNTT"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'LqIe66qn' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'tGH5JVmj' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["6myCYuhh", "FbGEGGx0", "tpff6npM"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'gvmF1yLl' \
    --body '{"bulkUserId": ["YqrCCQY1", "fofzNsgg", "atUDxwfS"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["INTVsiRZ", "1b41R5wo", "jlHHZrXT"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["e3nhqKxB", "qQyxVXpb", "lPKKs1H2"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "HoP3sav8", "userId": "nKGDF1g3"}, "fields": ["eLqtoGYH", "E9kNZOC4", "SceQjTdK"], "limit": 73}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["E5CUl83c", "dsHTlYu0", "uXnPNhaa"], "isAdmin": false, "languageTag": "FY0g528Y", "namespace": "yFq4vZOF", "roles": ["t5vMGBR9", "irPx9C2v", "VyBZ6CAA"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '93' \
    --platformUserId 'YsRrM9vp' \
    --platformId 'Wy5KrKU8' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'W8SFJORs' \
    --endDate 'tGoKa5CZ' \
    --includeTotal 'true' \
    --limit '32' \
    --offset '38' \
    --platformBy 'xKgpulHD' \
    --platformId 'YrPaP5YA' \
    --query 'gEgkzf6S' \
    --roleIds 'ozOtzpvZ' \
    --selectedFields '0vYFKXj8' \
    --skipLoginQueue 'false' \
    --startDate 's582KfYD' \
    --tagIds '29iqc8nH' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["2KZetrEM", "qMGWpD3o", "k9AxkJsl"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '3mzFSGqB' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Nb8yjk0h' \
    --body '{"avatarUrl": "grffyWCn", "country": "tPneiFDQ", "dateOfBirth": "UfWFyCWS", "displayName": "fkOJqvtC", "languageTag": "aOukMIEY", "skipLoginQueue": false, "tags": ["zjCkIVR7", "WueVhqVj", "3elDk4tY"], "uniqueDisplayName": "LQZn0tou", "userName": "lt213gMs"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DkHyFbiJ' \
    --activeOnly 'true' \
    --after '3mG85Hwj' \
    --before 'tkfO5oCX' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fd3oc81i' \
    --body '{"ban": "utEcNCGZ", "comment": "X9QcWiKm", "endDate": "R5VT94FZ", "reason": "DKHqwqRy", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pEAFuwUx' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'vEb6BOMj' \
    --namespace $AB_NAMESPACE \
    --userId 'OweSxAld' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iVxNQuwR' \
    --body '{"context": "rVqvTPjM", "emailAddress": "Grjmi5SY", "languageTag": "GrUOska1", "upgradeToken": "Fg3aNPca"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'B88jDOxO' \
    --body '{"Code": "rLCClfP6", "ContactType": "GOKhksD8", "LanguageTag": "RjdK9Gmx", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'gA6vxe5K' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xk58YDSo' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wPk0bK61' \
    --body '{"deletionDate": 41, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jOoRQVnn' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Beav3RGh' \
    --body '{"code": "qhbGy2B4", "country": "G8fQ3m4I", "dateOfBirth": "3t0iqVIY", "displayName": "kCRFsv52", "emailAddress": "x9DHk9Ps", "password": "0vcwNRHD", "uniqueDisplayName": "ozC71EXn", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Eg2ZXB3a' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'guUQDZIx' \
    --after '0.16045153828082637' \
    --before '0.37047281164848866' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dcgwNKHW' \
    --body '{"languageTag": "g6R9uK6O", "mfaToken": "PrJah5RQ", "newPassword": "2KzJoq9s", "oldPassword": "JYUyLtfb"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wmtwZ0aA' \
    --body '{"Permissions": [{"Action": 12, "Resource": "m8gUjnhb", "SchedAction": 38, "SchedCron": "ANYiGYkK", "SchedRange": ["cSHaIGga", "WRkhxZsa", "L9ljpxTT"]}, {"Action": 83, "Resource": "RNzJGIjM", "SchedAction": 6, "SchedCron": "J0MfEJme", "SchedRange": ["qNlWHYcq", "fs1WTATQ", "gbYVFbOO"]}, {"Action": 16, "Resource": "0M3eG9no", "SchedAction": 70, "SchedCron": "ndAEB8f1", "SchedRange": ["AwecnBlw", "SX9yelKw", "R7MPrvI6"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xivSFwcN' \
    --body '{"Permissions": [{"Action": 10, "Resource": "Phkn86Bd", "SchedAction": 69, "SchedCron": "oYwZwBJz", "SchedRange": ["SEZSIvr9", "o5raSLZ5", "KBDyNZJp"]}, {"Action": 84, "Resource": "JsETSM2w", "SchedAction": 62, "SchedCron": "pJoJTTRh", "SchedRange": ["0mxTAeeW", "bVmckMAM", "S9MvD2rE"]}, {"Action": 54, "Resource": "gEXa6PHt", "SchedAction": 64, "SchedCron": "KpxoVW1x", "SchedRange": ["hkWbfkYq", "E0fITH44", "XQcjchF0"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NvfeI4D4' \
    --body '[{"Action": 26, "Resource": "FPGvqBxX"}, {"Action": 44, "Resource": "chMtO0nc"}, {"Action": 64, "Resource": "XnGinmPj"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '99' \
    --namespace $AB_NAMESPACE \
    --resource '4qWIbJLS' \
    --userId 'azPs6N4t' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LyTzISsc' \
    --after 'uk41Pmad' \
    --before 'PPe7hy0H' \
    --limit '88' \
    --platformId 'VTBVxgx8' \
    --targetNamespace '3YDP7Kpk' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jRxKANed' \
    --status 'qbU6S0pv' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'jyqsVXq8' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'MbseVV9D' \
    --userId '1C71C8a5' \
    --createIfNotFound 'true' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'AhHqZDHQ' \
    --userId 'iltI0e1b' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'oZ6SzIdD' \
    --skipConflict 'true' \
    --body '{"platformId": "4RLLHKjL", "platformUserId": "g9EajDtt"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hHfecueW' \
    --platformId 'UHowkusP' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ny4XL5H5' \
    --userId 'X86eJX7P' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ozqSExxE' \
    --userId 'bbRbk2ZQ' \
    --ticket 'p9xeisXC' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IVdXZRSw' \
    --userId 'L50xVNxz' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Q9SJhEca' \
    --userId 'AHWvl7yj' \
    --platformToken 'HzBmzADD' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'ZxE7WH1Q' \
    --userId 'hTmy5R8k' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'e5ChvXst' \
    --body '["mVt9A5Iu", "qRYHNNgs", "Ip1Z6dB9"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZKCH9uZ1' \
    --body '[{"namespace": "r3UKhlQP", "roleId": "OP7W3cbd"}, {"namespace": "e2ZRcWDx", "roleId": "ahnAklor"}, {"namespace": "0jGz7eeT", "roleId": "dbh5ZJ8C"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'TofNzJ5Y' \
    --userId 'gtQZFEwL' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'KuAzDG0H' \
    --userId 'sWOI4rWx' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'um4CySHD' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FK4izxVi' \
    --body '{"enabled": false, "reason": "SyEHcan8"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'txHUwRo9' \
    --body '{"emailAddress": "M3RlGqsP", "password": "9yxZdWrJ"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ItsltgJ6' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'd2gaXMeI' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "QxlenZQr"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'bRMRWICx' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'qxnlVfxc' \
    --before 'lpk6Wq7z' \
    --isWildcard 'true' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "kymWTARz", "namespace": "PYPjwnMq", "userId": "DmDpgOfx"}, {"displayName": "8xDZd5JQ", "namespace": "5O579tue", "userId": "E9QgDZq1"}, {"displayName": "jFIQ46zr", "namespace": "AcOu6jIj", "userId": "xTZvFAzC"}], "members": [{"displayName": "yoEcnjVP", "namespace": "UkGP6JRR", "userId": "oN8Q6JPQ"}, {"displayName": "cLhJw2K5", "namespace": "5HWtrfef", "userId": "7RcB5F7I"}, {"displayName": "ZqguiTIs", "namespace": "DMHSk8Ln", "userId": "zEdk2rCe"}], "permissions": [{"action": 69, "resource": "n6czVUSb", "schedAction": 45, "schedCron": "Xrb8xlxY", "schedRange": ["CKPFr9Bc", "TZ8XXNXM", "ja5oHLeH"]}, {"action": 78, "resource": "RyXO8Wby", "schedAction": 88, "schedCron": "ro1XTZBb", "schedRange": ["XHdR8fX1", "r40XVute", "kPs9k480"]}, {"action": 68, "resource": "P3oolA4N", "schedAction": 19, "schedCron": "tvRK3awN", "schedRange": ["YxQBtPV1", "jDOZv7Eo", "YfYHxMSY"]}], "roleName": "ZoGRaHv7"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'nqSQO3BQ' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'iENqTHBX' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '4Iw2nlrC' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "lmmLM1co"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'htLGi3kC' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '6blDrh2V' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'yRZTrHYU' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'ZT5IJGXU' \
    --after 'UrX7gubT' \
    --before 'eLjI63Yp' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'pnP24l0E' \
    --body '{"managers": [{"displayName": "ZpyOQtmA", "namespace": "GUUOk5Iz", "userId": "XWLbuES2"}, {"displayName": "LCruitpX", "namespace": "74mRZBwE", "userId": "RfF8ahmv"}, {"displayName": "dpyYO58C", "namespace": "tUqIzvLP", "userId": "4yaxczsa"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'xIuS6Ww6' \
    --body '{"managers": [{"displayName": "Ry9wtUx5", "namespace": "HvBm1lA9", "userId": "iVPciiFe"}, {"displayName": "nNiO3uHu", "namespace": "ZXCxkaEM", "userId": "ynalCgWY"}, {"displayName": "xsh8lQVQ", "namespace": "Z3Ec0ifJ", "userId": "BKruTyuT"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'Cm90jJN7' \
    --after 'nB7PDCbw' \
    --before 'qm9zxjDd' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'qLA8W8FA' \
    --body '{"members": [{"displayName": "buIXeflN", "namespace": "Bd42xPEd", "userId": "kobFWdqE"}, {"displayName": "VBI4w2ho", "namespace": "Vtq5Qecx", "userId": "tIv8kKgM"}, {"displayName": "0xIUfsGT", "namespace": "SbcRs5qN", "userId": "xueqbVQ3"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'Jaxlxc3a' \
    --body '{"permissions": [{"action": 6, "resource": "csMpztgv", "schedAction": 87, "schedCron": "6ttAleUX", "schedRange": ["ZquyPzQw", "kOWqTg4q", "269lX4kO"]}, {"action": 51, "resource": "7rtlGUlq", "schedAction": 59, "schedCron": "iSh1ZEWt", "schedRange": ["0uvKGuZ4", "skjeBPye", "4RohKOcf"]}, {"action": 48, "resource": "ABXu3wMi", "schedAction": 37, "schedCron": "P602qLiG", "schedRange": ["GatCkyh1", "HIrsqhu3", "GaAZ0XJ7"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'cb1tEVq7' \
    --body '{"permissions": [{"action": 56, "resource": "oTSxHjLa", "schedAction": 4, "schedCron": "NSWb3rVN", "schedRange": ["Q8FgGNZb", "8HKDDVhz", "m68b6TNt"]}, {"action": 89, "resource": "EcYQgq8r", "schedAction": 51, "schedCron": "7SRIQ7j1", "schedRange": ["QvxwIdVu", "5RMxvu5e", "t4cfMX1P"]}, {"action": 35, "resource": "la4AIWsR", "schedAction": 65, "schedCron": "GP3SY64T", "schedRange": ["MyNDVIEe", "dci1e2D3", "m012Wz07"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '14hTHdJv' \
    --body '["zcJZPWs3", "1CjuuiUg", "eYW1v1Vp"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '77' \
    --resource 'nTP6ig1P' \
    --roleId 'kxSsQRAp' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'JKaQxnMF' \
    --extendExp 'false' \
    --redirectUri 'xn61uW1R' \
    --password 'dkkbdmIg' \
    --requestId 'kh3eXtrT' \
    --userName 'QeXbiKyL' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'NTmpKTFU' \
    --linkingToken '87cIrcx4' \
    --password 'sjdg7DoI' \
    --username '4LmpOOpB' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'qWlOrrhg' \
    --linkingToken 'SrxzxHhj' \
    --password 'gADcwtUV' \
    --username 'lDJGXSZV' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'g3bF38Gn' \
    --extendExp 'true' \
    --linkingToken 'VSgCwwE9' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri '9XBKMu5x' \
    --state 'InBFPzmp' \
    --platformId 'CpJMg9NB' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'B27BlkRy' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'wPArDsf3' \
    --isTransient 'true' \
    --clientId 'dwpESGd2' \
    --oneTimeLinkCode 'yzQflDqC' \
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
    --codeChallenge 'uDOO4XEZ' \
    --codeChallengeMethod 'plain' \
    --clientId 'jccftEY9' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'g4BD7sDl' \
    --userId 'z4RQhTP6' \
    --platformUserId 'RDMeRs6p' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'C3jQ9jvg' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'XIvENjLx' \
    --codeChallenge 'jCXJNGNY' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --loginWebBased 'true' \
    --nonce '9xBTN7Qd' \
    --oneTimeLinkCode 'Elj7cmSx' \
    --redirectUri 'Hiegv0Tz' \
    --scope '20MlFfsG' \
    --state '34yVY6gm' \
    --targetAuthPage 'sie0Hthb' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId '26JL8Kjh' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'fUy9Xry5' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'Y6FgEj0Q' \
    --factor 'ZIgRGTiU' \
    --mfaToken 'tH4PF8bY' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'dIFVjdcn' \
    --mfaToken '38vlZUfL' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'odNVUsXU' \
    --factor 'y50yvVHN' \
    --mfaToken 'DZ59sFI1' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'hV4ujHY7' \
    --factors '0Be5eMZr' \
    --rememberDevice 'true' \
    --clientId 'tbuIPgFX' \
    --code 'xahiQJ21' \
    --factor '279nvmU1' \
    --mfaToken '6I1oVcbA' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7Sy5cHej' \
    --userId '4UQwp6YX' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 't3uCo6ZM' \
    --clientId 'SyVC6H8t' \
    --redirectUri 'x3jZc9KU' \
    --requestId 'DfOTTcwt' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'ajXLUvLy' \
    --additionalData '8tfIWKWT' \
    --clientId '6q4HTgYL' \
    --createHeadless 'true' \
    --deviceId 'PJ5HLqRr' \
    --macAddress 'JhTHKeTs' \
    --platformToken 'UAttr1NR' \
    --serviceLabel '0.11496758720205702' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'yaSRLU9N' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'FqKqd0hK' \
    --simultaneousTicket 'BNbilmAq' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket '8y2LvrbQ' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'DudAwG2c' \
    --clientId '8J0qmEuA' \
    --clientSecret '5wMarR42' \
    --code 'cYgFIfnI' \
    --codeVerifier 'M239PvVb' \
    --extendNamespace 'h2YYF95G' \
    --extendExp 'false' \
    --password 'RUHsdcl8' \
    --redirectUri 'ZCqeWBt8' \
    --refreshToken 'j41YifUM' \
    --scope '8bjqYuJn' \
    --username 'f9wlOaaT' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'VwNFIBY9' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'khqDjz1L' \
    --code 'GufWPKgP' \
    --error 'QQQjEBsH' \
    --openidAssocHandle 'eagF7xVn' \
    --openidClaimedId 'S2GFgPlN' \
    --openidIdentity 'y2YzJ3XQ' \
    --openidMode 'NqwA7bXM' \
    --openidNs 't27TUFIx' \
    --openidOpEndpoint 'LIVQaTwi' \
    --openidResponseNonce 'gA0rlyHA' \
    --openidReturnTo 'PpJUOOQV' \
    --openidSig '0dWcK3JK' \
    --openidSigned 'GS83ODFq' \
    --state 'PkICOqPF' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '2GPNaJ07' \
    --platformToken 'iQu4bcu2' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'W7KbBi1c' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'lJB5b7bh' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'J30s8ma3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey '3zpB4NxB' \
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
    --clientId 'TT1DlBmU' \
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
    --requestId 'SXRAgDKH' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'NP6aNrUp' \
    --limit '44' \
    --offset '6' \
    --platformBy 'xl71gWta' \
    --platformId 'bp0OcCOg' \
    --query 'z8unBDZU' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "xgMquFrk", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dyJVtd0U", "policyId": "gWb4k5g5", "policyVersionId": "loM729Jv"}, {"isAccepted": true, "localizedPolicyVersionId": "NJ5BnY71", "policyId": "1CM73CeO", "policyVersionId": "nqZ7HBs6"}, {"isAccepted": true, "localizedPolicyVersionId": "7qWX0K1R", "policyId": "dsfnu2Ah", "policyVersionId": "STo3mxwq"}], "authType": "ivfUXWon", "code": "DL7JaquP", "country": "GrOvGaU8", "dateOfBirth": "DCrwUY5q", "displayName": "AftgxvfE", "emailAddress": "UGpiaMTG", "password": "OQiUlKiz", "reachMinimumAge": true, "uniqueDisplayName": "hfwctxFE"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'QKkwtOHu' \
    --query 'P7A6jAvE' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "kXMVV1WB", "languageTag": "VbfwLiiP"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "QpEWdZK0", "emailAddress": "82USjPmy"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "ycGKkJMt", "languageTag": "H6LUxkYE"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "H9w2gNFR", "password": "hq3ByAGq", "uniqueDisplayName": "IVuqD8FU", "username": "7TX9cQip"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'I1o09ivX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'rUUde5k2' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "IOdtqNy6", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "BNYPqBV3", "policyId": "y0g5A7Kf", "policyVersionId": "IWAETWmE"}, {"isAccepted": true, "localizedPolicyVersionId": "Kwnz8GJZ", "policyId": "VYFI5igK", "policyVersionId": "KoUTpLai"}, {"isAccepted": false, "localizedPolicyVersionId": "wtzxoaJh", "policyId": "RyaYMgPs", "policyVersionId": "OLWxZP0h"}], "authType": "6Sy6HDZN", "code": "yDIh3SeT", "country": "aiRbkcFy", "dateOfBirth": "tOmOOETc", "displayName": "jhjhiGDA", "emailAddress": "2Yfa9lAN", "password": "eVdAHj7Q", "reachMinimumAge": true, "uniqueDisplayName": "JOJpiMzQ"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "HdMfZgTw", "country": "dW4RQ8cd", "dateOfBirth": "y5zCl5Pm", "displayName": "0tkaBeIp", "languageTag": "vT9ICwl7", "uniqueDisplayName": "rW8dnwbe", "userName": "9CxjDwl4"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "elsK5rmP", "country": "oeFlX85j", "dateOfBirth": "8Y7RJH8f", "displayName": "sjnfw1VO", "languageTag": "12a0wIbW", "uniqueDisplayName": "YECG80NW", "userName": "F7A8FT1L"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "M3pZNSWH", "emailAddress": "idFT8KJG", "languageTag": "1cC40Nsi", "upgradeToken": "nXxz37V2"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "on5rFscN", "contactType": "UMLz1hVg", "languageTag": "XLuxfqfJ", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "3ldtyzom", "country": "TG3X8obg", "dateOfBirth": "tXt8hsE2", "displayName": "BJqLKaqm", "emailAddress": "tOES9xMv", "password": "9OqRizmc", "uniqueDisplayName": "hKXS08Uf", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "VlgDTB3g", "password": "2j5f1SaS"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "zlq8hU0c", "mfaToken": "soXlmeo3", "newPassword": "qk99G6nK", "oldPassword": "E4zizKHX"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'DHQsXgV6' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wtx853Pz' \
    --redirectUri 'At9gj6eZ' \
    --ticket 'bd0SSFrM' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VN456B1H' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PduyxGC1' \
    --ticket 'gx9amZGi' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'Vn9iiPwC' \
    --clientId 'CP5G92JD' \
    --redirectUri 'eGwa8Gn3' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'BxAmciUy' \
    --code 'XzxPPXDc' \
    --state 'dpeVYmeF' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aqVb5bhl' \
    --code 'U6ZbDsGI' \
    --state 'IsYQ8P2u' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "cGjtvSyQ", "userIds": ["xOlTtOTu", "URGW4qbg", "4mCBc0df"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "vEtWDp57", "code": "jzfMlpbD", "emailAddress": "KSOu99Po", "languageTag": "PesrES9z", "newPassword": "xt3aBVdX"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '8W52DKXK' \
    --activeOnly 'true' \
    --after 'dOpdXivq' \
    --before '3nE51wBW' \
    --limit '87' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CZiNJHfM' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'i74bIVA6' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oFktawdh' \
    --after '0.40255711155966256' \
    --before '0.25432728606648825' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '77oCODe6' \
    --after 'jpvplpro' \
    --before 'jia60EEf' \
    --limit '40' \
    --platformId 'woQmgmLu' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZP1o9qvq' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'jYk8NQ9c' \
    --body '{"platformId": "mxrNrE4x", "platformUserId": "yqgikDn9"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'pjT3nhqo' \
    --body '{"chosenNamespaces": ["YJL35hsF", "vqjbee09", "JEJiNGz5"], "requestId": "fpeKVnOb"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RIIYwcTJ' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vb6opFzm' \
    --password 'C2osuLWB' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'gTD6M0xU' \
    --before 'zON5BL7V' \
    --isWildcard 'true' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '6vBOXymd' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "AE6DrHd8", "emailAddress": "G7dvGPoa", "languageTag": "pMWDiyJ3"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "FesIHJbT", "emailAddress": "cy0w0xv3", "languageTag": "2gedoCJr", "upgradeToken": "eYvns3VQ"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'MhKLoO8y' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["Qf2Hz1et", "DmhpBXek", "B3VwyWSn"], "oneTimeLinkCode": "vOHzA7GF"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'uvME27id' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "j6KgtFxr"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'v6oL4L9u' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '6qzizygk' \
    --code 'uMwIZxYm' \
    --error 'b8of7OOy' \
    --state 'tSVVhoxG' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'BhcP73b3' \
    --payload 'Uk6tyE0W' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'CWDFpZ5o' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '7PCq7krI' \
    --code 'U8aWN37P' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'I7ToqOWA' \
    --upgradeSuccessToken '6zCkOd0G' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '80' \
    --namespace 'SfpRX66n' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'MRXEeat8' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'QrLpNjdH' \
    --endDate 'AC6jNtsZ' \
    --limit '89' \
    --offset '47' \
    --startDate 'eeouVxqe' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AwK5EXgh' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "dA1YeFI9", "deviceId": "FEKdIXHO", "deviceType": "FhT6YHu2", "enabled": true, "endDate": "yxyZ7D7g", "ext": {"3nNuusmI": {}, "90ITDKgK": {}, "J2e8aVx8": {}}, "reason": "U2gSd5Qv"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'woHFfOPE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'I7D8Nft2' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'PkFmcELg' \
    --startDate 'RKhUgIsX' \
    --deviceType 'YmBlkXoc' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'FGgd01AP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'JTOeYtFA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'CJheViAk' \
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
    --limit '48' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 42, "userInfo": {"country": "gnxseldS"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "M12bTDIs", "policyId": "1nUBIcrs", "policyVersionId": "BwQ8iWzh"}, {"isAccepted": false, "localizedPolicyVersionId": "6ovIlTwX", "policyId": "p4htNwpM", "policyVersionId": "EYRfNcVB"}, {"isAccepted": true, "localizedPolicyVersionId": "yiqJWNac", "policyId": "Qvko1gEz", "policyVersionId": "62AaVzxN"}], "authType": "EMAILPASSWD", "code": "jYxZ5Oj4", "country": "4RGiNqin", "dateOfBirth": "MxhoKV1b", "displayName": "wZ3MvurH", "emailAddress": "SmSWYdz4", "password": "QAunmshs", "passwordMD5Sum": "m2eN4ZEZ", "reachMinimumAge": true, "uniqueDisplayName": "YTBHnK4o", "username": "suH8BYri"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["y70X2IUt", "IDb4N8pf", "l6tmuect"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["cPbPG5ip", "MHniZpTW", "F1ZEAPUs"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'XUT3sMTb' \
    --body '{"avatarUrl": "4OjA78WL", "country": "xhqtfWNd", "dateOfBirth": "O8JrkOcK", "displayName": "ZDdEC1kW", "languageTag": "kLs8B7xX", "skipLoginQueue": true, "tags": ["6CkWx7Su", "ooeausLT", "kjekRxrW"], "uniqueDisplayName": "DTWOdzvM", "userName": "8LoHipjU"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'KzRqcyFc' \
    --body '{"code": "Dc7aKeYE", "emailAddress": "xI6nJ3ai"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tw5Vra16' \
    --body '{"factor": "VuxOk2S1", "mfaToken": "6oUGoSw0"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId '7jHXI2tm' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'im550QsA' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AC2Fe1xA' \
    --body '{"assignedNamespaces": ["3r2XKSDN", "NHoQrKqG", "uSMeVU7S"], "roleId": "WUofsQCA"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '7MPH6CvM' \
    --body '{"assignedNamespaces": ["X1NtBr2L", "163eKHqD", "d6f5VfSb"], "roleId": "xAM9Sm8l"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'rRCvjSLR' \
    --body '{"assignedNamespaces": ["5gdMUPpw", "AZmCmQND", "1NsAMdD7"], "roleId": "fTilslzh"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '46' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "dH1rUV24"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'IqLKWpXH' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 't3BcczoK' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'iwpytwE3' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "jMeelMnU"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '4wIHSh9v' \
    --body '{"permissions": [{"action": 53, "resource": "36o0hYwi", "schedAction": 17, "schedCron": "7XHSJTQa", "schedRange": ["9uvDwSnA", "owAmxxmw", "0nCOhmpp"]}, {"action": 23, "resource": "r0Rp4Vuu", "schedAction": 6, "schedCron": "wrxRNZzd", "schedRange": ["VvvfmoTk", "8Iuz8BWn", "TaFj1lLq"]}, {"action": 92, "resource": "ETamMdi6", "schedAction": 50, "schedCron": "Q5IvF0ha", "schedRange": ["LMfudqlS", "7i3lDJRJ", "lJ7EZCOc"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'gDrX8sF1' \
    --body '{"permissions": [{"action": 37, "resource": "kaWBoFYE", "schedAction": 67, "schedCron": "hZ2uG1ru", "schedRange": ["lBS3MLEz", "oEk1Gr9A", "EDXkIRmq"]}, {"action": 33, "resource": "6BVPHh6J", "schedAction": 19, "schedCron": "iMkPPXio", "schedRange": ["CM3jauCt", "ufGZOCuV", "bEVlY05G"]}, {"action": 57, "resource": "EMmbMpSq", "schedAction": 21, "schedCron": "P0rOXKYC", "schedRange": ["FtySUih1", "uAMi6jzl", "JW37vPdX"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'bY0gk0qA' \
    --body '["3GtiEvYn", "Ih2hzR4Z", "FqIvbvxb"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'h8BotLVI' \
    --after 'TWCitbQ7' \
    --before 'yT6ajzdQ' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'SOFnbqhV' \
    --body '{"assignedNamespaces": ["rEI1NwXK", "0J7aBdB9", "2cYyn7GF"], "namespace": "cpVeq3zm", "userId": "wpXprO9c"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'Fs75ovlp' \
    --body '{"namespace": "wT0ZvU5O", "userId": "AZdcLAMb"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["xJjRlP9t", "cUchrqwg", "Z1wMSUBT"], "emailAddresses": ["VDIgHlns", "kyTYneBP", "WdyVYOwJ"], "isAdmin": true, "isNewStudio": true, "languageTag": "pi9DyFqL", "namespace": "vfhGNzgc", "roleId": "7wPo7mXl"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "d4PfVDuk", "country": "QDpq2sAZ", "dateOfBirth": "d3kDfIux", "displayName": "d6TJNIIa", "languageTag": "NFACP7Cp", "skipLoginQueue": true, "tags": ["N05X6KsF", "hw7rZiK3", "7t2eKHoQ"], "uniqueDisplayName": "S8gjgr0L", "userName": "duHpnvwq"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "cvyF3Bj5", "mfaToken": "9FuO2SpR"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'EYCthoYO' \
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
    --body '{"factor": "PJ8oXEnA", "mfaToken": "mQ6r88i1"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'fDt1XThX' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'o8T63Gd8' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'eSzi1liM' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'Q7notSjs' \
    --factor 'PDBjmDFY' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action '40PQjZdh' \
    --languageTag 'NCAwFM8e' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "VwUv6NDF", "mfaToken": "eAPYp9Kn"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'lM5LpewH' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '6KBwDdQr' \
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
    --clientId '2IkjJzx1' \
    --linkingToken 'iypVh5h2' \
    --password 'oksrDHLT' \
    --username '0TCa65B1' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData '16XKuExr' \
    --extendExp 'false' \
    --linkingToken '4Gz1TNWK' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'e6ILpROh' \
    --factor '4lCln2Sp' \
    --mfaToken '9G8N2iIU' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'D5cb961Y' \
    --codeChallenge 'cJ4XXKrd' \
    --codeChallengeMethod 'S256' \
    --additionalData 'htp6yTMU' \
    --clientId '5eeCuVlM' \
    --createHeadless 'true' \
    --deviceId 'm6QpxVAi' \
    --macAddress 'tXoOJ15e' \
    --platformToken 'GTa6mcxc' \
    --serviceLabel '0.08970491289926397' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'KuEZZBVu' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'psm5lFz4' \
    --simultaneousTicket '2bBk8e0e' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'zPWCtZ9x' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge '9E0Hroay' \
    --codeChallengeMethod 'plain' \
    --additionalData '833edF0k' \
    --clientId 'zmSkA3v6' \
    --clientSecret 'BqICvsOs' \
    --code 'okis1Uu3' \
    --codeVerifier 'ObDJhayQ' \
    --extendNamespace 'yarlmzZ8' \
    --extendExp 'false' \
    --loginQueueTicket 'lIANFWqK' \
    --password 'MnWc0Bjq' \
    --redirectUri 'YObAqPUJ' \
    --refreshToken 'O0RclTPe' \
    --scope '5Uzy9uhX' \
    --username 'vTz8FEjm' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'TEzZXkYQ' \
    --code '4chljuNz' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'jx0I9Tgm' \
    --rawPUID 'true' \
    --body '{"pidType": "EJHL8k26", "platformUserIds": ["eQd0ViwP", "PfqEp5X9", "MvKREfIO"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'TY5UtWbM' \
    --platformUserId 'jPYD6l0B' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "dZmDx8HP", "policyId": "DycPmzM0", "policyVersionId": "1IDABaiO"}, {"isAccepted": true, "localizedPolicyVersionId": "6z0m5b4y", "policyId": "hrgIX1hl", "policyVersionId": "h77zwqI5"}, {"isAccepted": false, "localizedPolicyVersionId": "UJ9qSuw4", "policyId": "47d3ErOA", "policyVersionId": "byY0dnoW"}], "authType": "EMAILPASSWD", "country": "RP9F9qAK", "dateOfBirth": "rn7XZmTX", "displayName": "B3kXRliX", "emailAddress": "p3R7ajWO", "password": "LhidsyvZ", "passwordMD5Sum": "6zfSB6L3", "uniqueDisplayName": "YVX31UgM", "username": "pnBjbHm4", "verified": true}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "lzYBpBqQ", "policyId": "A6vQgxyv", "policyVersionId": "3GDSixh0"}, {"isAccepted": false, "localizedPolicyVersionId": "jdpuk7O7", "policyId": "YjVv8wRO", "policyVersionId": "mNbaD69a"}, {"isAccepted": false, "localizedPolicyVersionId": "Y0eSatYA", "policyId": "ShPoZriU", "policyVersionId": "x7B6vvwY"}], "authType": "EMAILPASSWD", "code": "JGiyEpPY", "country": "2jLBL9kh", "dateOfBirth": "rx9Xno4R", "displayName": "lEB35K4y", "emailAddress": "IZFSohe6", "password": "WXsFXzcQ", "passwordMD5Sum": "ZqC9PjIn", "reachMinimumAge": true, "uniqueDisplayName": "Z0ocCGlr", "username": "WiZxTjso"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'SLvzLcVt' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "9M9OIB82", "policyId": "xEQEjYP6", "policyVersionId": "nSTVM38x"}, {"isAccepted": false, "localizedPolicyVersionId": "y90hvQv8", "policyId": "HolhZEyV", "policyVersionId": "fyIqxlF3"}, {"isAccepted": true, "localizedPolicyVersionId": "GRBwd0Ah", "policyId": "WypCK2UL", "policyVersionId": "v1ohJZBG"}], "authType": "EMAILPASSWD", "code": "npgOEU5A", "country": "YTogPEjv", "dateOfBirth": "Qmt98Pu4", "displayName": "dPE3e7KI", "emailAddress": "ohLDOvh4", "password": "mH0GhAK7", "passwordMD5Sum": "bqhxZAiv", "reachMinimumAge": false, "uniqueDisplayName": "9M34gw6f", "username": "8rUdEb8R"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "tXnbMmCy", "country": "XjJHhaKk", "dateOfBirth": "cs1Uuggd", "displayName": "ODaZPIRG", "languageTag": "6fpCTyRn", "uniqueDisplayName": "F0IdAPvZ", "userName": "nrCMa1rj"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "K2YfkP94", "emailAddress": "eJWw8SHu"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ShNu4tfq", "country": "antxqQAD", "dateOfBirth": "dXOJ7yIY", "displayName": "KBRkwcCE", "emailAddress": "y1RSSqEZ", "password": "qlh0oqKB", "reachMinimumAge": true, "uniqueDisplayName": "33cpJm7V", "username": "r5aQc7vO", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "ejihB5WT", "displayName": "i4HZY98g", "emailAddress": "tEst0ODK", "password": "ZqSyZuDJ", "uniqueDisplayName": "0Jdnq1QM", "username": "jQEvQ2EO"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "JJ1rUcTx", "mfaToken": "3HruzlMW"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'GsiUuwVi' \
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
    --body '{"factor": "FRKT9sBN", "mfaToken": "vUxO3qUY"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'yiLROmW0' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'jESfU9bR' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'qwyLQuKu' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'C45a6P5t' \
    --factor 'dZOAr60h' \
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
    --action 'tStiAsNA' \
    --languageTag 'tHjLMuTo' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "Rbny3qBd", "mfaToken": "5ShoxuXU"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'ZLyXMlKc' \
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
    --factor 'i2fMb7la' \
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
    --userId 'I3mXXUGA' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "w9X9XtHz", "emailAddress": "vvTKn4ur", "languageTag": "Ab8jqN6K", "namespace": "8A3YkAm0", "namespaceDisplayName": "XIV7GdEi"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "MmyjDyGY", "policyId": "QvgCDaOg", "policyVersionId": "TnqTC2wW"}, {"isAccepted": false, "localizedPolicyVersionId": "KlWA0gtN", "policyId": "DVvDVmTk", "policyVersionId": "3WR9ybtl"}, {"isAccepted": true, "localizedPolicyVersionId": "iIFJRmtg", "policyId": "7utfaUoV", "policyVersionId": "K2c7DFiB"}], "code": "cE73EfdH", "country": "wgxQiebm", "dateOfBirth": "dJaLqY4n", "displayName": "Pl5eg70J", "emailAddress": "hIF5sKRP", "password": "PGXYyzRy", "reachMinimumAge": true, "uniqueDisplayName": "cvz2Knc0", "username": "5fBiubGP", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE