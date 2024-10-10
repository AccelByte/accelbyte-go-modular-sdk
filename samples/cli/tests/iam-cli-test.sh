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
echo "1..418"

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
    --body '{"modules": [{"docLink": "cLVRb2Zm", "groups": [{"group": "6qgq1jh6", "groupId": "GW1qnuG1", "permissions": [{"allowedActions": [78, 73, 40], "resource": "T9EhDk6h"}, {"allowedActions": [21, 93, 73], "resource": "WxnI7Apv"}, {"allowedActions": [96, 43, 75], "resource": "tSD7oieu"}]}, {"group": "QG6Vo3Tn", "groupId": "cvxEvjU8", "permissions": [{"allowedActions": [86, 23, 76], "resource": "RCOB2Ytk"}, {"allowedActions": [19, 74, 58], "resource": "GSAMJyxv"}, {"allowedActions": [84, 20, 26], "resource": "0jqiDWmF"}]}, {"group": "kNYBZMeB", "groupId": "ijlDThg2", "permissions": [{"allowedActions": [89, 37, 89], "resource": "PZGOj2eT"}, {"allowedActions": [77, 47, 44], "resource": "CpeiODuO"}, {"allowedActions": [39, 1, 84], "resource": "dRwZJwrn"}]}], "module": "InpHCBAO", "moduleId": "LImAeEZn"}, {"docLink": "zz1xo5RC", "groups": [{"group": "izai8984", "groupId": "9acxPAUr", "permissions": [{"allowedActions": [80, 23, 7], "resource": "4AGMYRrN"}, {"allowedActions": [68, 66, 97], "resource": "JsRVcwdV"}, {"allowedActions": [56, 57, 54], "resource": "eQw07jtx"}]}, {"group": "wBfSE9De", "groupId": "aJhT7nje", "permissions": [{"allowedActions": [97, 56, 71], "resource": "NiCuJVyO"}, {"allowedActions": [8, 76, 64], "resource": "1KOeCz9f"}, {"allowedActions": [82, 8, 3], "resource": "dgzxcSlb"}]}, {"group": "rTgCUSmF", "groupId": "KOQvFnDW", "permissions": [{"allowedActions": [88, 99, 27], "resource": "pID2wS7d"}, {"allowedActions": [27, 50, 66], "resource": "GsNHR1rc"}, {"allowedActions": [98, 67, 58], "resource": "ulB73T2I"}]}], "module": "ypACluEs", "moduleId": "ag5hnEGs"}, {"docLink": "IkcjnQxt", "groups": [{"group": "3vwPvDWO", "groupId": "2ZfoJj8Z", "permissions": [{"allowedActions": [9, 78, 45], "resource": "8wzI7bho"}, {"allowedActions": [56, 16, 32], "resource": "CunMEWsn"}, {"allowedActions": [81, 39, 56], "resource": "j6qnBeeD"}]}, {"group": "9reDTEAV", "groupId": "Mcihwvsp", "permissions": [{"allowedActions": [73, 30, 6], "resource": "VhJB2CSY"}, {"allowedActions": [69, 52, 18], "resource": "uu5HPruY"}, {"allowedActions": [80, 87, 3], "resource": "9EfaTvaS"}]}, {"group": "97wUsgQa", "groupId": "Nzlzxgxs", "permissions": [{"allowedActions": [100, 53, 62], "resource": "Sz2ktM8F"}, {"allowedActions": [13, 68, 55], "resource": "E7efMEfn"}, {"allowedActions": [27, 58, 93], "resource": "NqsguqPv"}]}], "module": "6Zoai9J8", "moduleId": "lNkqGqln"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "4nRHZh7x", "moduleId": "AgQfOmfW"}' \
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
    --body '[{"field": "aVJ2TKQ7", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["pmqU9nz8", "xDkMmQ3h", "M3XNYBGm"], "preferRegex": false, "regex": "cv0GvJK8"}, "blockedWord": ["rNwQbRlh", "2aYSLWnI", "XuvYCfwI"], "description": [{"language": "alJ35hEr", "message": ["kx8Mvd9v", "EQm0Os4T", "nyWeAJ52"]}, {"language": "A2eEgNQh", "message": ["QMevIe5K", "EokhdR48", "vl43RVyq"]}, {"language": "5NrB6M8C", "message": ["1vDQL3t3", "2k8PuKAE", "nS5om1aj"]}], "isCustomRegex": true, "letterCase": "008qKXx3", "maxLength": 80, "maxRepeatingAlphaNum": 49, "maxRepeatingSpecialCharacter": 15, "minCharType": 27, "minLength": 48, "profanityFilter": "rjiI5db1", "regex": "xITXPE40", "specialCharacterLocation": "R58UemNM", "specialCharacters": ["lO0oqlPi", "p6WgmnxC", "Wi1I7z94"]}}, {"field": "n8OCYkZZ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["Jo3bSlw5", "7CJsQvFJ", "lqKnj188"], "preferRegex": true, "regex": "8jxYbJNd"}, "blockedWord": ["SIXHv1g2", "6rqHtxM1", "uvsJC9n6"], "description": [{"language": "TOht6akX", "message": ["uxvlUFSK", "feSTgjBj", "axWQypMa"]}, {"language": "nImvyLPi", "message": ["g628IOWv", "mI1uZaaX", "lU2Hmq8R"]}, {"language": "9SW74M05", "message": ["wbhTLXdp", "LDMmO0x7", "mUjkL8s4"]}], "isCustomRegex": false, "letterCase": "Q4VNyqwe", "maxLength": 90, "maxRepeatingAlphaNum": 91, "maxRepeatingSpecialCharacter": 84, "minCharType": 71, "minLength": 50, "profanityFilter": "ipRBkKwg", "regex": "szYOLtiZ", "specialCharacterLocation": "VFzBWnes", "specialCharacters": ["Ptppc8Vs", "7tyQjgXZ", "Ess2cgUA"]}}, {"field": "jjehzEUq", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["PQ9uQFIH", "Dv6ODX84", "RAXMsDWM"], "preferRegex": true, "regex": "8TKiKirW"}, "blockedWord": ["XrXBm5H8", "SrVv1rBT", "xHn4qr4A"], "description": [{"language": "nDwT6vOm", "message": ["zNudfhhn", "SplbXT65", "EGkggXuC"]}, {"language": "mk2X2MBd", "message": ["8CHJu6uh", "obrM6avk", "AG1EmRKi"]}, {"language": "fl7439wf", "message": ["jqFOZob4", "F2lcTIjN", "mpTrVQcm"]}], "isCustomRegex": true, "letterCase": "mDZ70QZl", "maxLength": 82, "maxRepeatingAlphaNum": 96, "maxRepeatingSpecialCharacter": 32, "minCharType": 26, "minLength": 12, "profanityFilter": "pp9zqzAv", "regex": "mjHw3Mfr", "specialCharacterLocation": "zLwgJZ7d", "specialCharacters": ["EGfXKZLH", "nq5yBz16", "lfu42SLX"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'oXmWO540' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'fh3HkVS1' \
    --before 'dlEmBrG0' \
    --endDate 'WpUwN7N1' \
    --limit '56' \
    --query 'sViiOncX' \
    --roleId 'LYsFA1Ao' \
    --startDate 'YFlglvCQ' \
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
    --body '{"ageRestriction": 41, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'VWjP7szW' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 66}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'BuiPHPUE' \
    --limit '79' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "CJRZZ89k", "comment": "CniXtKdj", "endDate": "Efes5Zh2", "reason": "mD2tG69g", "skipNotif": false, "userIds": ["T6U9tCSi", "V82D06J7", "gLRrZ3Au"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "6TGkNyxJ", "userId": "MQGxGFYi"}, {"banId": "IU7ZsBW8", "userId": "wpb3RFdI"}, {"banId": "3hM8N4Mb", "userId": "Bso1cFdN"}]}' \
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
    --clientId 't6eNnKzw' \
    --clientName 'kK7jkWc9' \
    --clientType 'PhX5f9uw' \
    --limit '46' \
    --offset '91' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["90QvsMH8", "qiWzEUwx", "Hzl4IoVB"], "clientUpdateRequest": {"audiences": ["LR9y3y8r", "fbVmm5vb", "I8knh0XW"], "baseUri": "8eVMhXhy", "clientName": "KoCpWFnp", "clientPermissions": [{"action": 67, "resource": "YkykKHVp", "schedAction": 9, "schedCron": "7fT6d4Kc", "schedRange": ["5Lb75HxO", "CGRmui6L", "zTU5th70"]}, {"action": 51, "resource": "Og1KYj04", "schedAction": 93, "schedCron": "yvci0ADy", "schedRange": ["ZFcw202v", "7h2SXOaX", "cVHKATqg"]}, {"action": 42, "resource": "9O3Mw7lO", "schedAction": 4, "schedCron": "BaSvgCJx", "schedRange": ["vNE5u3kg", "MFcjquOk", "hxFH46El"]}], "clientPlatform": "ZdaQAfEV", "deletable": false, "description": "pYSGG7as", "modulePermissions": [{"moduleId": "fHkw0jz3", "selectedGroups": [{"groupId": "X52RWVGs", "selectedActions": [34, 27, 74]}, {"groupId": "LfmjSjID", "selectedActions": [70, 52, 46]}, {"groupId": "aiLMCoCX", "selectedActions": [23, 30, 19]}]}, {"moduleId": "RtOGkXoE", "selectedGroups": [{"groupId": "r4qMaB0T", "selectedActions": [16, 89, 14]}, {"groupId": "TeO1ISo4", "selectedActions": [1, 19, 95]}, {"groupId": "A3NaJor5", "selectedActions": [56, 1, 25]}]}, {"moduleId": "ZgsMFatl", "selectedGroups": [{"groupId": "rdS3Izi0", "selectedActions": [61, 22, 27]}, {"groupId": "MXu2U7O1", "selectedActions": [74, 17, 32]}, {"groupId": "AsUd77j5", "selectedActions": [89, 37, 25]}]}], "namespace": "RFBsuY1x", "oauthAccessTokenExpiration": 91, "oauthAccessTokenExpirationTimeUnit": "mwXko8dn", "oauthRefreshTokenExpiration": 65, "oauthRefreshTokenExpirationTimeUnit": "qvptNAFT", "redirectUri": "avWX9OSI", "scopes": ["AAn2mg8T", "NLT7KatM", "hBhFgIKO"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["B1Uumlwc", "pvRQ49sV", "S4XbWCLV"], "baseUri": "3vGpq8wk", "clientId": "dBHcvwcR", "clientName": "PcV8VBHM", "clientPermissions": [{"action": 47, "resource": "n6fifxsP", "schedAction": 73, "schedCron": "zO7mKuVw", "schedRange": ["QqNtwsjX", "eFZW2sKJ", "EtTGyzVL"]}, {"action": 77, "resource": "xTN2iX81", "schedAction": 10, "schedCron": "PMzCiwey", "schedRange": ["5RmHyR3Y", "xzxJGsvp", "JLCOy2OU"]}, {"action": 50, "resource": "wLLdo5No", "schedAction": 58, "schedCron": "vMCo2LHN", "schedRange": ["tfzNqiQZ", "dLAS98iA", "IePXekqi"]}], "clientPlatform": "rBMAslIJ", "deletable": false, "description": "wUZKkGkp", "modulePermissions": [{"moduleId": "MUFrJomt", "selectedGroups": [{"groupId": "7VQlmNrK", "selectedActions": [57, 83, 71]}, {"groupId": "O5JSc4zj", "selectedActions": [60, 98, 15]}, {"groupId": "qtCgC4Jc", "selectedActions": [48, 41, 63]}]}, {"moduleId": "WuR9zKdj", "selectedGroups": [{"groupId": "bGjpJXSX", "selectedActions": [82, 3, 3]}, {"groupId": "t5P1Udbt", "selectedActions": [49, 73, 99]}, {"groupId": "s7ONINnN", "selectedActions": [77, 34, 52]}]}, {"moduleId": "E2PRUp1y", "selectedGroups": [{"groupId": "mmTNLfsh", "selectedActions": [58, 1, 15]}, {"groupId": "MqdFUELI", "selectedActions": [7, 85, 49]}, {"groupId": "NuUqE6l1", "selectedActions": [39, 36, 89]}]}], "namespace": "yEk3wZzA", "oauthAccessTokenExpiration": 1, "oauthAccessTokenExpirationTimeUnit": "OQa7W2IG", "oauthClientType": "sA8TkytJ", "oauthRefreshTokenExpiration": 37, "oauthRefreshTokenExpirationTimeUnit": "vssKlUh9", "parentNamespace": "hFkGTvF9", "redirectUri": "nbNIW9aL", "scopes": ["6zxkRsJY", "9GrIiLEt", "uD6wDpbZ"], "secret": "B9Vv3UQU", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'cZy2Kiyo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'sNRSYwll' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'vx6CbZcf' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["NcqM6HWi", "ggOB2YUJ", "VXV4UHNR"], "baseUri": "hd8eNC7v", "clientName": "v9P1EwKT", "clientPermissions": [{"action": 18, "resource": "vYr6SrU6", "schedAction": 37, "schedCron": "kiKenAA8", "schedRange": ["hgAPIPtp", "zHZOzUfa", "85xNTrlP"]}, {"action": 69, "resource": "I3vef3hQ", "schedAction": 74, "schedCron": "4xkl9Up9", "schedRange": ["Y9eyh2Ow", "wQ55CzK4", "WG7c38h8"]}, {"action": 28, "resource": "u8b6cQPG", "schedAction": 5, "schedCron": "AL15TvbC", "schedRange": ["ymqWMVKi", "78NGyVAx", "YavcTLhA"]}], "clientPlatform": "ktxXXR0b", "deletable": true, "description": "lFAcbNOp", "modulePermissions": [{"moduleId": "1zz7QzHG", "selectedGroups": [{"groupId": "wctZJmW6", "selectedActions": [88, 49, 78]}, {"groupId": "tXkweo3U", "selectedActions": [20, 90, 8]}, {"groupId": "XLbauq6w", "selectedActions": [16, 65, 6]}]}, {"moduleId": "wUTknvzQ", "selectedGroups": [{"groupId": "vBjw27RI", "selectedActions": [85, 82, 40]}, {"groupId": "MuLjdrZ7", "selectedActions": [94, 51, 19]}, {"groupId": "s6nf7HQp", "selectedActions": [36, 92, 6]}]}, {"moduleId": "P42G53fq", "selectedGroups": [{"groupId": "AHEczeov", "selectedActions": [26, 40, 50]}, {"groupId": "YQK6PwLF", "selectedActions": [19, 26, 33]}, {"groupId": "nLsOWQRX", "selectedActions": [100, 70, 65]}]}], "namespace": "x97wVLme", "oauthAccessTokenExpiration": 43, "oauthAccessTokenExpirationTimeUnit": "onfsbmKd", "oauthRefreshTokenExpiration": 93, "oauthRefreshTokenExpirationTimeUnit": "wJucnmxV", "redirectUri": "d5c3Ur4S", "scopes": ["gCwB7EDz", "9Tb74EC4", "iLkbBxXe"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'YKUX5En4' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 3, "resource": "XyLxuxqc"}, {"action": 5, "resource": "qENVXwCW"}, {"action": 85, "resource": "CEe8CFCt"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '7e0Sfs9c' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 54, "resource": "B5QIGSQh"}, {"action": 13, "resource": "FPtAkLE7"}, {"action": 69, "resource": "LMokYqSU"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '83' \
    --clientId 'CdlEawzQ' \
    --namespace $AB_NAMESPACE \
    --resource 'DKwUk6JM' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'OwTYLTzH' \
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
    --body '{"blacklist": ["Dj1TFAxH", "9WPnoC7c", "dRFEEJKY"]}' \
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
    --body '{"active": false, "roleIds": ["mm8hs3c7", "hTzSo0bf", "BVIzhQ5c"]}' \
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
    --limit '87' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9eIJXzHy' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HujsMety' \
    --body '{"ACSURL": "zPaN0xzC", "AWSCognitoRegion": "0wjqvp2E", "AWSCognitoUserPool": "4zyJo5Hc", "AllowedClients": ["pCNmAQ5G", "AjXcVCsr", "DjBZtxis"], "AppId": "CaKx8FBK", "AuthorizationEndpoint": "jEg8cxZA", "ClientId": "t8wof9VV", "EmptyStrFieldList": ["JgwSPycC", "vMqvxWkN", "dVdKL0Fk"], "EnableServerLicenseValidation": true, "Environment": "n5w693FU", "FederationMetadataURL": "eAzl4uPn", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "uvN1okzk", "JWKSEndpoint": "WuuyRDY7", "KeyID": "dyTZOUcn", "LogoURL": "1dddqmnJ", "NetflixCertificates": {"encryptedPrivateKey": "UG7C1uQ3", "encryptedPrivateKeyName": "seGY8DUr", "publicCertificate": "sPp92cOH", "publicCertificateName": "RR4Ni3Dw", "rootCertificate": "JkAgFPOH", "rootCertificateName": "2w6GgbzZ"}, "OrganizationId": "DLgA6f4H", "PlatformName": "p0gLiT0H", "RedirectUri": "InmmS0PB", "RegisteredDomains": [{"affectedClientIDs": ["bHGmham2", "oYgKYUmu", "lbzvQfxs"], "domain": "ByFRCucv", "namespaces": ["lJeq9Ppl", "wbgPp8KD", "Btk8Em6C"], "roleId": "5UgO806y"}, {"affectedClientIDs": ["WZAWpKbZ", "Uf06T4CX", "i8qVk62b"], "domain": "L2dJxweO", "namespaces": ["LTSmyiiI", "UFJhjedp", "s6CxUplg"], "roleId": "fRX6gxRV"}, {"affectedClientIDs": ["MUilxbvi", "QWWrXp68", "80fpv4aM"], "domain": "aj8EDQfE", "namespaces": ["X3WoECPU", "H16E0oxe", "YcPtz2D4"], "roleId": "UgYRu4QY"}], "Secret": "WO6go01M", "TeamID": "7wz968pi", "TokenAuthenticationType": "Gyq6kzjp", "TokenClaimsMapping": {"uSLUJKAv": "kImvbRsM", "wwbHApOJ": "Hvj2815x", "XBP5kDKW": "HeOSYgo0"}, "TokenEndpoint": "g9IalE2l", "UserInfoEndpoint": "7oNzAams", "UserInfoHTTPMethod": "eovlSMd0", "scopes": ["eeb9Ddwz", "fr0UiRnI", "EwA1jTNc"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'I6KerrCQ' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'absXA2dK' \
    --body '{"ACSURL": "RZJA4y2n", "AWSCognitoRegion": "tW2vPTUO", "AWSCognitoUserPool": "JGAHmdpv", "AllowedClients": ["MBkYqY5R", "9FTpPNgq", "BqMrfm8C"], "AppId": "FNxl8QOP", "AuthorizationEndpoint": "gpvKC3s7", "ClientId": "REisTsY5", "EmptyStrFieldList": ["5Kct8GTE", "Um8JEgv5", "ZHFYupaC"], "EnableServerLicenseValidation": true, "Environment": "dBigzXbL", "FederationMetadataURL": "0Fl74lOU", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "TS9uZD15", "JWKSEndpoint": "xdfUeL60", "KeyID": "wJ4mujAF", "LogoURL": "EPwmsduo", "NetflixCertificates": {"encryptedPrivateKey": "1gEqdt8n", "encryptedPrivateKeyName": "MhrYgx6i", "publicCertificate": "n2LaT41v", "publicCertificateName": "f4H3iTij", "rootCertificate": "ugam8mKt", "rootCertificateName": "HrU1piXK"}, "OrganizationId": "RISSMB3y", "PlatformName": "xUN8iJKc", "RedirectUri": "w4YhPfo8", "RegisteredDomains": [{"affectedClientIDs": ["aHCIpzZW", "ccJIUOLw", "0hw4jzHQ"], "domain": "Mutcup8X", "namespaces": ["qIBOC36D", "TCtTOuqU", "gzhbWQE2"], "roleId": "fLcrFTW0"}, {"affectedClientIDs": ["UQuMRjkl", "CRzE7VSi", "2VV4TKNC"], "domain": "RbOkOKkN", "namespaces": ["Cj50fRXM", "m4lwJJZQ", "d4HQyPQT"], "roleId": "z1FxFW3T"}, {"affectedClientIDs": ["LDo3Gm66", "bu2DtZbJ", "6lrF9ZxU"], "domain": "apQZdkVj", "namespaces": ["7DWaCaok", "9tIGxkTx", "sVXkhj3d"], "roleId": "0FvN6CSX"}], "Secret": "EQFnBitQ", "TeamID": "KL21a8Ft", "TokenAuthenticationType": "gPLiF9e6", "TokenClaimsMapping": {"ovZ5d2lK": "WfQgZwVL", "josqNd5V": "4zmwhMW6", "IPazSrcZ": "XWa7Q5A6"}, "TokenEndpoint": "55GMhtrQ", "UserInfoEndpoint": "B5oB5P9G", "UserInfoHTTPMethod": "xE1Qq9dM", "scopes": ["XVjM3Byw", "bMGDSI0Q", "2xBh1WaO"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OFPbTGIM' \
    --body '{"affectedClientIDs": ["5PjajwRg", "AKD4I8P9", "QQkrGPcr"], "assignedNamespaces": ["7Lzbmaws", "1M3VBI1Q", "WHC6KgPt"], "domain": "4Y5kL37U", "roleId": "7SwNs7dJ"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SKSNMSTI' \
    --body '{"domain": "wTgVnEfO"}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'P3H2PUAI' \
    > test.out 2>&1
eval_tap $? 148 'RetrieveSSOLoginPlatformCredential' test.out

#- 149 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '4keEHvJt' \
    --body '{"acsUrl": "PyDETbJx", "apiKey": "00vQ3tD2", "appId": "B2nEoVe4", "federationMetadataUrl": "ozqgHvra", "isActive": false, "redirectUri": "nIAp6kH2", "secret": "wz0tKubN", "ssoUrl": "rDTeBWbT"}' \
    > test.out 2>&1
eval_tap $? 149 'AddSSOLoginPlatformCredential' test.out

#- 150 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NDOkYzTN' \
    > test.out 2>&1
eval_tap $? 150 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 151 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '2aSESz6Y' \
    --body '{"acsUrl": "zSfMKTYb", "apiKey": "H80Gl5bC", "appId": "bJxO5FU5", "federationMetadataUrl": "Rh3A7YEi", "isActive": false, "redirectUri": "0aGOi2ck", "secret": "NCJSGFgq", "ssoUrl": "DhEiNG6Z"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateSSOPlatformCredential' test.out

#- 152 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LFvZVnWk' \
    --rawPID 'true' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["kEvUZ5Nq", "b7WRaZdR", "vlQrrn0A"]}' \
    > test.out 2>&1
eval_tap $? 152 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 153 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'b5JEedrb' \
    --platformUserId 'tYBByxvt' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByPlatformUserIDV3' test.out

#- 154 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetProfileUpdateStrategyV3' test.out

#- 155 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    --body '{"config": {"minimumAllowedInterval": 77}, "type": "Ebv7Fnqy"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 156 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetRoleOverrideConfigV3' test.out

#- 157 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"additions": [{"actions": [83, 25, 50], "resource": "92lTXNVH"}, {"actions": [36, 96, 56], "resource": "GPZv9WW8"}, {"actions": [45, 21, 21], "resource": "TjTAaboZ"}], "exclusions": [{"actions": [48, 80, 77], "resource": "csQ94jfC"}, {"actions": [60, 54, 72], "resource": "4BOqEMTu"}, {"actions": [86, 55, 43], "resource": "laZrJuC0"}], "overrides": [{"actions": [43, 46, 45], "resource": "qwcp8rrv"}, {"actions": [73, 72, 43], "resource": "a01aAg5c"}, {"actions": [80, 42, 72], "resource": "1Ykx215e"}], "replacements": [{"replacement": {"actions": [92, 66, 24], "resource": "Heno3gEZ"}, "target": "OWpySYdg"}, {"replacement": {"actions": [34, 81, 25], "resource": "K32zTpf2"}, "target": "3NVHpVWT"}, {"replacement": {"actions": [59, 81, 55], "resource": "lTrXLYSh"}, "target": "B4aGyFsU"}]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateRoleOverrideConfigV3' test.out

#- 158 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetRoleSourceV3' test.out

#- 159 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 160 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'GuG9VWAE' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetRoleNamespacePermissionV3' test.out

#- 161 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'jbojc3vc' \
    --after '19' \
    --before '16' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 161 'GetAdminUsersByRoleIdV3' test.out

#- 162 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '9TaVnD3T' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserByEmailAddressV3' test.out

#- 163 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["wOG7W6fC", "4SJymxW2", "mBy1k04G"]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminBulkUpdateUsersV3' test.out

#- 164 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '7yueWCdj' \
    --body '{"bulkUserId": ["prbuA7oj", "d49kCT3V", "Hcpt0um4"]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetBulkUserBanV3' test.out

#- 165 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["bbWVWP3J", "qyB7O914", "nXyUY1ko"]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminListUserIDByUserIDsV3' test.out

#- 166 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KVqfp15q", "vPiEX7rS", "VZbDWrRD"]}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBulkGetUsersPlatform' test.out

#- 167 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["IRlC6DBh", "d3c3lCiX", "QIkWzxW7"], "isAdmin": true, "languageTag": "11wP7Y4y", "namespace": "YGUmSIH4", "roles": ["QoViYyo6", "LzWij41w", "qODCRyj6"]}' \
    > test.out 2>&1
eval_tap $? 167 'AdminInviteUserV3' test.out

#- 168 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '22' \
    --platformUserId '6SC6uhvH' \
    --platformId 'vLdv3nry' \
    > test.out 2>&1
eval_tap $? 168 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 169 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 169 'AdminListUsersV3' test.out

#- 170 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'i5ldbhgW' \
    --endDate 'wQIeSmyZ' \
    --includeTotal 'true' \
    --limit '80' \
    --offset '54' \
    --platformBy 'LYdUjEgE' \
    --platformId 'SrR7xd1z' \
    --query 'PdsFMdrp' \
    --roleIds 'gzuw3nfX' \
    --skipLoginQueue 'true' \
    --startDate 'cHP6KrcD' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 170 'AdminSearchUserV3' test.out

#- 171 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["m4xtDo35", "khALMdeh", "jn9VSJ1W"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetBulkUserByEmailAddressV3' test.out

#- 172 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JWg6zaSo' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByUserIdV3' test.out

#- 173 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IE241Iq9' \
    --body '{"avatarUrl": "TTHYs3KF", "country": "pjrq2WAk", "dateOfBirth": "yVTu0xSf", "displayName": "z6iekjcP", "languageTag": "fYsfBEM6", "skipLoginQueue": true, "uniqueDisplayName": "3RBgD6bW", "userName": "zdvOYzhh"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserV3' test.out

#- 174 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QAJEgeX1' \
    --activeOnly 'true' \
    --after 'snf6CbrC' \
    --before 'BhcXC5Os' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserBanV3' test.out

#- 175 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zDKuJTCA' \
    --body '{"ban": "5TJoKnJ0", "comment": "rbwTebAj", "endDate": "1O0ok8NF", "reason": "209g41MS", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 175 'AdminBanUserV3' test.out

#- 176 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eGcRAgSD' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserBanSummaryV3' test.out

#- 177 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '8NUrckkb' \
    --namespace $AB_NAMESPACE \
    --userId 'LUv7zIyJ' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 177 'AdminUpdateUserBanV3' test.out

#- 178 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kIom9AAp' \
    --body '{"context": "1DkRsyi1", "emailAddress": "QLV3N7rB", "languageTag": "0XFiAjx6"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminSendVerificationCodeV3' test.out

#- 179 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EusMWjfp' \
    --body '{"Code": "ik6y3g3Y", "ContactType": "7rkPYUn5", "LanguageTag": "MoAjgxih", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyAccountV3' test.out

#- 180 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'N16ErPxW' \
    > test.out 2>&1
eval_tap $? 180 'GetUserVerificationCode' test.out

#- 181 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '1kzZeLQZ' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserDeletionStatusV3' test.out

#- 182 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yIffzu1T' \
    --body '{"deletionDate": 59, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserDeletionStatusV3' test.out

#- 183 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kKhJ3O9Q' \
    > test.out 2>&1
eval_tap $? 183 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 184 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tF0qpGNY' \
    --body '{"code": "wYRX5hah", "country": "kF2FssAm", "dateOfBirth": "q5oAc8lY", "displayName": "DpwMwMoB", "emailAddress": "E717Ruq7", "password": "frUKltCT", "uniqueDisplayName": "42MyJ678", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpgradeHeadlessAccountV3' test.out

#- 185 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NVjktUEN' \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteUserInformationV3' test.out

#- 186 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '14mm9Cph' \
    --after '0.7479873179370582' \
    --before '0.7008134397512745' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserLoginHistoriesV3' test.out

#- 187 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ubdWa4Yw' \
    --body '{"languageTag": "OfLxfsYY", "mfaToken": "ouctVjE7", "newPassword": "wRo1RFOW", "oldPassword": "YwU6x2Nd"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminResetPasswordV3' test.out

#- 188 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'E9k3w37A' \
    --body '{"Permissions": [{"Action": 56, "Resource": "8swSawDw", "SchedAction": 95, "SchedCron": "OXSUSCua", "SchedRange": ["1PdnRYML", "upWdW3KH", "x7Admplk"]}, {"Action": 16, "Resource": "kcfQ3Gvz", "SchedAction": 72, "SchedCron": "9xRpPx61", "SchedRange": ["yeIqqLix", "on17TxtW", "oyOeeugd"]}, {"Action": 63, "Resource": "ARIQ0Nyy", "SchedAction": 39, "SchedCron": "7UhMlkDJ", "SchedRange": ["AjFXYh8c", "ewestLE6", "AvUmKtMx"]}]}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserPermissionV3' test.out

#- 189 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'D6OF1eLM' \
    --body '{"Permissions": [{"Action": 15, "Resource": "1j7APcdj", "SchedAction": 68, "SchedCron": "RoQ1hszx", "SchedRange": ["Ov9MbkpA", "LFaeGM0S", "m6yLPlUF"]}, {"Action": 73, "Resource": "OIndaNHV", "SchedAction": 73, "SchedCron": "WURaU3oq", "SchedRange": ["0iGGbNPR", "jccMfsqT", "ismLV5vc"]}, {"Action": 91, "Resource": "jnjsa2kn", "SchedAction": 66, "SchedCron": "UMrzUtjL", "SchedRange": ["9EbXC2V2", "S8EbUdYo", "PZOQF3Pv"]}]}' \
    > test.out 2>&1
eval_tap $? 189 'AdminAddUserPermissionsV3' test.out

#- 190 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KQXDeuV1' \
    --body '[{"Action": 55, "Resource": "jEQU6A0a"}, {"Action": 6, "Resource": "7BFUT3nN"}, {"Action": 9, "Resource": "9mY1q3hW"}]' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserPermissionBulkV3' test.out

#- 191 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '39' \
    --namespace $AB_NAMESPACE \
    --resource 'j4zsgThp' \
    --userId 'sS7inNwA' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserPermissionV3' test.out

#- 192 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pLng84kF' \
    --after 'ZhfAwBwn' \
    --before 'B5ldyhc5' \
    --limit '22' \
    --platformId 'gOkVcILW' \
    --targetNamespace 'rqlqcVCF' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserPlatformAccountsV3' test.out

#- 193 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'K9yxeWNk' \
    --status 'zn9LCVAD' \
    > test.out 2>&1
eval_tap $? 193 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 194 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'NUON4D8c' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetListJusticePlatformAccounts' test.out

#- 195 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace '8GlWpVmE' \
    --userId '5A7bbyQe' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetUserMapping' test.out

#- 196 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'iq1gg7nM' \
    --userId 'rkxBwFkr' \
    > test.out 2>&1
eval_tap $? 196 'AdminCreateJusticeUser' test.out

#- 197 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'BPQCLtzC' \
    --skipConflict 'false' \
    --body '{"platformId": "tEGEZUPv", "platformUserId": "0N38JBby"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminLinkPlatformAccount' test.out

#- 198 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '8l5f8952' \
    --platformId 'd4nUWLaS' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserLinkHistoriesV3' test.out

#- 199 AdminPlatformUnlinkV3
eval_tap 0 199 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 200 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'd3ujIq8f' \
    --userId 'vldRlRJC' \
    > test.out 2>&1
eval_tap $? 200 'AdminPlatformUnlinkAllV3' test.out

#- 201 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0V23gyWe' \
    --userId 'vTQ3uqUE' \
    --ticket '2XXXwiYq' \
    > test.out 2>&1
eval_tap $? 201 'AdminPlatformLinkV3' test.out

#- 202 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 202 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 203 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'oOMTrOTM' \
    --userId '8fYccX8y' \
    > test.out 2>&1
eval_tap $? 203 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 204 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UYu5nRhf' \
    --userId '2ZdEvOi8' \
    --platformToken 'N3KfirAE' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 205 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'pooGCz8t' \
    --userId '1BZ2AlOd' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetUserSinglePlatformAccount' test.out

#- 206 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FmguJ1eo' \
    --body '["95IJA9zR", "GOyBEDlH", "RTIVvHlh"]' \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteUserRolesV3' test.out

#- 207 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VpeSqvI0' \
    --body '[{"namespace": "V0LHarDC", "roleId": "7r77mJ53"}, {"namespace": "ybk46TYL", "roleId": "Y2QHtmXp"}, {"namespace": "iOoI4zxA", "roleId": "1eddEfSa"}]' \
    > test.out 2>&1
eval_tap $? 207 'AdminSaveUserRoleV3' test.out

#- 208 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'CaUSC4D8' \
    --userId 'QUS0CQhx' \
    > test.out 2>&1
eval_tap $? 208 'AdminAddUserRoleV3' test.out

#- 209 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'XaK6q4iZ' \
    --userId 'L7ZSt4oe' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserRoleV3' test.out

#- 210 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QvAV3H2a' \
    --body '{"enabled": true, "reason": "mENditjG"}' \
    > test.out 2>&1
eval_tap $? 210 'AdminUpdateUserStatusV3' test.out

#- 211 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'qlV6V7Fz' \
    --body '{"emailAddress": "LLXpymfw", "password": "UBRVh5Gn"}' \
    > test.out 2>&1
eval_tap $? 211 'AdminTrustlyUpdateUserIdentity' test.out

#- 212 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '8YUM8XCn' \
    > test.out 2>&1
eval_tap $? 212 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 213 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'aoUKMn5o' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "DkHgwPyu"}' \
    > test.out 2>&1
eval_tap $? 213 'AdminUpdateClientSecretV3' test.out

#- 214 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'c7h18Uac' \
    > test.out 2>&1
eval_tap $? 214 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 215 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'R248M0Sn' \
    --before 'TGbT6aSx' \
    --isWildcard 'false' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 215 'AdminGetRolesV3' test.out

#- 216 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "7bzWKLcK", "namespace": "iVo6cAiu", "userId": "26yuLLRr"}, {"displayName": "sxCKmk3h", "namespace": "ZXTBUwDc", "userId": "HQ6JU7Yl"}, {"displayName": "63Tugu4v", "namespace": "as65ltd4", "userId": "rNRzkix0"}], "members": [{"displayName": "rlaLOuYf", "namespace": "5aNXyeeL", "userId": "NeTjZ7s6"}, {"displayName": "rWQWnDuv", "namespace": "JzFccSq7", "userId": "BLaBawNn"}, {"displayName": "wKiOkP7F", "namespace": "EH3t1pZ2", "userId": "ftR6LeFe"}], "permissions": [{"action": 67, "resource": "3Wk1UJup", "schedAction": 59, "schedCron": "F1sgpJrh", "schedRange": ["E4867uCB", "ILS6fuHW", "Pj4I9lkt"]}, {"action": 43, "resource": "Cc2AbPdY", "schedAction": 59, "schedCron": "xQQQDrFq", "schedRange": ["oC3m7RJy", "G6WoXXLo", "jxMV60mn"]}, {"action": 60, "resource": "lh2WHq9f", "schedAction": 84, "schedCron": "QlNxeiNe", "schedRange": ["1eD4fA5w", "SEaHkJab", "IVM78xhx"]}], "roleName": "PIdeNYw1"}' \
    > test.out 2>&1
eval_tap $? 216 'AdminCreateRoleV3' test.out

#- 217 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'lu9oqUvM' \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRoleV3' test.out

#- 218 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'eQ7niBln' \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRoleV3' test.out

#- 219 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'kGmXWbWJ' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "Tw0LsfA2"}' \
    > test.out 2>&1
eval_tap $? 219 'AdminUpdateRoleV3' test.out

#- 220 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'pngp1W0z' \
    > test.out 2>&1
eval_tap $? 220 'AdminGetRoleAdminStatusV3' test.out

#- 221 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'wIMFJfTa' \
    > test.out 2>&1
eval_tap $? 221 'AdminUpdateAdminRoleStatusV3' test.out

#- 222 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'LNsE3H86' \
    > test.out 2>&1
eval_tap $? 222 'AdminRemoveRoleAdminV3' test.out

#- 223 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'LG6JpdCB' \
    --after 'WmLUlLrR' \
    --before 'tqxiXu0c' \
    --limit '30' \
    > test.out 2>&1
eval_tap $? 223 'AdminGetRoleManagersV3' test.out

#- 224 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '1QqWYJ14' \
    --body '{"managers": [{"displayName": "1w3GHHfx", "namespace": "Fv0F6WQl", "userId": "4vMY5aEw"}, {"displayName": "HdQN263q", "namespace": "ts0PH2bP", "userId": "XODtz5gS"}, {"displayName": "P3ubWsxe", "namespace": "YcMmMpgt", "userId": "dhTP5DW7"}]}' \
    > test.out 2>&1
eval_tap $? 224 'AdminAddRoleManagersV3' test.out

#- 225 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'Y51IqtH8' \
    --body '{"managers": [{"displayName": "nPLwXjGM", "namespace": "lXRqpX91", "userId": "H8E5uviZ"}, {"displayName": "nFxjt8Bn", "namespace": "O9gzWu2V", "userId": "O0KQyyju"}, {"displayName": "gao3wba2", "namespace": "l1kHZAxf", "userId": "IXQt83nh"}]}' \
    > test.out 2>&1
eval_tap $? 225 'AdminRemoveRoleManagersV3' test.out

#- 226 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '7NOkaGbI' \
    --after 'CV8ZBrir' \
    --before 'lANOiHPJ' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 226 'AdminGetRoleMembersV3' test.out

#- 227 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'VryZQWAw' \
    --body '{"members": [{"displayName": "CZXsmsOK", "namespace": "YPwMoaFC", "userId": "tA6EyU2y"}, {"displayName": "3WiqaRG7", "namespace": "mZU0bVUh", "userId": "KwDw7Wc8"}, {"displayName": "TptU4Eay", "namespace": "sfHzzY3e", "userId": "zM5nBKu0"}]}' \
    > test.out 2>&1
eval_tap $? 227 'AdminAddRoleMembersV3' test.out

#- 228 AdminRemoveRoleMembersV3
eval_tap 0 228 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 229 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'ZTPrgd36' \
    --body '{"permissions": [{"action": 13, "resource": "N2z6dM2T", "schedAction": 38, "schedCron": "2EdjXCNM", "schedRange": ["pnP79aSI", "NDIV8w9Q", "1G4KpB85"]}, {"action": 13, "resource": "T5g7TEj8", "schedAction": 99, "schedCron": "2Q8wqXMi", "schedRange": ["TchYSb3p", "ACD98tYK", "lOsCW8ZX"]}, {"action": 62, "resource": "3EkBV81A", "schedAction": 90, "schedCron": "dcJnL0Ie", "schedRange": ["lShr7QnE", "wVtyfHUH", "xk7ggtFc"]}]}' \
    > test.out 2>&1
eval_tap $? 229 'AdminUpdateRolePermissionsV3' test.out

#- 230 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'H5yZX1nF' \
    --body '{"permissions": [{"action": 22, "resource": "DFpJP9YW", "schedAction": 76, "schedCron": "aWXtno56", "schedRange": ["3KnXqyhO", "exnDbH4g", "VuIAy19G"]}, {"action": 12, "resource": "WK0SnDyu", "schedAction": 4, "schedCron": "m2H3c9t1", "schedRange": ["4GUBBGKh", "mYkLt7wx", "mGAruMvQ"]}, {"action": 68, "resource": "gFOnwHWD", "schedAction": 12, "schedCron": "EFhcKujq", "schedRange": ["ajCqj7ZN", "DuPfRTYl", "3wQKp2AC"]}]}' \
    > test.out 2>&1
eval_tap $? 230 'AdminAddRolePermissionsV3' test.out

#- 231 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'IvW3UtAp' \
    --body '["xq0FNYlr", "DLLqxVQt", "BRKABSu5"]' \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRolePermissionsV3' test.out

#- 232 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '20' \
    --resource 'e3H6g7tY' \
    --roleId '7S4w2mah' \
    > test.out 2>&1
eval_tap $? 232 'AdminDeleteRolePermissionV3' test.out

#- 233 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 233 'AdminGetMyUserV3' test.out

#- 234 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'Rbp2rVQt' \
    --extendExp 'true' \
    --redirectUri 'SgdfDYeC' \
    --password '6wbOFD84' \
    --requestId 'SLuHTCjY' \
    --userName 'pNwQW5sl' \
    > test.out 2>&1
eval_tap $? 234 'UserAuthenticationV3' test.out

#- 235 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId '6DjL76LW' \
    --linkingToken 'TYz4lE4i' \
    --password 'D8mEvUeF' \
    --username 'g3BLy8v7' \
    > test.out 2>&1
eval_tap $? 235 'AuthenticationWithPlatformLinkV3' test.out

#- 236 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'HoNmXaaN' \
    --extendExp 'true' \
    --linkingToken '1CGUcluh' \
    > test.out 2>&1
eval_tap $? 236 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 237 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '02hLCCVU' \
    > test.out 2>&1
eval_tap $? 237 'RequestOneTimeLinkingCodeV3' test.out

#- 238 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'IbATEudf' \
    > test.out 2>&1
eval_tap $? 238 'ValidateOneTimeLinkingCodeV3' test.out

#- 239 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'oqN3gleR' \
    --isTransient 'false' \
    --clientId 'wJtEvEuV' \
    --oneTimeLinkCode 'LrMwYkEC' \
    > test.out 2>&1
eval_tap $? 239 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 240 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 240 'GetCountryLocationV3' test.out

#- 241 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 241 'Logout' test.out

#- 242 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'qw64lMhp' \
    --codeChallengeMethod 'S256' \
    --clientId 'ilUj55uC' \
    > test.out 2>&1
eval_tap $? 242 'RequestTokenExchangeCodeV3' test.out

#- 243 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UB52Tt50' \
    --userId '5t4aIRlT' \
    --platformUserId 'jO9bVchh' \
    > test.out 2>&1
eval_tap $? 243 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 244 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CGuHpjKL' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserV3' test.out

#- 245 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'nTQobYam' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'RshpkxsL' \
    --redirectUri 'p3jRoIWo' \
    --scope 'XoPJKNZV' \
    --state 'e1uwda3L' \
    --targetAuthPage 'Htcthxx9' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'DxbkJaEx' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 245 'AuthorizeV3' test.out

#- 246 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'XGoYsAlj' \
    > test.out 2>&1
eval_tap $? 246 'TokenIntrospectionV3' test.out

#- 247 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 247 'GetJWKSV3' test.out

#- 248 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'NgwEEjlc' \
    --factor 'A8ZPpctG' \
    --mfaToken 'pVTI8Q2H' \
    > test.out 2>&1
eval_tap $? 248 'SendMFAAuthenticationCode' test.out

#- 249 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'Z4oW0fso' \
    --mfaToken 'jX7w3U02' \
    > test.out 2>&1
eval_tap $? 249 'Change2faMethod' test.out

#- 250 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '7dkx5NvD' \
    --factor 'mqnJS8d3' \
    --mfaToken '2ITAUFXA' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 250 'Verify2faCode' test.out

#- 251 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UMPEgYdS' \
    --userId 'hESXskfc' \
    > test.out 2>&1
eval_tap $? 251 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 252 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'n2rwpWOE' \
    --clientId '7Sw4UOvs' \
    --redirectUri 'emYMTh1t' \
    --requestId 'JKnTBmvT' \
    > test.out 2>&1
eval_tap $? 252 'AuthCodeRequestV3' test.out

#- 253 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '6NWtsP9U' \
    --additionalData 'x4PCeCZy' \
    --clientId 'VkqrzyB4' \
    --createHeadless 'true' \
    --deviceId 'Y4Outd8v' \
    --macAddress 'KGgBSjwr' \
    --platformToken 'VWofPaWl' \
    --serviceLabel '0.9399330231201792' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 253 'PlatformTokenGrantV3' test.out

#- 254 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 254 'GetRevocationListV3' test.out

#- 255 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '4YPBAsDK' \
    > test.out 2>&1
eval_tap $? 255 'TokenRevocationV3' test.out

#- 256 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'BDQ4njZg' \
    --simultaneousTicket 'D1boXKSl' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket '44vfuqWT' \
    > test.out 2>&1
eval_tap $? 256 'SimultaneousLoginV3' test.out

#- 257 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'PDnM9J3w' \
    --clientId 'M6G6pPvj' \
    --clientSecret 'J6kbE2gh' \
    --code 'KjZd1kqX' \
    --codeVerifier '5QOxcRiF' \
    --extendNamespace 'kqugZrf1' \
    --extendExp 'false' \
    --password 'IZTQ4IRC' \
    --redirectUri 'pPRaZzCQ' \
    --refreshToken 'El1onUsp' \
    --username 'cXtQA10A' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 257 'TokenGrantV3' test.out

#- 258 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'jxC0OPDU' \
    > test.out 2>&1
eval_tap $? 258 'VerifyTokenV3' test.out

#- 259 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'gTTeh10W' \
    --code '3nCABD9E' \
    --error 'XeRZxFzt' \
    --openidAssocHandle 'WXiWuwSr' \
    --openidClaimedId 'wCwnXmpK' \
    --openidIdentity 'tFIdJnqZ' \
    --openidMode 'LKwGIgkD' \
    --openidNs '2ej0q9OF' \
    --openidOpEndpoint 'Gib3poMD' \
    --openidResponseNonce 'bDGf0M64' \
    --openidReturnTo 'axRYm3TL' \
    --openidSig 'OY0uaKna' \
    --openidSigned 'qoqOXEVA' \
    --state 'AZXaReq2' \
    > test.out 2>&1
eval_tap $? 259 'PlatformAuthenticationV3' test.out

#- 260 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '6jRV4HFM' \
    --platformToken 'dUZdpAby' \
    > test.out 2>&1
eval_tap $? 260 'PlatformTokenRefreshV3' test.out

#- 261 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode '9oVeITSL' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetInputValidations' test.out

#- 262 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'CvXsFyaO' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetInputValidationByField' test.out

#- 263 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'YlOCmTjb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 263 'PublicGetCountryAgeRestrictionV3' test.out

#- 264 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'bxnKzqcF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 264 'PublicGetConfigValueV3' test.out

#- 265 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 265 'PublicGetCountryListV3' test.out

#- 266 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 266 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 267 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId '720RsI8d' \
    > test.out 2>&1
eval_tap $? 267 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 268 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 268 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 269 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'swuXFELp' \
    --platformUserId 'RN8T2cPl' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetUserByPlatformUserIDV3' test.out

#- 270 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetProfileUpdateStrategyV3' test.out

#- 271 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'iiR7nuvt' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetAsyncStatus' test.out

#- 272 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'xOPYiBGo' \
    --limit '4' \
    --offset '67' \
    --platformBy '4CIG0OHb' \
    --platformId 'RpFSUbqB' \
    --query '4hGFwCR2' \
    > test.out 2>&1
eval_tap $? 272 'PublicSearchUserV3' test.out

#- 273 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "p157IqLU", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "jk6fb35n", "policyId": "QvbOUluH", "policyVersionId": "6K0O1jR0"}, {"isAccepted": false, "localizedPolicyVersionId": "3V5ODHwy", "policyId": "QxC6UNdP", "policyVersionId": "2JavYEct"}, {"isAccepted": true, "localizedPolicyVersionId": "17NCkW1D", "policyId": "ZXB2Q0nT", "policyVersionId": "QQsOkr8a"}], "authType": "ivK11Dqu", "code": "4XcOCc35", "country": "6nb4Igfo", "dateOfBirth": "CWOp2AUd", "displayName": "KqnCK0cW", "emailAddress": "awksitVM", "password": "byt6bFvv", "reachMinimumAge": false, "uniqueDisplayName": "t7CgPMnB"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicCreateUserV3' test.out

#- 274 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'PC8bGGBJ' \
    --query 'ORQbPXOa' \
    > test.out 2>&1
eval_tap $? 274 'CheckUserAvailability' test.out

#- 275 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["umyg1RWo", "sgmjW3Kx", "EXeub0Mi"]}' \
    > test.out 2>&1
eval_tap $? 275 'PublicBulkGetUsers' test.out

#- 276 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "ke9TiVHK", "languageTag": "hwKti4jL"}' \
    > test.out 2>&1
eval_tap $? 276 'PublicSendRegistrationCode' test.out

#- 277 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "lEQElBGQ", "emailAddress": "sumPVbzt"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicVerifyRegistrationCode' test.out

#- 278 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "T3g3tGQK", "languageTag": "FPdF8ykK"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForgotPasswordV3' test.out

#- 279 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "d4vt6rAT", "password": "YFUOOgLE", "uniqueDisplayName": "rV7SZ2MX", "username": "S4eCDZnj"}' \
    > test.out 2>&1
eval_tap $? 279 'PublicValidateUserInput' test.out

#- 280 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'C7bVdMOA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 280 'GetAdminInvitationV3' test.out

#- 281 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'HnOh3GjV' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "kYu9auBS", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "tk1gguXE", "policyId": "fqzWgiTS", "policyVersionId": "eT84pecx"}, {"isAccepted": true, "localizedPolicyVersionId": "FPbeAXQC", "policyId": "QWqpFpkS", "policyVersionId": "YUyYSbcN"}, {"isAccepted": true, "localizedPolicyVersionId": "AzXsPPbL", "policyId": "fa2LRhtX", "policyVersionId": "vTiNinwq"}], "authType": "D7ANDVH5", "code": "i60QhvId", "country": "VT9AOkF9", "dateOfBirth": "xwjnEmZs", "displayName": "enzlQw9L", "emailAddress": "6abDpVJ8", "password": "yMNR5d23", "reachMinimumAge": true, "uniqueDisplayName": "LEnAUa0K"}' \
    > test.out 2>&1
eval_tap $? 281 'CreateUserFromInvitationV3' test.out

#- 282 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "wrViYgBH", "country": "XsCy3212", "dateOfBirth": "XeZNywWr", "displayName": "Eb6fm3f3", "languageTag": "p595Ylwb", "uniqueDisplayName": "brE2N96x", "userName": "EZCycaFT"}' \
    > test.out 2>&1
eval_tap $? 282 'UpdateUserV3' test.out

#- 283 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "GsXojbsp", "country": "LnlRSYHi", "dateOfBirth": "pOsDZHtP", "displayName": "FGGYpdfI", "languageTag": "yByvnuGy", "uniqueDisplayName": "r9TbClFH", "userName": "nXRS6tTs"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicPartialUpdateUserV3' test.out

#- 284 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "uFxl2z6T", "emailAddress": "coqdbRaS", "languageTag": "0Zop35ZV"}' \
    > test.out 2>&1
eval_tap $? 284 'PublicSendVerificationCodeV3' test.out

#- 285 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "XtoRLsAz", "contactType": "qmUHcDo7", "languageTag": "Bb6ZOhbv", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 285 'PublicUserVerificationV3' test.out

#- 286 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "YMysetB7", "country": "QAWwsLGI", "dateOfBirth": "OvBIhC4b", "displayName": "nW3B1ZET", "emailAddress": "VGj6RMe7", "password": "pNbH0j7W", "uniqueDisplayName": "GSBkoZdd", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 286 'PublicUpgradeHeadlessAccountV3' test.out

#- 287 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "8vsmhiuM", "password": "ro4oHNbi"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyHeadlessAccountV3' test.out

#- 288 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "F2I8JPuw", "mfaToken": "Yr9jqrfP", "newPassword": "fYAxtbjE", "oldPassword": "xP1oU30y"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicUpdatePasswordV3' test.out

#- 289 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'jrc7rqlb' \
    > test.out 2>&1
eval_tap $? 289 'PublicCreateJusticeUser' test.out

#- 290 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hxyRQkVP' \
    --redirectUri 'wI7YTi1G' \
    --ticket 'OJLIuMJy' \
    > test.out 2>&1
eval_tap $? 290 'PublicPlatformLinkV3' test.out

#- 291 PublicPlatformUnlinkV3
eval_tap 0 291 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 292 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'e1N8mtDH' \
    > test.out 2>&1
eval_tap $? 292 'PublicPlatformUnlinkAllV3' test.out

#- 293 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dwDM5GhI' \
    --ticket '72oq8Uzv' \
    > test.out 2>&1
eval_tap $? 293 'PublicForcePlatformLinkV3' test.out

#- 294 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'bRwyyOab' \
    --clientId 'hgARN70g' \
    --redirectUri 'Pa8NlWsq' \
    > test.out 2>&1
eval_tap $? 294 'PublicWebLinkPlatform' test.out

#- 295 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'pDarRQZF' \
    --code 'O7kJOgrd' \
    --state 'ZtVKMsBN' \
    > test.out 2>&1
eval_tap $? 295 'PublicWebLinkPlatformEstablish' test.out

#- 296 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YlEfI9wX' \
    --code 'qEBSYFKA' \
    --state 'fC5wsFQz' \
    > test.out 2>&1
eval_tap $? 296 'PublicProcessWebLinkPlatformV3' test.out

#- 297 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "bOrz1cif", "userIds": ["L5ikmMAD", "GZeSIPzd", "DASxiGXc"]}' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUsersPlatformInfosV3' test.out

#- 298 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "DVETXbd4", "code": "8WvqXSDS", "emailAddress": "F6ueJHPT", "languageTag": "E7iDc2Lw", "newPassword": "f40xSfnW"}' \
    > test.out 2>&1
eval_tap $? 298 'ResetPasswordV3' test.out

#- 299 PublicGetUserByUserIdV3
eval_tap 0 299 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 300 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Xex2pgRE' \
    --activeOnly 'false' \
    --after 'iCubY6qC' \
    --before 'wo7EK3Ok' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetUserBanHistoryV3' test.out

#- 301 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '3aAkfUG5' \
    > test.out 2>&1
eval_tap $? 301 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 302 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vCPiVKOO' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetUserInformationV3' test.out

#- 303 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QsZygBki' \
    --after '0.07808423090536554' \
    --before '0.6206458156005241' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetUserLoginHistoriesV3' test.out

#- 304 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'S2swScTC' \
    --after 'UWQO9O9A' \
    --before 'TyYZOLve' \
    --limit '50' \
    --platformId 'Sc8Ie8Jk' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetUserPlatformAccountsV3' test.out

#- 305 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '1RbW9w5L' \
    > test.out 2>&1
eval_tap $? 305 'PublicListJusticePlatformAccountsV3' test.out

#- 306 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'HsPcT15V' \
    --body '{"platformId": "yEc8pteX", "platformUserId": "yWFe7lCC"}' \
    > test.out 2>&1
eval_tap $? 306 'PublicLinkPlatformAccount' test.out

#- 307 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'db6G3T20' \
    --body '{"chosenNamespaces": ["TOZvWD4G", "HmqC1Dby", "I2RaJyNA"], "requestId": "XVX1I4jY"}' \
    > test.out 2>&1
eval_tap $? 307 'PublicForceLinkPlatformWithProgression' test.out

#- 308 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '6VfjGcsW' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetPublisherUserV3' test.out

#- 309 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CXNIclMX' \
    --password 'fhY2kacj' \
    > test.out 2>&1
eval_tap $? 309 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 310 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'aI7LyXwg' \
    --before '7dlUHAlU' \
    --isWildcard 'false' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetRolesV3' test.out

#- 311 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'dnS2a4yX' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetRoleV3' test.out

#- 312 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyUserV3' test.out

#- 313 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'Iy8T5CDs' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 314 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["B0MD43IK", "G5IDQ3e9", "PW8pewdm"], "oneTimeLinkCode": "yiupdTe4"}' \
    > test.out 2>&1
eval_tap $? 314 'LinkHeadlessAccountToMyAccountV3' test.out

#- 315 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 316 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "jRGnUIhR"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicSendVerificationLinkV3' test.out

#- 317 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'rnfEjiYk' \
    > test.out 2>&1
eval_tap $? 317 'PublicVerifyUserByLinkV3' test.out

#- 318 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'VAfrJ7Ed' \
    --code 'LnBalCY9' \
    --error 'IIe7UiJq' \
    --state '61aUs3WA' \
    > test.out 2>&1
eval_tap $? 318 'PlatformAuthenticateSAMLV3Handler' test.out

#- 319 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'N6LxlAls' \
    --payload '5g87P4sI' \
    > test.out 2>&1
eval_tap $? 319 'LoginSSOClient' test.out

#- 320 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'h2TZq4zm' \
    > test.out 2>&1
eval_tap $? 320 'LogoutSSOClient' test.out

#- 321 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'ZgJxmQTi' \
    --code 'cfi9VyVL' \
    > test.out 2>&1
eval_tap $? 321 'RequestTargetTokenResponseV3' test.out

#- 322 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '20' \
    --namespace 'ZiIdvJ3e' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 322 'AdminListInvitationHistoriesV4' test.out

#- 323 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OuYhS81C' \
    > test.out 2>&1
eval_tap $? 323 'AdminGetDevicesByUserV4' test.out

#- 324 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'aDHnllSU' \
    --endDate 'a6RMcn8J' \
    --limit '32' \
    --offset '31' \
    --startDate '0v1FGnso' \
    > test.out 2>&1
eval_tap $? 324 'AdminGetBannedDevicesV4' test.out

#- 325 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NfWR8Lme' \
    > test.out 2>&1
eval_tap $? 325 'AdminGetUserDeviceBansV4' test.out

#- 326 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "tndIvUt6", "deviceId": "GIhKo1sy", "deviceType": "IHFaC87Y", "enabled": false, "endDate": "VfbvAolA", "ext": {"8mtRqtIh": {}, "JZZRReSw": {}, "U6oJWZgY": {}}, "reason": "rlR0bTzi"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminBanDeviceV4' test.out

#- 327 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'hucqVmpg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 327 'AdminGetDeviceBanV4' test.out

#- 328 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'NFm9y6wY' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 328 'AdminUpdateDeviceBanV4' test.out

#- 329 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'hCGls4c9' \
    --startDate 'mUqL2sec' \
    --deviceType '8lZXysFM' \
    > test.out 2>&1
eval_tap $? 329 'AdminGenerateReportV4' test.out

#- 330 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 330 'AdminGetDeviceTypesV4' test.out

#- 331 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '9lPEHQaD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 331 'AdminGetDeviceBansV4' test.out

#- 332 AdminDecryptDeviceV4
eval_tap 0 332 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 333 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'Tel4VxPj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 333 'AdminUnbanDeviceV4' test.out

#- 334 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'MmdZXFnh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 334 'AdminGetUsersByDeviceV4' test.out

#- 335 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 336 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 336 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 337 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 24, "userInfo": {"country": "OpUqWDuN"}}' \
    > test.out 2>&1
eval_tap $? 337 'AdminCreateTestUsersV4' test.out

#- 338 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ohsI10sQ", "policyId": "IUPHKA0A", "policyVersionId": "Zo3a626q"}, {"isAccepted": false, "localizedPolicyVersionId": "mdJ8mkRv", "policyId": "zHpeCdt3", "policyVersionId": "X63F6edH"}, {"isAccepted": true, "localizedPolicyVersionId": "TwtTRGuG", "policyId": "sZKlTZDT", "policyVersionId": "Er1pG4uW"}], "authType": "EMAILPASSWD", "code": "MFfwQBcJ", "country": "ZBnT8mTd", "dateOfBirth": "FcNKYOFC", "displayName": "qPIhUkcj", "emailAddress": "jK2hFLzf", "password": "uLGrWkx6", "passwordMD5Sum": "bQaJq3Nf", "reachMinimumAge": true, "uniqueDisplayName": "jTediYU2", "username": "hDc1ddvm"}' \
    > test.out 2>&1
eval_tap $? 338 'AdminCreateUserV4' test.out

#- 339 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["m68kGb4I", "QrwrxTEk", "MKL5ZGQ1"]}' \
    > test.out 2>&1
eval_tap $? 339 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 340 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["l5LlgIg4", "5mHJlT19", "CkbfO1nw"]}' \
    > test.out 2>&1
eval_tap $? 340 'AdminBulkCheckValidUserIDV4' test.out

#- 341 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'EyZgofBQ' \
    --body '{"avatarUrl": "HexMB5z5", "country": "j8LElAkj", "dateOfBirth": "PbQvryML", "displayName": "KEtcppD6", "languageTag": "TQeAAqqz", "skipLoginQueue": false, "uniqueDisplayName": "CVx1hEku", "userName": "vG9FEG0m"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminUpdateUserV4' test.out

#- 342 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'qJxzAHIS' \
    --body '{"code": "4sSBE5tZ", "emailAddress": "tr2Bz8XX"}' \
    > test.out 2>&1
eval_tap $? 342 'AdminUpdateUserEmailAddressV4' test.out

#- 343 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'QhGYqEwI' \
    --body '{"factor": "CR0mASMz", "mfaToken": "260GT6n7"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminDisableUserMFAV4' test.out

#- 344 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hlEv4pb6' \
    > test.out 2>&1
eval_tap $? 344 'AdminGetUserMFAStatusV4' test.out

#- 345 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bficKnyP' \
    > test.out 2>&1
eval_tap $? 345 'AdminListUserRolesV4' test.out

#- 346 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AlhkQp33' \
    --body '{"assignedNamespaces": ["xT5Zgidy", "l55f96Vf", "9DGJwiUb"], "roleId": "6oxz7yZb"}' \
    > test.out 2>&1
eval_tap $? 346 'AdminUpdateUserRoleV4' test.out

#- 347 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jpm9wvr6' \
    --body '{"assignedNamespaces": ["j0wfKTzZ", "DL9YHF7y", "mAfiEvfy"], "roleId": "ZGd1FkbO"}' \
    > test.out 2>&1
eval_tap $? 347 'AdminAddUserRoleV4' test.out

#- 348 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'D6DwaROe' \
    --body '{"assignedNamespaces": ["QJclqGau", "e8xqbolo", "QZNA0p2s"], "roleId": "mgtBcsyf"}' \
    > test.out 2>&1
eval_tap $? 348 'AdminRemoveUserRoleV4' test.out

#- 349 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '34' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 349 'AdminGetRolesV4' test.out

#- 350 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "ZUEm3aoh"}' \
    > test.out 2>&1
eval_tap $? 350 'AdminCreateRoleV4' test.out

#- 351 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'kkzMFob0' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetRoleV4' test.out

#- 352 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'i3kFVDGr' \
    > test.out 2>&1
eval_tap $? 352 'AdminDeleteRoleV4' test.out

#- 353 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'acj6BMfH' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "s6tS4SpE"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminUpdateRoleV4' test.out

#- 354 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '5PZunVUJ' \
    --body '{"permissions": [{"action": 63, "resource": "BJVqex5t", "schedAction": 42, "schedCron": "XzrXJKDv", "schedRange": ["9mUc6Z2i", "lhiKNl83", "0MVYVKfU"]}, {"action": 62, "resource": "WUOHX5as", "schedAction": 4, "schedCron": "iVhQho8w", "schedRange": ["79cQSeDo", "fcMgZsmJ", "0eSjMd7s"]}, {"action": 32, "resource": "tpgUHsju", "schedAction": 81, "schedCron": "rYMeF5cl", "schedRange": ["marbzKWk", "W07fABqp", "MuDOFrHB"]}]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateRolePermissionsV4' test.out

#- 355 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'nEOzg44e' \
    --body '{"permissions": [{"action": 29, "resource": "OzMEJeLp", "schedAction": 30, "schedCron": "w0Nc1toa", "schedRange": ["MmMiZHod", "ZN4lJIIq", "T18Enni6"]}, {"action": 92, "resource": "0TgF8DI6", "schedAction": 99, "schedCron": "DlTgtU8m", "schedRange": ["aYmPc7VN", "qri8ajg1", "0lIlqWY0"]}, {"action": 33, "resource": "Ugok6orM", "schedAction": 50, "schedCron": "caE0Cxme", "schedRange": ["7kFWfPOA", "tlkDAoQW", "XpSBje7t"]}]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminAddRolePermissionsV4' test.out

#- 356 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'PcKFYINE' \
    --body '["KaS1XWmG", "F0QBb60m", "1VGW6rfq"]' \
    > test.out 2>&1
eval_tap $? 356 'AdminDeleteRolePermissionsV4' test.out

#- 357 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'oitKwFEe' \
    --after 'npfiOEat' \
    --before 'MWP6RDyp' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 357 'AdminListAssignedUsersV4' test.out

#- 358 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'QAZTYjkT' \
    --body '{"assignedNamespaces": ["Bc7IKh02", "Tzr3SiVa", "JF82kQOg"], "namespace": "ZWsNf3a5", "userId": "QXzOPmYj"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminAssignUserToRoleV4' test.out

#- 359 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '2JnJBHTN' \
    --body '{"namespace": "Xr7MzSLU", "userId": "hMUWt83p"}' \
    > test.out 2>&1
eval_tap $? 359 'AdminRevokeUserFromRoleV4' test.out

#- 360 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["qhZCnWgb", "VmOJ1Khr", "l0dvgbxH"], "emailAddresses": ["dfBIxcGg", "Zy1GB9O1", "z65rVymr"], "isAdmin": false, "isNewStudio": true, "languageTag": "XXdl9zm7", "namespace": "aULM49i1", "roleId": "bNQTr051"}' \
    > test.out 2>&1
eval_tap $? 360 'AdminInviteUserNewV4' test.out

#- 361 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "XBnzEwP6", "country": "96joelFm", "dateOfBirth": "LX1Pquu0", "displayName": "Y1qIISUV", "languageTag": "OqlZb8gh", "skipLoginQueue": true, "uniqueDisplayName": "pBSWYYos", "userName": "5TFzVEDT"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateMyUserV4' test.out

#- 362 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "Ajg8e8HW", "mfaToken": "N4eu5sP8"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminDisableMyAuthenticatorV4' test.out

#- 363 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '8vi7B4ki' \
    > test.out 2>&1
eval_tap $? 363 'AdminEnableMyAuthenticatorV4' test.out

#- 364 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 364 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 365 AdminGetMyBackupCodesV4
eval_tap 0 365 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 366 AdminGenerateMyBackupCodesV4
eval_tap 0 366 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 367 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "2C4BkVYG", "mfaToken": "JSA2394Y"}' \
    > test.out 2>&1
eval_tap $? 367 'AdminDisableMyBackupCodesV4' test.out

#- 368 AdminDownloadMyBackupCodesV4
eval_tap 0 368 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 369 AdminEnableMyBackupCodesV4
eval_tap 0 369 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 370 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'kRkpSILn' \
    > test.out 2>&1
eval_tap $? 370 'AdminGetBackupCodesV4' test.out

#- 371 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'JrLl41Jx' \
    > test.out 2>&1
eval_tap $? 371 'AdminGenerateBackupCodesV4' test.out

#- 372 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'HBuNfPON' \
    > test.out 2>&1
eval_tap $? 372 'AdminEnableBackupCodesV4' test.out

#- 373 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'j3ixd6M6' \
    --factor 'q9RdkoK9' \
    > test.out 2>&1
eval_tap $? 373 'AdminChallengeMyMFAV4' test.out

#- 374 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'Fe1AfBTw' \
    --languageTag '8dyVvSXH' \
    > test.out 2>&1
eval_tap $? 374 'AdminSendMyMFAEmailCodeV4' test.out

#- 375 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "tpNzjb2X", "mfaToken": "1qiC42sa"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminDisableMyEmailV4' test.out

#- 376 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '4lOcJv5m' \
    > test.out 2>&1
eval_tap $? 376 'AdminEnableMyEmailV4' test.out

#- 377 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 377 'AdminGetMyEnabledFactorsV4' test.out

#- 378 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'YPrIPoRX' \
    > test.out 2>&1
eval_tap $? 378 'AdminMakeFactorMyDefaultV4' test.out

#- 379 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 379 'AdminGetMyOwnMFAStatusV4' test.out

#- 380 AdminGetMyMFAStatusV4
eval_tap 0 380 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 381 AdminInviteUserV4
eval_tap 0 381 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 382 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId 'FidGKvTd' \
    --linkingToken '7yWapl98' \
    --password 'DY71Pn56' \
    --username 'JqtLStMI' \
    > test.out 2>&1
eval_tap $? 382 'AuthenticationWithPlatformLinkV4' test.out

#- 383 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'IvXQrxLY' \
    --extendExp 'false' \
    --linkingToken '6didTQod' \
    > test.out 2>&1
eval_tap $? 383 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 384 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'rDxEDHIi' \
    --factor 'zrc92nNH' \
    --mfaToken 'CV99Mg6I' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 384 'Verify2faCodeV4' test.out

#- 385 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'xte46Vii' \
    --codeChallenge 'CkGrnST6' \
    --codeChallengeMethod 'plain' \
    --additionalData '1lf2yqOL' \
    --clientId '6x7nLhMU' \
    --createHeadless 'true' \
    --deviceId 'ihcWGj5D' \
    --macAddress 'XiXl9APi' \
    --platformToken 'jsezrWth' \
    --serviceLabel '0.877948018501847' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 385 'PlatformTokenGrantV4' test.out

#- 386 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'OvwNxuZ0' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'WLEpC2qV' \
    --simultaneousTicket '1NimNzDN' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'c25Q8IN0' \
    > test.out 2>&1
eval_tap $? 386 'SimultaneousLoginV4' test.out

#- 387 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge '7XeXx2YU' \
    --codeChallengeMethod 'plain' \
    --additionalData 'AZMtFUA1' \
    --clientId 'UXuGoiBP' \
    --clientSecret 'GNdOA5Xl' \
    --code '2OVTvPG0' \
    --codeVerifier 'LH1b7BDU' \
    --extendNamespace 'zLEGW4CF' \
    --extendExp 'false' \
    --loginQueueTicket 'jCDMd5Qw' \
    --password 'kgExHoXX' \
    --redirectUri 'cWiYQsBE' \
    --refreshToken 'm0c3U4SE' \
    --username 'LNUSAdM5' \
    --grantType 'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    > test.out 2>&1
eval_tap $? 387 'TokenGrantV4' test.out

#- 388 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'BQBV5CXy' \
    --code 'ZgnH4yqe' \
    > test.out 2>&1
eval_tap $? 388 'RequestTargetTokenResponseV4' test.out

#- 389 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'R1Tyu4ob' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["NBsm8ZDk", "lFK1AN1V", "7PZ3P520"]}' \
    > test.out 2>&1
eval_tap $? 389 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 390 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "YIGcSMT2", "policyId": "9KU55tHp", "policyVersionId": "tZu9nLwn"}, {"isAccepted": true, "localizedPolicyVersionId": "DyfpfSCb", "policyId": "zHPOKpwa", "policyVersionId": "YJ3rZBOP"}, {"isAccepted": true, "localizedPolicyVersionId": "K75aHhdZ", "policyId": "YIe3sJI0", "policyVersionId": "GPy2sDrt"}], "authType": "EMAILPASSWD", "country": "9L7LQvhM", "dateOfBirth": "aRbefPDr", "displayName": "oBspsRZV", "emailAddress": "oXBLfBNj", "password": "jcFXOWYR", "passwordMD5Sum": "uTQzEiTM", "uniqueDisplayName": "x6nQ1y9O", "username": "ZGAeT0qe", "verified": true}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCreateTestUserV4' test.out

#- 391 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "lCIDKAHV", "policyId": "r9Ocy9b5", "policyVersionId": "KvEr6zUo"}, {"isAccepted": true, "localizedPolicyVersionId": "ea9UXEkp", "policyId": "FOmww92W", "policyVersionId": "dNOh3C12"}, {"isAccepted": false, "localizedPolicyVersionId": "fepED3B7", "policyId": "cp48tl8E", "policyVersionId": "s1U3nbHe"}], "authType": "EMAILPASSWD", "code": "iHG9JiJ6", "country": "iFtn10hB", "dateOfBirth": "F6QXi9aB", "displayName": "nhDbF5VW", "emailAddress": "ySRAsGCR", "password": "gan8ZAv1", "passwordMD5Sum": "9kDAm23i", "reachMinimumAge": false, "uniqueDisplayName": "9mstnDUf", "username": "J7VVeqSd"}' \
    > test.out 2>&1
eval_tap $? 391 'PublicCreateUserV4' test.out

#- 392 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId '6kjUQ92G' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "w7iZJBe0", "policyId": "HL7Vi1oh", "policyVersionId": "xNabhF3v"}, {"isAccepted": true, "localizedPolicyVersionId": "wkjqiuPx", "policyId": "aqBXJA9A", "policyVersionId": "k7i4njG3"}, {"isAccepted": false, "localizedPolicyVersionId": "QJI2rLml", "policyId": "H3pU77sK", "policyVersionId": "iVFnYJu8"}], "authType": "EMAILPASSWD", "code": "ejo0GHdS", "country": "LS6swSyB", "dateOfBirth": "XXfdVowh", "displayName": "Mb4NZNCp", "emailAddress": "OJceGhkC", "password": "J6JbnrqD", "passwordMD5Sum": "Fg86lO4S", "reachMinimumAge": false, "uniqueDisplayName": "QqNgV60a", "username": "OqMBvz00"}' \
    > test.out 2>&1
eval_tap $? 392 'CreateUserFromInvitationV4' test.out

#- 393 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "L4CLZkVk", "country": "JLmYnzft", "dateOfBirth": "qHUZW4l3", "displayName": "H0dugWIR", "languageTag": "gTVACqDz", "uniqueDisplayName": "3AY5H5UZ", "userName": "pBui6apS"}' \
    > test.out 2>&1
eval_tap $? 393 'PublicUpdateUserV4' test.out

#- 394 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xIhfKm7o", "emailAddress": "r5YYokwl"}' \
    > test.out 2>&1
eval_tap $? 394 'PublicUpdateUserEmailAddressV4' test.out

#- 395 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "zaXUtheR", "country": "qD8A2utN", "dateOfBirth": "8pkNlXlc", "displayName": "TrPBaQe1", "emailAddress": "bou8Xgxi", "password": "KcOJlB7a", "reachMinimumAge": true, "uniqueDisplayName": "iJftzAsb", "username": "flHLEaIS", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 395 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 396 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "CDhrUud3", "password": "WAqyRqt7", "username": "ygJfN6vR"}' \
    > test.out 2>&1
eval_tap $? 396 'PublicUpgradeHeadlessAccountV4' test.out

#- 397 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "sAOyAmxt", "mfaToken": "k1UG0cMI"}' \
    > test.out 2>&1
eval_tap $? 397 'PublicDisableMyAuthenticatorV4' test.out

#- 398 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'T5TgKV3s' \
    > test.out 2>&1
eval_tap $? 398 'PublicEnableMyAuthenticatorV4' test.out

#- 399 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 399 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 400 PublicGetMyBackupCodesV4
eval_tap 0 400 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 401 PublicGenerateMyBackupCodesV4
eval_tap 0 401 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 402 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "yBMtQPZp", "mfaToken": "SnAFg4rP"}' \
    > test.out 2>&1
eval_tap $? 402 'PublicDisableMyBackupCodesV4' test.out

#- 403 PublicDownloadMyBackupCodesV4
eval_tap 0 403 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 404 PublicEnableMyBackupCodesV4
eval_tap 0 404 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 405 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'QuJFcREr' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetBackupCodesV4' test.out

#- 406 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'VRHOtHS7' \
    > test.out 2>&1
eval_tap $? 406 'PublicGenerateBackupCodesV4' test.out

#- 407 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'VlBrnZaO' \
    > test.out 2>&1
eval_tap $? 407 'PublicEnableBackupCodesV4' test.out

#- 408 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code '0JDmiHk4' \
    --factor 'TWhb8KFG' \
    > test.out 2>&1
eval_tap $? 408 'PublicChallengeMyMFAV4' test.out

#- 409 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 409 'PublicRemoveTrustedDeviceV4' test.out

#- 410 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'ru7e1het' \
    --languageTag '6M3fOIWX' \
    > test.out 2>&1
eval_tap $? 410 'PublicSendMyMFAEmailCodeV4' test.out

#- 411 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "LdOfkYhf", "mfaToken": "9YoS8mjm"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicDisableMyEmailV4' test.out

#- 412 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'rEjVSeEq' \
    > test.out 2>&1
eval_tap $? 412 'PublicEnableMyEmailV4' test.out

#- 413 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 413 'PublicGetMyEnabledFactorsV4' test.out

#- 414 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'wjYzvcjW' \
    > test.out 2>&1
eval_tap $? 414 'PublicMakeFactorMyDefaultV4' test.out

#- 415 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGetMyOwnMFAStatusV4' test.out

#- 416 PublicGetMyMFAStatusV4
eval_tap 0 416 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 417 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'CX60qChB' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 418 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "lpT5if4Z", "emailAddress": "CVXZyBZB", "languageTag": "z93zgVFA", "namespace": "EL5iFX1t", "namespaceDisplayName": "B8Uoyhqr"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE