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
    --excludePermissions 'false' \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'false' \
    --body '{"modules": [{"docLink": "9rm7ehJf", "groups": [{"group": "2RKtGjri", "groupId": "ept054gv", "permissions": [{"allowedActions": [54, 89, 35], "resource": "D4KDWu5b"}, {"allowedActions": [98, 37, 57], "resource": "SdUZcBJZ"}, {"allowedActions": [36, 24, 88], "resource": "hAz33xCm"}]}, {"group": "K31KQPxj", "groupId": "Wych1G1P", "permissions": [{"allowedActions": [59, 5, 82], "resource": "oRcTlyPR"}, {"allowedActions": [9, 54, 9], "resource": "IhATPSUL"}, {"allowedActions": [1, 57, 85], "resource": "tg4MKzRf"}]}, {"group": "wm4xruVo", "groupId": "vdxIhnzn", "permissions": [{"allowedActions": [39, 79, 31], "resource": "HdjY65Tl"}, {"allowedActions": [58, 77, 45], "resource": "vHnolL5b"}, {"allowedActions": [54, 74, 38], "resource": "NdKqvBvB"}]}], "module": "19GtvZXf", "moduleId": "VW1GBnvW"}, {"docLink": "kkBWde2M", "groups": [{"group": "VzOvPeIA", "groupId": "4Rb6YfKO", "permissions": [{"allowedActions": [74, 15, 49], "resource": "CVqVtBsO"}, {"allowedActions": [60, 31, 33], "resource": "JNxR8Tqt"}, {"allowedActions": [9, 58, 41], "resource": "b6e4IMqh"}]}, {"group": "fJrsYohv", "groupId": "yPBj7JwF", "permissions": [{"allowedActions": [16, 18, 13], "resource": "BOJ60696"}, {"allowedActions": [99, 88, 54], "resource": "1n2L8jCQ"}, {"allowedActions": [11, 64, 6], "resource": "29AmFida"}]}, {"group": "GCHOfSqP", "groupId": "Wh7S9ZnA", "permissions": [{"allowedActions": [1, 13, 6], "resource": "lGrKqKeR"}, {"allowedActions": [39, 43, 98], "resource": "UCmf0crQ"}, {"allowedActions": [38, 79, 64], "resource": "3qUIPAR3"}]}], "module": "iMsdMsJw", "moduleId": "9aIvkeeP"}, {"docLink": "JNmZLt9O", "groups": [{"group": "8DcHDCkc", "groupId": "Zd56yXIB", "permissions": [{"allowedActions": [3, 7, 23], "resource": "vpbJJXU3"}, {"allowedActions": [17, 4, 87], "resource": "uySuT8vN"}, {"allowedActions": [73, 62, 100], "resource": "17xqfTp8"}]}, {"group": "sgYXDjfV", "groupId": "7cThYo4U", "permissions": [{"allowedActions": [98, 52, 17], "resource": "0oKs1dHu"}, {"allowedActions": [55, 56, 94], "resource": "8Ph10F1B"}, {"allowedActions": [72, 5, 40], "resource": "9iWaqF5t"}]}, {"group": "WV6uALEK", "groupId": "3Q1AprDF", "permissions": [{"allowedActions": [13, 61, 76], "resource": "ZA2luzGc"}, {"allowedActions": [29, 51, 15], "resource": "kQ7ptId3"}, {"allowedActions": [50, 45, 29], "resource": "jSDKZSsV"}]}], "module": "pp53j2eB", "moduleId": "XFsTJTSH"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "Z34CR90m", "moduleId": "xalUaObU"}' \
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
    --body '[{"field": "cO3JliH8", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["1LG8C4sT", "ySYxVexY", "cyvklnuU"], "preferRegex": false, "regex": "X8Z9lmpM"}, "blockedWord": ["JsUBDVRL", "6betrBCp", "DLkvcdAc"], "description": [{"language": "K7IekZcn", "message": ["Y88jHTtT", "upFgf83B", "KwQJRJH3"]}, {"language": "juFnWWPq", "message": ["iEyrwM4k", "wvBQlWgR", "m2vm9nHg"]}, {"language": "usaJfshl", "message": ["1WvS7Rn9", "q6u1klp0", "pTJVLnPF"]}], "isCustomRegex": true, "letterCase": "JvqoIedV", "maxLength": 92, "maxRepeatingAlphaNum": 37, "maxRepeatingSpecialCharacter": 89, "minCharType": 93, "minLength": 34, "profanityFilter": "oBbbI193", "regex": "pFlQdRNm", "specialCharacterLocation": "a2q2sFj6", "specialCharacters": ["RWQihCPS", "MMc9tZ08", "rPDe1MYV"]}}, {"field": "PvatK1kB", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["ixJ0X5w0", "FTiNTsPs", "EiQj1Dyc"], "preferRegex": true, "regex": "PjG2IOpz"}, "blockedWord": ["U3gOfEVe", "yFXs6nID", "UImRXsm7"], "description": [{"language": "8nKxTece", "message": ["phgSB4rO", "U7HnkRet", "nAs2e0ty"]}, {"language": "EQ2upN8s", "message": ["J5NqsKhi", "FEQY6G99", "ddG4H48G"]}, {"language": "h5sDBQYB", "message": ["g45JEptI", "wzvD3fiv", "qh6FSECZ"]}], "isCustomRegex": false, "letterCase": "WMKFL4iy", "maxLength": 65, "maxRepeatingAlphaNum": 70, "maxRepeatingSpecialCharacter": 62, "minCharType": 99, "minLength": 78, "profanityFilter": "fgGGWTv6", "regex": "I1RkHh3Z", "specialCharacterLocation": "ritFvk6O", "specialCharacters": ["ME4K9fn1", "OoMe2A95", "keg7mkSX"]}}, {"field": "fm6KPDA8", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["gRoBgIrj", "tDWvtWHc", "NlLaV6j3"], "preferRegex": false, "regex": "eZijbkJ9"}, "blockedWord": ["g38PhYJp", "w9TRuSVS", "NvyyhyN2"], "description": [{"language": "v8gid3Vk", "message": ["tC1k4rAl", "kGNA1mqn", "G9J6br7A"]}, {"language": "6Oe1usgi", "message": ["1ZfL4H0P", "dSe0aEBM", "sL47ef7m"]}, {"language": "zQB8NbnP", "message": ["hLrAJnKf", "jWGWmOAN", "RO15Lzio"]}], "isCustomRegex": false, "letterCase": "xqgGgk7d", "maxLength": 66, "maxRepeatingAlphaNum": 71, "maxRepeatingSpecialCharacter": 4, "minCharType": 45, "minLength": 98, "profanityFilter": "rP2C7OfU", "regex": "vt0tjv5p", "specialCharacterLocation": "1tF42OsP", "specialCharacters": ["PQA5iY82", "91KdaVzI", "SC715RYD"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'Cb9f2AKv' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'WD9Kk1yP' \
    --before 'PKZXWKv2' \
    --endDate 'Z7153luS' \
    --limit '24' \
    --query 'yIe0UwUg' \
    --roleId 'mLjxIgyu' \
    --startDate 'yZCE27HE' \
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
    --body '{"ageRestriction": 59, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '9HQct9ye' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 3}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'zx0GZsbS' \
    --limit '14' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "gI9RhqYs", "comment": "TSoMH2xC", "endDate": "BbERaqki", "reason": "HWleiV6s", "skipNotif": true, "userIds": ["724YrUCW", "mFo07cSw", "zNm6Z4QT"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "cCliLzIN", "userId": "FgmjDdpL"}, {"banId": "4D6J6hfK", "userId": "zIjqjyTt"}, {"banId": "T1KbdjZS", "userId": "UzDiCVbu"}]}' \
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
    --clientId 'Fcsdpuza' \
    --clientName 'BeMgQ6mC' \
    --clientType 'B2n1lLck' \
    --limit '98' \
    --offset '83' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["X6cmGfDd", "4VRgQ3Jx", "9859DzYN"], "clientUpdateRequest": {"audiences": ["pD5zSQ52", "ihGDivF1", "AkQeoLnS"], "baseUri": "3x2GUC7d", "clientName": "1sd54wdt", "clientPermissions": [{"action": 83, "resource": "QanrH1P4", "schedAction": 25, "schedCron": "JTzxAmtc", "schedRange": ["6AwHJ3uc", "NBeO1ldB", "SGrLeQbF"]}, {"action": 13, "resource": "RzrZrXRd", "schedAction": 21, "schedCron": "sCMVWVO7", "schedRange": ["XwTDGHTP", "tucYGBZD", "I2PE7Hvw"]}, {"action": 30, "resource": "tybqhLGr", "schedAction": 28, "schedCron": "QV1FkL90", "schedRange": ["kiiWysec", "qH6ZYybC", "WxkV03vh"]}], "clientPlatform": "FJvK0Qb4", "deletable": false, "description": "psKKCrAo", "modulePermissions": [{"moduleId": "cI64UbIu", "selectedGroups": [{"groupId": "LlRu9TKb", "selectedActions": [29, 40, 60]}, {"groupId": "BBL5ve80", "selectedActions": [72, 96, 19]}, {"groupId": "OmsOgRmb", "selectedActions": [0, 74, 42]}]}, {"moduleId": "vudU5y4z", "selectedGroups": [{"groupId": "SvidG0vg", "selectedActions": [96, 36, 66]}, {"groupId": "rVya59nT", "selectedActions": [48, 32, 15]}, {"groupId": "f1uERkeC", "selectedActions": [54, 82, 31]}]}, {"moduleId": "XuiBgJkJ", "selectedGroups": [{"groupId": "jPsFKBUX", "selectedActions": [83, 47, 82]}, {"groupId": "213rwyZq", "selectedActions": [52, 51, 97]}, {"groupId": "zjvwJXPj", "selectedActions": [15, 6, 98]}]}], "namespace": "Z6HkoUpW", "oauthAccessTokenExpiration": 100, "oauthAccessTokenExpirationTimeUnit": "JepMSonH", "oauthRefreshTokenExpiration": 10, "oauthRefreshTokenExpirationTimeUnit": "FbeumM82", "redirectUri": "IZhFI1dz", "scopes": ["UljLGAmL", "Y7wDlGdt", "HNcTmp7F"], "skipLoginQueue": false, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["e6q4Amos", "Hb1rjFMX", "LIlWHd8c"], "baseUri": "nPYacusc", "clientId": "KorekdIn", "clientName": "KxHvPY3j", "clientPermissions": [{"action": 75, "resource": "sSXbZS1K", "schedAction": 62, "schedCron": "3Bb6TIm8", "schedRange": ["IVRX5vqh", "GyaebDh3", "rpNCGGST"]}, {"action": 13, "resource": "tvoyt4ul", "schedAction": 50, "schedCron": "HSfxlNMt", "schedRange": ["2glOvWSH", "Gl4gPeaE", "WTbnlusL"]}, {"action": 1, "resource": "rNYiw7wa", "schedAction": 42, "schedCron": "SN1LDxSB", "schedRange": ["aPkwTHEH", "hUgTVnzJ", "ZdWvoZG8"]}], "clientPlatform": "hyP3bMAc", "deletable": true, "description": "Ums9kEXC", "modulePermissions": [{"moduleId": "I2YulTVU", "selectedGroups": [{"groupId": "FfiWvgQp", "selectedActions": [60, 76, 4]}, {"groupId": "qoQeeB71", "selectedActions": [17, 69, 76]}, {"groupId": "jOxuRi4c", "selectedActions": [90, 20, 93]}]}, {"moduleId": "frlJ6pHX", "selectedGroups": [{"groupId": "jjPzO6zE", "selectedActions": [63, 81, 2]}, {"groupId": "xqkhQOQY", "selectedActions": [47, 8, 5]}, {"groupId": "xpw5Mq6C", "selectedActions": [3, 71, 50]}]}, {"moduleId": "OTpfgUEp", "selectedGroups": [{"groupId": "G8b3AlRd", "selectedActions": [96, 97, 84]}, {"groupId": "C3IgptdE", "selectedActions": [92, 33, 75]}, {"groupId": "ywwFwDIH", "selectedActions": [25, 9, 53]}]}], "namespace": "LoBQVEPY", "oauthAccessTokenExpiration": 75, "oauthAccessTokenExpirationTimeUnit": "MaPlIC1Z", "oauthClientType": "qTihhzfN", "oauthRefreshTokenExpiration": 98, "oauthRefreshTokenExpirationTimeUnit": "AT7XBE9P", "parentNamespace": "IvTWovFN", "redirectUri": "MTv8hjNd", "scopes": ["wIyH0c13", "I63xFd0o", "OmYVkdjt"], "secret": "Z2CaQVa8", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'RMeiTq8Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'mDZIsGB9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '9Xfpo0HE' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["4QltaaKT", "9jell7YL", "XwJKs0mZ"], "baseUri": "BubX5F22", "clientName": "6KGCv3Ku", "clientPermissions": [{"action": 3, "resource": "z06IwguY", "schedAction": 33, "schedCron": "blQq2bFS", "schedRange": ["cjrTvxuv", "IqtjAKi2", "i8fWk649"]}, {"action": 57, "resource": "9oU35dIN", "schedAction": 34, "schedCron": "ZdEmx0Sv", "schedRange": ["ZeD4LURV", "1XYTttEK", "gQ6rZhNZ"]}, {"action": 57, "resource": "VTG96Qsu", "schedAction": 52, "schedCron": "HU61mAfD", "schedRange": ["ByB5Q9Ht", "Esf8hX2B", "yWLQuXU7"]}], "clientPlatform": "wNo7PoCi", "deletable": true, "description": "VwD5Fgs4", "modulePermissions": [{"moduleId": "BPPDbDvz", "selectedGroups": [{"groupId": "4BZBsHGY", "selectedActions": [27, 70, 86]}, {"groupId": "G46cdO64", "selectedActions": [19, 96, 51]}, {"groupId": "ijTLn57Z", "selectedActions": [9, 12, 15]}]}, {"moduleId": "RvRBnui1", "selectedGroups": [{"groupId": "NeWPBEO9", "selectedActions": [74, 97, 63]}, {"groupId": "jHEyyOLh", "selectedActions": [78, 2, 6]}, {"groupId": "4zsPXfoo", "selectedActions": [18, 75, 47]}]}, {"moduleId": "Qxt8Tagt", "selectedGroups": [{"groupId": "iE1ikHn2", "selectedActions": [65, 64, 85]}, {"groupId": "eMxo0UAK", "selectedActions": [66, 75, 24]}, {"groupId": "xgD0VkvO", "selectedActions": [72, 59, 54]}]}], "namespace": "WaYF2DAs", "oauthAccessTokenExpiration": 30, "oauthAccessTokenExpirationTimeUnit": "aDwOPYc5", "oauthRefreshTokenExpiration": 71, "oauthRefreshTokenExpirationTimeUnit": "ez9kmuon", "redirectUri": "ajV3j7AE", "scopes": ["JKxsBlg7", "WVvaYLF9", "xpDq9n93"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'Izu9njfH' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 76, "resource": "CvXjhdH1"}, {"action": 38, "resource": "5zCmiOCg"}, {"action": 42, "resource": "iP9B5dIi"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'UmMBCGuF' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 37, "resource": "IlaVg5cr"}, {"action": 61, "resource": "8jUdVHbA"}, {"action": 36, "resource": "p7aFArA0"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '18' \
    --clientId 'uaMBYtnl' \
    --namespace $AB_NAMESPACE \
    --resource 'b557TtOG' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'Hjm4G8Ra' \
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
    --body '{"blacklist": ["Eqo3eruy", "5qCU6VkL", "GiKhSBLZ"]}' \
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
    --body '{"active": false, "roleIds": ["WqdfyHK7", "CGBnqJDN", "6eNUaaZ1"]}' \
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
    --offset '93' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '150Iuk71' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lDtJEPZB' \
    --body '{"ACSURL": "jQrF14vt", "AWSCognitoRegion": "hz53uVdA", "AWSCognitoUserPool": "EKwoUEnn", "AllowedClients": ["dpAb16R8", "uIi6yQnJ", "gmYJNCvB"], "AppId": "8r8Q42eV", "AuthorizationEndpoint": "K4phdRa0", "ClientId": "PcQlhn6c", "EmptyStrFieldList": ["jnM0i2Gs", "8VTP8x5F", "fmF6eto3"], "EnableServerLicenseValidation": false, "Environment": "UB4KOi2Q", "FederationMetadataURL": "MyCtQziI", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "KbwmDVI0", "JWKSEndpoint": "qevOMlbN", "KeyID": "y5qeFl4G", "LogoURL": "CUnO8hyH", "NetflixCertificates": {"encryptedPrivateKey": "lZnxUiuz", "encryptedPrivateKeyName": "lQnODG7H", "publicCertificate": "Oyt7AHzy", "publicCertificateName": "NqsQoqB6", "rootCertificate": "MojjShhl", "rootCertificateName": "Zk7royUc"}, "OrganizationId": "dSajFWSP", "PlatformName": "7Ctg2ueJ", "PrivateKey": "Rz5MntHh", "RedirectUri": "nGJGsuRA", "RegisteredDomains": [{"affectedClientIDs": ["oZebSkif", "qRzX53SU", "4Kgb1yot"], "domain": "rv56CQS4", "namespaces": ["3FvqIxcy", "ERHAMoZQ", "qaWVApkm"], "roleId": "DbeKdcxi", "ssoCfg": {"googleKey": {"xt4CxEfx": {}, "RM8h0khW": {}, "S8lSbBIy": {}}, "groupConfigs": [{"assignNamespaces": ["pxlWwnPQ", "OXm0Clnw", "iwqjweXe"], "group": "RqXZdpih", "roleId": "rYtUwcS1"}, {"assignNamespaces": ["9utbywda", "YOvqivlB", "VGkwZuxL"], "group": "yhTYN8pW", "roleId": "x7mMNhGB"}, {"assignNamespaces": ["8GL48aIZ", "nqy3PEri", "2zZIUVTP"], "group": "FDcMPWW8", "roleId": "hdzLpDLi"}]}}, {"affectedClientIDs": ["ojPsixOs", "JQxidyFU", "KTpfHD17"], "domain": "ku8dTNi1", "namespaces": ["e631hbzS", "zzF1EtXw", "XCqN3xgp"], "roleId": "a7kDqqTB", "ssoCfg": {"googleKey": {"b69RY8Nr": {}, "O8Qwh7Cf": {}, "fTLlWCdF": {}}, "groupConfigs": [{"assignNamespaces": ["RtnXGY0i", "qLwHiqrs", "Y7nlE5Qk"], "group": "TLZYdUoN", "roleId": "4enAWBab"}, {"assignNamespaces": ["OEyY5cyd", "CdwElWsk", "99KAf2mC"], "group": "u30iufSO", "roleId": "WJ3jZejc"}, {"assignNamespaces": ["8DWptsFZ", "uFdZTFOU", "F54W2nly"], "group": "vuuBpqdQ", "roleId": "AZUCBbnJ"}]}}, {"affectedClientIDs": ["lodezNIo", "HYOXn5h8", "Er0MZx7K"], "domain": "15NoNsI0", "namespaces": ["naIT22aw", "IrtGHIB0", "wrspnBjC"], "roleId": "IVWgrZRV", "ssoCfg": {"googleKey": {"9ERiE3fy": {}, "IDNgT1Fg": {}, "afczD9sp": {}}, "groupConfigs": [{"assignNamespaces": ["V88PsmhW", "SSD9zhyJ", "eGkZi94W"], "group": "83kF7Mh5", "roleId": "4hBPhaBb"}, {"assignNamespaces": ["AMxKULWo", "vi5dsLWj", "B4vI5pvL"], "group": "yEr3XMs4", "roleId": "ob1VLqNC"}, {"assignNamespaces": ["HzVOH7s0", "5yORlseY", "yglDoD9x"], "group": "W1NK9HLj", "roleId": "TkVfsNug"}]}}], "RelyingParty": "13TUdZvm", "SandboxId": "4q7BoMfD", "Secret": "Q06A9DvE", "TeamID": "MFlrvKhz", "TokenAuthenticationType": "WhT4Z3En", "TokenClaimsMapping": {"rX2PzoHy": "81dMWKtD", "pEy0BXnn": "SYTEPJJG", "YRdEltGa": "sPUBgC8q"}, "TokenEndpoint": "EvkdTQhD", "UserInfoEndpoint": "cmHWV77m", "UserInfoHTTPMethod": "c8vbqNIZ", "googleAdminConsoleKey": "Td1giODC", "scopes": ["eG0YDkJR", "odtVW2pp", "4NePpoHu"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zXnOtMue' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FOIiIeLd' \
    --body '{"ACSURL": "yxxQva0x", "AWSCognitoRegion": "qOl3o4tO", "AWSCognitoUserPool": "Zrp9pk7C", "AllowedClients": ["QZ0Cqpki", "uADxvJD3", "8CrVF5Xv"], "AppId": "oMuMGNGC", "AuthorizationEndpoint": "tsDYDKWK", "ClientId": "FhFUOwNh", "EmptyStrFieldList": ["WSSW90G7", "uFKS7t2N", "Ugjzw6gg"], "EnableServerLicenseValidation": false, "Environment": "hbIUZQlT", "FederationMetadataURL": "XrAY4t0r", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": true, "Issuer": "4SvUeWSr", "JWKSEndpoint": "YOdKgGkc", "KeyID": "ofI1v0Da", "LogoURL": "5Vh8WVEJ", "NetflixCertificates": {"encryptedPrivateKey": "Zajb3yvk", "encryptedPrivateKeyName": "tzssTaoy", "publicCertificate": "AGQfGOpa", "publicCertificateName": "RWDFYGy3", "rootCertificate": "MZCFYRth", "rootCertificateName": "KEUDmF2R"}, "OrganizationId": "1Tzl8Hfy", "PlatformName": "cAn4V2Al", "PrivateKey": "y3gwctVj", "RedirectUri": "AQUIlYZu", "RegisteredDomains": [{"affectedClientIDs": ["jEqSO4dI", "cn6cgOT5", "wLRXY9sk"], "domain": "yuqSB8SY", "namespaces": ["ytiqVYFs", "8JqoRhkb", "3rKdG8aq"], "roleId": "YSPKL7JV", "ssoCfg": {"googleKey": {"knhIHi0n": {}, "uOLHPyqP": {}, "LnLWw7lG": {}}, "groupConfigs": [{"assignNamespaces": ["qvWkdQev", "1vy2SJTZ", "0Ung5SbQ"], "group": "0AZORmUZ", "roleId": "6aq0bZbG"}, {"assignNamespaces": ["HHamne16", "nZi757Dd", "SojAI9P5"], "group": "jn8Cg2Mq", "roleId": "HlVi0n5C"}, {"assignNamespaces": ["cNTeQdk4", "8vv9O9kB", "gEDaSNGV"], "group": "49jZZD5t", "roleId": "ePBRbi4n"}]}}, {"affectedClientIDs": ["b7k6HDMo", "xXSsQL3n", "o6Vtkup2"], "domain": "snczpAnl", "namespaces": ["lY9rYNXi", "T2t7ChpD", "AftR9zgZ"], "roleId": "f9y6HyQB", "ssoCfg": {"googleKey": {"EDNnrslK": {}, "SUOiEIjD": {}, "yu8vvaj6": {}}, "groupConfigs": [{"assignNamespaces": ["kJBqwNze", "OuXMvPnI", "ef7RsX3d"], "group": "xsKkJRuv", "roleId": "jvE7HwpZ"}, {"assignNamespaces": ["P8nGxNRZ", "LtXvFkeR", "moMxpBAA"], "group": "2upOyEu7", "roleId": "TkwllKJH"}, {"assignNamespaces": ["ncarBheT", "1llQIeKM", "ssiIsaYv"], "group": "z4AnThKi", "roleId": "lvvuAXNV"}]}}, {"affectedClientIDs": ["SI5bB8SV", "wZaBHCAS", "TJIBqCAq"], "domain": "hLU5D416", "namespaces": ["JU9KfNjy", "vhNExuRw", "CmpF1GYW"], "roleId": "jm8lXSHs", "ssoCfg": {"googleKey": {"f1bg97uU": {}, "Q4vJrc7E": {}, "fhcI2Xrw": {}}, "groupConfigs": [{"assignNamespaces": ["jEvrjJDG", "uQr3C0xN", "BdMJmEx4"], "group": "7PbisEQK", "roleId": "p29SBcYW"}, {"assignNamespaces": ["zYZJvSoy", "DBrxnFZw", "9cql00f1"], "group": "LmBS5Wcr", "roleId": "nUKZFY1u"}, {"assignNamespaces": ["Swzxc2og", "Eq9ZaXez", "sDLVNrrO"], "group": "JBCU6iFE", "roleId": "doWFUL8b"}]}}], "RelyingParty": "ylqzKRHo", "SandboxId": "UNwt5Q2L", "Secret": "XlgL1a9Y", "TeamID": "cQYqK6dW", "TokenAuthenticationType": "flx834t4", "TokenClaimsMapping": {"R9Yvi3hn": "LqPQH9sf", "zwUWfD7A": "KEByNx6f", "KXcjkkTQ": "0qc51pcK"}, "TokenEndpoint": "4nkurXBB", "UserInfoEndpoint": "jk0Mqc1u", "UserInfoHTTPMethod": "roJ57W9C", "googleAdminConsoleKey": "c4PWPrQS", "scopes": ["E6hrzcpG", "enGfwocB", "5xB9IMnS"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'T4ZUB9dI' \
    --body '{"affectedClientIDs": ["ClFpppua", "7emzrMSv", "rORYkDr0"], "assignedNamespaces": ["gKhjJ0QI", "ecLtmUvE", "Py9A2oX0"], "domain": "6qk6DwCh", "roleId": "OcOkK8Y7", "ssoCfg": {"googleKey": {"QmesCEvi": {}, "MNGlziT3": {}, "k47sJ5Ih": {}}, "groupConfigs": [{"assignNamespaces": ["HglZng2L", "KIYB2Y9s", "gIRX8Zuc"], "group": "RfqgTlhu", "roleId": "NzfyqK0I"}, {"assignNamespaces": ["L3Qq5NHq", "OhdQBZ1e", "P1Scw8YP"], "group": "7tVVZ4zF", "roleId": "BrQUSI1b"}, {"assignNamespaces": ["LaryJYzu", "XIRH5u0d", "hubColOg"], "group": "24JEn71D", "roleId": "Zn1zcRbN"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WX5RpOl2' \
    --body '{"domain": "3Yb24fjd", "ssoGroups": ["piDijwmG", "naruy0w8", "cx8VXETE"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hIQrDrCl' \
    --body '{"affectedClientIDs": ["a0sEjKbu", "5VDEbuDv", "u0tOoO76"], "assignedNamespaces": ["f5NYoyag", "4elGE4xs", "fbOnr2T2"], "domain": "LHOIuYxS", "roleId": "ai672oow", "ssoCfg": {"googleKey": {"Ho4TfCbo": {}, "gAz9rpw1": {}, "WzlyPnD8": {}}, "groupConfigs": [{"assignNamespaces": ["B7GJ8EHJ", "iIRVYoZD", "3LhFGULP"], "group": "Vc7tAOnK", "roleId": "iQbYaiDY"}, {"assignNamespaces": ["D09s3jrD", "m1omtZHg", "kXRkna6d"], "group": "Q0ducmpz", "roleId": "qjNCa4Wc"}, {"assignNamespaces": ["dovW9Ktv", "tMkHsQp8", "NFxI7H7i"], "group": "VaR71lzV", "roleId": "beAlYuzJ"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'H8mI6N8W' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'WbUxwuvu' \
    --body '{"acsUrl": "ApmrKMnO", "apiKey": "XqpDjVJj", "appId": "ku0BY985", "federationMetadataUrl": "xqcMeQY7", "isActive": true, "redirectUri": "nv7WVucM", "secret": "KdSN6FUp", "ssoUrl": "47mIaPzk"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OZ0dwQVt' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'gvCZUsoM' \
    --body '{"acsUrl": "BLsh4RVs", "apiKey": "uv7ataZP", "appId": "tgkqGBTR", "federationMetadataUrl": "u2YDWmgF", "isActive": false, "redirectUri": "HNaLSJGl", "secret": "bJ8PYdku", "ssoUrl": "DNQNwuWQ"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JtvXDmUt' \
    --rawPID 'false' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["9hAoo4cu", "bb5ewcwx", "omEPmrI7"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eEU1sBGv' \
    --platformUserId 'k6zquKgM' \
    --pidType 'x3nTdXAw' \
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
    --body '{"config": {"minimumAllowedInterval": 14}, "type": "QOaWiOVW"}' \
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
    --identity 'GAME_ADMIN' \
    --body '{"additions": [{"actions": [7, 72, 97], "resource": "VHCGfXBD"}, {"actions": [81, 6, 84], "resource": "b2Z6Y6TJ"}, {"actions": [28, 81, 2], "resource": "2IqF1cCF"}], "exclusions": [{"actions": [32, 79, 7], "resource": "yeihcORb"}, {"actions": [15, 22, 47], "resource": "l9aOCCST"}, {"actions": [88, 63, 86], "resource": "0h5VrCee"}], "overrides": [{"actions": [97, 37, 32], "resource": "MRKRPJQM"}, {"actions": [74, 11, 58], "resource": "lc58Ygcb"}, {"actions": [68, 71, 69], "resource": "dKFy7CmR"}], "replacements": [{"replacement": {"actions": [2, 78, 8], "resource": "6ZpKABVp"}, "target": "EjWBu2X2"}, {"replacement": {"actions": [86, 23, 66], "resource": "ZfTI73Iw"}, "target": "WcNhq0Dy"}, {"replacement": {"actions": [84, 13, 24], "resource": "TEjM8CRv"}, "target": "TrsM2aPO"}]}' \
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
    --roleId 'H94Jocaw' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'TcIgilQL' \
    --after '32' \
    --before '57' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '84' \
    --tagName 'k52i3iNR' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "UAAvyshn"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'jkgjsr2W' \
    --body '{"tagName": "otKCOSiO"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'o8DwWhWs' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '1Vz4NlUW' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["jaycryPR", "Tadr8kPQ", "HP7hAttj"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'nn6wryN1' \
    --body '{"bulkUserId": ["r5NlWro4", "RufyZTPm", "pQ1TSUOV"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["LkshFNmP", "UoyQm01o", "KqAz73KV"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["CiFXrses", "Jcp0aivu", "rqXnW8lZ"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "d3aOFqTe", "userId": "c6tsflr6"}, "fields": ["P0q4gPRB", "qSFSu1zG", "durI16VY"], "limit": 24}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["Gqz3zjjD", "YYcOTl6Y", "qdXVz1o7"], "isAdmin": true, "languageTag": "5KnqrGr0", "namespace": "DIdoDvxg", "roles": ["5l8of5vI", "RQVHlnOS", "1cgnsCa8"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '78' \
    --platformUserId 'xl5IYpAK' \
    --platformId 'm35JRySG' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'cZfVVCfk' \
    --endDate 'xxBDGpI9' \
    --includeTotal 'true' \
    --limit '71' \
    --offset '48' \
    --platformBy 't0ZZUtHx' \
    --platformId 'QLlhH0OU' \
    --query '1B1GGVHk' \
    --roleIds 's4WHXzyN' \
    --selectedFields 'hmsXcLDI' \
    --skipLoginQueue 'false' \
    --startDate 'kogdVHWY' \
    --tagIds 'zPeeXXK9' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["YvTOhmMs", "5chEho6D", "jMGnBuyF"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dwK9Wsct' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7TSIUqj5' \
    --body '{"avatarUrl": "H1AqPd1g", "country": "wWMtfcho", "dateOfBirth": "cqIwraGy", "displayName": "oj5so0L6", "languageTag": "YVVdzbEf", "skipLoginQueue": true, "tags": ["jAgr5spW", "XDlfpfxB", "I88lyZfo"], "uniqueDisplayName": "dYEVnOLr", "userName": "gyU7PoKk"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VYexgFaA' \
    --activeOnly 'false' \
    --after 'MrCNuiW0' \
    --before 'qiMjyEkO' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GJ8N8Bws' \
    --body '{"ban": "rSqGWFy1", "comment": "Yu2HhYpo", "endDate": "U3WFP62u", "reason": "tSahe6mb", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CbvnySmB' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'rOAgVuOH' \
    --namespace $AB_NAMESPACE \
    --userId 'I5F9kMde' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sCotVYWp' \
    --body '{"context": "mNhMb99O", "emailAddress": "AclsDdvU", "languageTag": "e8VpKyfP", "upgradeToken": "jvIeahVA"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'o2pxZKsb' \
    --body '{"Code": "mGwmrnGd", "ContactType": "i1lEFOFp", "LanguageTag": "Ks0dIj9f", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'FGAy1nWR' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SuGZovof' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FCga8Qsq' \
    --body '{"deletionDate": 34, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '3CQFkhCO' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'm7ghgCG3' \
    --body '{"code": "j4RM5gOx", "country": "oP5IIdfh", "dateOfBirth": "gg5zrRqv", "displayName": "Za7UnIuO", "emailAddress": "mbSC0GKe", "password": "pEyKDj58", "uniqueDisplayName": "VL4AvRMH", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OPiOxvZ2' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Cs3TfjHl' \
    --after '0.32364589778628405' \
    --before '0.13021233535637033' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'A9HsOovG' \
    --body '{"languageTag": "os1LN2rS", "mfaToken": "QxXMjRox", "newPassword": "od4jCpjh", "oldPassword": "D9GQSeyH"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AgCjjG0Q' \
    --body '{"Permissions": [{"Action": 43, "Resource": "nlzddYeg", "SchedAction": 25, "SchedCron": "4jzj1N5j", "SchedRange": ["HsTzUA6N", "lfCctUjD", "JfIT2os3"]}, {"Action": 85, "Resource": "MMKeOnE7", "SchedAction": 99, "SchedCron": "XCOrkq4b", "SchedRange": ["Y2T0zBqh", "WLfHJbSa", "IADH5174"]}, {"Action": 87, "Resource": "G0L2l2is", "SchedAction": 54, "SchedCron": "6GJeRqTJ", "SchedRange": ["tbS8yKeS", "uGeeDRDs", "kJpEefPu"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '9OolBUkg' \
    --body '{"Permissions": [{"Action": 49, "Resource": "f6KjSaPX", "SchedAction": 29, "SchedCron": "0PE30Caf", "SchedRange": ["5L3HngQW", "fqM1of6I", "e9oFwTAq"]}, {"Action": 13, "Resource": "dASHlIJF", "SchedAction": 28, "SchedCron": "lsegrU1r", "SchedRange": ["dmeILqMI", "J3IVr20P", "eCUsGPKv"]}, {"Action": 47, "Resource": "kcQdrzvh", "SchedAction": 64, "SchedCron": "DqT3mmyR", "SchedRange": ["DWoCnZU6", "wFQpyqpr", "6qA6DPbu"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mZDlNxrp' \
    --body '[{"Action": 46, "Resource": "GF1ARhDd"}, {"Action": 24, "Resource": "T5VLfGRC"}, {"Action": 8, "Resource": "Gdc75MrU"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '90' \
    --namespace $AB_NAMESPACE \
    --resource 'Hdlb0HZI' \
    --userId '7bnSC1ET' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LGCmDTY5' \
    --after '69G8ZgrB' \
    --before 'kNi7V8Ku' \
    --limit '10' \
    --platformId 'Eo8CwDKS' \
    --targetNamespace 'foAOJs5o' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'N3ZxtI1x' \
    --status 'g6spFkaP' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'BCC6OVeH' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'lmFrGDRy' \
    --userId 'OiG3IR97' \
    --createIfNotFound 'true' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'DhB8Sh4O' \
    --userId '6wI8sa95' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'uNYBsOiO' \
    --skipConflict 'true' \
    --body '{"platformId": "hEP1NAgc", "platformUserId": "mi2enqiq"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'so0hMqD4' \
    --platformId 'yC0eHA18' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tw2MaBUW' \
    --userId 'TUJgmyVm' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'soJyHoby' \
    --userId '0OINroTu' \
    --ticket 'J9Pizt9u' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'e0I359ZP' \
    --userId 'NFwz1YqY' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PN5uZa1r' \
    --userId 'zHKi0P8b' \
    --platformToken 'iHZ3fFG2' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId '29Xrx4in' \
    --userId 'xuoIG30l' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hPp9jtFi' \
    --body '["RUXdzzLu", "D17vEU2l", "osUFH4He"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aONNmv0c' \
    --body '[{"namespace": "40Wdh73K", "roleId": "NHzY1f4O"}, {"namespace": "3oT8wc3w", "roleId": "ZpVfigdq"}, {"namespace": "iQMmebWs", "roleId": "f1MDGaOF"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Nr5ww2IB' \
    --userId 'KZhPInd9' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'QzGQLCnp' \
    --userId 'B4vlPxxE' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SA1BlmUo' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jgLqJWrr' \
    --body '{"enabled": true, "reason": "j2N4zbfx"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'Syh0PHFQ' \
    --body '{"emailAddress": "yJS2ofHk", "password": "WVayrH46"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tGJKJX8G' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'x7MB5c88' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "NlaCtJoZ"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'LOkAdQS4' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'Bwqit8Ul' \
    --before 'vim0DzoI' \
    --isWildcard 'true' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "FI0DjcTt", "namespace": "72ZfpiuM", "userId": "DyM4kDYR"}, {"displayName": "PIVuTHug", "namespace": "fvJexLbm", "userId": "nQDzbn3d"}, {"displayName": "9tyHa5mN", "namespace": "UGjfQorw", "userId": "hwsRNIv4"}], "members": [{"displayName": "xu92heXn", "namespace": "SIiXPp44", "userId": "9xLcqPWK"}, {"displayName": "Ke54ZLNT", "namespace": "7JzkmTYH", "userId": "k2EYQIGJ"}, {"displayName": "5m2uWiFY", "namespace": "lYtzWfbU", "userId": "mLWp7HJl"}], "permissions": [{"action": 12, "resource": "x7EJMNpp", "schedAction": 11, "schedCron": "lUGnBugO", "schedRange": ["ZPXbxSwV", "aGRNstLB", "UImvXYp6"]}, {"action": 55, "resource": "GPrHrQYD", "schedAction": 16, "schedCron": "qUFGAJin", "schedRange": ["bZEkEqvx", "Cr2V38fk", "5IBTrvNB"]}, {"action": 25, "resource": "dQMjwhIk", "schedAction": 100, "schedCron": "ghNDz7vC", "schedRange": ["35CTxhEM", "CuO9ZHHd", "T2JG4de8"]}], "roleName": "KAQJHa9v"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'KT9Wdxwd' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'VZ7v0PAL' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'ofEwS0p9' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "cZA1qzA3"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'piB9Cl3F' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '9KXNyD7H' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '90vkOpAC' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '1cqSAzP3' \
    --after 'l94STlua' \
    --before 'sLIhM8XV' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'f8YlXWDI' \
    --body '{"managers": [{"displayName": "8JmYQRto", "namespace": "yRFpMl92", "userId": "2kPWdJxP"}, {"displayName": "PTuUK481", "namespace": "0fO5SPvh", "userId": "pj6KgWaK"}, {"displayName": "epl32lGd", "namespace": "SwI9fucu", "userId": "mIwidtmq"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'aLPcElfP' \
    --body '{"managers": [{"displayName": "e0zMnQSD", "namespace": "PvSSeW8Q", "userId": "i1JfKqQS"}, {"displayName": "qls0yKpG", "namespace": "ws0VnDAC", "userId": "sdEZQ7rv"}, {"displayName": "5ATpx8Jn", "namespace": "trqr1pJa", "userId": "vM3ulQ2A"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'T8HnfuTR' \
    --after 'R1bBhGZv' \
    --before '9eihyr9F' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'ohLspFuw' \
    --body '{"members": [{"displayName": "t5fCarGL", "namespace": "WsH0xeU7", "userId": "u3KFXgxX"}, {"displayName": "OkAdHn7b", "namespace": "Fwjwncgd", "userId": "MOrokUwS"}, {"displayName": "IGC1QZWU", "namespace": "x2P2ngW1", "userId": "uEIlC7hB"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'wkUWQHFs' \
    --body '{"permissions": [{"action": 23, "resource": "szOUJKdt", "schedAction": 97, "schedCron": "z3TLdXha", "schedRange": ["hRkVjkGn", "4GCPDFhZ", "YMhoXx0v"]}, {"action": 41, "resource": "aqe2iwBB", "schedAction": 50, "schedCron": "3r09OO35", "schedRange": ["LxbQxpYW", "8bk69VS3", "25Rrqh9y"]}, {"action": 65, "resource": "B1ydsoar", "schedAction": 34, "schedCron": "Kio9IQOV", "schedRange": ["WLGWhvOM", "h1WZ4Dgp", "8KjFvsAo"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'kfowL1Np' \
    --body '{"permissions": [{"action": 76, "resource": "BKBUx1wt", "schedAction": 78, "schedCron": "NX6eJBt0", "schedRange": ["loW0aKEO", "LPThqr0t", "W2SOUq9p"]}, {"action": 34, "resource": "hCs73iWX", "schedAction": 20, "schedCron": "xNjdp5He", "schedRange": ["DwJqCalg", "QGmaqhRB", "ASMuf1ED"]}, {"action": 92, "resource": "j412K4sb", "schedAction": 18, "schedCron": "VDK4FaGZ", "schedRange": ["6m4aIn1v", "ZLbRQaRx", "YW6Y6bnK"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'Z8gOEBSP' \
    --body '["KArPctas", "S9MxY4bZ", "eX7hebzp"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '40' \
    --resource 'i1zQLjfI' \
    --roleId 'awOZdQHo' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'mxVsEwGR' \
    --extendExp 'true' \
    --redirectUri 'vNwXFFNd' \
    --password 'uHr1cKLk' \
    --requestId 'vUiVzJVx' \
    --userName 'D9wXpxMY' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'p9lZXdKV' \
    --linkingToken 'tZcKblqv' \
    --password 'RNtpHaWk' \
    --username 'TbnV6iD1' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'itOayNkC' \
    --linkingToken 'cz3LdAw9' \
    --password 'GLdRBNSf' \
    --username 'WOOIBuc7' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'pco2h6d7' \
    --extendExp 'false' \
    --linkingToken 'AknaPL0G' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'aWLK5ZR7' \
    --state 'ceeNdhmJ' \
    --platformId 'RpAAiu0r' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'OIgSE5Pd' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'Oh6nskIx' \
    --isTransient 'false' \
    --clientId 'Unw1CUmo' \
    --oneTimeLinkCode '7ueYb7p8' \
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
    --codeChallenge 'Uu16dEWD' \
    --codeChallengeMethod 'S256' \
    --clientId 'wZBpgsEx' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cQND4sqz' \
    --userId '2BK1PcS1' \
    --platformUserId 'ttEb0d9R' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vR2tdulo' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'MDbq1UJR' \
    --codeChallenge 'w3NMLLEi' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --loginWebBased 'true' \
    --nonce '8nxsCFZL' \
    --oneTimeLinkCode 'jVEU1Wof' \
    --redirectUri 'bsP0SkHn' \
    --scope '0nFaBEZR' \
    --state 'WipKyqwu' \
    --targetAuthPage 'IsKSfSYj' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'nFdr9RcE' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '3dAzKB4U' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '35WS2QSy' \
    --factor 'Ts64lj7o' \
    --mfaToken 'd1WNSU7j' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'EVRdES49' \
    --mfaToken 'DfluLqra' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '0xg7ZwgG' \
    --factor 'IEU1HxM4' \
    --mfaToken 'CjBtSiGB' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor '7RDNIMhe' \
    --factors 'l2SAyJKo' \
    --rememberDevice 'false' \
    --clientId 'oyHLLaX3' \
    --code 'sRlgxNtE' \
    --factor '8lVj2Iwp' \
    --mfaToken '8stWlNSl' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HyWmZhnd' \
    --userId 'BMk40iIT' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'NsZzMThQ' \
    --clientId 'CCaesZpz' \
    --redirectUri 'pOiKo0Kh' \
    --requestId 'ErkFN7ra' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '3XH4MPJM' \
    --additionalData 'zzfcDEZC' \
    --clientId 'dTNiPCo4' \
    --createHeadless 'false' \
    --deviceId 'xOQn3X2U' \
    --macAddress 'QMeBgkM7' \
    --platformToken '4XEgIZ63' \
    --serviceLabel '0.6325917336024856' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'i5TsncRL' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'TDmSA22C' \
    --simultaneousTicket 'o381q8Hj' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'VzivJSpy' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'qeUl1Sev' \
    --clientId 'd1lmtKiT' \
    --clientSecret 'qDFCpShR' \
    --code 'hrE70yxa' \
    --codeVerifier 'oE9FXCmL' \
    --extendNamespace 'ylDoQvfK' \
    --extendExp 'false' \
    --password 'capGfcBS' \
    --redirectUri 'ctUGz54J' \
    --refreshToken 'ijZEcKMa' \
    --scope 'jPkQ9urP' \
    --username 'aX6iC3l3' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'xVUw0QKl' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '500S8gtG' \
    --code 'lwwYBxT8' \
    --error 'L9jIKjRW' \
    --openidAssocHandle 'nVt2dkVT' \
    --openidClaimedId 'GmlozbGR' \
    --openidIdentity '78WYtXmQ' \
    --openidMode 'KY39KwOj' \
    --openidNs 'TzqWUsgA' \
    --openidOpEndpoint 'DomsgF10' \
    --openidResponseNonce 'YaVHxsgl' \
    --openidReturnTo 'Li3UfdZv' \
    --openidSig 'zqjOepzo' \
    --openidSigned 'cZ2IdLK3' \
    --state 'xCe0OC75' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'CWK39ycZ' \
    --platformToken '4H3kgVEi' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'l39Y2ltM' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'urO31xB3' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'jQw7o86Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'OtrmQ0cG' \
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
    --clientId 'o8XvxZM1' \
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
    --requestId 's4PWOLfG' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 't84QWjDA' \
    --limit '10' \
    --offset '94' \
    --platformBy 'po6WGrZo' \
    --platformId 'f5DFM388' \
    --query 'lkPTkU5J' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "5tqlX34C", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "j9HCy95P", "policyId": "CEboLLp1", "policyVersionId": "XnBxRxKB"}, {"isAccepted": false, "localizedPolicyVersionId": "dqg8p3d6", "policyId": "2wLumIN3", "policyVersionId": "FAbNm7yQ"}, {"isAccepted": false, "localizedPolicyVersionId": "bMnhZ3zd", "policyId": "gAi6z11e", "policyVersionId": "er7psYG7"}], "authType": "GLJnikhK", "code": "uFk9IVEF", "country": "dqKeD0GZ", "dateOfBirth": "snqIebty", "displayName": "Mx7n0v69", "emailAddress": "NOgpfJLH", "password": "Jyqbp6o0", "reachMinimumAge": false, "uniqueDisplayName": "i6jualOf"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '24svO7Co' \
    --query '5mjJSPgt' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "7ejcK3vk", "languageTag": "rmcQntwP"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "tNklhOy9", "emailAddress": "gVbUZ9ny"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "8QoPx6kG", "languageTag": "yVD9TQ02"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "TRmwm97T", "password": "xcJv1j91", "uniqueDisplayName": "wjtLXdi6", "username": "f2Re1aJc"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'AImxZgfl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'EEGEzhIs' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "BRCkyRCR", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "pJS7lM2p", "policyId": "FHUtVKSA", "policyVersionId": "Xle3pJil"}, {"isAccepted": true, "localizedPolicyVersionId": "v5kjlawd", "policyId": "1YETFSSz", "policyVersionId": "1c3zH4XO"}, {"isAccepted": false, "localizedPolicyVersionId": "4pY5Des0", "policyId": "BOz3wgOv", "policyVersionId": "IO5lQbUz"}], "authType": "89IbMc6e", "code": "Gef7nIkb", "country": "cX908PBT", "dateOfBirth": "RqD55l7S", "displayName": "tFzkUKWu", "emailAddress": "dK03u72D", "password": "MmQluNqv", "reachMinimumAge": true, "uniqueDisplayName": "Dz7gFB3p"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "hNKO8ktM", "country": "TPaoOHiI", "dateOfBirth": "iFM56ETX", "displayName": "vRwI2xht", "languageTag": "0l3evRZe", "uniqueDisplayName": "x7UPIVx4", "userName": "HJfixBEZ"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "VProfdMc", "country": "3AQI7AS4", "dateOfBirth": "4VUKHI7h", "displayName": "ADBdjI35", "languageTag": "UXHIHFHQ", "uniqueDisplayName": "SaCc6zrK", "userName": "Zk0BDTLg"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "btcU8IzS", "emailAddress": "GxfO7Jx9", "languageTag": "I72UmAEz", "upgradeToken": "nOrYpfSN"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jsEZkRgI", "contactType": "0HZxQpI8", "languageTag": "gEugCUiw", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "BmHwUUai", "country": "EL8Jceju", "dateOfBirth": "i4y43uxf", "displayName": "DB2B3jPo", "emailAddress": "8mFkYzwB", "password": "jczuMF3u", "uniqueDisplayName": "iPRpEKBx", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "8VbEOp7s", "password": "Y3X3KRGd"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "Piw4U12E", "mfaToken": "vhmEBRaq", "newPassword": "D1FJSXmp", "oldPassword": "uIVDGSPW"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'L2RH9mnB' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hz1uKacL' \
    --redirectUri '0mIFrkc2' \
    --ticket 'txdxNheM' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FhsgnwSm' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '51GkAsli' \
    --ticket '2yVdpA1o' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'ubNKx150' \
    --clientId 'W7sblri2' \
    --redirectUri 'cFJHGTHv' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'hZs4wdN5' \
    --code 'txk2vmiV' \
    --state 'P1NkYmp3' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MvpcrYXA' \
    --code 'y7nGuTJ0' \
    --state 'WtJe2lVZ' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "i4CFnf8w", "userIds": ["QMFuij0g", "wMqcSpcN", "V8BhvbRF"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "IJuaEgJq", "code": "HXS44DOa", "emailAddress": "uCiXTK6S", "languageTag": "XW11vtvt", "newPassword": "67UIKWKT"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ys7NK3pT' \
    --activeOnly 'false' \
    --after '83SHfZWp' \
    --before 'uultlrUQ' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '7krFCFDj' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sWlWMLjp' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tUerPzHA' \
    --after '0.596403581123799' \
    --before '0.7979666489306629' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CeUecWhA' \
    --after 'd7ZttWrp' \
    --before 'UWH5bc47' \
    --limit '89' \
    --platformId 'Xo2QL5BJ' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vbZ3xO7q' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'Y5ZsA9F2' \
    --body '{"platformId": "Aviwg5Vc", "platformUserId": "vacnUKJr"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Ib7YvjK6' \
    --body '{"chosenNamespaces": ["bL5WZXQt", "ZuOYpgy9", "U8LWVYRZ"], "requestId": "k7p2AawM"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'm7sIIy0E' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AflkHtXv' \
    --password 'OoNJl38I' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'bqF4MC0Q' \
    --before 'ddLpY5oP' \
    --isWildcard 'true' \
    --limit '65' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '0ouOuHSu' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "9EpHByXL", "emailAddress": "yf8cbtST", "languageTag": "Lvj6rZZH"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "WBfQavf9", "emailAddress": "XvVU8cUf", "languageTag": "nQ14XRlA", "upgradeToken": "877SD0Bv"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'tYhSxEt7' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["l8aXLLZU", "D8bfazSq", "mTjLtAt6"], "oneTimeLinkCode": "J6454jE0"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'Drg2L26I' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "yhfC6pkQ"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'B4m1cUJe' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'Jr0jDiLo' \
    --code 'AZClSaIT' \
    --error 'jKyBh4E9' \
    --state 'przrDs51' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'tLJBgDSp' \
    --payload 'TWWLFvWZ' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'SMsgLTJG' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'h6oMfiG5' \
    --code '5Nko6NxL' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'lfWIcQ3y' \
    --upgradeSuccessToken 'AG41iPBj' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '4' \
    --namespace 'lIi0V21B' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'X7Mh2SVQ' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'UcbcYfj5' \
    --endDate 'BxA4zcbW' \
    --limit '76' \
    --offset '50' \
    --startDate '01KKILN1' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bq5oD5mS' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "bFTBk2Z3", "deviceId": "RYIjH06L", "deviceType": "ScBDHbTX", "enabled": true, "endDate": "GeAzePCu", "ext": {"o4V1XDxU": {}, "AJs2ppy8": {}, "UYNANy1k": {}}, "reason": "A3PzlK3C"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '67jxNCZq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'iTyb09Mo' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '2X2QfV1z' \
    --startDate 'bOjkYMQN' \
    --deviceType 'o6Q4ujm7' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'ae0n7EUI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'C0Gn6rVr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'hxeS6xFh' \
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
    --limit '100' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "IKXNIbwb", "policyId": "uYeBsGnL", "policyVersionId": "hWos76iW"}, {"isAccepted": true, "localizedPolicyVersionId": "tE0w2OBA", "policyId": "pzFrx0Xx", "policyVersionId": "IdslUa8A"}, {"isAccepted": false, "localizedPolicyVersionId": "L6qjQGFH", "policyId": "UMQCmm56", "policyVersionId": "GMubZQUw"}], "count": 33, "userInfo": {"country": "EQLQmGDV"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "yapPV6T5", "policyId": "abzT3rCE", "policyVersionId": "1d7Ur2LP"}, {"isAccepted": false, "localizedPolicyVersionId": "iQQqoZcZ", "policyId": "encW1FDu", "policyVersionId": "PjGcxREl"}, {"isAccepted": false, "localizedPolicyVersionId": "GvTGJUTr", "policyId": "Fmzm6egp", "policyVersionId": "CwJ7oyFQ"}], "authType": "EMAILPASSWD", "code": "znIG1WOA", "country": "EkvB32Ho", "dateOfBirth": "h8AETXtv", "displayName": "714uxAky", "emailAddress": "2sCa3gxN", "password": "Ztck7Gfg", "passwordMD5Sum": "lNiGQPTr", "reachMinimumAge": false, "uniqueDisplayName": "bTnOvfBa", "username": "owQaG9q2"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["I8xPKaEs", "4uFO7t6C", "ArjD9E8x"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["K71tpXcT", "YsE1mAUJ", "q7sqhIVV"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'KGpgxQ9o' \
    --body '{"avatarUrl": "bgnAy9M6", "country": "3Kv4eTVa", "dateOfBirth": "kJqeTt1y", "displayName": "iGnBEUPj", "languageTag": "uRpeGHxt", "skipLoginQueue": true, "tags": ["3vRS2Pbt", "svRsAqvd", "HLITxPO4"], "uniqueDisplayName": "KQRQLUBv", "userName": "yraks2AR"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hahYMsDM' \
    --body '{"code": "GmFrsoQ6", "emailAddress": "YxCw6vW4"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NscBuCVP' \
    --body '{"factor": "QTOqk4k8", "mfaToken": "7WjwcEmK"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JWQX09kT' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'VbVhEq5B' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'S0biJ9bk' \
    --body '{"assignedNamespaces": ["enRrggzt", "Y5OFe3a7", "lQ7oICDu"], "roleId": "WKavbi8G"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Vz6z7TUg' \
    --body '{"assignedNamespaces": ["lQuTtsmy", "up3WrPAv", "8Dy7Ee9F"], "roleId": "1M5vtHUG"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UA2hpJsQ' \
    --body '{"assignedNamespaces": ["CxYooY01", "saNXix3S", "3AZ6atGI"], "roleId": "NMPX2jgx"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '14' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "B4rlpoQe"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'rJCviBPi' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '1BkSkfTk' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'E423RGc3' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "gr22yea0"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'O2Aqva4Y' \
    --body '{"permissions": [{"action": 2, "resource": "pJbSSdVi", "schedAction": 61, "schedCron": "Nmqz4c8G", "schedRange": ["JVdRfL31", "4mh6XsQ5", "hi58wLde"]}, {"action": 18, "resource": "ipiNwAvx", "schedAction": 41, "schedCron": "wLRnK9EV", "schedRange": ["EGgx19Vs", "v3L61V75", "XUFmx4Ks"]}, {"action": 98, "resource": "gLxO0wJj", "schedAction": 10, "schedCron": "vR4NRCyC", "schedRange": ["zHNkfFCw", "F2vOu8j7", "desKU40f"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'oQ3talsl' \
    --body '{"permissions": [{"action": 80, "resource": "RYWnSucq", "schedAction": 21, "schedCron": "o7beYNJc", "schedRange": ["Zw5tAa6j", "MQraEFDP", "47eGnXEQ"]}, {"action": 97, "resource": "21qlrW2F", "schedAction": 47, "schedCron": "iqs2YBWa", "schedRange": ["00tlcUgo", "EtQTprDM", "ppDEUCIi"]}, {"action": 47, "resource": "PvDB9y2c", "schedAction": 39, "schedCron": "Sh2iES5m", "schedRange": ["FKR4MebG", "5exolvQl", "qpLmyikB"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'gUrg6fqy' \
    --body '["0sygZtfO", "iMQNvWr5", "yfKxDZLr"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'k8kYHvT3' \
    --after '986zPrTF' \
    --before 'W6Um5kDo' \
    --limit '85' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'fugSezJL' \
    --body '{"assignedNamespaces": ["571cgJsT", "ppT6rwDZ", "Hku3cwKt"], "namespace": "fMthiziX", "userId": "hDLxlSeG"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'NtFlBVr9' \
    --body '{"namespace": "cg01m2Vu", "userId": "XP6SJeQw"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["4RoVibG8", "2hOIhR0c", "H3fptC2u"], "emailAddresses": ["stAmikbs", "xUZZcRql", "n82lDPFx"], "isAdmin": false, "isNewStudio": true, "languageTag": "MKv4qet6", "namespace": "cXdnB4L6", "roleId": "fxO0www7"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "8WONpAsg", "country": "oXkmo29Q", "dateOfBirth": "HeYYVKez", "displayName": "djLpSKRH", "languageTag": "XsrLWKV8", "skipLoginQueue": false, "tags": ["k8xs3Npg", "BOcapgdE", "frYVPite"], "uniqueDisplayName": "qkiJbM7o", "userName": "WrgEQ9nC"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "mCgdAAdP", "mfaToken": "zfH90F7B"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'Gd9VBw2S' \
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
    --body '{"factor": "PFjQkRj7", "mfaToken": "mNcEx4qt"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag '9wyBI1MK' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'nL7CfH8m' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'm13cVmgO' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'yBIzdht0' \
    --factor 'yCFBhrpk' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action '4yPzA6Pd' \
    --languageTag 'pmf0yCI1' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "DXFpvoKW", "mfaToken": "TFJovsY3"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'zmXLACUe' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '4cgOEpLx' \
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
    --clientId 'mgaKfMtY' \
    --linkingToken 'tjxO6xRz' \
    --password '0ib9LJ87' \
    --username '4t6D6Kcf' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'XkswrASu' \
    --extendExp 'false' \
    --linkingToken 'AJZ7JypS' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'rbEqsik8' \
    --factor 'er4sKkm2' \
    --mfaToken '9lELJTTb' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'nYOfGCgg' \
    --codeChallenge 'tjLsklIk' \
    --codeChallengeMethod 'plain' \
    --additionalData 'w3ckldC1' \
    --clientId 'Bdk7P8GV' \
    --createHeadless 'false' \
    --deviceId 'pCaKzgiV' \
    --macAddress '9BHKn84t' \
    --platformToken 'IAfLGETE' \
    --serviceLabel '0.30830622655259976' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'LVjE44GP' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'IXdAgqZZ' \
    --simultaneousTicket 'kUmcJOry' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'bsEtWem9' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'yOFnbulq' \
    --codeChallengeMethod 'S256' \
    --additionalData 'RFf40R9v' \
    --clientId '83Sq8A7J' \
    --clientSecret 'hMOBjkuW' \
    --code 'C1E6F8SZ' \
    --codeVerifier 'DTIFnk6D' \
    --extendNamespace 'K1UIAwDM' \
    --extendExp 'false' \
    --loginQueueTicket 'MVjPvAqP' \
    --password 'kDfNkAzM' \
    --redirectUri '7pUOd2E6' \
    --refreshToken 'ed7DykMG' \
    --scope 'MvyLQTN6' \
    --username 'gQe8pGY5' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'wkA6b0dH' \
    --code 'cG6WyqVA' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'QxO0sECw' \
    --rawPUID 'true' \
    --body '{"pidType": "J13zgSB9", "platformUserIds": ["sYxiZylf", "2RBf7WtG", "GWWxlShJ"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'iSI3iR9s' \
    --platformUserId 'UxB48pLg' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "BurUTLvF", "policyId": "1eT5VeSx", "policyVersionId": "O4rHK2a6"}, {"isAccepted": true, "localizedPolicyVersionId": "QoiL5ReK", "policyId": "EZWoMA83", "policyVersionId": "ZaHkVDV4"}, {"isAccepted": false, "localizedPolicyVersionId": "9g2BurVP", "policyId": "qoWoyUMP", "policyVersionId": "E3Sa4Gc8"}], "authType": "EMAILPASSWD", "country": "PeceeUoT", "dateOfBirth": "ZZo4cgm5", "displayName": "j6vY8p3c", "emailAddress": "S97p8AGx", "password": "Je4uMLPI", "passwordMD5Sum": "mddFFK7G", "uniqueDisplayName": "z6wjkeOg", "username": "E9SBc8GS", "verified": true}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ihJyy9UY", "policyId": "SyAwMke3", "policyVersionId": "XrX5hkmb"}, {"isAccepted": false, "localizedPolicyVersionId": "trGgtRCT", "policyId": "x2NnNHLC", "policyVersionId": "gHUJ5ail"}, {"isAccepted": false, "localizedPolicyVersionId": "QQ4gnAHY", "policyId": "sVLmsd82", "policyVersionId": "pAoOxbOh"}], "authType": "EMAILPASSWD", "code": "eBVd5Lcj", "country": "IFKEELex", "dateOfBirth": "0zOAjwby", "displayName": "VrFtGads", "emailAddress": "wB52zFtK", "password": "8EGWGgo9", "passwordMD5Sum": "8nW6wmrX", "reachMinimumAge": false, "uniqueDisplayName": "vwSWozs5", "username": "ELTqz0pM"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'w2MKPOKc' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "MNeknfc6", "policyId": "QBN36ZlI", "policyVersionId": "SHybrzBK"}, {"isAccepted": false, "localizedPolicyVersionId": "LcaVY2Np", "policyId": "1fq4Nhfj", "policyVersionId": "xsij3GtL"}, {"isAccepted": true, "localizedPolicyVersionId": "GoEqsSO9", "policyId": "597OWkqk", "policyVersionId": "trhJjWDd"}], "authType": "EMAILPASSWD", "code": "p13e2piK", "country": "LnZU9QDI", "dateOfBirth": "Xp9EhlXA", "displayName": "JHDRiEr9", "emailAddress": "WvIOfdk8", "password": "IRrhJvy9", "passwordMD5Sum": "U4coONci", "reachMinimumAge": false, "uniqueDisplayName": "IN0X7GCn", "username": "rOa5cR5C"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "ZK0kQ5vW", "country": "ToNN20sw", "dateOfBirth": "30HlFlEg", "displayName": "qx2yVKUB", "languageTag": "N3f9WhFQ", "uniqueDisplayName": "IRlPbGxT", "userName": "a2emQtBn"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8Ek01hL0", "emailAddress": "5nq1LHF9"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "wJ9gpbPp", "country": "qUopHCT3", "dateOfBirth": "DeDycDCg", "displayName": "bAyGzvIO", "emailAddress": "PrDJ8VZv", "password": "nAdtY1Ke", "reachMinimumAge": true, "uniqueDisplayName": "WV8VJURu", "username": "ULBtbWpx", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "XdkD3Nom", "displayName": "fOpWw564", "emailAddress": "2s2AyUh2", "password": "EjRx3hjk", "uniqueDisplayName": "rE1J1wBF", "username": "1m2V5vwW"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "XJa5DqkG", "mfaToken": "uhgI2EUK"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'gd8LqISU' \
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
    --body '{"factor": "0OGkOLAu", "mfaToken": "uIsGusK7"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '41Czjaaw' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'wkGsMIVP' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'C1HIjbL0' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'x86B1H7U' \
    --factor 'ABLRdr2B' \
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
    --action 'iqogx3TH' \
    --languageTag 'Gkbu9FLA' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "JEPY9W9g", "mfaToken": "hsTn7EyK"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'f4aICbE4' \
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
    --factor '4V0rl9lK' \
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
    --userId '6xZtC18r' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "pyzuNKKd", "emailAddress": "BvMmJ7JZ", "languageTag": "hfy7bbHL", "namespace": "YiyKodmk", "namespaceDisplayName": "GJSQyYrN"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "jWTovpRo", "policyId": "1dPyLHJO", "policyVersionId": "VFAlZ8JW"}, {"isAccepted": false, "localizedPolicyVersionId": "EbLf2tE2", "policyId": "MkMFkibe", "policyVersionId": "a3TPSAID"}, {"isAccepted": true, "localizedPolicyVersionId": "fUbnp9kf", "policyId": "1z1ql0T7", "policyVersionId": "OrmEEg7j"}], "code": "FdivXMrs", "country": "veqc4ObA", "dateOfBirth": "B41Gbk3C", "displayName": "osEkOiOU", "emailAddress": "yEufznN8", "password": "4QHxT7GG", "reachMinimumAge": true, "uniqueDisplayName": "6nvnV51K", "username": "2Ra2MJ34", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE