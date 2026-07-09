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
echo "1..447"

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

#- 2 GetAuthorizationServerMetadataWithNamespace
samples/cli/sample-apps Iam getAuthorizationServerMetadataWithNamespace \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'GetAuthorizationServerMetadataWithNamespace' test.out

#- 3 GetBansType
eval_tap 0 3 'GetBansType # SKIP deprecated' test.out

#- 4 GetListBanReason
eval_tap 0 4 'GetListBanReason # SKIP deprecated' test.out

#- 5 GetClients
eval_tap 0 5 'GetClients # SKIP deprecated' test.out

#- 6 CreateClient
eval_tap 0 6 'CreateClient # SKIP deprecated' test.out

#- 7 GetClient
eval_tap 0 7 'GetClient # SKIP deprecated' test.out

#- 8 UpdateClient
eval_tap 0 8 'UpdateClient # SKIP deprecated' test.out

#- 9 DeleteClient
eval_tap 0 9 'DeleteClient # SKIP deprecated' test.out

#- 10 UpdateClientPermission
eval_tap 0 10 'UpdateClientPermission # SKIP deprecated' test.out

#- 11 AddClientPermission
eval_tap 0 11 'AddClientPermission # SKIP deprecated' test.out

#- 12 DeleteClientPermission
eval_tap 0 12 'DeleteClientPermission # SKIP deprecated' test.out

#- 13 UpdateClientSecret
eval_tap 0 13 'UpdateClientSecret # SKIP deprecated' test.out

#- 14 GetClientsbyNamespace
eval_tap 0 14 'GetClientsbyNamespace # SKIP deprecated' test.out

#- 15 CreateClientByNamespace
eval_tap 0 15 'CreateClientByNamespace # SKIP deprecated' test.out

#- 16 DeleteClientByNamespace
eval_tap 0 16 'DeleteClientByNamespace # SKIP deprecated' test.out

#- 17 CreateUser
eval_tap 0 17 'CreateUser # SKIP deprecated' test.out

#- 18 GetAdminUsersByRoleID
eval_tap 0 18 'GetAdminUsersByRoleID # SKIP deprecated' test.out

#- 19 GetUserByLoginID
eval_tap 0 19 'GetUserByLoginID # SKIP deprecated' test.out

#- 20 GetUserByPlatformUserID
eval_tap 0 20 'GetUserByPlatformUserID # SKIP deprecated' test.out

#- 21 ForgotPassword
eval_tap 0 21 'ForgotPassword # SKIP deprecated' test.out

#- 22 GetUsersByLoginIds
eval_tap 0 22 'GetUsersByLoginIds # SKIP deprecated' test.out

#- 23 ResetPassword
eval_tap 0 23 'ResetPassword # SKIP deprecated' test.out

#- 24 SearchUser
eval_tap 0 24 'SearchUser # SKIP deprecated' test.out

#- 25 GetUserByUserID
eval_tap 0 25 'GetUserByUserID # SKIP deprecated' test.out

#- 26 UpdateUser
eval_tap 0 26 'UpdateUser # SKIP deprecated' test.out

#- 27 DeleteUser
eval_tap 0 27 'DeleteUser # SKIP deprecated' test.out

#- 28 BanUser
eval_tap 0 28 'BanUser # SKIP deprecated' test.out

#- 29 GetUserBanHistory
eval_tap 0 29 'GetUserBanHistory # SKIP deprecated' test.out

#- 30 DisableUserBan
eval_tap 0 30 'DisableUserBan # SKIP deprecated' test.out

#- 31 EnableUserBan
eval_tap 0 31 'EnableUserBan # SKIP deprecated' test.out

#- 32 ListCrossNamespaceAccountLink
eval_tap 0 32 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 33 DisableUser
eval_tap 0 33 'DisableUser # SKIP deprecated' test.out

#- 34 EnableUser
eval_tap 0 34 'EnableUser # SKIP deprecated' test.out

#- 35 GetUserInformation
eval_tap 0 35 'GetUserInformation # SKIP deprecated' test.out

#- 36 DeleteUserInformation
eval_tap 0 36 'DeleteUserInformation # SKIP deprecated' test.out

#- 37 GetUserLoginHistories
eval_tap 0 37 'GetUserLoginHistories # SKIP deprecated' test.out

#- 38 UpdatePassword
eval_tap 0 38 'UpdatePassword # SKIP deprecated' test.out

#- 39 SaveUserPermission
eval_tap 0 39 'SaveUserPermission # SKIP deprecated' test.out

#- 40 AddUserPermission
eval_tap 0 40 'AddUserPermission # SKIP deprecated' test.out

#- 41 DeleteUserPermission
eval_tap 0 41 'DeleteUserPermission # SKIP deprecated' test.out

#- 42 GetUserPlatformAccounts
eval_tap 0 42 'GetUserPlatformAccounts # SKIP deprecated' test.out

#- 43 GetUserMapping
eval_tap 0 43 'GetUserMapping # SKIP deprecated' test.out

#- 44 GetUserJusticePlatformAccount
eval_tap 0 44 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 45 PlatformLink
eval_tap 0 45 'PlatformLink # SKIP deprecated' test.out

#- 46 PlatformUnlink
eval_tap 0 46 'PlatformUnlink # SKIP deprecated' test.out

#- 47 GetPublisherUser
eval_tap 0 47 'GetPublisherUser # SKIP deprecated' test.out

#- 48 SaveUserRoles
eval_tap 0 48 'SaveUserRoles # SKIP deprecated' test.out

#- 49 AddUserRole
eval_tap 0 49 'AddUserRole # SKIP deprecated' test.out

#- 50 DeleteUserRole
eval_tap 0 50 'DeleteUserRole # SKIP deprecated' test.out

#- 51 UpgradeHeadlessAccount
eval_tap 0 51 'UpgradeHeadlessAccount # SKIP deprecated' test.out

#- 52 UpgradeHeadlessAccountWithVerificationCode
eval_tap 0 52 'UpgradeHeadlessAccountWithVerificationCode # SKIP deprecated' test.out

#- 53 UserVerification
eval_tap 0 53 'UserVerification # SKIP deprecated' test.out

#- 54 SendVerificationCode
eval_tap 0 54 'SendVerificationCode # SKIP deprecated' test.out

#- 55 Authorization
eval_tap 0 55 'Authorization # SKIP deprecated' test.out

#- 56 GetJWKS
eval_tap 0 56 'GetJWKS # SKIP deprecated' test.out

#- 57 NamespaceScopedPlatformTokenGrant
eval_tap 0 57 'NamespaceScopedPlatformTokenGrant # SKIP deprecated' test.out

#- 58 RevokeUser
eval_tap 0 58 'RevokeUser # SKIP deprecated' test.out

#- 59 GetRevocationList
eval_tap 0 59 'GetRevocationList # SKIP deprecated' test.out

#- 60 RevokeToken
eval_tap 0 60 'RevokeToken # SKIP deprecated' test.out

#- 61 RevokeAUser
eval_tap 0 61 'RevokeAUser # SKIP deprecated' test.out

#- 62 TokenGrant
eval_tap 0 62 'TokenGrant # SKIP deprecated' test.out

#- 63 VerifyToken
eval_tap 0 63 'VerifyToken # SKIP deprecated' test.out

#- 64 GetRoles
eval_tap 0 64 'GetRoles # SKIP deprecated' test.out

#- 65 CreateRole
eval_tap 0 65 'CreateRole # SKIP deprecated' test.out

#- 66 GetRole
eval_tap 0 66 'GetRole # SKIP deprecated' test.out

#- 67 UpdateRole
eval_tap 0 67 'UpdateRole # SKIP deprecated' test.out

#- 68 DeleteRole
eval_tap 0 68 'DeleteRole # SKIP deprecated' test.out

#- 69 GetRoleAdminStatus
eval_tap 0 69 'GetRoleAdminStatus # SKIP deprecated' test.out

#- 70 SetRoleAsAdmin
eval_tap 0 70 'SetRoleAsAdmin # SKIP deprecated' test.out

#- 71 RemoveRoleAdmin
eval_tap 0 71 'RemoveRoleAdmin # SKIP deprecated' test.out

#- 72 GetRoleManagers
eval_tap 0 72 'GetRoleManagers # SKIP deprecated' test.out

#- 73 AddRoleManagers
eval_tap 0 73 'AddRoleManagers # SKIP deprecated' test.out

#- 74 RemoveRoleManagers
eval_tap 0 74 'RemoveRoleManagers # SKIP deprecated' test.out

#- 75 GetRoleMembers
eval_tap 0 75 'GetRoleMembers # SKIP deprecated' test.out

#- 76 AddRoleMembers
eval_tap 0 76 'AddRoleMembers # SKIP deprecated' test.out

#- 77 RemoveRoleMembers
eval_tap 0 77 'RemoveRoleMembers # SKIP deprecated' test.out

#- 78 UpdateRolePermissions
eval_tap 0 78 'UpdateRolePermissions # SKIP deprecated' test.out

#- 79 AddRolePermission
eval_tap 0 79 'AddRolePermission # SKIP deprecated' test.out

#- 80 DeleteRolePermission
eval_tap 0 80 'DeleteRolePermission # SKIP deprecated' test.out

#- 81 AdminGetAgeRestrictionStatusV2
eval_tap 0 81 'AdminGetAgeRestrictionStatusV2 # SKIP deprecated' test.out

#- 82 AdminUpdateAgeRestrictionConfigV2
eval_tap 0 82 'AdminUpdateAgeRestrictionConfigV2 # SKIP deprecated' test.out

#- 83 GetListCountryAgeRestriction
eval_tap 0 83 'GetListCountryAgeRestriction # SKIP deprecated' test.out

#- 84 UpdateCountryAgeRestriction
eval_tap 0 84 'UpdateCountryAgeRestriction # SKIP deprecated' test.out

#- 85 AdminSearchUsersV2
eval_tap 0 85 'AdminSearchUsersV2 # SKIP deprecated' test.out

#- 86 AdminGetUserByUserIdV2
eval_tap 0 86 'AdminGetUserByUserIdV2 # SKIP deprecated' test.out

#- 87 AdminUpdateUserV2
eval_tap 0 87 'AdminUpdateUserV2 # SKIP deprecated' test.out

#- 88 AdminBanUserV2
eval_tap 0 88 'AdminBanUserV2 # SKIP deprecated' test.out

#- 89 AdminGetUserBanV2
eval_tap 0 89 'AdminGetUserBanV2 # SKIP deprecated' test.out

#- 90 AdminDisableUserV2
eval_tap 0 90 'AdminDisableUserV2 # SKIP deprecated' test.out

#- 91 AdminEnableUserV2
eval_tap 0 91 'AdminEnableUserV2 # SKIP deprecated' test.out

#- 92 AdminResetPasswordV2
eval_tap 0 92 'AdminResetPasswordV2 # SKIP deprecated' test.out

#- 93 AdminDeletePlatformLinkV2
eval_tap 0 93 'AdminDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 94 AdminPutUserRolesV2
eval_tap 0 94 'AdminPutUserRolesV2 # SKIP deprecated' test.out

#- 95 AdminCreateUserRolesV2
eval_tap 0 95 'AdminCreateUserRolesV2 # SKIP deprecated' test.out

#- 96 PublicGetCountryAgeRestriction
eval_tap 0 96 'PublicGetCountryAgeRestriction # SKIP deprecated' test.out

#- 97 PublicCreateUserV2
eval_tap 0 97 'PublicCreateUserV2 # SKIP deprecated' test.out

#- 98 PublicForgotPasswordV2
eval_tap 0 98 'PublicForgotPasswordV2 # SKIP deprecated' test.out

#- 99 PublicResetPasswordV2
eval_tap 0 99 'PublicResetPasswordV2 # SKIP deprecated' test.out

#- 100 PublicGetUserByUserIDV2
eval_tap 0 100 'PublicGetUserByUserIDV2 # SKIP deprecated' test.out

#- 101 PublicUpdateUserV2
eval_tap 0 101 'PublicUpdateUserV2 # SKIP deprecated' test.out

#- 102 PublicGetUserBan
eval_tap 0 102 'PublicGetUserBan # SKIP deprecated' test.out

#- 103 PublicUpdatePasswordV2
eval_tap 0 103 'PublicUpdatePasswordV2 # SKIP deprecated' test.out

#- 104 GetListJusticePlatformAccounts
eval_tap 0 104 'GetListJusticePlatformAccounts # SKIP deprecated' test.out

#- 105 PublicPlatformLinkV2
eval_tap 0 105 'PublicPlatformLinkV2 # SKIP deprecated' test.out

#- 106 PublicDeletePlatformLinkV2
eval_tap 0 106 'PublicDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 107 AdminGetBansTypeV3
samples/cli/sample-apps Iam adminGetBansTypeV3 \
    > test.out 2>&1
eval_tap $? 107 'AdminGetBansTypeV3' test.out

#- 108 AdminGetListBanReasonV3
samples/cli/sample-apps Iam adminGetListBanReasonV3 \
    > test.out 2>&1
eval_tap $? 108 'AdminGetListBanReasonV3' test.out

#- 109 AdminListClientAvailablePermissions
samples/cli/sample-apps Iam adminListClientAvailablePermissions \
    --excludePermissions 'true' \
    > test.out 2>&1
eval_tap $? 109 'AdminListClientAvailablePermissions' test.out

#- 110 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'false' \
    --body '{"modules": [{"docLink": "JfNujFaC", "groups": [{"group": "UEVaa41I", "groupId": "W2HqR86K", "package": "LCDNOuoD", "permissions": [{"allowedActions": [56, 39, 83], "resource": "QvDX0iVz"}, {"allowedActions": [5, 26, 46], "resource": "pcLhmcHg"}, {"allowedActions": [47, 97, 51], "resource": "tcRVIhUM"}]}, {"group": "7lcJAMqs", "groupId": "IF1yv01W", "package": "fvgO4iH7", "permissions": [{"allowedActions": [88, 5, 57], "resource": "ZIUrgOSK"}, {"allowedActions": [32, 13, 100], "resource": "Jk49EjJq"}, {"allowedActions": [49, 86, 34], "resource": "jg2OaRxw"}]}, {"group": "AIvcs3gk", "groupId": "XVO737Xp", "package": "CBRkD6Cp", "permissions": [{"allowedActions": [74, 1, 50], "resource": "2xVGdI6j"}, {"allowedActions": [61, 21, 41], "resource": "YzJP8cxr"}, {"allowedActions": [38, 75, 99], "resource": "GSNTAm8o"}]}], "module": "DtgbyNrF", "moduleId": "4KX9HlIm", "package": "mq8nZIZo"}, {"docLink": "vkMe6FCu", "groups": [{"group": "DCLmxXHp", "groupId": "WSkaccYl", "package": "lJviwUlM", "permissions": [{"allowedActions": [95, 84, 38], "resource": "ZREj4cQh"}, {"allowedActions": [6, 10, 57], "resource": "5sI59UXS"}, {"allowedActions": [88, 88, 81], "resource": "hYzespJy"}]}, {"group": "CiB9Vcyo", "groupId": "lu4andST", "package": "B08moZJ1", "permissions": [{"allowedActions": [23, 67, 2], "resource": "y36Lwzz8"}, {"allowedActions": [54, 59, 71], "resource": "3ADHhiKc"}, {"allowedActions": [20, 11, 62], "resource": "8mvTIdNr"}]}, {"group": "O1dtaJFp", "groupId": "llF8GaHd", "package": "HGiu7W9k", "permissions": [{"allowedActions": [73, 13, 70], "resource": "Ch3oBaZl"}, {"allowedActions": [39, 63, 93], "resource": "yDuGTe2v"}, {"allowedActions": [66, 68, 87], "resource": "TEkkLbyC"}]}], "module": "V6tcTZAY", "moduleId": "cvKmUVbW", "package": "YYPZY3Hn"}, {"docLink": "4egx5xU5", "groups": [{"group": "GP7DH7dG", "groupId": "sOngxPuN", "package": "fE1l8Yf1", "permissions": [{"allowedActions": [38, 97, 8], "resource": "XWDwfMKv"}, {"allowedActions": [30, 3, 97], "resource": "EkTYGLBm"}, {"allowedActions": [85, 28, 76], "resource": "8d1bjDtf"}]}, {"group": "3stcZVk3", "groupId": "ywe5BwrG", "package": "yi01Ut53", "permissions": [{"allowedActions": [43, 19, 19], "resource": "4fX3PFDZ"}, {"allowedActions": [75, 98, 75], "resource": "H0e70zdm"}, {"allowedActions": [84, 74, 96], "resource": "5sDPFOWI"}]}, {"group": "61myQ13p", "groupId": "us6jcXnF", "package": "kTe0XSrp", "permissions": [{"allowedActions": [97, 11, 12], "resource": "2X65odPK"}, {"allowedActions": [17, 0, 55], "resource": "T94e5ml4"}, {"allowedActions": [52, 87, 23], "resource": "L9pPDdSM"}]}], "module": "wlugxBYO", "moduleId": "pjlZLhwm", "package": "d7U9WFsO"}]}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateAvailablePermissionsByModule' test.out

#- 111 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "iWTlutRt", "moduleId": "eCZXOLSr"}' \
    > test.out 2>&1
eval_tap $? 111 'AdminDeleteConfigPermissionsByGroup' test.out

#- 112 AdminUpdateModulePackage
samples/cli/sample-apps Iam adminUpdateModulePackage \
    --body '{"data": [{"moduleId": "7pcIYKzQ", "package": "i6ii2mJf"}, {"moduleId": "QryTvFp8", "package": "rwsUXtK6"}, {"moduleId": "H1iG9RBl", "package": "PpI3i5DI"}]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminUpdateModulePackage' test.out

#- 113 AdminListClientTemplates
samples/cli/sample-apps Iam adminListClientTemplates \
    > test.out 2>&1
eval_tap $? 113 'AdminListClientTemplates' test.out

#- 114 AdminGetInputValidations
eval_tap 0 114 'AdminGetInputValidations # SKIP deprecated' test.out

#- 115 AdminUpdateInputValidations
eval_tap 0 115 'AdminUpdateInputValidations # SKIP deprecated' test.out

#- 116 AdminResetInputValidations
eval_tap 0 116 'AdminResetInputValidations # SKIP deprecated' test.out

#- 117 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'VDaY6X4R' \
    --before 'qrV8TRpX' \
    --endDate 'NFsldkwo' \
    --limit '17' \
    --query 'mpqrZwyG' \
    --roleId 'WxCiULbG' \
    --startDate 'ri8FcfK1' \
    > test.out 2>&1
eval_tap $? 117 'ListAdminsV3' test.out

#- 118 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetAgeRestrictionStatusV3' test.out

#- 119 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 38, "enable": true}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 120 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'AdminGetListCountryAgeRestrictionV3' test.out

#- 121 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '5dmkBFY6' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 23}' \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 122 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'IhxnLjVR' \
    --limit '47' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 122 'AdminGetBannedUsersV3' test.out

#- 123 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "6obwc7NY", "comment": "oUIuiITe", "endDate": "GBgLup13", "reason": "QPyqsxNS", "skipNotif": false, "userIds": ["lCyZblOT", "zDFHlSHa", "m1Rg1p2g"]}' \
    > test.out 2>&1
eval_tap $? 123 'AdminBanUserBulkV3' test.out

#- 124 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "j3N8Nrsv", "userId": "ac0j33oC"}, {"banId": "ePByNkrX", "userId": "hFL2YnZn"}, {"banId": "NA0z3WAg", "userId": "mk6OmbvR"}]}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUnbanUserBulkV3' test.out

#- 125 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 125 'AdminGetBansTypeWithNamespaceV3' test.out

#- 126 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'WsNVsiRT' \
    --clientName 'ssnIWdVG' \
    --clientType 'A7i30rOi' \
    --limit '67' \
    --offset '49' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 126 'AdminGetClientsByNamespaceV3' test.out

#- 127 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["MSSUcqUJ", "IMPGZ1bF", "ixOg18sS"], "clientUpdateRequest": {"audiences": ["iAEWJwz9", "GSGf2yPc", "TreQzLwy"], "baseUri": "7eYDigTx", "clientName": "bQZ88KIR", "clientPermissions": [{"action": 77, "resource": "liFFHicv", "schedAction": 84, "schedCron": "qugcOa1K", "schedRange": ["7hLDAwxo", "o9HVPC9i", "wAGaYWD0"]}, {"action": 43, "resource": "E6RYiFfl", "schedAction": 76, "schedCron": "dEhuZJAl", "schedRange": ["cuwd53Fz", "393cdSE9", "NlKo1pZl"]}, {"action": 8, "resource": "jSK0EQDO", "schedAction": 95, "schedCron": "aarmUnli", "schedRange": ["jLhoksWW", "7IhYiQaS", "Er5Pvz0e"]}], "clientPlatform": "iNzK8m2E", "deletable": true, "description": "1EM1kBsU", "modulePermissions": [{"moduleId": "Lo0BgyM4", "selectedGroups": [{"groupId": "EKyy9EL9", "selectedActions": [48, 3, 40]}, {"groupId": "lNy9XlvM", "selectedActions": [77, 83, 83]}, {"groupId": "qhVFuTv8", "selectedActions": [12, 32, 0]}]}, {"moduleId": "LTdEY9i5", "selectedGroups": [{"groupId": "WM5abzLZ", "selectedActions": [76, 66, 67]}, {"groupId": "ahsJg9VZ", "selectedActions": [71, 67, 97]}, {"groupId": "obMVimwj", "selectedActions": [61, 12, 47]}]}, {"moduleId": "Ho8KjYKg", "selectedGroups": [{"groupId": "1f4BOP46", "selectedActions": [55, 12, 25]}, {"groupId": "6YAi3KDz", "selectedActions": [8, 63, 65]}, {"groupId": "nwIaRLqL", "selectedActions": [55, 90, 36]}]}], "namespace": "nxnvTQf8", "oauthAccessTokenExpiration": 27, "oauthAccessTokenExpirationTimeUnit": "lkoAJamH", "oauthRefreshTokenExpiration": 27, "oauthRefreshTokenExpirationTimeUnit": "LM9yqOqN", "redirectUri": "N19CN8Vv", "scopes": ["Q8vqbddx", "n9EzmncH", "HEhEUwtw"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 127 'AdminBulkUpdateClientsV3' test.out

#- 128 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["AkuDLkkK", "PxmlD0Df", "0JlCAkwt"], "baseUri": "Rs1nZioJ", "clientId": "yDCXmbAX", "clientName": "sIcqqTEa", "clientPermissions": [{"action": 66, "resource": "HXDwld5d", "schedAction": 98, "schedCron": "Opg5E23k", "schedRange": ["UDCEgouR", "CeL43lKT", "CQErjoP1"]}, {"action": 31, "resource": "kYBqdhRI", "schedAction": 21, "schedCron": "3Y9g3U0y", "schedRange": ["xz8zysAx", "jE4EftTG", "QXDjKd2D"]}, {"action": 75, "resource": "ylWtLnEG", "schedAction": 31, "schedCron": "svF7FFyZ", "schedRange": ["q39VYdeZ", "MDqvv0j4", "MqJiH6HK"]}], "clientPlatform": "poxLrCPe", "deletable": false, "description": "pcWVP2jP", "modulePermissions": [{"moduleId": "48Zd96RQ", "selectedGroups": [{"groupId": "xbHzeROn", "selectedActions": [89, 38, 2]}, {"groupId": "2r7PaH9m", "selectedActions": [37, 5, 54]}, {"groupId": "VxhLnHXD", "selectedActions": [93, 11, 52]}]}, {"moduleId": "uxfHRaQS", "selectedGroups": [{"groupId": "moklXy0M", "selectedActions": [34, 16, 26]}, {"groupId": "5TwMzybU", "selectedActions": [41, 36, 10]}, {"groupId": "EByTsOYt", "selectedActions": [30, 75, 98]}]}, {"moduleId": "Q5UACE5s", "selectedGroups": [{"groupId": "xOlEk4nx", "selectedActions": [56, 81, 58]}, {"groupId": "opJJLwPb", "selectedActions": [55, 19, 10]}, {"groupId": "qEwSZMhJ", "selectedActions": [83, 13, 38]}]}], "namespace": "gXQ2AbIp", "oauthAccessTokenExpiration": 82, "oauthAccessTokenExpirationTimeUnit": "NWYA1MWM", "oauthClientType": "8NKTUIVH", "oauthRefreshTokenExpiration": 43, "oauthRefreshTokenExpirationTimeUnit": "mUL3YkzA", "redirectUri": "RcqNW82A", "scopes": ["tqi6lhhu", "1JSlzx8E", "oZcBwhxg"], "secret": "sGzdYDLw", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 128 'AdminCreateClientV3' test.out

#- 129 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'ybaK1QNL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 130 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'ZExzYPav' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'AdminDeleteClientV3' test.out

#- 131 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'Zb2Rj0at' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["bel5YZXB", "RBRb9G8J", "295uV4XR"], "baseUri": "HmTM3tU3", "clientName": "PbeEJXmM", "clientPermissions": [{"action": 80, "resource": "GIu9xRhA", "schedAction": 11, "schedCron": "6yHKubMd", "schedRange": ["6MAQkwfn", "OI0Tswry", "jwOuZkNC"]}, {"action": 76, "resource": "tNpu5kC4", "schedAction": 59, "schedCron": "Lb2H830v", "schedRange": ["HVwVt3N2", "yuGycTOP", "F8XICB0O"]}, {"action": 71, "resource": "cULXNRfh", "schedAction": 84, "schedCron": "elrN4lss", "schedRange": ["yVg9qZmA", "ci9wRBPg", "3Hzzkuch"]}], "clientPlatform": "71fif7t8", "deletable": false, "description": "O2uE0H3X", "modulePermissions": [{"moduleId": "RHL3zEir", "selectedGroups": [{"groupId": "eGlmTyBH", "selectedActions": [99, 39, 98]}, {"groupId": "r266o5Dg", "selectedActions": [39, 89, 86]}, {"groupId": "R88IEIm3", "selectedActions": [2, 66, 5]}]}, {"moduleId": "aloKFE9E", "selectedGroups": [{"groupId": "0Qt4eMgN", "selectedActions": [69, 59, 11]}, {"groupId": "jkpRkoQm", "selectedActions": [11, 72, 25]}, {"groupId": "eSYnTTm2", "selectedActions": [21, 51, 37]}]}, {"moduleId": "HS5pRgyP", "selectedGroups": [{"groupId": "8VdLtZDQ", "selectedActions": [38, 46, 31]}, {"groupId": "o6J3WOoK", "selectedActions": [76, 93, 65]}, {"groupId": "c7uiCLmt", "selectedActions": [9, 76, 70]}]}], "namespace": "jXKdXHXp", "oauthAccessTokenExpiration": 24, "oauthAccessTokenExpirationTimeUnit": "ZuEkolUy", "oauthRefreshTokenExpiration": 82, "oauthRefreshTokenExpirationTimeUnit": "v8eKJeoy", "redirectUri": "0QwRbWQt", "scopes": ["ugtgbMj2", "Z8271LNS", "U1YJDT7q"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateClientV3' test.out

#- 132 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '878hroT2' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 37, "resource": "gaSBdAsX"}, {"action": 47, "resource": "Gi3qa4KD"}, {"action": 73, "resource": "RLlF9zjd"}]}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateClientPermissionV3' test.out

#- 133 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'ZXTRD2xE' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 0, "resource": "AMMmbezC"}, {"action": 10, "resource": "vd5vkL32"}, {"action": 10, "resource": "CeSOVGZC"}]}' \
    > test.out 2>&1
eval_tap $? 133 'AdminAddClientPermissionsV3' test.out

#- 134 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '22' \
    --clientId 'pjQQrO2W' \
    --namespace $AB_NAMESPACE \
    --resource '2Zy3LCaf' \
    > test.out 2>&1
eval_tap $? 134 'AdminDeleteClientPermissionV3' test.out

#- 135 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'Q1togS5q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'AdminGetConfigValueV3' test.out

#- 136 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
    > test.out 2>&1
eval_tap $? 136 'AdminGetCountryListV3' test.out

#- 137 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'AdminGetCountryBlacklistV3' test.out

#- 138 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["4P7E1hgt", "Gdbx7iKN", "jURicXPp"]}' \
    > test.out 2>&1
eval_tap $? 138 'AdminAddCountryBlacklistV3' test.out

#- 139 AdminGetNamespaceScopedInputValidations
samples/cli/sample-apps Iam adminGetNamespaceScopedInputValidations \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'AdminGetNamespaceScopedInputValidations' test.out

#- 140 AdminUpdateNamespaceScopedInputValidations
samples/cli/sample-apps Iam adminUpdateNamespaceScopedInputValidations \
    --namespace $AB_NAMESPACE \
    --body '[{"field": "w3i8gsrq", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["wCFdPSYf", "doyCY2Dc", "AjHtNdwv"], "preferRegex": false, "regex": "N0UhLOhF"}, "blockedWord": ["8okIxJNE", "GJ0WnEtK", "7aHWHHJ9"], "description": [{"language": "kHACWFKJ", "message": ["CBLIxBLc", "yJcZ7UbR", "JHAfWQ9C"]}, {"language": "VN029Yom", "message": ["KlyVwUKd", "7q9JG1l1", "djX3UFzV"]}, {"language": "wYUED5KL", "message": ["PtRicdAk", "1MAcKuEK", "Du4Co1hZ"]}], "isCustomRegex": false, "letterCase": "xFewj4wF", "maxLength": 17, "maxRepeatingAlphaNum": 34, "maxRepeatingSpecialCharacter": 77, "minCharType": 80, "minLength": 10, "profanityFilter": "zDyE6w7J", "regex": "iJsh7i1v", "specialCharacterLocation": "jGAS3qD6", "specialCharacters": ["vxxl1SP0", "g7SnZtEi", "L7PL5Ode"]}}, {"field": "VSg7X2oq", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["muuof0rI", "qAg70WiQ", "zL3rEubZ"], "preferRegex": true, "regex": "AKieDCfr"}, "blockedWord": ["o6YT2c38", "ugmXQHQ0", "q7tLjwTH"], "description": [{"language": "xJpLCpB8", "message": ["qLGWwQ0v", "r8lwcUHW", "WP1isbNN"]}, {"language": "PFmiGYmQ", "message": ["VJpHiBz4", "DVlLcZRo", "TWTv57I3"]}, {"language": "oqUPqGZ6", "message": ["1OVf0KNF", "0rwJ14a4", "6wSobTTv"]}], "isCustomRegex": true, "letterCase": "nJSMHoAO", "maxLength": 89, "maxRepeatingAlphaNum": 54, "maxRepeatingSpecialCharacter": 12, "minCharType": 28, "minLength": 4, "profanityFilter": "hb596I0x", "regex": "PtSc4Ho5", "specialCharacterLocation": "ZhmIjr5f", "specialCharacters": ["r50lrRPl", "8Pc5ep0e", "jLjABsyi"]}}, {"field": "DLvYSryW", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Pa4LlljY", "qcycswy6", "DhbUeeRR"], "preferRegex": false, "regex": "a7lVkcQm"}, "blockedWord": ["mTFJiccC", "4JVMVhio", "zGwJ7NUY"], "description": [{"language": "vq4S08OV", "message": ["nYMcN0PC", "IAeVRccy", "7vfabNTB"]}, {"language": "t8psGs5m", "message": ["enC1UWo1", "R3MfQv4E", "mpLsN1Jz"]}, {"language": "eA8uEXrI", "message": ["VPWwwy5J", "dI01RbuU", "oClO7Oo3"]}], "isCustomRegex": true, "letterCase": "nj86GDTC", "maxLength": 9, "maxRepeatingAlphaNum": 68, "maxRepeatingSpecialCharacter": 60, "minCharType": 56, "minLength": 26, "profanityFilter": "tVS9mb5p", "regex": "piEiw9qW", "specialCharacterLocation": "qgh91s2z", "specialCharacters": ["Rfmzcy78", "aBBGNFy9", "U1n1DdpN"]}}]' \
    > test.out 2>&1
eval_tap $? 140 'AdminUpdateNamespaceScopedInputValidations' test.out

#- 141 AdminResetNamespaceScopedInputValidations
samples/cli/sample-apps Iam adminResetNamespaceScopedInputValidations \
    --field '7imcShh7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'AdminResetNamespaceScopedInputValidations' test.out

#- 142 AdminGetLoginAllowlistV3
samples/cli/sample-apps Iam adminGetLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'AdminGetLoginAllowlistV3' test.out

#- 143 AdminUpdateLoginAllowlistV3
samples/cli/sample-apps Iam adminUpdateLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "roleIds": ["Oly8HYLY", "Un1IpQNA", "PlxsbaRX"]}' \
    > test.out 2>&1
eval_tap $? 143 'AdminUpdateLoginAllowlistV3' test.out

#- 144 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 144 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 145 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 146 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 147 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QDiSI3p4' \
    > test.out 2>&1
eval_tap $? 147 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 148 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Tjt7tlRW' \
    --body '{"ACSURL": "9HpWHkRK", "AWSCognitoRegion": "j7QACcAo", "AWSCognitoUserPool": "S7XFRHwe", "AllowedClients": ["YQYQpVzg", "YMasHQS9", "Ucn7QIKj"], "AppId": "JeszQfPx", "AuthorizationEndpoint": "mWdoMzQi", "ClientId": "CcThQYfp", "EmptyStrFieldList": ["rQLpgN1I", "BDlGgJRO", "IPDd9IbK"], "EnableServerLicenseValidation": true, "Environment": "gPiK37Ve", "FederationMetadataURL": "Enu6wjSX", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "244Uh76B", "JWKSEndpoint": "FuNyfc1X", "KeyID": "tAYFWPIb", "LogoURL": "x2pOameN", "NetflixCertificates": {"encryptedPrivateKey": "nYdzSHZ6", "encryptedPrivateKeyName": "M6O5ZrtJ", "publicCertificate": "qMzvkYqz", "publicCertificateName": "K0DCEJsr", "rootCertificate": "wATJeQwU", "rootCertificateName": "HPPxJsBQ"}, "OrganizationId": "MqYPFPrJ", "PlatformName": "XgZDSQ10", "PrivateKey": "OC2MylNk", "RedirectUri": "swPR3FqV", "RegisteredDomains": [{"affectedClientIDs": ["daF4e3TN", "tyBMapWH", "4ouqPeRN"], "domain": "ux08FcCi", "namespaces": ["FLg4Ylcv", "Oc5p95uV", "hdZsSOAv"], "roleId": "5Se7qI5h", "ssoCfg": {"googleKey": {"X16QajeO": {}, "WKRJ9EPT": {}, "BYx3JOvI": {}}, "groupConfigs": [{"assignNamespaces": ["N7zUs5ee", "nJNnVNyF", "tPwvlRRw"], "group": "AJTch4wK", "roleId": "qe6Gky1B"}, {"assignNamespaces": ["mhr5kmJB", "k5R36mLE", "PCZp0o0H"], "group": "9aC4Loqk", "roleId": "aW9GJaPq"}, {"assignNamespaces": ["Bzkf5Udo", "En6nokxx", "4ZOLfLvS"], "group": "SHIJL9wa", "roleId": "YlPUmBNN"}]}}, {"affectedClientIDs": ["Q2ENsoLs", "65RiaTeH", "MnqvWAYC"], "domain": "4U38THg8", "namespaces": ["MDShNjRA", "VAEHsA6i", "X8MgPN3S"], "roleId": "axhpxBHd", "ssoCfg": {"googleKey": {"kVviUgPI": {}, "34zbtmDH": {}, "bs2wy0tZ": {}}, "groupConfigs": [{"assignNamespaces": ["IcLUZ7sg", "xhgrTROh", "mTR5MTCZ"], "group": "mTaoIukC", "roleId": "GMK49uSS"}, {"assignNamespaces": ["2Va8mxpw", "28fi5qqw", "SPjxjyYw"], "group": "TQxu6mA4", "roleId": "0MyZtNbG"}, {"assignNamespaces": ["s9Y5gHX7", "R4Q280Nm", "uSm0C0c9"], "group": "TRqPEAU3", "roleId": "Zu8W0KFR"}]}}, {"affectedClientIDs": ["HESJA83n", "YcC3eZbb", "tuPPp1CQ"], "domain": "m7u0mKOz", "namespaces": ["zfSIjcx8", "FYHloDGG", "qnOkUpnB"], "roleId": "BWKkJNSS", "ssoCfg": {"googleKey": {"OUlekGO8": {}, "RC5qEnzF": {}, "9TdiKUZF": {}}, "groupConfigs": [{"assignNamespaces": ["VXVPqoIg", "dPjib4kS", "iw0hUEoE"], "group": "L1iQAc8h", "roleId": "kX3Pv5vH"}, {"assignNamespaces": ["1sRIutUa", "zgMNwWnV", "kxnr6NDZ"], "group": "fxj7Uo0y", "roleId": "v5eZvlxA"}, {"assignNamespaces": ["YfeBrJB4", "1gSqMWm1", "ujnEO7hB"], "group": "5Au6udcS", "roleId": "7ND7OhY6"}]}}], "RelyingParty": "62SUo5dI", "SandboxId": "m2iE4tTa", "Secret": "HdbpiDHt", "TeamID": "ej8kHV19", "TokenAuthenticationType": "DBkmV7w7", "TokenClaimsMapping": {"KRVC6TFe": "fcerTpi0", "71ovZb0f": "HJGopR6v", "12V7L3Xe": "v6LRaAab"}, "TokenEndpoint": "bWzavLZG", "UserInfoEndpoint": "xItirPCT", "UserInfoHTTPMethod": "7mf5yPa8", "googleAdminConsoleKey": "nAamBYsf", "scopes": ["5yqHWuia", "xS0qAXSg", "kCQA6Jr1"]}' \
    > test.out 2>&1
eval_tap $? 148 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 149 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nQMWq51T' \
    > test.out 2>&1
eval_tap $? 149 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 150 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Xxg1QVS0' \
    --body '{"ACSURL": "OA9roLIi", "AWSCognitoRegion": "3Ggtde3I", "AWSCognitoUserPool": "Ii1I2SZj", "AllowedClients": ["lbzMlnVO", "NCcftccD", "h36iCIrE"], "AppId": "2DNX7x5X", "AuthorizationEndpoint": "AxH3z0zv", "ClientId": "1JLZ1o8N", "EmptyStrFieldList": ["BdtNFQSL", "0DaCKoPS", "0r7BZxf5"], "EnableServerLicenseValidation": false, "Environment": "TxKKCsqw", "FederationMetadataURL": "xz3k1UIs", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "yCIUbfel", "JWKSEndpoint": "qBW7Gnbj", "KeyID": "Em9HFgJW", "LogoURL": "6vNIxGiA", "NetflixCertificates": {"encryptedPrivateKey": "c0zJK4hi", "encryptedPrivateKeyName": "qJfkB0pF", "publicCertificate": "InHetLxP", "publicCertificateName": "hOop4rfk", "rootCertificate": "Z21svDk4", "rootCertificateName": "uJ8a0UvC"}, "OrganizationId": "EZ2wi8J2", "PlatformName": "fUKhZohj", "PrivateKey": "67SQ6UU7", "RedirectUri": "S5BrbE07", "RegisteredDomains": [{"affectedClientIDs": ["5yNmrzgq", "t6sSvUkh", "Ufhz3WL6"], "domain": "3tmX3U7P", "namespaces": ["SNAXJmoG", "0RUwUANy", "NHmJp3PO"], "roleId": "d736iLG7", "ssoCfg": {"googleKey": {"xXPrq42U": {}, "hsbYZauG": {}, "0lplFq6B": {}}, "groupConfigs": [{"assignNamespaces": ["yUTECHir", "IGNs1baw", "cM9xZs4M"], "group": "LMbXRlrK", "roleId": "8NHqWGp1"}, {"assignNamespaces": ["K7Uar6NQ", "p2waiuHA", "jsj5m2lR"], "group": "DM2yXzXI", "roleId": "qTpHVOPY"}, {"assignNamespaces": ["N4FPCLLd", "8YJdWXb0", "L7yclQBD"], "group": "DBmP2fbZ", "roleId": "guIQlpDT"}]}}, {"affectedClientIDs": ["BnKjuTNQ", "HbJc5NZg", "L7FmL0uu"], "domain": "fPiJgjJS", "namespaces": ["DcOsqT1r", "3GD82iqt", "C7o3nmuI"], "roleId": "SVgwHAsm", "ssoCfg": {"googleKey": {"dINu09oy": {}, "hDq3jl52": {}, "Kx3x7Qw9": {}}, "groupConfigs": [{"assignNamespaces": ["HJ5RCq5H", "Tah8mjde", "uAcmVKaE"], "group": "58U1vjIe", "roleId": "K61Wde7w"}, {"assignNamespaces": ["d2jwLTgw", "89Duf5zU", "SHmKzNNd"], "group": "UtwCXFHR", "roleId": "zyyOQbR6"}, {"assignNamespaces": ["ZMzlUAGp", "gXjOFdmP", "3upp12X8"], "group": "WZs5s4lx", "roleId": "PydsX0G9"}]}}, {"affectedClientIDs": ["vEyzy2zn", "2jH6PeOh", "gastSQ5y"], "domain": "wPGAqGZq", "namespaces": ["oamoag5e", "qwbtAJPl", "N2HCyyPC"], "roleId": "l7Rp9CdG", "ssoCfg": {"googleKey": {"Yv8VkVXZ": {}, "Jh0myMjF": {}, "OBut9vFQ": {}}, "groupConfigs": [{"assignNamespaces": ["Z5rSgDNh", "U0Lr5kpn", "ny2glQs3"], "group": "ObTtnNtW", "roleId": "f4Ntxky5"}, {"assignNamespaces": ["huRmDB1c", "HdS7cPyW", "nr4ojlMq"], "group": "zu0tc9Zl", "roleId": "ZoQvkq0d"}, {"assignNamespaces": ["FJ8IXrrR", "PMLf9SeU", "qN27gdAt"], "group": "paDIvAdD", "roleId": "qYTqcdgr"}]}}], "RelyingParty": "syNfH36K", "SandboxId": "cCy3INca", "Secret": "tB98qZFM", "TeamID": "hGZVkAgU", "TokenAuthenticationType": "zYlN90ay", "TokenClaimsMapping": {"ixhi5dWN": "4MTtb0mN", "v3w4VJNU": "E47V0s1S", "gRQYIXWb": "UuRjEw6Q"}, "TokenEndpoint": "N0Rl28Dw", "UserInfoEndpoint": "kA2hMOiz", "UserInfoHTTPMethod": "YDXWFufh", "googleAdminConsoleKey": "0LcEoKhH", "scopes": ["Y3dYgLUV", "FmkI4dbZ", "i02aidW1"]}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 151 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nQAd6Ozd' \
    --body '{"affectedClientIDs": ["tNXqPwOz", "IqEg88X1", "DVENjjPq"], "assignedNamespaces": ["4pSA7gss", "AV5lyuEM", "UnfM4mVG"], "domain": "ssfrvYSL", "roleId": "rVwHEJ72", "ssoCfg": {"googleKey": {"gcJvfKfV": {}, "coP6gKgN": {}, "nuiFMgPW": {}}, "groupConfigs": [{"assignNamespaces": ["7XUGwnia", "nWmhny9l", "hv4pP8So"], "group": "c1PiGXWK", "roleId": "putgIzPd"}, {"assignNamespaces": ["ZqJ8Mr8D", "o8pz2i0K", "uwajUFgB"], "group": "Ufo6MK7I", "roleId": "c6BZhsxk"}, {"assignNamespaces": ["flNlLGsr", "LOKCUT9R", "NjGHJ9YJ"], "group": "gn32r2zR", "roleId": "73tnIIXU"}]}}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 152 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AZgSPINw' \
    --body '{"domain": "2GSaZ9hS", "ssoGroups": ["4DNs0f1t", "j7kESsVc", "XYPzfOVL"]}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 153 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YJwWQzzJ' \
    --body '{"affectedClientIDs": ["hSD1bECZ", "YEeoLnMj", "lp1z1jCF"], "assignedNamespaces": ["KkHik48s", "yb7p0L8n", "XZivhXWn"], "domain": "ElySmQkD", "roleId": "cw96GRRo", "ssoCfg": {"googleKey": {"jfjYHMIw": {}, "bVtWTlOp": {}, "bmdM6xlS": {}}, "groupConfigs": [{"assignNamespaces": ["1Ghkif8y", "OIUkzWMM", "hpEVohkq"], "group": "HcUzjUq4", "roleId": "7TTc7QuZ"}, {"assignNamespaces": ["lbb2ttEI", "Sxn1ASfb", "k0upDWNO"], "group": "z8nhBohL", "roleId": "o9pmKqPJ"}, {"assignNamespaces": ["ZBwoDKRo", "3FO37lBW", "LmpDe9oE"], "group": "1wY0LYkT", "roleId": "0ozLNjLU"}]}}' \
    > test.out 2>&1
eval_tap $? 153 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 154 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '9H4sOCLL' \
    > test.out 2>&1
eval_tap $? 154 'RetrieveSSOLoginPlatformCredential' test.out

#- 155 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '0iXz943k' \
    --body '{"acsUrl": "NIl4etZw", "apiKey": "rA3xottp", "appId": "4FCSXgEr", "federationMetadataUrl": "Y1oNfRlo", "isActive": false, "redirectUri": "6MgRxRd2", "secret": "8CC0Gjbv", "ssoUrl": "oIpvUFlB"}' \
    > test.out 2>&1
eval_tap $? 155 'AddSSOLoginPlatformCredential' test.out

#- 156 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HNEZSrmh' \
    > test.out 2>&1
eval_tap $? 156 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 157 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'aJdCMZt7' \
    --body '{"acsUrl": "Zm5rKtta", "apiKey": "CKsaSRSs", "appId": "zSWtVrlK", "federationMetadataUrl": "45Ciojz9", "isActive": false, "redirectUri": "Cwg2Eo0P", "secret": "eojTm6Ic", "ssoUrl": "Y5dkSuX5"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSSOPlatformCredential' test.out

#- 158 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CJIBcfAq' \
    --rawPID 'false' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["ISuhBkpS", "dE239zY7", "etjoDxm4"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 159 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JYOAdQwi' \
    --platformUserId 'O0mB83Cn' \
    --pidType '8eCsrRKA' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserByPlatformUserIDV3' test.out

#- 160 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetProfileUpdateStrategyV3' test.out

#- 161 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    --body '{"config": {"minimumAllowedInterval": 78}, "type": "LyRcHMoV"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 162 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetRoleOverrideConfigV3' test.out

#- 163 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"additions": [{"actions": [80, 21, 13], "resource": "Mw1p9ecW"}, {"actions": [7, 36, 56], "resource": "y3ar9Hbc"}, {"actions": [53, 35, 33], "resource": "tTXgOYyn"}], "exclusions": [{"actions": [72, 97, 29], "resource": "14tcDgDY"}, {"actions": [56, 92, 41], "resource": "rwx7Xm7c"}, {"actions": [26, 82, 67], "resource": "lNhuwv2P"}], "overrides": [{"actions": [73, 24, 85], "resource": "iczRlMDU"}, {"actions": [94, 35, 31], "resource": "EId1IM7G"}, {"actions": [80, 61, 24], "resource": "ZIgAHlKS"}], "replacements": [{"replacement": {"actions": [64, 91, 8], "resource": "S219Vpyy"}, "target": "of0JIuNC"}, {"replacement": {"actions": [100, 79, 51], "resource": "DaNTpILg"}, "target": "Pp5hxGXo"}, {"replacement": {"actions": [50, 44, 1], "resource": "oXYZRy59"}, "target": "ikdVVBng"}]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateRoleOverrideConfigV3' test.out

#- 164 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetRoleSourceV3' test.out

#- 165 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 166 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId '3nyFm7O0' \
    > test.out 2>&1
eval_tap $? 166 'AdminGetRoleNamespacePermissionV3' test.out

#- 167 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'BIOEXDwW' \
    --after '60' \
    --before '14' \
    --limit '77' \
    > test.out 2>&1
eval_tap $? 167 'GetAdminUsersByRoleIdV3' test.out

#- 168 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '22' \
    --tagName 'HI7E5ibD' \
    > test.out 2>&1
eval_tap $? 168 'AdminQueryTagV3' test.out

#- 169 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "eMEzWndl"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminCreateTagV3' test.out

#- 170 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'Z91WuV5D' \
    --body '{"tagName": "1jqcKR0u"}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateTagV3' test.out

#- 171 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'Y8AQgpaN' \
    > test.out 2>&1
eval_tap $? 171 'AdminDeleteTagV3' test.out

#- 172 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'v3K8sCkV' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByEmailAddressV3' test.out

#- 173 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["O7ZzUfpo", "xmo7F8fl", "1bBaXxF2"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminBulkUpdateUsersV3' test.out

#- 174 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'zZ5RPmHD' \
    --body '{"bulkUserId": ["k8DxbJTj", "RSmWd6qb", "q5ao38s5"]}' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetBulkUserBanV3' test.out

#- 175 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": false, "userIds": ["UYayUuM1", "kGAXN73x", "PvZRqrx6"]}' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUserIDByUserIDsV3' test.out

#- 176 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["rEnPNKud", "sJ20eV8s", "hM9t9sNb"]}' \
    > test.out 2>&1
eval_tap $? 176 'AdminBulkGetUsersPlatform' test.out

#- 177 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "mIQjZRT7", "userId": "ezJof3dy"}, "fields": ["2eEh94OH", "PQryqaUQ", "YdnnhuJO"], "limit": 84}' \
    > test.out 2>&1
eval_tap $? 177 'AdminCursorGetUserV3' test.out

#- 178 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["LxoHabM1", "nasgW57A", "y5MwYEvv"], "isAdmin": true, "languageTag": "s8cmDSbX", "namespace": "5Pc6T61Y", "roles": ["p5tI4C6e", "JAwFxir3", "wEz6kEYB"]}' \
    > test.out 2>&1
eval_tap $? 178 'AdminInviteUserV3' test.out

#- 179 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '42' \
    --platformUserId 'dxNq4ofR' \
    --platformId 'N9uDEdu4' \
    > test.out 2>&1
eval_tap $? 179 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 180 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 180 'AdminListUsersV3' test.out

#- 181 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '5J4oiO83' \
    --endDate 'hXBa8OZn' \
    --includeTotal 'false' \
    --limit '77' \
    --offset '26' \
    --platformBy 'fu4NB2Ab' \
    --platformId 'CS65giir' \
    --query 'snsCkain' \
    --roleIds 'kGkuOoWL' \
    --selectedFields 'WjmBG97Z' \
    --skipLoginQueue 'true' \
    --startDate 'OoqXdlJA' \
    --tagIds 'kX3QvXVF' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 181 'AdminSearchUserV3' test.out

#- 182 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ctZtuMaq", "ceMrC58m", "m0j3rRkU"]}' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetBulkUserByEmailAddressV3' test.out

#- 183 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XLVKTpQs' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserByUserIdV3' test.out

#- 184 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GwWbSwY3' \
    --body '{"avatarUrl": "1Jywid9F", "country": "zV9dHlHq", "dateOfBirth": "Tyn2Bese", "displayName": "3ClxEpNh", "languageTag": "VATNdufP", "skipLoginQueue": true, "tags": ["0IBOwHuk", "SRzs53Ri", "3m7qFsM2"], "uniqueDisplayName": "I4FfStLl", "userName": "i8pzWR2z"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateUserV3' test.out

#- 185 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y1harS7u' \
    --activeOnly 'false' \
    --after 'CfXCC7X7' \
    --before 'lWea3chF' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetUserBanV3' test.out

#- 186 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vSEHH5Td' \
    --body '{"ban": "rS7cW0n4", "comment": "nygWCAKL", "endDate": "lfDhzWeU", "reason": "y5sg1Jzi", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 186 'AdminBanUserV3' test.out

#- 187 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'p4ZXxz6h' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserBanSummaryV3' test.out

#- 188 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'GqKmm8Dx' \
    --namespace $AB_NAMESPACE \
    --userId '5ViXVQYm' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserBanV3' test.out

#- 189 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c4Vepzrj' \
    --body '{"context": "jxfea56x", "emailAddress": "EStYETro", "languageTag": "UnWR71sP", "upgradeToken": "e03aPVvH"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminSendVerificationCodeV3' test.out

#- 190 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zPteMofg' \
    --body '{"Code": "UURCzOsy", "ContactType": "rHlA3BWg", "LanguageTag": "S2VQ6DVD", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyAccountV3' test.out

#- 191 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'f3HZN2jZ' \
    > test.out 2>&1
eval_tap $? 191 'GetUserVerificationCode' test.out

#- 192 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kjvJYSJ5' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserDeletionStatusV3' test.out

#- 193 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'e2IQB8dZ' \
    --body '{"deletionDate": 32, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserDeletionStatusV3' test.out

#- 194 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'D9ygQk0b' \
    > test.out 2>&1
eval_tap $? 194 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 195 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iqV53oJA' \
    --body '{"code": "W7sgYsRG", "country": "8IZWJ3O4", "dateOfBirth": "WrmhyV35", "displayName": "YGzVZaLr", "emailAddress": "JFVAsqLB", "password": "lGcASk7x", "uniqueDisplayName": "Uch2Gfqv", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpgradeHeadlessAccountV3' test.out

#- 196 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bdnbVE7X' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserInformationV3' test.out

#- 197 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xrRmuNyO' \
    --after '0.7326360285308929' \
    --before '0.49692311101282394' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetUserLoginHistoriesV3' test.out

#- 198 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'naprjiJi' \
    --body '{"languageTag": "mvUelew9", "mfaToken": "kQTsr1OL", "newPassword": "9imdmj8i", "oldPassword": "XxiibSGZ"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminResetPasswordV3' test.out

#- 199 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'T0hkQy6Y' \
    --body '{"Permissions": [{"Action": 6, "Resource": "ZNUbSMNg", "SchedAction": 22, "SchedCron": "srSlJVa5", "SchedRange": ["ouO8p0Yu", "tIJuFjCC", "4lBepb82"]}, {"Action": 84, "Resource": "nSKLTWk0", "SchedAction": 18, "SchedCron": "53vbYVMt", "SchedRange": ["w6sshKIX", "WNZ0B1rk", "dKrAGFYU"]}, {"Action": 7, "Resource": "voyBHeZG", "SchedAction": 48, "SchedCron": "oiIH0FUA", "SchedRange": ["6FewkcmI", "7AgvOI2R", "oRovoAHx"]}]}' \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateUserPermissionV3' test.out

#- 200 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tHx77mlG' \
    --body '{"Permissions": [{"Action": 84, "Resource": "HkZlkOuR", "SchedAction": 94, "SchedCron": "EEB3rUDI", "SchedRange": ["TDvDNrEY", "LWEcjNgK", "RzrbP08I"]}, {"Action": 49, "Resource": "vS2fj4DX", "SchedAction": 25, "SchedCron": "o3PB7XdJ", "SchedRange": ["Cnm1qbIY", "dbd3Qg2y", "xHdRoVsa"]}, {"Action": 28, "Resource": "CIo69fb2", "SchedAction": 83, "SchedCron": "SF5lc5ZN", "SchedRange": ["YO8OOiZi", "tNcEaUZq", "wrY2ZEt1"]}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddUserPermissionsV3' test.out

#- 201 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QewDsTrL' \
    --body '[{"Action": 3, "Resource": "OGw4UyDm"}, {"Action": 53, "Resource": "wE8hHV2p"}, {"Action": 30, "Resource": "oEn099c5"}]' \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteUserPermissionBulkV3' test.out

#- 202 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '44' \
    --namespace $AB_NAMESPACE \
    --resource 'qggtQm6b' \
    --userId 'RrLTmMgT' \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteUserPermissionV3' test.out

#- 203 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xlyJcWK9' \
    --after 'Pmwlsw2o' \
    --before '64fVxxlM' \
    --limit '7' \
    --platformId 'h6sO2wTE' \
    --targetNamespace 'YgFisGyb' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetUserPlatformAccountsV3' test.out

#- 204 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UtFMiS4d' \
    --status 'GEFfQFlC' \
    > test.out 2>&1
eval_tap $? 204 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 205 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '6jb4jyRC' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetListJusticePlatformAccounts' test.out

#- 206 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'nFqInqOA' \
    --userId 'yIIqhB7h' \
    --createIfNotFound 'false' \
    > test.out 2>&1
eval_tap $? 206 'AdminGetUserMapping' test.out

#- 207 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'tSDTmwo6' \
    --userId 'qMJQHHOH' \
    > test.out 2>&1
eval_tap $? 207 'AdminCreateJusticeUser' test.out

#- 208 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'MIdgwKJK' \
    --skipConflict 'true' \
    --body '{"platformId": "JfZejvS4", "platformUserId": "O8ND4Jpb"}' \
    > test.out 2>&1
eval_tap $? 208 'AdminLinkPlatformAccount' test.out

#- 209 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '0rmKOK62' \
    --platformId 'nPGUcozM' \
    > test.out 2>&1
eval_tap $? 209 'AdminGetUserLinkHistoriesV3' test.out

#- 210 AdminPlatformUnlinkV3
eval_tap 0 210 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 211 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bMzE3fgY' \
    --userId '1l329Wxy' \
    > test.out 2>&1
eval_tap $? 211 'AdminPlatformUnlinkAllV3' test.out

#- 212 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KKncksFA' \
    --userId 'GTrYxc0F' \
    --ticket 'EGkRQp6W' \
    > test.out 2>&1
eval_tap $? 212 'AdminPlatformLinkV3' test.out

#- 213 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 213 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 214 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2Qo0tpf2' \
    --userId 'Rn3mL10t' \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 215 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nPJVaEhX' \
    --userId 'kwQ0gK2B' \
    --platformToken '9LIYhVzg' \
    > test.out 2>&1
eval_tap $? 215 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 216 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'yRMRQWZv' \
    --userId '0Xd6VrP9' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserSinglePlatformAccount' test.out

#- 217 AdminDeleteUserRolesV3
eval_tap 0 217 'AdminDeleteUserRolesV3 # SKIP deprecated' test.out

#- 218 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nGM155G7' \
    --body '[{"namespace": "YDb5LDRs", "roleId": "N8cEWi7t"}, {"namespace": "AXNvMhp5", "roleId": "73bUk6Vx"}, {"namespace": "XXaAGyNa", "roleId": "FmBIlBc1"}]' \
    > test.out 2>&1
eval_tap $? 218 'AdminSaveUserRoleV3' test.out

#- 219 AdminAddUserRoleV3
eval_tap 0 219 'AdminAddUserRoleV3 # SKIP deprecated' test.out

#- 220 AdminDeleteUserRoleV3
eval_tap 0 220 'AdminDeleteUserRoleV3 # SKIP deprecated' test.out

#- 221 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fu2j2K7h' \
    > test.out 2>&1
eval_tap $? 221 'AdminGetUserStateByUserIdV3' test.out

#- 222 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RPImC7I2' \
    --body '{"enabled": true, "reason": "RcuVTapy"}' \
    > test.out 2>&1
eval_tap $? 222 'AdminUpdateUserStatusV3' test.out

#- 223 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'MC8fOOW4' \
    --body '{"emailAddress": "J8la30dy", "password": "gZndSKkN"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminTrustlyUpdateUserIdentity' test.out

#- 224 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BGopLkbS' \
    > test.out 2>&1
eval_tap $? 224 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 225 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'n7SSriVy' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "Oc3Pfark"}' \
    > test.out 2>&1
eval_tap $? 225 'AdminUpdateClientSecretV3' test.out

#- 226 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'cHQnScSC' \
    > test.out 2>&1
eval_tap $? 226 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 227 GetThirdPartyLoginPlatformDefaultsV3
samples/cli/sample-apps Iam getThirdPartyLoginPlatformDefaultsV3 \
    --platformId 'RtuzbYzG' \
    > test.out 2>&1
eval_tap $? 227 'GetThirdPartyLoginPlatformDefaultsV3' test.out

#- 228 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'VJV3Srwl' \
    --before 'TPxCrblX' \
    --isWildcard 'true' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 228 'AdminGetRolesV3' test.out

#- 229 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "Bk8oBp4f", "namespace": "gspsBH92", "userId": "1S0JbuwC"}, {"displayName": "MgE2IBjA", "namespace": "bcEPxUGG", "userId": "UaR3yKki"}, {"displayName": "YOcNFBGP", "namespace": "kI4T3vLT", "userId": "EI0isIkN"}], "members": [{"displayName": "DeIiFNEu", "namespace": "RJGVZ9Sl", "userId": "cwX8cMYt"}, {"displayName": "hPGJjFpd", "namespace": "7zIIMLRb", "userId": "4xYVn3Id"}, {"displayName": "zqY96agk", "namespace": "hhGAOu95", "userId": "dGkvEDvH"}], "permissions": [{"action": 88, "resource": "bNrgs5R5", "schedAction": 27, "schedCron": "fYQsZN3g", "schedRange": ["nMv2zfxM", "b9X272f0", "YSyIiper"]}, {"action": 20, "resource": "DHcamd54", "schedAction": 91, "schedCron": "Wi5bEKYq", "schedRange": ["Y5si1Ibb", "ZkSwwHEp", "j3Z081Ey"]}, {"action": 13, "resource": "MlR0Bw5J", "schedAction": 38, "schedCron": "AoZqYtVJ", "schedRange": ["p8rVd9DX", "GfKsQq0B", "WEYZCLvQ"]}], "roleName": "nh6s2HRa"}' \
    > test.out 2>&1
eval_tap $? 229 'AdminCreateRoleV3' test.out

#- 230 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'ZN8mpWIU' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleV3' test.out

#- 231 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'YuDSOnL9' \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRoleV3' test.out

#- 232 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'QJNhlSaH' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "ImHo0gJg"}' \
    > test.out 2>&1
eval_tap $? 232 'AdminUpdateRoleV3' test.out

#- 233 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '0XV27Io5' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleAdminStatusV3' test.out

#- 234 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'irnqPENJ' \
    > test.out 2>&1
eval_tap $? 234 'AdminUpdateAdminRoleStatusV3' test.out

#- 235 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'rAgc0HbE' \
    > test.out 2>&1
eval_tap $? 235 'AdminRemoveRoleAdminV3' test.out

#- 236 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'gVuGfoVy' \
    --after 'sjFOOoIz' \
    --before 'NJD10mjY' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 236 'AdminGetRoleManagersV3' test.out

#- 237 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'QIaccZHJ' \
    --body '{"managers": [{"displayName": "O44CS2XQ", "namespace": "P4GoACG1", "userId": "AS4p73WV"}, {"displayName": "zh60tfVD", "namespace": "CEWPiuuT", "userId": "BxpLOn7H"}, {"displayName": "UR3iqIaj", "namespace": "3AYbUEWj", "userId": "8SznBPg4"}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRoleManagersV3' test.out

#- 238 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'htNLZmdL' \
    --body '{"managers": [{"displayName": "FxFPHEBo", "namespace": "ZoPnvGvb", "userId": "qP2kEryM"}, {"displayName": "GG5rHxU0", "namespace": "kzD17Sle", "userId": "kIlEE2RL"}, {"displayName": "IPHm2oF8", "namespace": "cJL2f3DN", "userId": "pRIQDT0o"}]}' \
    > test.out 2>&1
eval_tap $? 238 'AdminRemoveRoleManagersV3' test.out

#- 239 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'H5pwZjtw' \
    --after 'DH24ePEq' \
    --before 'hOyEckQv' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 239 'AdminGetRoleMembersV3' test.out

#- 240 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'uYLPm85h' \
    --body '{"members": [{"displayName": "2SVyLviA", "namespace": "pcg8brEk", "userId": "YEqVwUHF"}, {"displayName": "7EQTYE5j", "namespace": "hO6KPDav", "userId": "uyxElleD"}, {"displayName": "U9LtuqhV", "namespace": "nuLcXWOw", "userId": "KoULW52h"}]}' \
    > test.out 2>&1
eval_tap $? 240 'AdminAddRoleMembersV3' test.out

#- 241 AdminRemoveRoleMembersV3
eval_tap 0 241 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 242 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'ePB5SKZF' \
    --body '{"permissions": [{"action": 7, "resource": "a6NL9SMw", "schedAction": 1, "schedCron": "g4UnIa9i", "schedRange": ["GMNpj6N0", "6ojY5feV", "SebP9eAp"]}, {"action": 80, "resource": "4DWFDhxY", "schedAction": 63, "schedCron": "2P9H75kv", "schedRange": ["G5MIOk73", "zjqr5F68", "9vXaLHUa"]}, {"action": 61, "resource": "Vvapgukx", "schedAction": 2, "schedCron": "eWHw0Ksr", "schedRange": ["CL1LGtB8", "jrypD7DW", "YsJq4J26"]}]}' \
    > test.out 2>&1
eval_tap $? 242 'AdminUpdateRolePermissionsV3' test.out

#- 243 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'X0DEAMc4' \
    --body '{"permissions": [{"action": 6, "resource": "YL6DUu4g", "schedAction": 24, "schedCron": "pJfhXamn", "schedRange": ["cPQCh9W0", "JRVzqsMx", "S7Yj00hp"]}, {"action": 92, "resource": "zBy1PPBR", "schedAction": 48, "schedCron": "aJYtFger", "schedRange": ["jBu0jp9V", "SRzZXvti", "SMmBIaJ1"]}, {"action": 85, "resource": "rDOyWHDM", "schedAction": 34, "schedCron": "N1oaVHC0", "schedRange": ["nXDmCDzW", "sV44ZWMh", "Xf2WlnRx"]}]}' \
    > test.out 2>&1
eval_tap $? 243 'AdminAddRolePermissionsV3' test.out

#- 244 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'aS9TAIG1' \
    --body '["ENEacK6f", "pxkmLNj4", "ymCuF8wn"]' \
    > test.out 2>&1
eval_tap $? 244 'AdminDeleteRolePermissionsV3' test.out

#- 245 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '47' \
    --resource 'h7Q7Biu5' \
    --roleId 'KnjQv5K9' \
    > test.out 2>&1
eval_tap $? 245 'AdminDeleteRolePermissionV3' test.out

#- 246 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 246 'AdminGetMyUserV3' test.out

#- 247 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'H4991hZo' \
    --extendExp 'false' \
    --redirectUri 'J1MAxnbi' \
    --password 'vEU0uJxX' \
    --requestId 'wJMR63Lw' \
    --userName 'VpkvSZQW' \
    > test.out 2>&1
eval_tap $? 247 'UserAuthenticationV3' test.out

#- 248 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'wRlsylCz' \
    --linkingToken '8byUchH2' \
    --password '1JbUCxgY' \
    --username 'HaFbUN19' \
    > test.out 2>&1
eval_tap $? 248 'AuthenticationWithPlatformLinkV3' test.out

#- 249 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId '2vqM6mnH' \
    --linkingToken '2mrTmVvb' \
    --password 'fzARDSYu' \
    --username '2TH9ImbY' \
    > test.out 2>&1
eval_tap $? 249 'AuthenticateAndLinkForwardV3' test.out

#- 250 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 250 'PublicGetSystemConfigV3' test.out

#- 251 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'htOyD9oe' \
    --extendExp 'true' \
    --linkingToken 'lpq7tOTY' \
    > test.out 2>&1
eval_tap $? 251 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 252 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri '4ZernP6J' \
    --state 'LiqydFo3' \
    --platformId 'EDcGCZ5I' \
    > test.out 2>&1
eval_tap $? 252 'RequestOneTimeLinkingCodeV3' test.out

#- 253 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'jr33rPd8' \
    > test.out 2>&1
eval_tap $? 253 'ValidateOneTimeLinkingCodeV3' test.out

#- 254 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData '5HwWvNKD' \
    --isTransient 'false' \
    --clientId 'mPshqAf0' \
    --oneTimeLinkCode 'CpKjlNhB' \
    > test.out 2>&1
eval_tap $? 254 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 255 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 255 'GetCountryLocationV3' test.out

#- 256 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 256 'Logout' test.out

#- 257 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge '2vizzko0' \
    --codeChallengeMethod 'S256' \
    --clientId 'D9QDGJVV' \
    > test.out 2>&1
eval_tap $? 257 'RequestTokenExchangeCodeV3' test.out

#- 258 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'O4cENf4u' \
    --userId 'Fy4IjpRr' \
    --platformUserId 'X2kePIyv' \
    > test.out 2>&1
eval_tap $? 258 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 259 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ybvf8e1N' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 259 'RevokeUserV3' test.out

#- 260 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'hWWu7x2J' \
    --codeChallenge '6eFV7wJp' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --loginWebBased 'true' \
    --nonce '3g3JwGFq' \
    --oneTimeLinkCode 'trwTo7ul' \
    --redirectUri 'cAzRqwxd' \
    --scope 'N7ZrzNMU' \
    --state 'ZSluLx5U' \
    --targetAuthPage 'bkqXMZIW' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'nHVOFMMJ' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 260 'AuthorizeV3' test.out

#- 261 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '3RPXfrdY' \
    > test.out 2>&1
eval_tap $? 261 'TokenIntrospectionV3' test.out

#- 262 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 262 'GetJWKSV3' test.out

#- 263 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'k3bGr5An' \
    --factor 'agMXCThJ' \
    --mfaToken 'BP6DhWor' \
    > test.out 2>&1
eval_tap $? 263 'SendMFAAuthenticationCode' test.out

#- 264 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'kI81WaIN' \
    --mfaToken '3C3gOXo1' \
    > test.out 2>&1
eval_tap $? 264 'Change2faMethod' test.out

#- 265 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'jf4Ygmhh' \
    --factor 'TOiY5aL5' \
    --mfaToken 'gRAugbjJ' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 265 'Verify2faCode' test.out

#- 266 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor '3zJuJE3X' \
    --factors '1JRp4gO5' \
    --rememberDevice 'true' \
    --clientId 'ST5jrYBr' \
    --code 'gLLJx2d1' \
    --factor 'vlYrJTFv' \
    --mfaToken 'GCbhpCtj' \
    > test.out 2>&1
eval_tap $? 266 'Verify2faCodeForward' test.out

#- 267 OAuthDynamicClientRegisterWithNamespaceV3
samples/cli/sample-apps Iam oAuthDynamicClientRegisterWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --body '{"client_name": "uJhZcKcP", "client_uri": "1bYilu2G", "grant_types": ["nN1QEI9e", "phfswIAk", "iXwmiLU8"], "redirect_uris": ["RyYNG0Et", "4CUCIwGR", "g2bIxGfo"], "response_types": ["IOkGeJ2a", "eQwV9HI5", "grzumOxl"], "scopes": ["UBzeMKrX", "6T6xKFfs", "blL3IHCe"], "token_endpoint_auth_method": "q99B9Fyx"}' \
    > test.out 2>&1
eval_tap $? 267 'OAuthDynamicClientRegisterWithNamespaceV3' test.out

#- 268 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8wmDAaMJ' \
    --userId 'ZzSI25LG' \
    > test.out 2>&1
eval_tap $? 268 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 269 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'FSg6ibBC' \
    --clientId 'VQn9zQc4' \
    --redirectUri 'M3mzq8SU' \
    --requestId 'NvofGOvE' \
    > test.out 2>&1
eval_tap $? 269 'AuthCodeRequestV3' test.out

#- 270 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'PXcODe71' \
    --additionalData 'RoM5DrWc' \
    --clientId 'HHToG4ql' \
    --createHeadless 'false' \
    --deviceId '7NNLgfSy' \
    --macAddress '1wmj2sXD' \
    --platformToken 'NxcypoHK' \
    --serviceLabel '0.5127410211229735' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenGrantV3' test.out

#- 271 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 271 'GetRevocationListV3' test.out

#- 272 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'bf76XpCY' \
    > test.out 2>&1
eval_tap $? 272 'TokenRevocationV3' test.out

#- 273 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'bOijodKV' \
    --simultaneousTicket '18D6tHKf' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'vKoac9U4' \
    > test.out 2>&1
eval_tap $? 273 'SimultaneousLoginV3' test.out

#- 274 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'OH2g0khR' \
    --clientId 'mrlt744w' \
    --clientSecret 'K03eULzh' \
    --code '2O48OpFx' \
    --codeVerifier 'Jw8xjklp' \
    --extendNamespace 'yUvarzmx' \
    --extendExp 'true' \
    --password 'e0kgJkmC' \
    --redirectUri 'oYj167t8' \
    --refreshToken 'UzeOOT12' \
    --scope 'lpz6qk04' \
    --username 'u9gPD1SS' \
    --grantType 'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    > test.out 2>&1
eval_tap $? 274 'TokenGrantV3' test.out

#- 275 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'UTFHT5ih' \
    > test.out 2>&1
eval_tap $? 275 'VerifyTokenV3' test.out

#- 276 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '1QbqasMk' \
    --code 'KuImx3Wg' \
    --error 'rthINfT3' \
    --openidAssocHandle 'rxhhlsxA' \
    --openidClaimedId 'mJm65c8c' \
    --openidIdentity 'DNA1Jt0M' \
    --openidMode 'f1zeEUpY' \
    --openidNs 't9i7RjRA' \
    --openidOpEndpoint 'Gn2yHBen' \
    --openidResponseNonce 'Z0hDTEOq' \
    --openidReturnTo 'AXtGZHWu' \
    --openidSig 'dNf16712' \
    --openidSigned 'KKS7cS79' \
    --state 'i7o2TKET' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticationV3' test.out

#- 277 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'O0VVncmu' \
    --platformToken '3deNV4Zs' \
    > test.out 2>&1
eval_tap $? 277 'PlatformTokenRefreshV3' test.out

#- 278 PublicGetInputValidations
eval_tap 0 278 'PublicGetInputValidations # SKIP deprecated' test.out

#- 279 PublicGetInputValidationByField
eval_tap 0 279 'PublicGetInputValidationByField # SKIP deprecated' test.out

#- 280 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'FkXiP6oU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 280 'PublicGetCountryAgeRestrictionV3' test.out

#- 281 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'N1CYRosl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 281 'PublicGetConfigValueV3' test.out

#- 282 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 282 'PublicGetCountryListV3' test.out

#- 283 PublicGetNamespaceScopedInputValidations
samples/cli/sample-apps Iam publicGetNamespaceScopedInputValidations \
    --namespace $AB_NAMESPACE \
    --defaultOnEmpty 'false' \
    --languageCode 'GmtjsZBU' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetNamespaceScopedInputValidations' test.out

#- 284 PublicGetNamespaceScopedInputValidationByField
samples/cli/sample-apps Iam publicGetNamespaceScopedInputValidationByField \
    --field 'E1IRmeG1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'PublicGetNamespaceScopedInputValidationByField' test.out

#- 285 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 285 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 286 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'qlR5tt6F' \
    > test.out 2>&1
eval_tap $? 286 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 287 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 287 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 288 PublicGetUserByPlatformUserIDV3
eval_tap 0 288 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 289 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetProfileUpdateStrategyV3' test.out

#- 290 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'PeJHlzBp' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetAsyncStatus' test.out

#- 291 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'yGdIc3el' \
    --limit '96' \
    --offset '75' \
    --platformBy 'lcBqlfAM' \
    --platformId 'DMdtdrr9' \
    --query '6oUdFGZk' \
    > test.out 2>&1
eval_tap $? 291 'PublicSearchUserV3' test.out

#- 292 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "g0g0DiP3", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "CajErMRr", "policyId": "2iUvnttF", "policyVersionId": "X5gBWFc2"}, {"isAccepted": false, "localizedPolicyVersionId": "r356tYHT", "policyId": "c5M9d2xW", "policyVersionId": "Ki9ZKrUb"}, {"isAccepted": true, "localizedPolicyVersionId": "s4AoexCY", "policyId": "ZhpIARy7", "policyVersionId": "EXoeN0Jx"}], "authType": "8n2V1bsD", "code": "Md1X0PCl", "country": "QvOJAhxq", "dateOfBirth": "LdOoJxA5", "displayName": "MXbwPu92", "emailAddress": "KQBne2VI", "password": "GoAt0B48", "reachMinimumAge": false, "uniqueDisplayName": "pMZG6m5c"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicCreateUserV3' test.out

#- 293 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'za9JePd3' \
    --query 'zc6pHNd4' \
    > test.out 2>&1
eval_tap $? 293 'CheckUserAvailability' test.out

#- 294 PublicBulkGetUsers
eval_tap 0 294 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 295 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "TDeyJLKg", "languageTag": "V7AvqSRA"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicSendRegistrationCode' test.out

#- 296 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "f1RnYx8Z", "emailAddress": "lNYuQKuR"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicVerifyRegistrationCode' test.out

#- 297 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "L77HQzCP", "languageTag": "ZvAluth5"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicForgotPasswordV3' test.out

#- 298 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "0BB5nFqP", "password": "C0ztcq6C", "uniqueDisplayName": "ARNIGQqX", "username": "KOGwHPSM"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicValidateUserInput' test.out

#- 299 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'MuiNBAXp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 299 'GetAdminInvitationV3' test.out

#- 300 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'Tvt7ajAY' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "MZa8C25x", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "0PKp0art", "policyId": "ok8yQRdN", "policyVersionId": "2EAYhIeI"}, {"isAccepted": true, "localizedPolicyVersionId": "buef0Z1b", "policyId": "ciqF7ozi", "policyVersionId": "efg2X2Q2"}, {"isAccepted": true, "localizedPolicyVersionId": "1JBDAvzB", "policyId": "7si4b6Jl", "policyVersionId": "thHKI0xF"}], "authType": "4HzKO7a0", "code": "jJqJi1mo", "country": "qLTKuBLP", "dateOfBirth": "MzyxtqoW", "displayName": "ffmWsKgV", "emailAddress": "hQWdzXe6", "password": "gYP1lErH", "reachMinimumAge": false, "uniqueDisplayName": "7q8A9nUB"}' \
    > test.out 2>&1
eval_tap $? 300 'CreateUserFromInvitationV3' test.out

#- 301 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "Dv1wBPiX", "country": "IZlz2D8R", "dateOfBirth": "aDxFXRbG", "displayName": "jyCXOXMx", "languageTag": "pRh8SnXF", "uniqueDisplayName": "eZBBmRQX", "userName": "xiniKqbe"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateUserV3' test.out

#- 302 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "5Ao7ezav", "country": "GJzuaocx", "dateOfBirth": "5AqtPziF", "displayName": "hQyfSZLl", "languageTag": "73CI7nn1", "uniqueDisplayName": "Bjeim92s", "userName": "5BVmUDy3"}' \
    > test.out 2>&1
eval_tap $? 302 'PublicPartialUpdateUserV3' test.out

#- 303 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "Fw2n26xI", "emailAddress": "MUfAHHpU", "languageTag": "vN7EVk3j", "upgradeToken": "IlpDTCOH"}' \
    > test.out 2>&1
eval_tap $? 303 'PublicSendVerificationCodeV3' test.out

#- 304 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "cDeJjksv", "contactType": "h5I7E0Ok", "languageTag": "scWwr8Xz", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 304 'PublicUserVerificationV3' test.out

#- 305 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8phlDyAT", "country": "aHIhbpug", "dateOfBirth": "1gVulJEU", "displayName": "y4AKEMHy", "emailAddress": "iIhrwfnq", "password": "pFeKPiXq", "uniqueDisplayName": "FlYG1XQ0", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 305 'PublicUpgradeHeadlessAccountV3' test.out

#- 306 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "WDHiZyV8", "password": "WRNZT9sy"}' \
    > test.out 2>&1
eval_tap $? 306 'PublicVerifyHeadlessAccountV3' test.out

#- 307 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "RYrXBBGg", "mfaToken": "FpYTtOlZ", "newPassword": "5giGb9vI", "oldPassword": "ba7v1LTZ"}' \
    > test.out 2>&1
eval_tap $? 307 'PublicUpdatePasswordV3' test.out

#- 308 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '6ROoRiQX' \
    > test.out 2>&1
eval_tap $? 308 'PublicCreateJusticeUser' test.out

#- 309 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cpsW3yUN' \
    --redirectUri 'RT9s9q1I' \
    --ticket 'a4mPmSjI' \
    > test.out 2>&1
eval_tap $? 309 'PublicPlatformLinkV3' test.out

#- 310 PublicPlatformUnlinkV3
eval_tap 0 310 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 311 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SVXIwqDj' \
    > test.out 2>&1
eval_tap $? 311 'PublicPlatformUnlinkAllV3' test.out

#- 312 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ABYzmypc' \
    --ticket 'PZdrZG2n' \
    > test.out 2>&1
eval_tap $? 312 'PublicForcePlatformLinkV3' test.out

#- 313 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'DgazuBnD' \
    --clientId '1HSXjdi4' \
    --redirectUri '6Tr9zwTK' \
    > test.out 2>&1
eval_tap $? 313 'PublicWebLinkPlatform' test.out

#- 314 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '720hucNl' \
    --code '54u4iTX7' \
    --state 'pTnP6Qql' \
    > test.out 2>&1
eval_tap $? 314 'PublicWebLinkPlatformEstablish' test.out

#- 315 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pgWFzjux' \
    --code 'ASEJl977' \
    --state 'YLawcS8C' \
    > test.out 2>&1
eval_tap $? 315 'PublicProcessWebLinkPlatformV3' test.out

#- 316 PublicWebReauthPlatform
samples/cli/sample-apps Iam publicWebReauthPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'z3vs5sBT' \
    --clientId '212e1DH5' \
    --redirectUri '2juSIdPe' \
    --operation 'LINK' \
    > test.out 2>&1
eval_tap $? 316 'PublicWebReauthPlatform' test.out

#- 317 PublicWebReauthPlatformEstablish
samples/cli/sample-apps Iam publicWebReauthPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'lmW0eqF0' \
    --code 'Wz2rRSNi' \
    --state 'O9wcMIKn' \
    > test.out 2>&1
eval_tap $? 317 'PublicWebReauthPlatformEstablish' test.out

#- 318 PublicWebReauthPlatformProcess
samples/cli/sample-apps Iam publicWebReauthPlatformProcess \
    --namespace $AB_NAMESPACE \
    --platformId 'PupgMh2F' \
    --code 'l5AiiuTw' \
    --state 'ajje2jlF' \
    > test.out 2>&1
eval_tap $? 318 'PublicWebReauthPlatformProcess' test.out

#- 319 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "E3E4HqH8", "userIds": ["dYXdgTRi", "h6Q0X9Do", "eBXI0eOI"]}' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUsersPlatformInfosV3' test.out

#- 320 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "xe8Ytntr", "code": "VphRXPtt", "emailAddress": "0ySfJisZ", "languageTag": "JQobOi8Z", "newPassword": "nySIReKF"}' \
    > test.out 2>&1
eval_tap $? 320 'ResetPasswordV3' test.out

#- 321 PublicGetUserByUserIdV3
eval_tap 0 321 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 322 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tDoYHnUC' \
    --activeOnly 'false' \
    --limit '52' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserBanHistoryV3' test.out

#- 323 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F8iD5Zf9' \
    > test.out 2>&1
eval_tap $? 323 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 324 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LmDffC8Q' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserInformationV3' test.out

#- 325 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BE54nqgQ' \
    --after '0.6029270905949526' \
    --before '0.7569745005968527' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserLoginHistoriesV3' test.out

#- 326 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pHRrLhPM' \
    --after 'VSaKwRWT' \
    --before '86p8Mhtb' \
    --limit '73' \
    --platformId 'p0DoCjbo' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserPlatformAccountsV3' test.out

#- 327 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'si9T5EhM' \
    > test.out 2>&1
eval_tap $? 327 'PublicListJusticePlatformAccountsV3' test.out

#- 328 PublicLinkPlatformAccount
eval_tap 0 328 'PublicLinkPlatformAccount # SKIP deprecated' test.out

#- 329 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '9SSD07nx' \
    --body '{"chosenNamespaces": ["qUGvMBzD", "0TYy0WP8", "q7uQYowd"], "requestId": "WZluEzGY"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicForceLinkPlatformWithProgression' test.out

#- 330 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DD4lI2eL' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPublisherUserV3' test.out

#- 331 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rsFoj4ES' \
    --password 'BNWN0oS5' \
    > test.out 2>&1
eval_tap $? 331 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 332 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'ydSmJiMe' \
    --before 'IrJdAGoU' \
    --isWildcard 'false' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetRolesV3' test.out

#- 333 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'o8IMAh5Q' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetRoleV3' test.out

#- 334 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "PtHxjMDZ", "emailAddress": "AyMhtU7q", "languageTag": "E84grdnu"}' \
    > test.out 2>&1
eval_tap $? 334 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 335 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetMyUserV3' test.out

#- 336 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "D2TEDNEn", "emailAddress": "OU7Kxidn", "languageTag": "xJIDfE9S", "upgradeToken": "ommv0T3E"}' \
    > test.out 2>&1
eval_tap $? 336 'PublicSendCodeForwardV3' test.out

#- 337 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'Ci47BkFs' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 338 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["RBqHvx4G", "jR1nFx6q", "4fJRRROL"], "oneTimeLinkCode": "XUqp3wSY"}' \
    > test.out 2>&1
eval_tap $? 338 'LinkHeadlessAccountToMyAccountV3' test.out

#- 339 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'cI1qLZea' \
    > test.out 2>&1
eval_tap $? 339 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 340 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 340 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 341 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "82afF51Z"}' \
    > test.out 2>&1
eval_tap $? 341 'PublicSendVerificationLinkV3' test.out

#- 342 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 342 'PublicGetOpenidUserInfoV3' test.out

#- 343 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '2ATwrS0p' \
    > test.out 2>&1
eval_tap $? 343 'PublicVerifyUserByLinkV3' test.out

#- 344 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'fGYTrLK6' \
    --code 'k1WAJvhz' \
    --error '3DmqIjDn' \
    --state '7XdsIR0x' \
    > test.out 2>&1
eval_tap $? 344 'PlatformAuthenticateSAMLV3Handler' test.out

#- 345 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'NjEf9Uqk' \
    --payload 'KGLJP1uY' \
    > test.out 2>&1
eval_tap $? 345 'LoginSSOClient' test.out

#- 346 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'ffJOkacX' \
    > test.out 2>&1
eval_tap $? 346 'LogoutSSOClient' test.out

#- 347 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'ArHkVKig' \
    --code 'SabT35f6' \
    > test.out 2>&1
eval_tap $? 347 'RequestTargetTokenResponseV3' test.out

#- 348 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'QJhtJKpy' \
    --upgradeSuccessToken '0pHbqqwh' \
    > test.out 2>&1
eval_tap $? 348 'UpgradeAndAuthenticateForwardV3' test.out

#- 349 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '33' \
    --namespace 'g7bISaYK' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 349 'AdminListInvitationHistoriesV4' test.out

#- 350 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'WJgsu8Si' \
    > test.out 2>&1
eval_tap $? 350 'AdminGetDevicesByUserV4' test.out

#- 351 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '9A71Id79' \
    --endDate '7nzodPAP' \
    --limit '23' \
    --offset '31' \
    --startDate 'DHInLUn5' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetBannedDevicesV4' test.out

#- 352 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '0RpCDQIi' \
    > test.out 2>&1
eval_tap $? 352 'AdminGetUserDeviceBansV4' test.out

#- 353 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "WBBQIRyJ", "deviceId": "G2Ygmcii", "deviceType": "FYAmZjfW", "enabled": false, "endDate": "VlaBr9SF", "ext": {"po3bCU0q": {}, "X7gArSdc": {}, "WC2sbNfn": {}}, "reason": "0jz6y4EP"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminBanDeviceV4' test.out

#- 354 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'B5CTBj6y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'AdminGetDeviceBanV4' test.out

#- 355 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'mM3rDntW' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 355 'AdminUpdateDeviceBanV4' test.out

#- 356 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '8Upugz9i' \
    --startDate 'holD77jC' \
    --deviceType 'OiwRmZgi' \
    > test.out 2>&1
eval_tap $? 356 'AdminGenerateReportV4' test.out

#- 357 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'AdminGetDeviceTypesV4' test.out

#- 358 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'VDEKOz1G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'AdminGetDeviceBansV4' test.out

#- 359 AdminDecryptDeviceV4
eval_tap 0 359 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 360 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'vJyAwA2q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'AdminUnbanDeviceV4' test.out

#- 361 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'pNGJvzK2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 361 'AdminGetUsersByDeviceV4' test.out

#- 362 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 362 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 363 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 363 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 364 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "1K6UkfGC", "policyId": "m67eBQ8y", "policyVersionId": "7IliOTDZ"}, {"isAccepted": false, "localizedPolicyVersionId": "oT5lojpI", "policyId": "Y5WmguRF", "policyVersionId": "5ghhLcDs"}, {"isAccepted": false, "localizedPolicyVersionId": "n1Qpb7PM", "policyId": "8j9kbVW5", "policyVersionId": "da6fJdJT"}], "count": 10, "userInfo": {"country": "u25hLRkP"}}' \
    > test.out 2>&1
eval_tap $? 364 'AdminCreateTestUsersV4' test.out

#- 365 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "4HwJWJoL", "policyId": "IsnCDmHt", "policyVersionId": "lXf7VjXa"}, {"isAccepted": false, "localizedPolicyVersionId": "rVaLz1KM", "policyId": "eomj5Rv5", "policyVersionId": "R4hkm354"}, {"isAccepted": true, "localizedPolicyVersionId": "nfhMp3Rg", "policyId": "XyOqlAic", "policyVersionId": "OTKPyogu"}], "authType": "EMAILPASSWD", "code": "iG6MyinW", "country": "XKFgFdpV", "dateOfBirth": "6dn7BIVu", "displayName": "VcC91Mex", "emailAddress": "xO0lyTT2", "password": "DGjeGuHx", "passwordMD5Sum": "gqRFaQD8", "reachMinimumAge": true, "uniqueDisplayName": "zn5pSYbP", "username": "I6vrFXxf"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateUserV4' test.out

#- 366 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["g7tf8neo", "4sl9WMqx", "K65miPHk"]}' \
    > test.out 2>&1
eval_tap $? 366 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 367 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["XpWJBpmU", "0EheKYX0", "sChj4vnw"]}' \
    > test.out 2>&1
eval_tap $? 367 'AdminBulkCheckValidUserIDV4' test.out

#- 368 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Huay4jyX' \
    --body '{"avatarUrl": "9zivSUbO", "country": "JnHq5XLf", "dateOfBirth": "7Xyh04HE", "displayName": "fOawPjab", "languageTag": "mBwWR7W1", "skipLoginQueue": true, "tags": ["qvcyDmML", "UQdQ1UeJ", "LnZjX73y"], "uniqueDisplayName": "poNJ3A6P", "userName": "hsXUE0y0"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateUserV4' test.out

#- 369 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OmFcBakV' \
    --body '{"code": "EnHk9GK0", "emailAddress": "DVNpRxYe"}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateUserEmailAddressV4' test.out

#- 370 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jr2mswIL' \
    --body '{"factor": "eVbgq5PB", "mfaToken": "EoU21oJM"}' \
    > test.out 2>&1
eval_tap $? 370 'AdminDisableUserMFAV4' test.out

#- 371 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId '75AOhoux' \
    > test.out 2>&1
eval_tap $? 371 'AdminGetUserMFAStatusV4' test.out

#- 372 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '8tef3hxs' \
    > test.out 2>&1
eval_tap $? 372 'AdminListUserRolesV4' test.out

#- 373 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '8fixrH8x' \
    --body '{"assignedNamespaces": ["nDP7YFeh", "GuzRL7tJ", "W7s6R8kF"], "roleId": "C521p0dQ"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminUpdateUserRoleV4' test.out

#- 374 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oyKTE9XY' \
    --body '{"assignedNamespaces": ["wXmbvNsx", "WbN3XAAF", "Tv92xyFZ"], "roleId": "qCo1tEmh"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminAddUserRoleV4' test.out

#- 375 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '4ljRL03a' \
    --body '{"assignedNamespaces": ["rJBVMWkQ", "rX66KJfC", "hPPU6gkS"], "roleId": "11RqqizL"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminRemoveUserRoleV4' test.out

#- 376 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '93' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 376 'AdminGetRolesV4' test.out

#- 377 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "Pff0GycA"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminCreateRoleV4' test.out

#- 378 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'kMOJISdH' \
    > test.out 2>&1
eval_tap $? 378 'AdminGetRoleV4' test.out

#- 379 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'FxruD0eb' \
    > test.out 2>&1
eval_tap $? 379 'AdminDeleteRoleV4' test.out

#- 380 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '8DaN1zxI' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "15eyV0vy"}' \
    > test.out 2>&1
eval_tap $? 380 'AdminUpdateRoleV4' test.out

#- 381 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'ymNa4v3N' \
    --body '{"permissions": [{"action": 31, "resource": "fjodnuxN", "schedAction": 68, "schedCron": "dR9tvv7Z", "schedRange": ["7w1jYrUn", "TZ9KZEuD", "xSpltcDN"]}, {"action": 29, "resource": "R2I3yOVS", "schedAction": 51, "schedCron": "RlaGtI9o", "schedRange": ["PF8CrvUI", "Ac5Pj8aW", "vD8vTlWW"]}, {"action": 52, "resource": "lJGpmawZ", "schedAction": 32, "schedCron": "5XBpANMw", "schedRange": ["iTCHB0kN", "Mogdl7lW", "qLjBhsML"]}]}' \
    > test.out 2>&1
eval_tap $? 381 'AdminUpdateRolePermissionsV4' test.out

#- 382 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'wKctxSgT' \
    --body '{"permissions": [{"action": 11, "resource": "g8zBWNCz", "schedAction": 92, "schedCron": "dCUQ1JoV", "schedRange": ["ijrQu6Bm", "5BSmXZOj", "KGbFQVCh"]}, {"action": 6, "resource": "KrTS87hq", "schedAction": 11, "schedCron": "xobBz4C3", "schedRange": ["z9NdBQRe", "pvx0eZ77", "O13RrVOi"]}, {"action": 16, "resource": "lUNLaKeH", "schedAction": 60, "schedCron": "QvhjecBw", "schedRange": ["Thh7Cyrg", "6XEt8HoZ", "JyLZIa0y"]}]}' \
    > test.out 2>&1
eval_tap $? 382 'AdminAddRolePermissionsV4' test.out

#- 383 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'nvcegEd0' \
    --body '["qYmxfk9h", "RMVp3K1G", "bREKXjOt"]' \
    > test.out 2>&1
eval_tap $? 383 'AdminDeleteRolePermissionsV4' test.out

#- 384 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'fkcplk40' \
    --after 'ZUXJkXfc' \
    --before 'U1Xn7Fvh' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 384 'AdminListAssignedUsersV4' test.out

#- 385 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId '5LPtmH9O' \
    --body '{"assignedNamespaces": ["ZWAq0Xew", "9ZmSV2FX", "OcpId0H9"], "namespace": "eNwn28GE", "userId": "jzsAZ2hT"}' \
    > test.out 2>&1
eval_tap $? 385 'AdminAssignUserToRoleV4' test.out

#- 386 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'cBueRZJc' \
    --body '{"namespace": "TO3LQk59", "userId": "Mwkcawwl"}' \
    > test.out 2>&1
eval_tap $? 386 'AdminRevokeUserFromRoleV4' test.out

#- 387 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["W824MgSP", "f0eU3eDV", "A7SWDsDX"], "emailAddresses": ["O8HzVAdc", "yDRSFHZj", "96PL8P12"], "isAdmin": true, "isNewStudio": true, "languageTag": "dfgqqYWu", "namespace": "PJ40rp2o", "roleId": "fMo3qDhN"}' \
    > test.out 2>&1
eval_tap $? 387 'AdminInviteUserNewV4' test.out

#- 388 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "j6VtUvak", "country": "RbqnF9Kl", "dateOfBirth": "q2aF0LJQ", "displayName": "mbEF4Are", "languageTag": "HYTvRntQ", "skipLoginQueue": false, "tags": ["rGIbwbzc", "Oy9wYfSO", "8KEUWwgY"], "uniqueDisplayName": "9Pubf3YZ", "userName": "QXnjE7sQ"}' \
    > test.out 2>&1
eval_tap $? 388 'AdminUpdateMyUserV4' test.out

#- 389 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "RyIl1uXz", "mfaToken": "YRrf1UAx"}' \
    > test.out 2>&1
eval_tap $? 389 'AdminDisableMyAuthenticatorV4' test.out

#- 390 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '2E9Pvvwa' \
    > test.out 2>&1
eval_tap $? 390 'AdminEnableMyAuthenticatorV4' test.out

#- 391 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 391 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 392 AdminGetMyBackupCodesV4
eval_tap 0 392 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 393 AdminGenerateMyBackupCodesV4
eval_tap 0 393 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 394 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "7eS6V0lz", "mfaToken": "vbn9uoHS"}' \
    > test.out 2>&1
eval_tap $? 394 'AdminDisableMyBackupCodesV4' test.out

#- 395 AdminDownloadMyBackupCodesV4
eval_tap 0 395 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 396 AdminEnableMyBackupCodesV4
eval_tap 0 396 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 397 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'hIY3rfJF' \
    > test.out 2>&1
eval_tap $? 397 'AdminGetBackupCodesV4' test.out

#- 398 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag '1kuzunzK' \
    > test.out 2>&1
eval_tap $? 398 'AdminGenerateBackupCodesV4' test.out

#- 399 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'jXe0vYPC' \
    > test.out 2>&1
eval_tap $? 399 'AdminEnableBackupCodesV4' test.out

#- 400 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'LuTFgHgm' \
    --factor '6XE9986O' \
    > test.out 2>&1
eval_tap $? 400 'AdminChallengeMyMFAV4' test.out

#- 401 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action '4Qq907lv' \
    --languageTag 'uURc9WE3' \
    > test.out 2>&1
eval_tap $? 401 'AdminSendMyMFAEmailCodeV4' test.out

#- 402 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "UqpM4YTl", "mfaToken": "U88eCkRn"}' \
    > test.out 2>&1
eval_tap $? 402 'AdminDisableMyEmailV4' test.out

#- 403 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'dmMnQMWl' \
    > test.out 2>&1
eval_tap $? 403 'AdminEnableMyEmailV4' test.out

#- 404 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 404 'AdminGetMyEnabledFactorsV4' test.out

#- 405 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'Ri0csQ2Y' \
    > test.out 2>&1
eval_tap $? 405 'AdminMakeFactorMyDefaultV4' test.out

#- 406 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 406 'AdminGetMyOwnMFAStatusV4' test.out

#- 407 AdminGetMyMFAStatusV4
eval_tap 0 407 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 408 AdminInviteUserV4
eval_tap 0 408 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 409 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId '61l0AKjC' \
    --linkingToken 'AZH1R3Pf' \
    --password 't7I8bbXO' \
    --username 'bWsBgakq' \
    > test.out 2>&1
eval_tap $? 409 'AuthenticationWithPlatformLinkV4' test.out

#- 410 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'CO0zNrsU' \
    --extendExp 'true' \
    --linkingToken 'PzVnJlED' \
    > test.out 2>&1
eval_tap $? 410 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 411 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'mwb0Uhqh' \
    --factor 'OOtSsUu2' \
    --mfaToken 'mPuUEp9d' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 411 'Verify2faCodeV4' test.out

#- 412 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'ExRg4rKf' \
    --codeChallenge 'nu3kyQvb' \
    --codeChallengeMethod 'plain' \
    --additionalData 'Blk9yNZG' \
    --clientId 'cUnDZkPF' \
    --createHeadless 'false' \
    --deviceId 'evli1x2r' \
    --macAddress 'nPsnPRLN' \
    --platformToken 'NUJ9AHyo' \
    --serviceLabel '0.5917308383174176' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 412 'PlatformTokenGrantV4' test.out

#- 413 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'nZKa2m9j' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'IfRXYnK0' \
    --simultaneousTicket 'IbxZZsuu' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'x0z6X3wY' \
    > test.out 2>&1
eval_tap $? 413 'SimultaneousLoginV4' test.out

#- 414 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'SrMA3X1E' \
    --codeChallengeMethod 'plain' \
    --additionalData 'zszYb9wk' \
    --clientId 'WAGBvToU' \
    --clientSecret 'AdbRKFih' \
    --code 'A15aI5oy' \
    --codeVerifier 'sefSMfDB' \
    --extendNamespace 'PVJh7JvT' \
    --extendExp 'true' \
    --loginQueueTicket '6Ye865Vn' \
    --password 'EQQtAcb9' \
    --redirectUri 'id0JNyRK' \
    --refreshToken 'l2LcKbEh' \
    --scope '43FDNl8g' \
    --username 'XpLbmFUY' \
    --grantType 'urn:ietf:params:oauth:grant-type:login_queue_ticket' \
    > test.out 2>&1
eval_tap $? 414 'TokenGrantV4' test.out

#- 415 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'KhFQGccU' \
    --code 'mkEK6oqN' \
    > test.out 2>&1
eval_tap $? 415 'RequestTargetTokenResponseV4' test.out

#- 416 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'EfI1Ctkz' \
    --rawPUID 'false' \
    --body '{"pidType": "oYksSs5r", "platformUserIds": ["Nqbi2948", "cdelFtLC", "0Oq2BGrF"]}' \
    > test.out 2>&1
eval_tap $? 416 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 417 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'z1kboVmy' \
    --platformUserId 'm8tsLWij' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserByPlatformUserIDV4' test.out

#- 418 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "eoNKEku5", "policyId": "hgbO7e0C", "policyVersionId": "4cqw25ob"}, {"isAccepted": true, "localizedPolicyVersionId": "vOhXkUzP", "policyId": "6iFpXtzL", "policyVersionId": "UNUKFKqX"}, {"isAccepted": true, "localizedPolicyVersionId": "2HRSuje4", "policyId": "LHGeMvPm", "policyVersionId": "FVfEzpE6"}], "authType": "EMAILPASSWD", "country": "CfugXbS8", "dateOfBirth": "BAhIH1If", "displayName": "qUTqfNzV", "emailAddress": "0GUSTjlW", "password": "qmct9hEA", "passwordMD5Sum": "lAXW18Ix", "uniqueDisplayName": "31fBRNXT", "username": "pgTOPeYN", "verified": true}' \
    > test.out 2>&1
eval_tap $? 418 'PublicCreateTestUserV4' test.out

#- 419 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "S5hkfHMt", "policyId": "uwOlDH9s", "policyVersionId": "3S8hM6qw"}, {"isAccepted": false, "localizedPolicyVersionId": "m9JBJJGa", "policyId": "4yErWpMC", "policyVersionId": "oRhapjRi"}, {"isAccepted": false, "localizedPolicyVersionId": "OAPlkVIl", "policyId": "n4LJz0st", "policyVersionId": "vho4dAc6"}], "authType": "EMAILPASSWD", "code": "3t9uUeAr", "country": "SAShOjLA", "dateOfBirth": "jFu7UTY6", "displayName": "mXdqVLhe", "emailAddress": "SfXArk7h", "password": "pISZ99ft", "passwordMD5Sum": "SeQgfBBq", "reachMinimumAge": false, "uniqueDisplayName": "KImoEFyX", "username": "aKLQHTlB"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicCreateUserV4' test.out

#- 420 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'GgL3QbP9' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "cGUyI68g", "policyId": "MBgCeUo0", "policyVersionId": "iMtHqldR"}, {"isAccepted": true, "localizedPolicyVersionId": "WfuAwE4r", "policyId": "GEfGgXuc", "policyVersionId": "fFmdR5RD"}, {"isAccepted": false, "localizedPolicyVersionId": "4UeXsSVu", "policyId": "ZgSnRbTM", "policyVersionId": "2qqJbomM"}], "authType": "EMAILPASSWD", "code": "FI3tmh2U", "country": "fBRGdaRZ", "dateOfBirth": "DuEMz574", "displayName": "qqXqT14n", "emailAddress": "NfrobZYe", "password": "QXnw5fpX", "passwordMD5Sum": "OTShEsiQ", "reachMinimumAge": true, "uniqueDisplayName": "3d82QDRi", "username": "QFx7Hw7k"}' \
    > test.out 2>&1
eval_tap $? 420 'CreateUserFromInvitationV4' test.out

#- 421 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "lm1GilKA", "country": "jcO7upvP", "dateOfBirth": "gS8ZHS2b", "displayName": "ZnifN2dt", "languageTag": "ph39MZGX", "uniqueDisplayName": "mKBfWrp6", "userName": "HT6VrEAS"}' \
    > test.out 2>&1
eval_tap $? 421 'PublicUpdateUserV4' test.out

#- 422 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "A2gGWtBR", "emailAddress": "R7nFkZoK"}' \
    > test.out 2>&1
eval_tap $? 422 'PublicUpdateUserEmailAddressV4' test.out

#- 423 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "fLcyMX9q", "country": "fp2SYDyQ", "dateOfBirth": "SQayk9xD", "displayName": "5qX0JJqP", "emailAddress": "g4yJMPYs", "password": "WEOoo6x7", "reachMinimumAge": false, "uniqueDisplayName": "rKUZyyss", "username": "5Gb5f0NL", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 423 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 424 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "Q89UUz5L", "displayName": "SDOe6KSJ", "emailAddress": "69DmY96W", "password": "dY7p6NcY", "uniqueDisplayName": "btnHB3Vk", "username": "wVbYiF6X"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicUpgradeHeadlessAccountV4' test.out

#- 425 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "Z7e6ZNjE", "mfaToken": "ebDsJIK2"}' \
    > test.out 2>&1
eval_tap $? 425 'PublicDisableMyAuthenticatorV4' test.out

#- 426 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'mbW1aVwf' \
    > test.out 2>&1
eval_tap $? 426 'PublicEnableMyAuthenticatorV4' test.out

#- 427 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 427 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 428 PublicGetMyBackupCodesV4
eval_tap 0 428 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 429 PublicGenerateMyBackupCodesV4
eval_tap 0 429 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 430 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "8ZHNSg6E", "mfaToken": "5O95I8Ze"}' \
    > test.out 2>&1
eval_tap $? 430 'PublicDisableMyBackupCodesV4' test.out

#- 431 PublicDownloadMyBackupCodesV4
eval_tap 0 431 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 432 PublicEnableMyBackupCodesV4
eval_tap 0 432 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 433 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'AznO6vPG' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetBackupCodesV4' test.out

#- 434 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'Wufe6RcS' \
    > test.out 2>&1
eval_tap $? 434 'PublicGenerateBackupCodesV4' test.out

#- 435 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'JZGOmIum' \
    > test.out 2>&1
eval_tap $? 435 'PublicEnableBackupCodesV4' test.out

#- 436 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code '7i9LjIb4' \
    --factor 'Hy7Y7swh' \
    > test.out 2>&1
eval_tap $? 436 'PublicChallengeMyMFAV4' test.out

#- 437 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 437 'PublicRemoveTrustedDeviceV4' test.out

#- 438 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'OByGFWpf' \
    --languageTag 'FVrJ83Gj' \
    > test.out 2>&1
eval_tap $? 438 'PublicSendMyMFAEmailCodeV4' test.out

#- 439 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "BdrDOLdc", "mfaToken": "V9hEG3np"}' \
    > test.out 2>&1
eval_tap $? 439 'PublicDisableMyEmailV4' test.out

#- 440 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'E0mYTZgt' \
    > test.out 2>&1
eval_tap $? 440 'PublicEnableMyEmailV4' test.out

#- 441 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 441 'PublicGetMyEnabledFactorsV4' test.out

#- 442 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'wPoOxKT9' \
    > test.out 2>&1
eval_tap $? 442 'PublicMakeFactorMyDefaultV4' test.out

#- 443 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 443 'PublicGetMyOwnMFAStatusV4' test.out

#- 444 PublicGetMyMFAStatusV4
eval_tap 0 444 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 445 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RCfkp6rY' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 446 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "8SlJytcC", "emailAddress": "4uOxDQpT", "languageTag": "grfHOiDX", "namespace": "Z2fFzsib", "namespaceDisplayName": "gmt5OKwh"}' \
    > test.out 2>&1
eval_tap $? 446 'PublicInviteUserV4' test.out

#- 447 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "NKSMbttS", "policyId": "gPoWuamK", "policyVersionId": "iaiMBIkf"}, {"isAccepted": false, "localizedPolicyVersionId": "g0lsz1L3", "policyId": "6M32F2YN", "policyVersionId": "J4TsQ5gC"}, {"isAccepted": true, "localizedPolicyVersionId": "CdLyIvvD", "policyId": "vruFslj4", "policyVersionId": "RVh4xnxZ"}], "code": "rzyRaKso", "country": "QNOeDR85", "dateOfBirth": "dKg53G7K", "displayName": "9JZn1RyA", "emailAddress": "LrytOfja", "password": "PcDvk9Pb", "reachMinimumAge": false, "uniqueDisplayName": "iLum39Xy", "username": "aKpWmNon", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 447 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE