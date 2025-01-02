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
echo "1..425"

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
    --body '{"modules": [{"docLink": "ZPhceTcF", "groups": [{"group": "TAb4ILb4", "groupId": "89u9LoJ7", "permissions": [{"allowedActions": [89, 52, 84], "resource": "Fv2qj7NM"}, {"allowedActions": [29, 92, 13], "resource": "dn6fp6Ze"}, {"allowedActions": [24, 42, 30], "resource": "X6Hq1yXw"}]}, {"group": "ElPhm2RF", "groupId": "684YLfoj", "permissions": [{"allowedActions": [79, 18, 46], "resource": "F7Vxve6F"}, {"allowedActions": [7, 61, 68], "resource": "LOoEVbdf"}, {"allowedActions": [89, 89, 21], "resource": "CqNkjgma"}]}, {"group": "utbzxl7k", "groupId": "WXCt7BaA", "permissions": [{"allowedActions": [56, 86, 38], "resource": "gOqQS9zt"}, {"allowedActions": [89, 58, 28], "resource": "bxNiwmRU"}, {"allowedActions": [8, 7, 13], "resource": "UuNSuDGw"}]}], "module": "u5hneAaP", "moduleId": "eEplereI"}, {"docLink": "V0G1Lczn", "groups": [{"group": "ibxfln6P", "groupId": "lfwjzfb7", "permissions": [{"allowedActions": [35, 90, 42], "resource": "PkWEtQBI"}, {"allowedActions": [7, 88, 75], "resource": "XN3CZyih"}, {"allowedActions": [77, 46, 89], "resource": "TY7xe8k8"}]}, {"group": "Li3zL04F", "groupId": "kw0xClwR", "permissions": [{"allowedActions": [15, 58, 99], "resource": "M88tGAK4"}, {"allowedActions": [20, 85, 92], "resource": "7AozelxR"}, {"allowedActions": [34, 76, 46], "resource": "ohaQA1z3"}]}, {"group": "RwHvmzOW", "groupId": "vILwHqlw", "permissions": [{"allowedActions": [96, 90, 72], "resource": "B9SXJoSf"}, {"allowedActions": [38, 50, 14], "resource": "Ys13TFJz"}, {"allowedActions": [0, 97, 31], "resource": "ENeO1kCn"}]}], "module": "PaHJRYLS", "moduleId": "jBGoOEie"}, {"docLink": "z3RTk8KH", "groups": [{"group": "3UayudCt", "groupId": "T1sS6Zyz", "permissions": [{"allowedActions": [11, 32, 21], "resource": "2Kab3Y0K"}, {"allowedActions": [79, 5, 0], "resource": "w74JI6TP"}, {"allowedActions": [55, 63, 74], "resource": "4PkjNOsk"}]}, {"group": "iUJWRW8a", "groupId": "BGal8plZ", "permissions": [{"allowedActions": [9, 72, 15], "resource": "vTvbyEsx"}, {"allowedActions": [88, 62, 17], "resource": "nCpVnt1m"}, {"allowedActions": [77, 97, 41], "resource": "9Ss6wOKu"}]}, {"group": "rF50Iezr", "groupId": "mVxmOhD9", "permissions": [{"allowedActions": [99, 24, 45], "resource": "SQgFenVF"}, {"allowedActions": [64, 17, 13], "resource": "UXaNeWoU"}, {"allowedActions": [100, 48, 3], "resource": "2q39rCN0"}]}], "module": "fVlPEYxH", "moduleId": "fhVvNdW9"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "JeghRf4R", "moduleId": "CW2WPdYw"}' \
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
    --body '[{"field": "tPbWcbbx", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["FlKb88NJ", "4tdx83bd", "RSLw6KWJ"], "preferRegex": false, "regex": "zhDPBCZQ"}, "blockedWord": ["d08wQchu", "k88a9O7m", "PbTEywlu"], "description": [{"language": "Pl75oq1B", "message": ["rCL4Qo9R", "sgGz0Ll1", "m8PV7ulR"]}, {"language": "zjKrJhFM", "message": ["wqE7IIg4", "xl7wh8kk", "OIUf1Bc6"]}, {"language": "l0WzEMo4", "message": ["oq3Y4Bot", "Bf0913TQ", "NeGjQQdi"]}], "isCustomRegex": true, "letterCase": "5BTD2Ihk", "maxLength": 83, "maxRepeatingAlphaNum": 12, "maxRepeatingSpecialCharacter": 43, "minCharType": 28, "minLength": 73, "profanityFilter": "44WVYZ5N", "regex": "lXGQiz1M", "specialCharacterLocation": "d91BTVsC", "specialCharacters": ["GLPa6eu7", "yR1WYOH4", "aoLYRgZ4"]}}, {"field": "aDRGWDEY", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["khZX0ftX", "wMocGDiy", "mLc8JeUB"], "preferRegex": false, "regex": "j6iWo93V"}, "blockedWord": ["hSHrRgF9", "V4vzCP00", "es9vQGSM"], "description": [{"language": "RpfJ3xHU", "message": ["Yxs6aQim", "OhnzKU1Y", "ZyJHrOrU"]}, {"language": "iijK8UNe", "message": ["WxKwdx5R", "AISZ9uze", "JrkvIro3"]}, {"language": "SVWNKNXK", "message": ["htJGdRPF", "YJFrZjmc", "tnChnWIC"]}], "isCustomRegex": true, "letterCase": "HnpH5JWz", "maxLength": 58, "maxRepeatingAlphaNum": 34, "maxRepeatingSpecialCharacter": 66, "minCharType": 68, "minLength": 49, "profanityFilter": "V7Lsokcp", "regex": "TOomYMi1", "specialCharacterLocation": "U3uCZk3v", "specialCharacters": ["NqCYaYVG", "LJNWOk1Y", "lcChTzhd"]}}, {"field": "1lRonZti", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["OtYA1tY7", "LPBZttT6", "PAwcv6Vp"], "preferRegex": false, "regex": "eKRPRP0O"}, "blockedWord": ["vTGyRHms", "fvzvd3yO", "W0jOnw7X"], "description": [{"language": "Lv3YVCzX", "message": ["7MzDUL2o", "TypYAUwl", "WR9Gy4b2"]}, {"language": "kyLXcTGB", "message": ["iIrGyvuz", "fwbyK9Wl", "Qt7ijxFk"]}, {"language": "Aj7NqHYB", "message": ["2zPFyx95", "Lly9SHgM", "StrVgeaD"]}], "isCustomRegex": true, "letterCase": "8oTxkNw2", "maxLength": 59, "maxRepeatingAlphaNum": 42, "maxRepeatingSpecialCharacter": 66, "minCharType": 4, "minLength": 20, "profanityFilter": "OCUxPfgT", "regex": "9E8baAIn", "specialCharacterLocation": "goKuKNWT", "specialCharacters": ["cjLS1nxM", "fARqglGE", "Am0a2CA5"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'vQkDeYbi' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'OlGwzpN7' \
    --before '1SQSdQZO' \
    --endDate 'JGtsJVxs' \
    --limit '36' \
    --query 'wiJZjs0U' \
    --roleId 'QUYZHyGO' \
    --startDate 'd2FniC8j' \
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
    --body '{"ageRestriction": 60, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'Zs86MXqc' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 47}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'T2CqDmXt' \
    --limit '27' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "eWern3Se", "comment": "OdpoJWyv", "endDate": "ECk4Msnt", "reason": "O5QtR12Z", "skipNotif": false, "userIds": ["IG9jpUes", "CAuSJpsi", "T5KLPR4x"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "31d5YjYx", "userId": "Z6HEjRCH"}, {"banId": "RCBnnWJD", "userId": "T7r0oq6g"}, {"banId": "rvTb2dXk", "userId": "vUAdwJsS"}]}' \
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
    --clientId 'WTN6I7gq' \
    --clientName 'bRuR1aSq' \
    --clientType 'iscl9c21' \
    --limit '20' \
    --offset '35' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["eLJAPnBN", "zYCkyqLi", "r3qLa4aH"], "clientUpdateRequest": {"audiences": ["roJMKl96", "Q0C55Ixx", "J4uYigUD"], "baseUri": "iXlOZ4HW", "clientName": "zK88BRHN", "clientPermissions": [{"action": 83, "resource": "zZjkRCfZ", "schedAction": 76, "schedCron": "HXyPCIqB", "schedRange": ["dTfIEag3", "XJTGUARC", "J5oEfpQO"]}, {"action": 94, "resource": "BbodxWxU", "schedAction": 42, "schedCron": "bVMD8Yaf", "schedRange": ["p9AdvGWJ", "vhBIXfKH", "g5ulH5MP"]}, {"action": 30, "resource": "h00IWja7", "schedAction": 58, "schedCron": "7MmysHUw", "schedRange": ["kihnnwlD", "GMOo9F8y", "IiLluvr6"]}], "clientPlatform": "b3jYRHcm", "deletable": false, "description": "5CC0kMAc", "modulePermissions": [{"moduleId": "teq4eYk9", "selectedGroups": [{"groupId": "jI7uSYPs", "selectedActions": [31, 57, 26]}, {"groupId": "xSh53uMZ", "selectedActions": [18, 46, 61]}, {"groupId": "JXxZ9dKI", "selectedActions": [6, 37, 26]}]}, {"moduleId": "hUrHAb60", "selectedGroups": [{"groupId": "FdjQe72I", "selectedActions": [1, 94, 98]}, {"groupId": "7HvPKx2v", "selectedActions": [23, 7, 49]}, {"groupId": "ygBZ9hOj", "selectedActions": [58, 26, 72]}]}, {"moduleId": "Sr3TJrdZ", "selectedGroups": [{"groupId": "gUhdVulR", "selectedActions": [12, 50, 84]}, {"groupId": "rOn4DLBI", "selectedActions": [26, 79, 17]}, {"groupId": "9NoUlXU5", "selectedActions": [67, 13, 4]}]}], "namespace": "2tyFFR8B", "oauthAccessTokenExpiration": 25, "oauthAccessTokenExpirationTimeUnit": "P9Tc2gUu", "oauthRefreshTokenExpiration": 63, "oauthRefreshTokenExpirationTimeUnit": "3nz4ErYx", "redirectUri": "XwKc1B61", "scopes": ["PfpKrYOC", "Wwpmh8L1", "odw4yOM9"], "skipLoginQueue": false, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["bdMUKkj1", "x5Th92fZ", "wRXHfS10"], "baseUri": "6VPXAoML", "clientId": "LIR1PBVP", "clientName": "qCYuJ2Lf", "clientPermissions": [{"action": 67, "resource": "1evZn86Q", "schedAction": 9, "schedCron": "T71gVtpa", "schedRange": ["zpHEIVrN", "Qd9S3Y9a", "SSFUfHvZ"]}, {"action": 83, "resource": "NuuzzYnz", "schedAction": 55, "schedCron": "NtFqIs33", "schedRange": ["3g3yyUp9", "hNpNRc5u", "iBtTEZdp"]}, {"action": 39, "resource": "OQ314sP4", "schedAction": 30, "schedCron": "S9ZW8IlF", "schedRange": ["fKJOkDTR", "UScbiUgl", "aJNknAAj"]}], "clientPlatform": "NWvflift", "deletable": false, "description": "IMW4DuDc", "modulePermissions": [{"moduleId": "ZXCxjZhw", "selectedGroups": [{"groupId": "WynF8xPQ", "selectedActions": [2, 56, 38]}, {"groupId": "1akLaHI2", "selectedActions": [63, 94, 45]}, {"groupId": "u6QufK8y", "selectedActions": [9, 42, 13]}]}, {"moduleId": "eEue8nfE", "selectedGroups": [{"groupId": "FnU0Ywag", "selectedActions": [92, 41, 1]}, {"groupId": "Cr5tXywi", "selectedActions": [39, 9, 56]}, {"groupId": "lE4oTUYE", "selectedActions": [30, 2, 91]}]}, {"moduleId": "bURQFoRE", "selectedGroups": [{"groupId": "ghuiuc7x", "selectedActions": [96, 12, 21]}, {"groupId": "XLp15fSv", "selectedActions": [69, 31, 100]}, {"groupId": "mhXby3f2", "selectedActions": [73, 54, 11]}]}], "namespace": "i6BT5sU6", "oauthAccessTokenExpiration": 55, "oauthAccessTokenExpirationTimeUnit": "2h8hUz03", "oauthClientType": "SOw6Q4pd", "oauthRefreshTokenExpiration": 50, "oauthRefreshTokenExpirationTimeUnit": "vzLRajrs", "parentNamespace": "VA7lPuY9", "redirectUri": "AC8XZUWE", "scopes": ["NC7hEF7V", "TDPtwxma", "cJwlPOuD"], "secret": "2nn7xkwa", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'FVU9t5Jh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '8xyPwYV4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'qi0LxMQI' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["7GFhyrYf", "Wa4Fl5yr", "mRwtxAjc"], "baseUri": "Pnag0dCc", "clientName": "ludv1BLr", "clientPermissions": [{"action": 85, "resource": "eoZbIjMT", "schedAction": 38, "schedCron": "2u343qEw", "schedRange": ["a6wimmRQ", "GcAWlbCR", "SNSEEvdM"]}, {"action": 86, "resource": "xhjJUs4v", "schedAction": 89, "schedCron": "KOHVN4v1", "schedRange": ["2cPuZTNi", "tPFIRE0r", "NMEaoDIz"]}, {"action": 58, "resource": "SyFQRFPc", "schedAction": 57, "schedCron": "q5TthM7D", "schedRange": ["QOb14eGG", "2jtnbPBO", "oes2iWlR"]}], "clientPlatform": "C1wkvnCp", "deletable": false, "description": "zKsLcavb", "modulePermissions": [{"moduleId": "pfCNx41w", "selectedGroups": [{"groupId": "xQDOVsDq", "selectedActions": [92, 45, 62]}, {"groupId": "uYFvyVeo", "selectedActions": [42, 85, 89]}, {"groupId": "ETyTlidW", "selectedActions": [100, 83, 27]}]}, {"moduleId": "hgGRAI99", "selectedGroups": [{"groupId": "cCALmBXm", "selectedActions": [36, 69, 93]}, {"groupId": "hG17Bl2V", "selectedActions": [50, 93, 3]}, {"groupId": "tlvwiWKX", "selectedActions": [19, 14, 37]}]}, {"moduleId": "M2wnGIPR", "selectedGroups": [{"groupId": "6Oubt1Bg", "selectedActions": [68, 81, 9]}, {"groupId": "qWyImgLB", "selectedActions": [29, 65, 55]}, {"groupId": "rpqsDO0X", "selectedActions": [48, 56, 22]}]}], "namespace": "uArZhDSJ", "oauthAccessTokenExpiration": 34, "oauthAccessTokenExpirationTimeUnit": "zqbZMw6T", "oauthRefreshTokenExpiration": 13, "oauthRefreshTokenExpirationTimeUnit": "6DmAXNhc", "redirectUri": "Ryttcf5P", "scopes": ["nfYfdbP5", "yuPM6qX0", "giDTSHMg"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'jSmUxLVQ' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 75, "resource": "prRfp5sc"}, {"action": 6, "resource": "BZnYw2Ia"}, {"action": 58, "resource": "5Hqt3gQy"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'UEz8rgUl' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 65, "resource": "33OsGYIJ"}, {"action": 33, "resource": "2BvOwGqU"}, {"action": 20, "resource": "5VaPfzDH"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '30' \
    --clientId 'locLCZYO' \
    --namespace $AB_NAMESPACE \
    --resource 'Kdx7IP6b' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'zJhJ9P3l' \
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
    --body '{"blacklist": ["p7aJTJpm", "Y0Da6avS", "Wt5OBLWr"]}' \
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
    --body '{"active": true, "roleIds": ["r2B6JRp3", "IVkABzE2", "MsaPx8To"]}' \
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
    --limit '11' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PvjoMK22' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dKlPkWkT' \
    --body '{"ACSURL": "pwJ2NPDo", "AWSCognitoRegion": "x6pAp5ZD", "AWSCognitoUserPool": "6CDDwU86", "AllowedClients": ["aRAKDCGH", "nas7Y8cv", "AJc4eVCy"], "AppId": "wadpKYFC", "AuthorizationEndpoint": "fQnr0YJb", "ClientId": "LmKW1sUF", "EmptyStrFieldList": ["huLL8W9b", "Jk6Gzicw", "yI2yLX2s"], "EnableServerLicenseValidation": false, "Environment": "mpDgNlj9", "FederationMetadataURL": "UunCPRJi", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "XS3srEn9", "JWKSEndpoint": "4V9hV8Uw", "KeyID": "vWBBFpKM", "LogoURL": "yh5QTuMe", "NetflixCertificates": {"encryptedPrivateKey": "Xdlhh7ER", "encryptedPrivateKeyName": "GiDyz9bq", "publicCertificate": "T8XgWkzU", "publicCertificateName": "zt9nwoFx", "rootCertificate": "rjTk4SEL", "rootCertificateName": "HMGxJc4e"}, "OrganizationId": "BEftWQy5", "PlatformName": "UYyHtXhe", "RedirectUri": "z4qI4yJn", "RegisteredDomains": [{"affectedClientIDs": ["vSUuqnol", "nxabGVBI", "AWb20ae2"], "domain": "jtnh35NH", "namespaces": ["MaMyrtQy", "kmRAGqNQ", "vZJ8Uvwp"], "roleId": "yy2B4qBi"}, {"affectedClientIDs": ["y7TqxyAb", "Rgq5XX6K", "nqBxor0r"], "domain": "4yPOZrpW", "namespaces": ["C9L52qHN", "BXvsetJY", "o13YxC89"], "roleId": "Sz9P6EBR"}, {"affectedClientIDs": ["GmfNcFDR", "axiwjgdH", "2ZMUqTlx"], "domain": "Uifh3gRg", "namespaces": ["8WUI9Rie", "W2yTF8zI", "HBmzaOX6"], "roleId": "NISAh7pG"}], "Secret": "IV5NtoOQ", "TeamID": "nwNgFt2K", "TokenAuthenticationType": "lp2dqd74", "TokenClaimsMapping": {"prGoTsFL": "2ZSOy2HC", "j3pObUtO": "YD4nZA2C", "35TUptsL": "hikdXvU4"}, "TokenEndpoint": "R7fkhAEq", "UserInfoEndpoint": "ALhbcQIg", "UserInfoHTTPMethod": "FGmZtli2", "scopes": ["mzqemyqI", "lcuhqvpp", "UgIDMUY7"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cSAbtUy7' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WHk1lBf9' \
    --body '{"ACSURL": "MEWPu8H7", "AWSCognitoRegion": "8qKllPSA", "AWSCognitoUserPool": "ZLRQzYJQ", "AllowedClients": ["SwIfuuqp", "GpqyFFCq", "5wX7PbLi"], "AppId": "Qo2thDv3", "AuthorizationEndpoint": "FubDPAfk", "ClientId": "ZphpJU4C", "EmptyStrFieldList": ["lyGROKKW", "6Pmo5a6e", "Wo4zgAeC"], "EnableServerLicenseValidation": false, "Environment": "EInkqIdn", "FederationMetadataURL": "Dte3soQ3", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": true, "Issuer": "xSiLT9s0", "JWKSEndpoint": "mboSbExY", "KeyID": "z7s71Plk", "LogoURL": "VIfQFm2c", "NetflixCertificates": {"encryptedPrivateKey": "mAw9GAxp", "encryptedPrivateKeyName": "KkfJoKSe", "publicCertificate": "gRLaZfha", "publicCertificateName": "srtx7OZM", "rootCertificate": "JiGVXcxJ", "rootCertificateName": "EPGwmqEC"}, "OrganizationId": "swVUNMkC", "PlatformName": "tEWdTHdC", "RedirectUri": "gMLArRGF", "RegisteredDomains": [{"affectedClientIDs": ["MfUlOLyE", "XDlnAHJy", "u9ytvTA1"], "domain": "8A0x4G1L", "namespaces": ["8SPtRP52", "PceVoHyo", "mWMKXqMD"], "roleId": "ma4Jnw4w"}, {"affectedClientIDs": ["67nkfxq9", "yJ0BzdXY", "YXUgrYJF"], "domain": "FgM0Ik2y", "namespaces": ["jwgqxZSn", "Vc98LuHS", "y7fTJewW"], "roleId": "zH1yqoKA"}, {"affectedClientIDs": ["w0iAA8wi", "RoZkF19x", "gGQcnrJU"], "domain": "ufValv2q", "namespaces": ["mG3CiiuI", "tD5P8vtK", "8Ys4l2VI"], "roleId": "bPKB5pBR"}], "Secret": "yuBPDzt3", "TeamID": "NazQ1T04", "TokenAuthenticationType": "JapcHY1t", "TokenClaimsMapping": {"DAobxm8y": "tjUDZI2R", "da54mthk": "JIeOw2Rs", "xOIeMa3s": "Hx2XdaES"}, "TokenEndpoint": "m7xpgxNu", "UserInfoEndpoint": "4Ppwihe6", "UserInfoHTTPMethod": "QZxmVbSd", "scopes": ["RLI6ByUi", "8xup59hB", "OikcbQQw"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cGmXml9G' \
    --body '{"affectedClientIDs": ["krgcFVp8", "iceAgs8O", "6Tiq7pvZ"], "assignedNamespaces": ["nhA2YGwb", "T9qTGIT7", "K8duYTy6"], "domain": "C8ZUByGg", "roleId": "Rfm5Gnyo"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BEjD0wWy' \
    --body '{"domain": "XL3wHNMJ"}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'JQnk0ukT' \
    > test.out 2>&1
eval_tap $? 148 'RetrieveSSOLoginPlatformCredential' test.out

#- 149 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'fahNIxsx' \
    --body '{"acsUrl": "cezgY3GU", "apiKey": "p3SCkuaR", "appId": "7VZiivAh", "federationMetadataUrl": "QoAei8wG", "isActive": false, "redirectUri": "FL5uzyvI", "secret": "qGC4MZ2I", "ssoUrl": "p6JygLU8"}' \
    > test.out 2>&1
eval_tap $? 149 'AddSSOLoginPlatformCredential' test.out

#- 150 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5oAvmL4g' \
    > test.out 2>&1
eval_tap $? 150 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 151 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'tc5WUWzT' \
    --body '{"acsUrl": "kn8u5mfm", "apiKey": "6hyvV82H", "appId": "8G17hFfU", "federationMetadataUrl": "6yky9Tp1", "isActive": false, "redirectUri": "q9dnn98Q", "secret": "n8coawk6", "ssoUrl": "CVLbmnby"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateSSOPlatformCredential' test.out

#- 152 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8JzOmY8e' \
    --rawPID 'false' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["5PHbhcR8", "RwkARLYE", "e58tIXKe"]}' \
    > test.out 2>&1
eval_tap $? 152 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 153 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '40RGFSXS' \
    --platformUserId '7weBtqRZ' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByPlatformUserIDV3' test.out

#- 154 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetProfileUpdateStrategyV3' test.out

#- 155 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    --body '{"config": {"minimumAllowedInterval": 89}, "type": "rWTSf0u2"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 156 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetRoleOverrideConfigV3' test.out

#- 157 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"additions": [{"actions": [14, 26, 92], "resource": "27PuxCDh"}, {"actions": [85, 5, 45], "resource": "zO1lYXso"}, {"actions": [15, 75, 29], "resource": "ccAo6vuz"}], "exclusions": [{"actions": [23, 5, 68], "resource": "EpOoscdn"}, {"actions": [70, 52, 27], "resource": "3CKjm3nx"}, {"actions": [100, 82, 48], "resource": "ckH2yhoM"}], "overrides": [{"actions": [61, 77, 53], "resource": "ZxvQcXAJ"}, {"actions": [34, 88, 50], "resource": "1uNZqFUo"}, {"actions": [66, 11, 51], "resource": "699G4KVn"}], "replacements": [{"replacement": {"actions": [51, 31, 62], "resource": "Bhfl3PX6"}, "target": "whnFkB8k"}, {"replacement": {"actions": [2, 96, 41], "resource": "tHDCf0ZC"}, "target": "51CXxGqH"}, {"replacement": {"actions": [6, 73, 4], "resource": "0ghjr3Rv"}, "target": "BsFXU1oa"}]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateRoleOverrideConfigV3' test.out

#- 158 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetRoleSourceV3' test.out

#- 159 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 160 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Ou3jgPcV' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetRoleNamespacePermissionV3' test.out

#- 161 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '3vR5zjHt' \
    --after '2' \
    --before '49' \
    --limit '4' \
    > test.out 2>&1
eval_tap $? 161 'GetAdminUsersByRoleIdV3' test.out

#- 162 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'pON8S4mt' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserByEmailAddressV3' test.out

#- 163 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["xSFn6tHb", "b60INGNI", "y6qj3Hfi"]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminBulkUpdateUsersV3' test.out

#- 164 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'aHaK6fI0' \
    --body '{"bulkUserId": ["vb1bfhAK", "ZloPjcot", "CwfCfrlO"]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetBulkUserBanV3' test.out

#- 165 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zxlO87O0", "wbIyaBPG", "Cq7CfExG"]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminListUserIDByUserIDsV3' test.out

#- 166 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["9Z7hIwBB", "QIVMa1Vd", "H4GTBNG9"]}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBulkGetUsersPlatform' test.out

#- 167 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["k1zh36jE", "jEmNu6pr", "2lN49lvB"], "isAdmin": true, "languageTag": "fEpzyvCt", "namespace": "RIwPQTR9", "roles": ["YbZIco11", "oQ8rqkjU", "0a74L151"]}' \
    > test.out 2>&1
eval_tap $? 167 'AdminInviteUserV3' test.out

#- 168 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '97' \
    --platformUserId 'suWHJm7J' \
    --platformId '1qMycqbp' \
    > test.out 2>&1
eval_tap $? 168 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 169 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 169 'AdminListUsersV3' test.out

#- 170 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'HuRO2Pui' \
    --endDate 'MDFirlEf' \
    --includeTotal 'true' \
    --limit '21' \
    --offset '23' \
    --platformBy 'rnELHN6U' \
    --platformId 'G8pOt6mS' \
    --query 'PP7gvAtK' \
    --roleIds 'f9KCJtLX' \
    --skipLoginQueue 'false' \
    --startDate 'y647qqw7' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 170 'AdminSearchUserV3' test.out

#- 171 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["kzUIppwz", "xJ7oTn9b", "o3embG8c"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetBulkUserByEmailAddressV3' test.out

#- 172 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b9NkYk58' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByUserIdV3' test.out

#- 173 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mbp96B4g' \
    --body '{"avatarUrl": "F4E9jTB9", "country": "N8aomNIm", "dateOfBirth": "jQQSYLA3", "displayName": "9rTE6ug8", "languageTag": "6YQIz4Bg", "skipLoginQueue": true, "uniqueDisplayName": "ndlYmdoA", "userName": "9iFFbcZd"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserV3' test.out

#- 174 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId '0L2SnkMb' \
    --activeOnly 'true' \
    --after 'aY3p91Hj' \
    --before '5ZcJhO6C' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserBanV3' test.out

#- 175 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TZOgRTAj' \
    --body '{"ban": "QwEhhJLM", "comment": "0Hresn1d", "endDate": "fZGJEqJY", "reason": "dG9l85Xd", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 175 'AdminBanUserV3' test.out

#- 176 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId '5uv3P8Gt' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserBanSummaryV3' test.out

#- 177 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '5bIN4MmO' \
    --namespace $AB_NAMESPACE \
    --userId 'EporpUxO' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 177 'AdminUpdateUserBanV3' test.out

#- 178 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b02fvO1D' \
    --body '{"context": "jGPFx2EX", "emailAddress": "iunY9v45", "languageTag": "BWHaKdbP", "upgradeToken": "c6YTN1ni"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminSendVerificationCodeV3' test.out

#- 179 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fwnmBE53' \
    --body '{"Code": "zaxsqEzj", "ContactType": "C12JZspS", "LanguageTag": "Amfu9dSa", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyAccountV3' test.out

#- 180 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'G8XGYayg' \
    > test.out 2>&1
eval_tap $? 180 'GetUserVerificationCode' test.out

#- 181 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '5eeu4Ntn' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserDeletionStatusV3' test.out

#- 182 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'E1bLCWh8' \
    --body '{"deletionDate": 29, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserDeletionStatusV3' test.out

#- 183 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YMWvuNiH' \
    > test.out 2>&1
eval_tap $? 183 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 184 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'C9TgSjm9' \
    --body '{"code": "BUtcQvQU", "country": "oa04pV8V", "dateOfBirth": "X6phaPSE", "displayName": "noSsFqNM", "emailAddress": "6U43Y7nL", "password": "GaLNp8ef", "uniqueDisplayName": "6FFDdL05", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpgradeHeadlessAccountV3' test.out

#- 185 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hHtgFa5y' \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteUserInformationV3' test.out

#- 186 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PbGd9TC9' \
    --after '0.5639492915108205' \
    --before '0.6068419874541502' \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserLoginHistoriesV3' test.out

#- 187 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'E2xKEue0' \
    --body '{"languageTag": "sacS9o1j", "mfaToken": "smR9dN7m", "newPassword": "owcxw9xc", "oldPassword": "eJ0aKME1"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminResetPasswordV3' test.out

#- 188 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UhP3o8ce' \
    --body '{"Permissions": [{"Action": 82, "Resource": "Bz9Iezyg", "SchedAction": 8, "SchedCron": "8JXOadZ8", "SchedRange": ["NC9pL3NK", "m8L5Moje", "UYhHuIw3"]}, {"Action": 4, "Resource": "O5CFShBm", "SchedAction": 2, "SchedCron": "8ddqro7p", "SchedRange": ["7ASiXe3c", "JbyJpeK0", "EzwMn1b4"]}, {"Action": 38, "Resource": "VC0PrlTp", "SchedAction": 69, "SchedCron": "s8I4Oonf", "SchedRange": ["UfA2ynXR", "mVGLXVng", "S4GwwZbv"]}]}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserPermissionV3' test.out

#- 189 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wwQADDxy' \
    --body '{"Permissions": [{"Action": 15, "Resource": "3fEiJZtM", "SchedAction": 26, "SchedCron": "6Y5jYqrM", "SchedRange": ["knVgN5I0", "xMQ9bo4E", "tXbI53st"]}, {"Action": 34, "Resource": "yw2t0uQa", "SchedAction": 71, "SchedCron": "ebaIKhch", "SchedRange": ["6Dm0CiPW", "WjTNnjmI", "3sBKZAC2"]}, {"Action": 36, "Resource": "pjTSH0x6", "SchedAction": 95, "SchedCron": "YzcjBs6C", "SchedRange": ["vnkGprgt", "xYPqmXdl", "U0uJieDv"]}]}' \
    > test.out 2>&1
eval_tap $? 189 'AdminAddUserPermissionsV3' test.out

#- 190 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ESlr2xg8' \
    --body '[{"Action": 53, "Resource": "qup8bpdX"}, {"Action": 88, "Resource": "rBXadmtO"}, {"Action": 49, "Resource": "MUGl3ziY"}]' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserPermissionBulkV3' test.out

#- 191 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '83' \
    --namespace $AB_NAMESPACE \
    --resource 'CRvn7N83' \
    --userId 'Iw0NN3HC' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserPermissionV3' test.out

#- 192 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'f3worGcc' \
    --after 'HCwVC5V9' \
    --before 'tAs9a7Dc' \
    --limit '49' \
    --platformId 'muNlhwed' \
    --targetNamespace 'S5pp5Sak' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserPlatformAccountsV3' test.out

#- 193 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Uxdr16Mz' \
    --status 'HXSROzoS' \
    > test.out 2>&1
eval_tap $? 193 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 194 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'F0QSkgu3' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetListJusticePlatformAccounts' test.out

#- 195 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'uCOpaLkq' \
    --userId 'SrRhoslg' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetUserMapping' test.out

#- 196 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'g1F1iPnD' \
    --userId 'rSrA9XBj' \
    > test.out 2>&1
eval_tap $? 196 'AdminCreateJusticeUser' test.out

#- 197 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'Gfer50AQ' \
    --skipConflict 'true' \
    --body '{"platformId": "KMaPRwbZ", "platformUserId": "YpujPGwD"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminLinkPlatformAccount' test.out

#- 198 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uSJsQyIs' \
    --platformId 'w5A2Fc1O' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserLinkHistoriesV3' test.out

#- 199 AdminPlatformUnlinkV3
eval_tap 0 199 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 200 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5XHpp9cF' \
    --userId '4N15YUct' \
    > test.out 2>&1
eval_tap $? 200 'AdminPlatformUnlinkAllV3' test.out

#- 201 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wPow9bAW' \
    --userId 'Z5f3vHbU' \
    --ticket 'AcnOanx8' \
    > test.out 2>&1
eval_tap $? 201 'AdminPlatformLinkV3' test.out

#- 202 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 202 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 203 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uK31ujn7' \
    --userId 'RBBkJRb3' \
    > test.out 2>&1
eval_tap $? 203 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 204 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ahzpMO5Z' \
    --userId 'yfoJmTZE' \
    --platformToken '4gclzseL' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 205 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'SPjC97tv' \
    --userId 'MPGFJnrq' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetUserSinglePlatformAccount' test.out

#- 206 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gIA6z5CE' \
    --body '["AzgZ1rM1", "CsAU2wJD", "mZ2pNQlp"]' \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteUserRolesV3' test.out

#- 207 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MWEuWIzU' \
    --body '[{"namespace": "9qySx2B8", "roleId": "45ivIbyr"}, {"namespace": "S3wsgsQV", "roleId": "2qM1voSg"}, {"namespace": "JrOc9N3W", "roleId": "2sCPoQUs"}]' \
    > test.out 2>&1
eval_tap $? 207 'AdminSaveUserRoleV3' test.out

#- 208 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'JZE6VljN' \
    --userId '5jkeDCm8' \
    > test.out 2>&1
eval_tap $? 208 'AdminAddUserRoleV3' test.out

#- 209 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'jW1CFKiB' \
    --userId 'wAu9UvsF' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserRoleV3' test.out

#- 210 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NJKhbTxo' \
    --body '{"enabled": false, "reason": "Fn1aWwfy"}' \
    > test.out 2>&1
eval_tap $? 210 'AdminUpdateUserStatusV3' test.out

#- 211 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'vS7bkPsm' \
    --body '{"emailAddress": "PIKJ5iZR", "password": "4SW3uqN4"}' \
    > test.out 2>&1
eval_tap $? 211 'AdminTrustlyUpdateUserIdentity' test.out

#- 212 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DIBSF59W' \
    > test.out 2>&1
eval_tap $? 212 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 213 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'ChfNFdOP' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "KJS1R7Tp"}' \
    > test.out 2>&1
eval_tap $? 213 'AdminUpdateClientSecretV3' test.out

#- 214 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId '4GavAFjx' \
    > test.out 2>&1
eval_tap $? 214 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 215 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'uOD48QhP' \
    --before 'N35iiaVT' \
    --isWildcard 'false' \
    --limit '98' \
    > test.out 2>&1
eval_tap $? 215 'AdminGetRolesV3' test.out

#- 216 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "z6et8UGn", "namespace": "ZflUxcsH", "userId": "YBHT8M4U"}, {"displayName": "Z3lsZS4D", "namespace": "34NMKICd", "userId": "O5wTGGjf"}, {"displayName": "Mjwnb1rB", "namespace": "aO2ypdd7", "userId": "hzzyBveU"}], "members": [{"displayName": "8uuch1LQ", "namespace": "VVVEcZW0", "userId": "5KagUHVA"}, {"displayName": "3WKCuA8F", "namespace": "3foQuRFv", "userId": "WArvDkPO"}, {"displayName": "XzdCmDk4", "namespace": "cxhkZKDo", "userId": "ffrzQP2K"}], "permissions": [{"action": 15, "resource": "XXG9pP6e", "schedAction": 100, "schedCron": "RcEt7Q8B", "schedRange": ["JsHe5bVn", "NgrSZfY8", "hyQXy6ka"]}, {"action": 11, "resource": "AjmStZpp", "schedAction": 35, "schedCron": "1gT8GiZe", "schedRange": ["bg1MSN6A", "vjjqYZOd", "AY1Oi576"]}, {"action": 48, "resource": "vUTxevJv", "schedAction": 90, "schedCron": "yQSip68l", "schedRange": ["ledz0ni6", "r5JZ0Nvh", "TkCjW9Lr"]}], "roleName": "NyjXUDn2"}' \
    > test.out 2>&1
eval_tap $? 216 'AdminCreateRoleV3' test.out

#- 217 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'QRwAewc5' \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRoleV3' test.out

#- 218 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'vCIxjTk7' \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRoleV3' test.out

#- 219 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'XwJoQDqZ' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "LE3eRekz"}' \
    > test.out 2>&1
eval_tap $? 219 'AdminUpdateRoleV3' test.out

#- 220 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'Cerqg85k' \
    > test.out 2>&1
eval_tap $? 220 'AdminGetRoleAdminStatusV3' test.out

#- 221 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'S5NjQ24M' \
    > test.out 2>&1
eval_tap $? 221 'AdminUpdateAdminRoleStatusV3' test.out

#- 222 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'zMmUwHfx' \
    > test.out 2>&1
eval_tap $? 222 'AdminRemoveRoleAdminV3' test.out

#- 223 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '6fbsuLaR' \
    --after 'YoxZOu3m' \
    --before 'xopkXCCG' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 223 'AdminGetRoleManagersV3' test.out

#- 224 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'IIWMTmVB' \
    --body '{"managers": [{"displayName": "cfH2fGy1", "namespace": "20O1h1Ki", "userId": "yb75zIqw"}, {"displayName": "zyCzLncI", "namespace": "e5VVUxE7", "userId": "KTdWyaYI"}, {"displayName": "tihxmiKL", "namespace": "6ZRAv37I", "userId": "vmH3xpAN"}]}' \
    > test.out 2>&1
eval_tap $? 224 'AdminAddRoleManagersV3' test.out

#- 225 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '7OXI2gOv' \
    --body '{"managers": [{"displayName": "r7XopkzJ", "namespace": "hp9mXmav", "userId": "Ls4gFLIe"}, {"displayName": "G7nbHvTX", "namespace": "cuw3Y93s", "userId": "7BHfgSbP"}, {"displayName": "g80ejOCL", "namespace": "Zf1hlQUO", "userId": "llePoIj6"}]}' \
    > test.out 2>&1
eval_tap $? 225 'AdminRemoveRoleManagersV3' test.out

#- 226 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'yvBl0mmJ' \
    --after 'S6CZknTp' \
    --before 'CTVN1bWU' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 226 'AdminGetRoleMembersV3' test.out

#- 227 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'HG7KMKn1' \
    --body '{"members": [{"displayName": "ZbHTkdcv", "namespace": "dxfDcPSs", "userId": "8EcUKEcg"}, {"displayName": "gt3BQGjt", "namespace": "POBmF0vR", "userId": "f5QeKCp5"}, {"displayName": "Qp1JdVBW", "namespace": "5Xqxbuh9", "userId": "Ek2PNvqc"}]}' \
    > test.out 2>&1
eval_tap $? 227 'AdminAddRoleMembersV3' test.out

#- 228 AdminRemoveRoleMembersV3
eval_tap 0 228 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 229 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'kEJD9mXO' \
    --body '{"permissions": [{"action": 88, "resource": "2NiwkIzO", "schedAction": 27, "schedCron": "bpS0v5df", "schedRange": ["cOXgYvXB", "9ipBYvvc", "d8dE5Fy8"]}, {"action": 38, "resource": "LZLyHbHa", "schedAction": 63, "schedCron": "5KDKO8Bw", "schedRange": ["QouRML9E", "jH3pebF6", "ibPBFR0f"]}, {"action": 72, "resource": "SQHi9LsL", "schedAction": 25, "schedCron": "QOrv6amL", "schedRange": ["UscEd16W", "xBof2Mqv", "iABYaHhK"]}]}' \
    > test.out 2>&1
eval_tap $? 229 'AdminUpdateRolePermissionsV3' test.out

#- 230 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'iKRUt5EX' \
    --body '{"permissions": [{"action": 59, "resource": "o8RKvfIt", "schedAction": 66, "schedCron": "1r6EMAQU", "schedRange": ["MhVn85Pg", "rOD7oyzO", "JGxJ140c"]}, {"action": 5, "resource": "bsOJbr69", "schedAction": 68, "schedCron": "0XtKECEN", "schedRange": ["qMd4XaY4", "LsKnVdqk", "fT26fWhz"]}, {"action": 85, "resource": "WNiwfxKb", "schedAction": 60, "schedCron": "gXuX1N0L", "schedRange": ["DlLBkiAu", "CDYksJy9", "8hkoncAI"]}]}' \
    > test.out 2>&1
eval_tap $? 230 'AdminAddRolePermissionsV3' test.out

#- 231 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'p7FR486m' \
    --body '["a9dm0Z18", "a7s4utNv", "ZmvSNhIc"]' \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRolePermissionsV3' test.out

#- 232 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '55' \
    --resource 'Eyy2NzRC' \
    --roleId 'm9oPRYhf' \
    > test.out 2>&1
eval_tap $? 232 'AdminDeleteRolePermissionV3' test.out

#- 233 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 233 'AdminGetMyUserV3' test.out

#- 234 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'q0LKhvDV' \
    --extendExp 'true' \
    --redirectUri '1h8lRVw2' \
    --password '6AGla3AP' \
    --requestId 'NKdwSAcR' \
    --userName 'LXw1muG2' \
    > test.out 2>&1
eval_tap $? 234 'UserAuthenticationV3' test.out

#- 235 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'LwbwDqbX' \
    --linkingToken 'pjPJtsdm' \
    --password 'YPtTv3a7' \
    --username 'yonSLB0W' \
    > test.out 2>&1
eval_tap $? 235 'AuthenticationWithPlatformLinkV3' test.out

#- 236 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId '2Y8TR6qi' \
    --linkingToken 'plKlSJwC' \
    --password '69X8R5jM' \
    --username 'T47UXUAA' \
    > test.out 2>&1
eval_tap $? 236 'AuthenticateAndLinkForwardV3' test.out

#- 237 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 's8j19FDC' \
    --extendExp 'true' \
    --linkingToken 'tTC3wrZb' \
    > test.out 2>&1
eval_tap $? 237 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 238 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'NDVwXnNL' \
    --state 'eehOSJEh' \
    --platformId '8hnT7LkE' \
    > test.out 2>&1
eval_tap $? 238 'RequestOneTimeLinkingCodeV3' test.out

#- 239 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'SzCEC7Hf' \
    > test.out 2>&1
eval_tap $? 239 'ValidateOneTimeLinkingCodeV3' test.out

#- 240 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'yWfgjRtd' \
    --isTransient 'true' \
    --clientId '2J7zXD52' \
    --oneTimeLinkCode 'uqd4r8I9' \
    > test.out 2>&1
eval_tap $? 240 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 241 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 241 'GetCountryLocationV3' test.out

#- 242 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 242 'Logout' test.out

#- 243 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'cQVBwY0i' \
    --codeChallengeMethod 'plain' \
    --clientId 'A0t8iggc' \
    > test.out 2>&1
eval_tap $? 243 'RequestTokenExchangeCodeV3' test.out

#- 244 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5s9p9KcU' \
    --userId 'lQhByX1U' \
    --platformUserId 'HW7Kdd3c' \
    > test.out 2>&1
eval_tap $? 244 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 245 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xugnNpsv' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 245 'RevokeUserV3' test.out

#- 246 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'r6tvdJlt' \
    --codeChallenge 'n9Qxiatv' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --loginWebBased 'false' \
    --nonce '9xPxdFv2' \
    --oneTimeLinkCode 'FyYu0SeE' \
    --redirectUri '16bEOikJ' \
    --scope 'XZdW4yug' \
    --state 'jg78cN3I' \
    --targetAuthPage 'EUbk8L1Y' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'EEfOx0px' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 246 'AuthorizeV3' test.out

#- 247 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'vTF3so0N' \
    > test.out 2>&1
eval_tap $? 247 'TokenIntrospectionV3' test.out

#- 248 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 248 'GetJWKSV3' test.out

#- 249 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '7AwjZoku' \
    --factor 'W1uz8gwG' \
    --mfaToken '9G57tFEe' \
    > test.out 2>&1
eval_tap $? 249 'SendMFAAuthenticationCode' test.out

#- 250 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'Bz2JXymD' \
    --mfaToken 'qbfQC18Z' \
    > test.out 2>&1
eval_tap $? 250 'Change2faMethod' test.out

#- 251 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'sEdHVacz' \
    --factor 'a5NTmWZf' \
    --mfaToken 'ODgyuiIY' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 251 'Verify2faCode' test.out

#- 252 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'ifpaUNCQ' \
    --factors 'M92V3UBn' \
    --rememberDevice 'true' \
    --clientId '2iHhH6ZA' \
    --code '73jqyXm6' \
    --factor 'OWruFnBu' \
    --mfaToken '3bxvUhgh' \
    > test.out 2>&1
eval_tap $? 252 'Verify2faCodeForward' test.out

#- 253 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4S8qciO8' \
    --userId 'rdgayamh' \
    > test.out 2>&1
eval_tap $? 253 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 254 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'Akr651jR' \
    --clientId '5wbWNgX2' \
    --redirectUri 'hvGlCfmS' \
    --requestId 'Hf5cCYY3' \
    > test.out 2>&1
eval_tap $? 254 'AuthCodeRequestV3' test.out

#- 255 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'p0E1wTWy' \
    --additionalData 'FnKqMY3g' \
    --clientId 'ST9g4gWw' \
    --createHeadless 'false' \
    --deviceId 'U2dCmcoe' \
    --macAddress 'X9pSZLUz' \
    --platformToken 'X0fGRHCG' \
    --serviceLabel '0.17706330459397635' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 255 'PlatformTokenGrantV3' test.out

#- 256 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 256 'GetRevocationListV3' test.out

#- 257 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'JvzzF77C' \
    > test.out 2>&1
eval_tap $? 257 'TokenRevocationV3' test.out

#- 258 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'MKhZMhYx' \
    --simultaneousTicket '7vAGUBVZ' \
    --nativePlatform 'steam' \
    --nativePlatformTicket '6P8ffEiT' \
    > test.out 2>&1
eval_tap $? 258 'SimultaneousLoginV3' test.out

#- 259 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'BHWCYnt3' \
    --clientId 'c3T0Ib1P' \
    --clientSecret 'CZrZVeY4' \
    --code 'aLOVXRYY' \
    --codeVerifier 'E2bE0YTA' \
    --extendNamespace 'JNDuUmTE' \
    --extendExp 'true' \
    --password 'ZvMwlEj9' \
    --redirectUri 'OdPCBRa3' \
    --refreshToken 'apVtCQXk' \
    --username 'ua51M0V6' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 259 'TokenGrantV3' test.out

#- 260 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '5SRWWoXm' \
    > test.out 2>&1
eval_tap $? 260 'VerifyTokenV3' test.out

#- 261 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'GnLw63zY' \
    --code '37i3eWmY' \
    --error 'V6Lu2v8y' \
    --openidAssocHandle 'XeqrdZP2' \
    --openidClaimedId '5viXB6ER' \
    --openidIdentity 'TTQRQLlz' \
    --openidMode 'lL9pU1iK' \
    --openidNs 'XBO9rdri' \
    --openidOpEndpoint 'BqDYprH8' \
    --openidResponseNonce 'M33qhTfv' \
    --openidReturnTo 'uKuhL2KM' \
    --openidSig 'arpZuQ3U' \
    --openidSigned 'TWk3My6y' \
    --state 'fPWmnKTM' \
    > test.out 2>&1
eval_tap $? 261 'PlatformAuthenticationV3' test.out

#- 262 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'qfTMSOCK' \
    --platformToken '9EfodR6x' \
    > test.out 2>&1
eval_tap $? 262 'PlatformTokenRefreshV3' test.out

#- 263 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'n039Po42' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetInputValidations' test.out

#- 264 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'zzng4VUB' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetInputValidationByField' test.out

#- 265 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '0NZTaYjH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 265 'PublicGetCountryAgeRestrictionV3' test.out

#- 266 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'XRTY25lH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 266 'PublicGetConfigValueV3' test.out

#- 267 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 267 'PublicGetCountryListV3' test.out

#- 268 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 268 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 269 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'cXnaNSG9' \
    > test.out 2>&1
eval_tap $? 269 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 270 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 270 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 271 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '70bytssJ' \
    --platformUserId 'ef3OhLOz' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserByPlatformUserIDV3' test.out

#- 272 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetProfileUpdateStrategyV3' test.out

#- 273 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'QKb26niB' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetAsyncStatus' test.out

#- 274 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '5NphjYED' \
    --limit '0' \
    --offset '12' \
    --platformBy 'upv7j1s1' \
    --platformId 'NK5YSipW' \
    --query 'QSJJXysf' \
    > test.out 2>&1
eval_tap $? 274 'PublicSearchUserV3' test.out

#- 275 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "p00bkhGD", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "c7QoCQ8L", "policyId": "DEY4gm5m", "policyVersionId": "cSuOhOTX"}, {"isAccepted": false, "localizedPolicyVersionId": "fsWVqnXA", "policyId": "fb2RWAeC", "policyVersionId": "2Yd5aohB"}, {"isAccepted": true, "localizedPolicyVersionId": "FKWpd4Ej", "policyId": "58u4SCIN", "policyVersionId": "P8hKGiOj"}], "authType": "EorO1HsS", "code": "6lxbRi31", "country": "fsXQm84H", "dateOfBirth": "FvIDK7ry", "displayName": "xYBC6RGP", "emailAddress": "mBBaepXa", "password": "r2yGw8ml", "reachMinimumAge": false, "uniqueDisplayName": "3IXTB0KE"}' \
    > test.out 2>&1
eval_tap $? 275 'PublicCreateUserV3' test.out

#- 276 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'uVajoC2Z' \
    --query '8ZiYdqIL' \
    > test.out 2>&1
eval_tap $? 276 'CheckUserAvailability' test.out

#- 277 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Yv3aVIS4", "vhJ5qzQC", "SPVUgxKR"]}' \
    > test.out 2>&1
eval_tap $? 277 'PublicBulkGetUsers' test.out

#- 278 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "rZMIjbst", "languageTag": "vmbkEWad"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicSendRegistrationCode' test.out

#- 279 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Y8CT0oNG", "emailAddress": "M5JJCtWv"}' \
    > test.out 2>&1
eval_tap $? 279 'PublicVerifyRegistrationCode' test.out

#- 280 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Inyupr7M", "languageTag": "xfImHT63"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicForgotPasswordV3' test.out

#- 281 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "618vnH5S", "password": "rXoJ6Yoq", "uniqueDisplayName": "rnT4ugdO", "username": "17HLmCQp"}' \
    > test.out 2>&1
eval_tap $? 281 'PublicValidateUserInput' test.out

#- 282 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'hHGSswSQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 282 'GetAdminInvitationV3' test.out

#- 283 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'gSbUWDDN' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "yPE6xbq1", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "4Qy7LpXx", "policyId": "rSiu36BU", "policyVersionId": "yhCccQ1t"}, {"isAccepted": true, "localizedPolicyVersionId": "JFaS45WQ", "policyId": "PVtiXBnd", "policyVersionId": "Icu6qOoW"}, {"isAccepted": false, "localizedPolicyVersionId": "IwkaUFTj", "policyId": "QMF7zMKR", "policyVersionId": "NG8NvOC1"}], "authType": "d7LzIzRj", "code": "ktq7oiTq", "country": "ml2t3YmV", "dateOfBirth": "Jd9zroKE", "displayName": "z3qM3AFN", "emailAddress": "9IZTj1vf", "password": "4QV5352v", "reachMinimumAge": true, "uniqueDisplayName": "61oOYOy4"}' \
    > test.out 2>&1
eval_tap $? 283 'CreateUserFromInvitationV3' test.out

#- 284 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "BNE27Hsq", "country": "picZHwOH", "dateOfBirth": "OKcuyvOM", "displayName": "ZqLIkiJj", "languageTag": "GQ2VRsBo", "uniqueDisplayName": "wljX2wfj", "userName": "kQPuDX79"}' \
    > test.out 2>&1
eval_tap $? 284 'UpdateUserV3' test.out

#- 285 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "cMNjSSQY", "country": "Kqn5pmWj", "dateOfBirth": "zcqbZtnw", "displayName": "iX8EL8Pa", "languageTag": "jkU44GeG", "uniqueDisplayName": "2P2sTxdW", "userName": "Z5sKsDV3"}' \
    > test.out 2>&1
eval_tap $? 285 'PublicPartialUpdateUserV3' test.out

#- 286 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "agaaDh6J", "emailAddress": "zm12PWnI", "languageTag": "tfgEaH6v", "upgradeToken": "HWaVXxj7"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationCodeV3' test.out

#- 287 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CnJDW817", "contactType": "u9FxZpTO", "languageTag": "SDJc2ypX", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 287 'PublicUserVerificationV3' test.out

#- 288 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "nkLa7bRq", "country": "b9edar9N", "dateOfBirth": "hxaMks7u", "displayName": "OzjSiVi4", "emailAddress": "DXc0w76c", "password": "6fDdnQoe", "uniqueDisplayName": "fCJ0uBpF", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 288 'PublicUpgradeHeadlessAccountV3' test.out

#- 289 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "PE5xqXHq", "password": "VLeb9pvp"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicVerifyHeadlessAccountV3' test.out

#- 290 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "ttR2Ldhc", "mfaToken": "pUmeclFI", "newPassword": "i2yzBIcw", "oldPassword": "H7fkDm8l"}' \
    > test.out 2>&1
eval_tap $? 290 'PublicUpdatePasswordV3' test.out

#- 291 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '0hREYqjy' \
    > test.out 2>&1
eval_tap $? 291 'PublicCreateJusticeUser' test.out

#- 292 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dgAN1FcO' \
    --redirectUri 'hqXGLGON' \
    --ticket 'QRlhIesB' \
    > test.out 2>&1
eval_tap $? 292 'PublicPlatformLinkV3' test.out

#- 293 PublicPlatformUnlinkV3
eval_tap 0 293 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 294 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'S3R7Ydsn' \
    > test.out 2>&1
eval_tap $? 294 'PublicPlatformUnlinkAllV3' test.out

#- 295 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dOUH0ABm' \
    --ticket '7QBUXwIL' \
    > test.out 2>&1
eval_tap $? 295 'PublicForcePlatformLinkV3' test.out

#- 296 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'k1VhGfbx' \
    --clientId 'yHUuEXuT' \
    --redirectUri 'TIWG8Sni' \
    > test.out 2>&1
eval_tap $? 296 'PublicWebLinkPlatform' test.out

#- 297 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'cSY3aZC1' \
    --code 'C8UFTy6A' \
    --state '3etBbQ2E' \
    > test.out 2>&1
eval_tap $? 297 'PublicWebLinkPlatformEstablish' test.out

#- 298 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hZiXh6Fo' \
    --code 'bzka7f53' \
    --state '1hNmxNo0' \
    > test.out 2>&1
eval_tap $? 298 'PublicProcessWebLinkPlatformV3' test.out

#- 299 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "lQyj8Bgz", "userIds": ["girGr1qr", "xS9Ity01", "XUeyfUTZ"]}' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetUsersPlatformInfosV3' test.out

#- 300 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "SCIurxOm", "code": "5S2e75fG", "emailAddress": "7b3aonmj", "languageTag": "geRm8UFN", "newPassword": "1rPzwaci"}' \
    > test.out 2>&1
eval_tap $? 300 'ResetPasswordV3' test.out

#- 301 PublicGetUserByUserIdV3
eval_tap 0 301 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 302 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LPzOimJt' \
    --activeOnly 'false' \
    --after 'fRZi1MQs' \
    --before 'xMrZHO04' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetUserBanHistoryV3' test.out

#- 303 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Hp2AX5kS' \
    > test.out 2>&1
eval_tap $? 303 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 304 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DxOdSUYU' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetUserInformationV3' test.out

#- 305 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iaYiPYex' \
    --after '0.9843654274411168' \
    --before '0.10336241915507427' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetUserLoginHistoriesV3' test.out

#- 306 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y5o449EV' \
    --after 'BGA4JIRj' \
    --before 'q09c6ak0' \
    --limit '31' \
    --platformId 'SmVtY5Yn' \
    > test.out 2>&1
eval_tap $? 306 'PublicGetUserPlatformAccountsV3' test.out

#- 307 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IV5AKvrI' \
    > test.out 2>&1
eval_tap $? 307 'PublicListJusticePlatformAccountsV3' test.out

#- 308 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'aOVzMAPD' \
    --body '{"platformId": "hmtVxemK", "platformUserId": "WFupw8Ce"}' \
    > test.out 2>&1
eval_tap $? 308 'PublicLinkPlatformAccount' test.out

#- 309 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'UPbEb0Fs' \
    --body '{"chosenNamespaces": ["aU6VeO9T", "KcGdMHMX", "4yV4Q98J"], "requestId": "i8AxxnoJ"}' \
    > test.out 2>&1
eval_tap $? 309 'PublicForceLinkPlatformWithProgression' test.out

#- 310 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'X8ipGDhT' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetPublisherUserV3' test.out

#- 311 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eIQiPo08' \
    --password '5mKOv8H2' \
    > test.out 2>&1
eval_tap $? 311 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 312 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'Kuo2E5Xl' \
    --before 'cIsDR3WY' \
    --isWildcard 'true' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetRolesV3' test.out

#- 313 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'moskhOYz' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetRoleV3' test.out

#- 314 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetMyUserV3' test.out

#- 315 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "DjURklE8", "emailAddress": "ESsJsKid", "languageTag": "6ZXQwnmG", "upgradeToken": "NnTXIwPe"}' \
    > test.out 2>&1
eval_tap $? 315 'PublicSendCodeForwardV3' test.out

#- 316 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'lD5Ef2Bf' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 317 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["oJzyKCEG", "ABTXyPwo", "hjRJCfuO"], "oneTimeLinkCode": "gXjJrBi8"}' \
    > test.out 2>&1
eval_tap $? 317 'LinkHeadlessAccountToMyAccountV3' test.out

#- 318 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode '7GWUq1XF' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 319 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 319 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 320 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "DNL89HZJ"}' \
    > test.out 2>&1
eval_tap $? 320 'PublicSendVerificationLinkV3' test.out

#- 321 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 321 'PublicGetOpenidUserInfoV3' test.out

#- 322 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'wUideAPI' \
    > test.out 2>&1
eval_tap $? 322 'PublicVerifyUserByLinkV3' test.out

#- 323 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'dWwWukzh' \
    --code '453McPpV' \
    --error 'h4cVnNRR' \
    --state 'pw6pIY0g' \
    > test.out 2>&1
eval_tap $? 323 'PlatformAuthenticateSAMLV3Handler' test.out

#- 324 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'r4rBpQDm' \
    --payload 'ugeDC2vi' \
    > test.out 2>&1
eval_tap $? 324 'LoginSSOClient' test.out

#- 325 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '9wb5IYps' \
    > test.out 2>&1
eval_tap $? 325 'LogoutSSOClient' test.out

#- 326 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'wHeGbXbw' \
    --code 'xxxBjh2T' \
    > test.out 2>&1
eval_tap $? 326 'RequestTargetTokenResponseV3' test.out

#- 327 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId '5n7ageKm' \
    --upgradeSuccessToken 'xy6995R6' \
    > test.out 2>&1
eval_tap $? 327 'UpgradeAndAuthenticateForwardV3' test.out

#- 328 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '61' \
    --namespace 'SX0rIU2G' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 328 'AdminListInvitationHistoriesV4' test.out

#- 329 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yNlDHGaG' \
    > test.out 2>&1
eval_tap $? 329 'AdminGetDevicesByUserV4' test.out

#- 330 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'IYcztEi4' \
    --endDate 'sCknod5r' \
    --limit '45' \
    --offset '84' \
    --startDate 'gW5wVtlr' \
    > test.out 2>&1
eval_tap $? 330 'AdminGetBannedDevicesV4' test.out

#- 331 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'YyQcatUR' \
    > test.out 2>&1
eval_tap $? 331 'AdminGetUserDeviceBansV4' test.out

#- 332 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "qiqraJOw", "deviceId": "uSPkL2s8", "deviceType": "Rmvhofci", "enabled": false, "endDate": "UcjvNIYt", "ext": {"Pa0yc650": {}, "LDGHihkZ": {}, "zCw0tmzX": {}}, "reason": "QPUXhieM"}' \
    > test.out 2>&1
eval_tap $? 332 'AdminBanDeviceV4' test.out

#- 333 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'Rh1jWxdY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 333 'AdminGetDeviceBanV4' test.out

#- 334 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'fkn9MOBt' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 334 'AdminUpdateDeviceBanV4' test.out

#- 335 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'tmMdHp2c' \
    --startDate 'lOJGcWjG' \
    --deviceType 'AbLbuKql' \
    > test.out 2>&1
eval_tap $? 335 'AdminGenerateReportV4' test.out

#- 336 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 336 'AdminGetDeviceTypesV4' test.out

#- 337 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'wHx1IFBn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'AdminGetDeviceBansV4' test.out

#- 338 AdminDecryptDeviceV4
eval_tap 0 338 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 339 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'lHHjL5vM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'AdminUnbanDeviceV4' test.out

#- 340 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'jBLVDN9Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUsersByDeviceV4' test.out

#- 341 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 342 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 342 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 343 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 49, "userInfo": {"country": "d94IMLNz"}}' \
    > test.out 2>&1
eval_tap $? 343 'AdminCreateTestUsersV4' test.out

#- 344 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Vrewew6q", "policyId": "9LfOpeIu", "policyVersionId": "S5XvZyzQ"}, {"isAccepted": true, "localizedPolicyVersionId": "dt5Gpc8s", "policyId": "UhcHOVNb", "policyVersionId": "4Ds3TgPF"}, {"isAccepted": true, "localizedPolicyVersionId": "lUahLz6G", "policyId": "2FanbuD5", "policyVersionId": "467XiIff"}], "authType": "EMAILPASSWD", "code": "AIcA3VuW", "country": "FO88oGXQ", "dateOfBirth": "953lEFj9", "displayName": "E6vzrIps", "emailAddress": "gOoHT5WJ", "password": "dL5mMN2h", "passwordMD5Sum": "UrfuOuqk", "reachMinimumAge": true, "uniqueDisplayName": "0eVLdqJc", "username": "9RZ6BS3E"}' \
    > test.out 2>&1
eval_tap $? 344 'AdminCreateUserV4' test.out

#- 345 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["gpUGn12Z", "RLh5DITh", "UV6fJdEq"]}' \
    > test.out 2>&1
eval_tap $? 345 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 346 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["WXY9w5VF", "PCyyfpIF", "89ntAffj"]}' \
    > test.out 2>&1
eval_tap $? 346 'AdminBulkCheckValidUserIDV4' test.out

#- 347 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ybZBLkae' \
    --body '{"avatarUrl": "Um8wklI7", "country": "1JRq24qE", "dateOfBirth": "vHhVzB2j", "displayName": "5KZIDwsG", "languageTag": "QSlOzEk8", "skipLoginQueue": false, "uniqueDisplayName": "DesVwlwf", "userName": "UL9NVVor"}' \
    > test.out 2>&1
eval_tap $? 347 'AdminUpdateUserV4' test.out

#- 348 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NPiwYnnd' \
    --body '{"code": "MfoFtZXk", "emailAddress": "gduvnUh0"}' \
    > test.out 2>&1
eval_tap $? 348 'AdminUpdateUserEmailAddressV4' test.out

#- 349 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ej8njgpz' \
    --body '{"factor": "3X7XjfeM", "mfaToken": "nQs9CFgH"}' \
    > test.out 2>&1
eval_tap $? 349 'AdminDisableUserMFAV4' test.out

#- 350 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ChJB0I44' \
    > test.out 2>&1
eval_tap $? 350 'AdminGetUserMFAStatusV4' test.out

#- 351 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '8VbI9Pkz' \
    > test.out 2>&1
eval_tap $? 351 'AdminListUserRolesV4' test.out

#- 352 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'L9PsIQrz' \
    --body '{"assignedNamespaces": ["jeiQ6dWo", "PIwg9Jvb", "XzQQNaZy"], "roleId": "US5nXFZi"}' \
    > test.out 2>&1
eval_tap $? 352 'AdminUpdateUserRoleV4' test.out

#- 353 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Ta61JgGc' \
    --body '{"assignedNamespaces": ["n5HcfKXJ", "2W9oKv6o", "UcEecOrI"], "roleId": "CxoM0Rdo"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminAddUserRoleV4' test.out

#- 354 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'nDFz6PYP' \
    --body '{"assignedNamespaces": ["Jf5fDsnI", "vcmAkKce", "PObwktO0"], "roleId": "xyHRv3pO"}' \
    > test.out 2>&1
eval_tap $? 354 'AdminRemoveUserRoleV4' test.out

#- 355 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '6' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 355 'AdminGetRolesV4' test.out

#- 356 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "ssxycsE2"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminCreateRoleV4' test.out

#- 357 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'FnXhal8P' \
    > test.out 2>&1
eval_tap $? 357 'AdminGetRoleV4' test.out

#- 358 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'Vweifghu' \
    > test.out 2>&1
eval_tap $? 358 'AdminDeleteRoleV4' test.out

#- 359 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'obNOlvZ7' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "zMTVHwl1"}' \
    > test.out 2>&1
eval_tap $? 359 'AdminUpdateRoleV4' test.out

#- 360 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'sZSlw1jp' \
    --body '{"permissions": [{"action": 45, "resource": "DphXa0oR", "schedAction": 22, "schedCron": "lnFzQwbD", "schedRange": ["8G2jAiq0", "vW95MufC", "KbIguFnV"]}, {"action": 23, "resource": "Za9EROCO", "schedAction": 32, "schedCron": "vpW9EjZl", "schedRange": ["JDKEBWG4", "jOACMidK", "LIfmD9Dg"]}, {"action": 2, "resource": "plDTnsfc", "schedAction": 2, "schedCron": "WeSwXr07", "schedRange": ["T2MfiK3D", "hBEtX0pV", "Z2Vz3B2J"]}]}' \
    > test.out 2>&1
eval_tap $? 360 'AdminUpdateRolePermissionsV4' test.out

#- 361 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'J08a1OL9' \
    --body '{"permissions": [{"action": 39, "resource": "8jWuCmJ9", "schedAction": 42, "schedCron": "p2uMls3Q", "schedRange": ["JwJEY9Mb", "8L26TvFs", "mcEFvwII"]}, {"action": 23, "resource": "vh4BY1Tp", "schedAction": 89, "schedCron": "nlJ099Ju", "schedRange": ["tnZQupe2", "BZ3oNXMk", "tX3QqhgH"]}, {"action": 38, "resource": "9SwZEGDh", "schedAction": 51, "schedCron": "s0Py0mGa", "schedRange": ["SZ804ukT", "kse8R1nD", "Q4XUFiiF"]}]}' \
    > test.out 2>&1
eval_tap $? 361 'AdminAddRolePermissionsV4' test.out

#- 362 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '59HiQh1H' \
    --body '["L9efKlEZ", "T4iaRsb0", "zGwQVxLg"]' \
    > test.out 2>&1
eval_tap $? 362 'AdminDeleteRolePermissionsV4' test.out

#- 363 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'HawhhU2k' \
    --after 'cmwMDqpt' \
    --before 'zEgAAJUO' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 363 'AdminListAssignedUsersV4' test.out

#- 364 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 's4roWZpd' \
    --body '{"assignedNamespaces": ["Pp3DJU9f", "DuOASTlr", "FJqluIeN"], "namespace": "hqNioxsu", "userId": "VbmDTqcx"}' \
    > test.out 2>&1
eval_tap $? 364 'AdminAssignUserToRoleV4' test.out

#- 365 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'qHaDPuCX' \
    --body '{"namespace": "hzYSwB1E", "userId": "YFHbDael"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminRevokeUserFromRoleV4' test.out

#- 366 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["8SaMNZCz", "Dubj6cEw", "ro3zThTr"], "emailAddresses": ["jDgohI98", "Q9jgrgdf", "1Mz51Smv"], "isAdmin": false, "isNewStudio": false, "languageTag": "g7WGMfZp", "namespace": "WX4lLMzT", "roleId": "6fFDsv4G"}' \
    > test.out 2>&1
eval_tap $? 366 'AdminInviteUserNewV4' test.out

#- 367 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "dy6Tgi8V", "country": "AvuNIYHp", "dateOfBirth": "Yt7s7d2o", "displayName": "3EbMeIf9", "languageTag": "xsfVK4Ym", "skipLoginQueue": false, "uniqueDisplayName": "RT3wMR0O", "userName": "c4Hk58EM"}' \
    > test.out 2>&1
eval_tap $? 367 'AdminUpdateMyUserV4' test.out

#- 368 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "AuOEVGvc", "mfaToken": "GdPS53W0"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminDisableMyAuthenticatorV4' test.out

#- 369 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'K89vCEYn' \
    > test.out 2>&1
eval_tap $? 369 'AdminEnableMyAuthenticatorV4' test.out

#- 370 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 370 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 371 AdminGetMyBackupCodesV4
eval_tap 0 371 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 372 AdminGenerateMyBackupCodesV4
eval_tap 0 372 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 373 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "JzF2NZwd", "mfaToken": "VzLlTppF"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminDisableMyBackupCodesV4' test.out

#- 374 AdminDownloadMyBackupCodesV4
eval_tap 0 374 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 375 AdminEnableMyBackupCodesV4
eval_tap 0 375 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 376 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'ToMrQ1QC' \
    > test.out 2>&1
eval_tap $? 376 'AdminGetBackupCodesV4' test.out

#- 377 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag '7sO1NHia' \
    > test.out 2>&1
eval_tap $? 377 'AdminGenerateBackupCodesV4' test.out

#- 378 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'q3PK1mOm' \
    > test.out 2>&1
eval_tap $? 378 'AdminEnableBackupCodesV4' test.out

#- 379 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'glVaUJw4' \
    --factor 'Nvs7HGQp' \
    > test.out 2>&1
eval_tap $? 379 'AdminChallengeMyMFAV4' test.out

#- 380 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'RHGVCDPW' \
    --languageTag 'nhMsEPPv' \
    > test.out 2>&1
eval_tap $? 380 'AdminSendMyMFAEmailCodeV4' test.out

#- 381 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "QgQNNxMg", "mfaToken": "imJC3LU3"}' \
    > test.out 2>&1
eval_tap $? 381 'AdminDisableMyEmailV4' test.out

#- 382 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'dBTflOpx' \
    > test.out 2>&1
eval_tap $? 382 'AdminEnableMyEmailV4' test.out

#- 383 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 383 'AdminGetMyEnabledFactorsV4' test.out

#- 384 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '5ECXRdMc' \
    > test.out 2>&1
eval_tap $? 384 'AdminMakeFactorMyDefaultV4' test.out

#- 385 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 385 'AdminGetMyOwnMFAStatusV4' test.out

#- 386 AdminGetMyMFAStatusV4
eval_tap 0 386 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 387 AdminInviteUserV4
eval_tap 0 387 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 388 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId 'yEkG8Qq1' \
    --linkingToken 'Pd2ivFhd' \
    --password 'DPNj0a31' \
    --username 'NWHCXycV' \
    > test.out 2>&1
eval_tap $? 388 'AuthenticationWithPlatformLinkV4' test.out

#- 389 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'RMGsk6hB' \
    --extendExp 'true' \
    --linkingToken 'bXlUuYZF' \
    > test.out 2>&1
eval_tap $? 389 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 390 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'j9wX1rLH' \
    --factor 'vSXxYpjT' \
    --mfaToken 'EVZ4URZs' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 390 'Verify2faCodeV4' test.out

#- 391 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'kfsyU76A' \
    --codeChallenge 'fu0lUO0b' \
    --codeChallengeMethod 'plain' \
    --additionalData 'vELFu0wY' \
    --clientId 'bDI6Q8hH' \
    --createHeadless 'false' \
    --deviceId 'wyfJwAIk' \
    --macAddress 'oNVTzNfa' \
    --platformToken 'Rjos8mhD' \
    --serviceLabel '0.9987791443370164' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 391 'PlatformTokenGrantV4' test.out

#- 392 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'ZE6dgOWd' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'DF48QiDQ' \
    --simultaneousTicket 'Sn0qM9IT' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'keFdQZy5' \
    > test.out 2>&1
eval_tap $? 392 'SimultaneousLoginV4' test.out

#- 393 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge '5GONi9Dg' \
    --codeChallengeMethod 'S256' \
    --additionalData 'xsMazI22' \
    --clientId 'hPiazCl2' \
    --clientSecret 'a2FM9AZL' \
    --code '6gNW55vC' \
    --codeVerifier 'RqIDElnc' \
    --extendNamespace 'pLJ9UVST' \
    --extendExp 'false' \
    --loginQueueTicket 'siUcAEH2' \
    --password 'iQJNFheW' \
    --redirectUri 'S3AgkiTM' \
    --refreshToken 'rUAqf9rI' \
    --username 'QHwdUcga' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 393 'TokenGrantV4' test.out

#- 394 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'eeF9EsbV' \
    --code '1xN7bhQt' \
    > test.out 2>&1
eval_tap $? 394 'RequestTargetTokenResponseV4' test.out

#- 395 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'o5NwH1MF' \
    --rawPUID 'false' \
    --body '{"pidType": "QdT1R1zs", "platformUserIds": ["3IaqYjJm", "4DHIMw8N", "QKuOwiZx"]}' \
    > test.out 2>&1
eval_tap $? 395 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 396 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "OMu8hF3a", "policyId": "2WAvdnZa", "policyVersionId": "QD7pF4sy"}, {"isAccepted": true, "localizedPolicyVersionId": "wU8reiHQ", "policyId": "a8HogOod", "policyVersionId": "0twfrQjj"}, {"isAccepted": true, "localizedPolicyVersionId": "UD4OEY96", "policyId": "u9zZN7gW", "policyVersionId": "avV0Vxpk"}], "authType": "EMAILPASSWD", "country": "j0rT6ucX", "dateOfBirth": "8MYTvkRX", "displayName": "HvKcnOMP", "emailAddress": "msaufqa5", "password": "56JbM2HS", "passwordMD5Sum": "Kxfgje24", "uniqueDisplayName": "AnKuGUQ7", "username": "6jExhPX6", "verified": false}' \
    > test.out 2>&1
eval_tap $? 396 'PublicCreateTestUserV4' test.out

#- 397 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "10SfCwB2", "policyId": "iSAkwCQA", "policyVersionId": "qdf9W8P9"}, {"isAccepted": false, "localizedPolicyVersionId": "9LaLEp2F", "policyId": "t4Lja3UK", "policyVersionId": "fBxfhyf6"}, {"isAccepted": false, "localizedPolicyVersionId": "Avw38X2W", "policyId": "t11eHae5", "policyVersionId": "xgnf3r0o"}], "authType": "EMAILPASSWD", "code": "NrjrmcIj", "country": "Y0d9zhv4", "dateOfBirth": "1VxVrYW7", "displayName": "2kS1IxMt", "emailAddress": "2VcPWq7L", "password": "9yKntMnz", "passwordMD5Sum": "aDH0im8d", "reachMinimumAge": true, "uniqueDisplayName": "CLk7doCI", "username": "6h0IYZDT"}' \
    > test.out 2>&1
eval_tap $? 397 'PublicCreateUserV4' test.out

#- 398 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'LhI1HBff' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "XxAOILtZ", "policyId": "KmObcehH", "policyVersionId": "9vdttDJl"}, {"isAccepted": true, "localizedPolicyVersionId": "JFWDoq9E", "policyId": "FBJO66bD", "policyVersionId": "R3xpkuoH"}, {"isAccepted": false, "localizedPolicyVersionId": "dxGYS9G1", "policyId": "jlcH3GDx", "policyVersionId": "WJwGjarA"}], "authType": "EMAILPASSWD", "code": "Au7ixZS3", "country": "kPOS96sg", "dateOfBirth": "1ZFAkAGb", "displayName": "xuW9pBLy", "emailAddress": "CRSWVyb7", "password": "yuukqtd6", "passwordMD5Sum": "BsLa4gvn", "reachMinimumAge": true, "uniqueDisplayName": "2Yc1l9dv", "username": "cYJjuSS5"}' \
    > test.out 2>&1
eval_tap $? 398 'CreateUserFromInvitationV4' test.out

#- 399 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "3Wq0YQLf", "country": "5SxLSK9l", "dateOfBirth": "t9F8mYVk", "displayName": "zqVaLBFl", "languageTag": "hcwG0yfl", "uniqueDisplayName": "cLC4XA6A", "userName": "9wqOe9Pj"}' \
    > test.out 2>&1
eval_tap $? 399 'PublicUpdateUserV4' test.out

#- 400 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "NM9ErUFG", "emailAddress": "mGL0a90y"}' \
    > test.out 2>&1
eval_tap $? 400 'PublicUpdateUserEmailAddressV4' test.out

#- 401 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "lP8kOEUH", "country": "YwME8Uje", "dateOfBirth": "FvQMlxU4", "displayName": "t0I3KTxy", "emailAddress": "8TVl1Jl2", "password": "v0qJWSEQ", "reachMinimumAge": true, "uniqueDisplayName": "ewmLqAfY", "username": "PgCaMzyZ", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 401 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 402 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "h2UvUOX6", "displayName": "6bz8PMFk", "emailAddress": "JhkDBIPb", "password": "sobzCBbK", "uniqueDisplayName": "r1Xbk983", "username": "ZJywrHhm"}' \
    > test.out 2>&1
eval_tap $? 402 'PublicUpgradeHeadlessAccountV4' test.out

#- 403 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "DTv2t7tY", "mfaToken": "O97QWrgG"}' \
    > test.out 2>&1
eval_tap $? 403 'PublicDisableMyAuthenticatorV4' test.out

#- 404 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'AIIslCnc' \
    > test.out 2>&1
eval_tap $? 404 'PublicEnableMyAuthenticatorV4' test.out

#- 405 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 405 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 406 PublicGetMyBackupCodesV4
eval_tap 0 406 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 407 PublicGenerateMyBackupCodesV4
eval_tap 0 407 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 408 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "fh1TVQF5", "mfaToken": "bof11v52"}' \
    > test.out 2>&1
eval_tap $? 408 'PublicDisableMyBackupCodesV4' test.out

#- 409 PublicDownloadMyBackupCodesV4
eval_tap 0 409 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 410 PublicEnableMyBackupCodesV4
eval_tap 0 410 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 411 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'serdijuc' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetBackupCodesV4' test.out

#- 412 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'BsynWdIH' \
    > test.out 2>&1
eval_tap $? 412 'PublicGenerateBackupCodesV4' test.out

#- 413 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'bASJBiyn' \
    > test.out 2>&1
eval_tap $? 413 'PublicEnableBackupCodesV4' test.out

#- 414 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'VQF6dTXp' \
    --factor 'KXhWsPYl' \
    > test.out 2>&1
eval_tap $? 414 'PublicChallengeMyMFAV4' test.out

#- 415 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 415 'PublicRemoveTrustedDeviceV4' test.out

#- 416 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'VkvAR506' \
    --languageTag 'Ox7Yl3ko' \
    > test.out 2>&1
eval_tap $? 416 'PublicSendMyMFAEmailCodeV4' test.out

#- 417 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "NTLCW5Mq", "mfaToken": "JEee8haP"}' \
    > test.out 2>&1
eval_tap $? 417 'PublicDisableMyEmailV4' test.out

#- 418 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'fwa8Bu5p' \
    > test.out 2>&1
eval_tap $? 418 'PublicEnableMyEmailV4' test.out

#- 419 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 419 'PublicGetMyEnabledFactorsV4' test.out

#- 420 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'a7RQ2uEi' \
    > test.out 2>&1
eval_tap $? 420 'PublicMakeFactorMyDefaultV4' test.out

#- 421 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 421 'PublicGetMyOwnMFAStatusV4' test.out

#- 422 PublicGetMyMFAStatusV4
eval_tap 0 422 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 423 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'gRYWFoYR' \
    > test.out 2>&1
eval_tap $? 423 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 424 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "mUbw9iUH", "emailAddress": "Gu5bY0gP", "languageTag": "xcybSbyX", "namespace": "SK0acamV", "namespaceDisplayName": "RNmOkGvP"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicInviteUserV4' test.out

#- 425 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"code": "jWCxZB3W", "country": "mQIHGDMv", "dateOfBirth": "Vkt3UURU", "displayName": "aGXC80tX", "emailAddress": "iS86TEsG", "password": "YhMk0K3G", "reachMinimumAge": true, "uniqueDisplayName": "HJll14NC", "username": "wIXmNiP2", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 425 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE