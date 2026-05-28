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
echo "1..444"

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

#- 57 PlatformTokenRequestHandler
eval_tap 0 57 'PlatformTokenRequestHandler # SKIP deprecated' test.out

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
    --forceDelete 'true' \
    --body '{"modules": [{"docLink": "UIXHwZ8w", "groups": [{"group": "KE4JDjGI", "groupId": "G24FEROc", "package": "qai5SijP", "permissions": [{"allowedActions": [59, 35, 89], "resource": "s2PsBWVW"}, {"allowedActions": [40, 93, 78], "resource": "TbiQiRD5"}, {"allowedActions": [31, 70, 23], "resource": "DiABsIMF"}]}, {"group": "9M0AgRZK", "groupId": "Wv1m4Vza", "package": "przdPmxj", "permissions": [{"allowedActions": [67, 39, 76], "resource": "hfbCp6AD"}, {"allowedActions": [70, 82, 5], "resource": "F1zfUQ5d"}, {"allowedActions": [78, 83, 54], "resource": "Cc6UD2V1"}]}, {"group": "hHjcbqt9", "groupId": "lVR0lczX", "package": "G3cSEVd2", "permissions": [{"allowedActions": [34, 47, 41], "resource": "9B5SEGXl"}, {"allowedActions": [23, 45, 37], "resource": "Xp21Rf32"}, {"allowedActions": [49, 21, 42], "resource": "wm3dVGJN"}]}], "module": "C3AWhcGX", "moduleId": "UFHQLcRz", "package": "k7YXUb9R"}, {"docLink": "v49UdaOf", "groups": [{"group": "gOIzV8Il", "groupId": "LmFlTeNv", "package": "ZX3Qn6lZ", "permissions": [{"allowedActions": [6, 52, 37], "resource": "GhsBclCU"}, {"allowedActions": [73, 69, 73], "resource": "EjE0CtJ8"}, {"allowedActions": [61, 43, 27], "resource": "rbe98f2A"}]}, {"group": "YYJHk1h6", "groupId": "IGfw4gIh", "package": "aYTEgyQ2", "permissions": [{"allowedActions": [0, 31, 44], "resource": "Ewz0wwle"}, {"allowedActions": [78, 72, 95], "resource": "yaV3gshq"}, {"allowedActions": [24, 9, 89], "resource": "wcG7ggCP"}]}, {"group": "p8fKXLHq", "groupId": "yP5DtPd1", "package": "QiXNahFc", "permissions": [{"allowedActions": [47, 88, 86], "resource": "qc9OBHqS"}, {"allowedActions": [91, 11, 45], "resource": "ZjUu3MYW"}, {"allowedActions": [75, 10, 78], "resource": "0NO47mtZ"}]}], "module": "br8DnrzD", "moduleId": "1mnXqYtA", "package": "OEVmzTRq"}, {"docLink": "WVyid02V", "groups": [{"group": "DPAxTzUr", "groupId": "Ip31f3Bg", "package": "POLZ1QG1", "permissions": [{"allowedActions": [86, 48, 1], "resource": "20nUlBZ1"}, {"allowedActions": [68, 84, 28], "resource": "Jy8YmZbL"}, {"allowedActions": [59, 85, 33], "resource": "ovRZjojW"}]}, {"group": "2OxPPIPc", "groupId": "2PSyIpVk", "package": "2K8BessY", "permissions": [{"allowedActions": [43, 73, 91], "resource": "TwOsSVow"}, {"allowedActions": [92, 57, 99], "resource": "oFCEfWee"}, {"allowedActions": [64, 28, 90], "resource": "pf1Gj920"}]}, {"group": "k26cxN4F", "groupId": "VrYIxojM", "package": "QLcjBiFL", "permissions": [{"allowedActions": [8, 59, 57], "resource": "kpHRK5hI"}, {"allowedActions": [44, 61, 16], "resource": "gSFN0sTa"}, {"allowedActions": [40, 71, 75], "resource": "FbVBNXGt"}]}], "module": "L20VEKO6", "moduleId": "y4azlRzX", "package": "34b0eGMK"}]}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateAvailablePermissionsByModule' test.out

#- 111 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "IRAf9t9K", "moduleId": "JOXfy3qK"}' \
    > test.out 2>&1
eval_tap $? 111 'AdminDeleteConfigPermissionsByGroup' test.out

#- 112 AdminUpdateModulePackage
samples/cli/sample-apps Iam adminUpdateModulePackage \
    --body '{"data": [{"moduleId": "qC1XgpKV", "package": "qwITraQX"}, {"moduleId": "or2qlcs9", "package": "3jzFHHjD"}, {"moduleId": "VLoULEdO", "package": "umvedCjq"}]}' \
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
    --after 'Wy8rOFRO' \
    --before 'a4dHbVBl' \
    --endDate '3AqaAOds' \
    --limit '49' \
    --query 'zhY7yZ26' \
    --roleId 'oLdZZrXr' \
    --startDate '6bBEjbeu' \
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
    --body '{"ageRestriction": 89, "enable": true}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 120 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'AdminGetListCountryAgeRestrictionV3' test.out

#- 121 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'z4bJfpMZ' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 29}' \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 122 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'G4Ud7Y85' \
    --limit '32' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 122 'AdminGetBannedUsersV3' test.out

#- 123 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "e1hFr5Pk", "comment": "lvJOf5sG", "endDate": "PYr21CNC", "reason": "CT8njlIX", "skipNotif": true, "userIds": ["P9g0IzNm", "cS0DfITb", "65r7U6GG"]}' \
    > test.out 2>&1
eval_tap $? 123 'AdminBanUserBulkV3' test.out

#- 124 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "zT6Mt5yl", "userId": "hBUNoTNO"}, {"banId": "zJf2Najl", "userId": "CM2EGTfE"}, {"banId": "TWAC3lwU", "userId": "UIUQsK4g"}]}' \
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
    --clientId '88f0J4uc' \
    --clientName 'DtsWrFWg' \
    --clientType 'wQXdhilc' \
    --limit '39' \
    --offset '16' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 126 'AdminGetClientsByNamespaceV3' test.out

#- 127 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["kTLH2WoC", "hMkDIXAB", "oII6BHln"], "clientUpdateRequest": {"audiences": ["Xdt2SR1g", "5oXL1AcH", "SYpOSWi8"], "baseUri": "BTn71tq0", "clientName": "q2GGBTee", "clientPermissions": [{"action": 1, "resource": "QYQi7d4l", "schedAction": 19, "schedCron": "WoYCeWFh", "schedRange": ["VaBurgWM", "Gt5e6oYY", "RwNaKUBE"]}, {"action": 95, "resource": "VJ1c9vH0", "schedAction": 29, "schedCron": "PhHCOFgW", "schedRange": ["DYSj02a5", "xtcRM9Yl", "dE6U46Uq"]}, {"action": 62, "resource": "QMymSkIl", "schedAction": 56, "schedCron": "ByhCbB1i", "schedRange": ["72gqNSgG", "SA27AUsG", "Nn72c7S8"]}], "clientPlatform": "ATUui7v5", "deletable": true, "description": "eNYEjXEp", "modulePermissions": [{"moduleId": "1glLsZpf", "selectedGroups": [{"groupId": "7x3sgrKO", "selectedActions": [65, 80, 76]}, {"groupId": "t7YpUL5K", "selectedActions": [34, 69, 62]}, {"groupId": "5pTJ0tl0", "selectedActions": [53, 3, 31]}]}, {"moduleId": "ykL2hbc5", "selectedGroups": [{"groupId": "SUrFHxuW", "selectedActions": [22, 69, 33]}, {"groupId": "4ENapdGi", "selectedActions": [41, 0, 16]}, {"groupId": "C6iISJY1", "selectedActions": [15, 68, 73]}]}, {"moduleId": "82HBcXFt", "selectedGroups": [{"groupId": "cewJhIHa", "selectedActions": [22, 73, 13]}, {"groupId": "PtvaNEc1", "selectedActions": [49, 71, 1]}, {"groupId": "h0QcfKRW", "selectedActions": [55, 100, 8]}]}], "namespace": "gBouCP3x", "oauthAccessTokenExpiration": 2, "oauthAccessTokenExpirationTimeUnit": "KZpCAXcH", "oauthRefreshTokenExpiration": 81, "oauthRefreshTokenExpirationTimeUnit": "V52PBcVB", "redirectUri": "FVU3VD8Z", "scopes": ["X0xZ37ci", "n8p1iwUX", "nr4s0KBP"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 127 'AdminBulkUpdateClientsV3' test.out

#- 128 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["8Lpwwrjv", "RhS4g77Y", "8lHSuDze"], "baseUri": "hizYy1HW", "clientId": "t8bSpBSV", "clientName": "1qvmhKWv", "clientPermissions": [{"action": 29, "resource": "f8sZV37O", "schedAction": 37, "schedCron": "0Am9NET1", "schedRange": ["XVsSoLAD", "ikio1orI", "aaYayUNL"]}, {"action": 53, "resource": "mdegrVoM", "schedAction": 38, "schedCron": "kJ9bMuR6", "schedRange": ["8XnQXAaG", "bD2KeQtK", "94IcM2Yp"]}, {"action": 22, "resource": "d6nuT23g", "schedAction": 6, "schedCron": "61cyxCmc", "schedRange": ["RuLvRbRE", "oK5XGmTe", "PeZ8HNc8"]}], "clientPlatform": "TpDXWmm8", "deletable": true, "description": "W8O0qqoa", "modulePermissions": [{"moduleId": "X8vPrHpb", "selectedGroups": [{"groupId": "lv1ZN2em", "selectedActions": [36, 43, 58]}, {"groupId": "WFVIaprk", "selectedActions": [49, 98, 58]}, {"groupId": "NHbuRR3w", "selectedActions": [85, 82, 90]}]}, {"moduleId": "dYJ4Edwo", "selectedGroups": [{"groupId": "ebgbNfTW", "selectedActions": [33, 19, 86]}, {"groupId": "o0guf8AH", "selectedActions": [27, 6, 25]}, {"groupId": "OQtHW6tI", "selectedActions": [35, 71, 22]}]}, {"moduleId": "ca1PVc5o", "selectedGroups": [{"groupId": "55spCjGO", "selectedActions": [6, 87, 47]}, {"groupId": "aqgnd5AJ", "selectedActions": [5, 71, 42]}, {"groupId": "VvU5gygf", "selectedActions": [62, 6, 3]}]}], "namespace": "rSJGPkwi", "oauthAccessTokenExpiration": 28, "oauthAccessTokenExpirationTimeUnit": "Mx3ND8gD", "oauthClientType": "7nq0ABEn", "oauthRefreshTokenExpiration": 4, "oauthRefreshTokenExpirationTimeUnit": "wnHZ3Hda", "redirectUri": "FSwnmVge", "scopes": ["S74jDjVF", "NiqcZZgQ", "G9QvBaHt"], "secret": "gqWN8rSy", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 128 'AdminCreateClientV3' test.out

#- 129 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'DkvXLYFd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 130 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '3VycEuTL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'AdminDeleteClientV3' test.out

#- 131 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'eMVcWL52' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["PQBcB9cO", "5tUuha5F", "gAJk5M3Z"], "baseUri": "o0xAoQPL", "clientName": "it8pgDil", "clientPermissions": [{"action": 2, "resource": "0L22pW6w", "schedAction": 84, "schedCron": "HC38I6N3", "schedRange": ["9qpf6AgW", "yvIeECZE", "Kd6gdGFW"]}, {"action": 83, "resource": "qRzUXN6p", "schedAction": 45, "schedCron": "HQUegvEu", "schedRange": ["O4ofqHDd", "sv4NNw0K", "jeJJATsy"]}, {"action": 18, "resource": "T4zWmhho", "schedAction": 67, "schedCron": "MlC9wvl6", "schedRange": ["qpggKaP9", "0sdSZbnl", "13lbyxXd"]}], "clientPlatform": "w2VpYAjl", "deletable": false, "description": "dZbwnSfw", "modulePermissions": [{"moduleId": "WraxNSAi", "selectedGroups": [{"groupId": "VHTWSQXJ", "selectedActions": [76, 24, 94]}, {"groupId": "O1RMGGLL", "selectedActions": [40, 31, 89]}, {"groupId": "Z7JNxxtt", "selectedActions": [31, 54, 34]}]}, {"moduleId": "JzHGQ1mX", "selectedGroups": [{"groupId": "ADEkpStG", "selectedActions": [79, 39, 12]}, {"groupId": "Ajfv0rMB", "selectedActions": [18, 36, 94]}, {"groupId": "fSPDtWzv", "selectedActions": [74, 50, 83]}]}, {"moduleId": "mZ5iUZQ9", "selectedGroups": [{"groupId": "7GH2eLH2", "selectedActions": [91, 84, 81]}, {"groupId": "zTgMfqSE", "selectedActions": [15, 95, 66]}, {"groupId": "68GIEEEl", "selectedActions": [19, 69, 47]}]}], "namespace": "FMCZfNrM", "oauthAccessTokenExpiration": 74, "oauthAccessTokenExpirationTimeUnit": "ZuCZRBXK", "oauthRefreshTokenExpiration": 57, "oauthRefreshTokenExpirationTimeUnit": "0QDOtj5n", "redirectUri": "88grk7Ri", "scopes": ["A1HkJ4iI", "ib4xFt2h", "PGMWo4hz"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateClientV3' test.out

#- 132 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'LDJlekQX' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 4, "resource": "qKVlv16e"}, {"action": 100, "resource": "FkhwA1MD"}, {"action": 9, "resource": "RispFbX7"}]}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateClientPermissionV3' test.out

#- 133 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'rML91e49' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 49, "resource": "slDnhJWi"}, {"action": 86, "resource": "qriPLshB"}, {"action": 5, "resource": "GTNh9OQY"}]}' \
    > test.out 2>&1
eval_tap $? 133 'AdminAddClientPermissionsV3' test.out

#- 134 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '71' \
    --clientId 'eTiXWZFb' \
    --namespace $AB_NAMESPACE \
    --resource 'SaGm63WM' \
    > test.out 2>&1
eval_tap $? 134 'AdminDeleteClientPermissionV3' test.out

#- 135 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'w6b0Tp5U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'AdminGetConfigValueV3' test.out

#- 136 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'true' \
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
    --body '{"blacklist": ["bBERFAyM", "3mrQP7sB", "tDPNvcVm"]}' \
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
    --body '[{"field": "RzvWSt58", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["9QQSK6UR", "t67f9bea", "Lc0xgyGd"], "preferRegex": false, "regex": "XYV7bIpK"}, "blockedWord": ["n6wkrJUU", "cYtFShgb", "EUa4udWv"], "description": [{"language": "v1pt0vXr", "message": ["t6sU4ro6", "hv9yNE9x", "q11A2mm3"]}, {"language": "YMR4pTVq", "message": ["83eJNADm", "e9QqhUDX", "AEqPPwGn"]}, {"language": "Id26Nvy8", "message": ["1TPCyLS9", "VtgfFTZx", "vDNO7kZ5"]}], "isCustomRegex": false, "letterCase": "gdlGYPgX", "maxLength": 31, "maxRepeatingAlphaNum": 100, "maxRepeatingSpecialCharacter": 35, "minCharType": 93, "minLength": 26, "profanityFilter": "9qYVyX4h", "regex": "p0P3qsKy", "specialCharacterLocation": "muYxrExk", "specialCharacters": ["rFba4HuN", "NeVEdwA9", "RBaFEmSb"]}}, {"field": "lig83NqF", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["meEvP8wn", "mP2EHSsf", "j1XCGqVI"], "preferRegex": true, "regex": "PASM8Y4q"}, "blockedWord": ["Z1v12i9X", "5f1EzY1f", "NxA5HZtr"], "description": [{"language": "rYr1fn4f", "message": ["oYqi576u", "VTKg3lFC", "1R5y8Eic"]}, {"language": "KRSUOrRf", "message": ["j1LmkKJi", "NVS9fjvl", "1zmGJBxI"]}, {"language": "mR2kBCBe", "message": ["vAiCjkbB", "0ZwXEF4t", "w2KmcoPt"]}], "isCustomRegex": true, "letterCase": "SWjLbtga", "maxLength": 30, "maxRepeatingAlphaNum": 35, "maxRepeatingSpecialCharacter": 66, "minCharType": 2, "minLength": 48, "profanityFilter": "U0GPh56S", "regex": "o48roZ1g", "specialCharacterLocation": "Y5dW6tIu", "specialCharacters": ["MYeAAvyF", "dveHLwtQ", "fOdkTJTc"]}}, {"field": "bnd1OyEz", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["Mdx6XOwZ", "huWpOkQM", "Ud7f5zXz"], "preferRegex": false, "regex": "lbWQf35L"}, "blockedWord": ["wxcEFJws", "pGtTyTAP", "5aAtT5t6"], "description": [{"language": "vyYUHVPa", "message": ["ZrzpEqKd", "oj1Ifvt2", "NqtuAF0H"]}, {"language": "Tj2FxKqj", "message": ["TcVtVspf", "p8rZIHWX", "caK2wPYt"]}, {"language": "ix26F39g", "message": ["iMM3VVoq", "LM3f3Zdj", "BDt1VwNB"]}], "isCustomRegex": false, "letterCase": "BcWAkl7S", "maxLength": 33, "maxRepeatingAlphaNum": 6, "maxRepeatingSpecialCharacter": 67, "minCharType": 66, "minLength": 97, "profanityFilter": "oSl0Zz2r", "regex": "xHOampH2", "specialCharacterLocation": "pRMeFdal", "specialCharacters": ["zIDKVBI2", "WpGxDexZ", "3XlAlriY"]}}]' \
    > test.out 2>&1
eval_tap $? 140 'AdminUpdateNamespaceScopedInputValidations' test.out

#- 141 AdminResetNamespaceScopedInputValidations
samples/cli/sample-apps Iam adminResetNamespaceScopedInputValidations \
    --field '7ycoFwOL' \
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
    --body '{"active": true, "roleIds": ["bxci6PBp", "WXYCmiiV", "MnBsCL95"]}' \
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
    --limit '56' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 147 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RqDwIGqA' \
    > test.out 2>&1
eval_tap $? 147 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 148 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7qIKolLl' \
    --body '{"ACSURL": "4AqwVRQd", "AWSCognitoRegion": "oss3Sv9b", "AWSCognitoUserPool": "Gfzf82pi", "AllowedClients": ["kAOpo92b", "dsVI3yxB", "oZfh9VZt"], "AppId": "HgOx9ntx", "AuthorizationEndpoint": "sPZ6afKa", "ClientId": "zUiAq46V", "EmptyStrFieldList": ["12j6IjH6", "c6pmTjFt", "ZpJKyXPm"], "EnableServerLicenseValidation": true, "Environment": "CWwQ4Mzt", "FederationMetadataURL": "3qMcqmqb", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": true, "Issuer": "jNieZ5KL", "JWKSEndpoint": "LG26lLbR", "KeyID": "opgkerJ3", "LogoURL": "YqVWd7Ie", "NetflixCertificates": {"encryptedPrivateKey": "BMrPQfPk", "encryptedPrivateKeyName": "EmCqMH6R", "publicCertificate": "9NUJbWkt", "publicCertificateName": "DCcaYa7A", "rootCertificate": "8jVsOc6R", "rootCertificateName": "SpyaLuAm"}, "OrganizationId": "PxuSoFma", "PlatformName": "Mcgpx7hn", "PrivateKey": "6V40kEFk", "RedirectUri": "7ayWpfoO", "RegisteredDomains": [{"affectedClientIDs": ["6uSy25Us", "DlU7iZM8", "pB7nO0uN"], "domain": "FWBKSIpm", "namespaces": ["XBju5jX5", "C3zCuvMi", "99dk9NDn"], "roleId": "rFjX0K3v", "ssoCfg": {"googleKey": {"46HsW563": {}, "iZ33p3cD": {}, "pgHSle5d": {}}, "groupConfigs": [{"assignNamespaces": ["WvUqbbgX", "YU551gMZ", "QnJ1R4KP"], "group": "rbToPVWE", "roleId": "USJ9J3Wv"}, {"assignNamespaces": ["TH1ZDagD", "4gGy4nL3", "sSQkGaYC"], "group": "BuoWWg5f", "roleId": "ozTeNQVs"}, {"assignNamespaces": ["DCXOmfnL", "FbVv6rLK", "B6pw1ygK"], "group": "EBD40i6x", "roleId": "vTnD2dWC"}]}}, {"affectedClientIDs": ["P3xxxvM4", "nvW6gynx", "jwEZPsak"], "domain": "LE29rRm7", "namespaces": ["cnog3Zny", "S4Kfdg2C", "RwrImzUW"], "roleId": "8MPn6LNj", "ssoCfg": {"googleKey": {"4Vktj079": {}, "4xXI8YDG": {}, "eUR3M5L2": {}}, "groupConfigs": [{"assignNamespaces": ["KCO7MKOM", "sVfuis73", "FTRwk8BM"], "group": "LX7aJc3G", "roleId": "odTpnVUK"}, {"assignNamespaces": ["o9Fsv4BQ", "TxZdykrz", "dPUBlvwX"], "group": "EBc83sH6", "roleId": "okiLsgh9"}, {"assignNamespaces": ["71HyfXGB", "AN96wWHG", "eMR1oqKL"], "group": "avGV6zqN", "roleId": "sSe2qzhH"}]}}, {"affectedClientIDs": ["7gtXivaT", "EoZoIBVw", "YIAqFBM4"], "domain": "JiKDgNWg", "namespaces": ["PZbF9iDa", "4yT44r5B", "TnNSeTUp"], "roleId": "WMGl3htC", "ssoCfg": {"googleKey": {"KW0f7VEs": {}, "ADcUTyWk": {}, "r8wAksvJ": {}}, "groupConfigs": [{"assignNamespaces": ["ua6kAObb", "KGMGpbyG", "cqzkN5O9"], "group": "evWpSwqI", "roleId": "GchFxohf"}, {"assignNamespaces": ["V9sYUYLE", "9orF4kJV", "7RPPDduX"], "group": "X12hL6Mg", "roleId": "8pzzLHJn"}, {"assignNamespaces": ["V9m432RZ", "2kreK7ud", "2goDQXHH"], "group": "43OZav2a", "roleId": "uqqhMv5p"}]}}], "RelyingParty": "tbJsK0OK", "SandboxId": "4UB6oDm9", "Secret": "RzFmGgLI", "TeamID": "e8lTLvUK", "TokenAuthenticationType": "N4LwwVJy", "TokenClaimsMapping": {"ypT72aPl": "DCJASbId", "vRo2BkgV": "xHex8lGS", "6uMipUY8": "6uVwa6ga"}, "TokenEndpoint": "3kW5rg9n", "UserInfoEndpoint": "unbUW8eB", "UserInfoHTTPMethod": "SygJt5LP", "googleAdminConsoleKey": "F2KCDvKN", "scopes": ["3V5fdrfm", "s87gSJA4", "yPsgZyEa"]}' \
    > test.out 2>&1
eval_tap $? 148 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 149 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Px3SwpCr' \
    > test.out 2>&1
eval_tap $? 149 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 150 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lem2zn6M' \
    --body '{"ACSURL": "q4q6H5Cx", "AWSCognitoRegion": "t7Gp7lL9", "AWSCognitoUserPool": "VGyybRlP", "AllowedClients": ["X11TaBRh", "95AKy3b6", "afwHsxW0"], "AppId": "NmR3qaa8", "AuthorizationEndpoint": "XUjQfsiC", "ClientId": "aJLTTipY", "EmptyStrFieldList": ["PXr1uhEA", "ALOuDi7U", "A4J5U0Gn"], "EnableServerLicenseValidation": false, "Environment": "8GNXG8Kh", "FederationMetadataURL": "gvJNv8hH", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "TERwowm0", "JWKSEndpoint": "7fGX43Yb", "KeyID": "WtGKRW6q", "LogoURL": "1ZBv6E94", "NetflixCertificates": {"encryptedPrivateKey": "NSYhJzSe", "encryptedPrivateKeyName": "QBOdPAiG", "publicCertificate": "X8yGiFbS", "publicCertificateName": "MYhE6ASK", "rootCertificate": "1jGEsteG", "rootCertificateName": "zlfuZ31K"}, "OrganizationId": "lMUyZifu", "PlatformName": "kBiIAw6c", "PrivateKey": "8t9yY5uc", "RedirectUri": "LV9m6ZHh", "RegisteredDomains": [{"affectedClientIDs": ["UebMMkFf", "T7JmCRrN", "55nUp2b7"], "domain": "oodTKusX", "namespaces": ["mBQbS2dO", "8WlHGFGe", "pnnKPvGd"], "roleId": "o8JJ2vQa", "ssoCfg": {"googleKey": {"A4t4q6bb": {}, "hsLXlTkg": {}, "0OJ08cbd": {}}, "groupConfigs": [{"assignNamespaces": ["0jpNB16t", "oB8hXnsN", "cU1z4ktw"], "group": "pxtZv9ai", "roleId": "xicBLfpl"}, {"assignNamespaces": ["JwhiP2th", "5P7sJrey", "aiBY2pUT"], "group": "dwj9Su2R", "roleId": "di7yznjY"}, {"assignNamespaces": ["HkmUwMGS", "Ng5XAiqU", "z5pJHmBA"], "group": "UO7xA9wI", "roleId": "8RS0s36s"}]}}, {"affectedClientIDs": ["BuOvL1yC", "kCQqjNUG", "3N0TUdwC"], "domain": "F40OunQr", "namespaces": ["oMXVEVb7", "gRnGOZKB", "YahL6WWs"], "roleId": "USwXXokl", "ssoCfg": {"googleKey": {"6QUnm3pX": {}, "iMBFzvH7": {}, "ziLMiiNG": {}}, "groupConfigs": [{"assignNamespaces": ["LdvKfaQG", "eCyWxIV0", "c3DJR5pU"], "group": "9mWNGVCe", "roleId": "AryfBZZg"}, {"assignNamespaces": ["dXFJafzK", "KJ8Uy1nl", "h2qgBWxn"], "group": "pnFVpKBi", "roleId": "TyOpdATU"}, {"assignNamespaces": ["OVlFGmfJ", "rW6Op2MS", "cfIdtXqq"], "group": "No2YyRB4", "roleId": "DEBxoKiy"}]}}, {"affectedClientIDs": ["JKCqL4wA", "XDuI9Maz", "tEJ8Ju1L"], "domain": "WbkJGhOD", "namespaces": ["sWYP4EyU", "KpuwNR9T", "CgyuuHEN"], "roleId": "EmexZqGv", "ssoCfg": {"googleKey": {"wV9Fcrif": {}, "ExWFpXwR": {}, "u9HLrbCL": {}}, "groupConfigs": [{"assignNamespaces": ["LFRH90T6", "vKq8YRVS", "rSU9qsqI"], "group": "SBwra1rL", "roleId": "x8yl1ojI"}, {"assignNamespaces": ["qfcLB3Nm", "MkKuER3S", "Yu4POo8a"], "group": "eJcQcTI5", "roleId": "BWILw01V"}, {"assignNamespaces": ["B0Rz2Vlx", "mRVX8igm", "Kkp4XQ4F"], "group": "n1mbyS1E", "roleId": "2Fh2gtiR"}]}}], "RelyingParty": "HtsvJy8R", "SandboxId": "Qijopxff", "Secret": "JDV7g7ST", "TeamID": "vtGFmi4C", "TokenAuthenticationType": "JQ0Mx55q", "TokenClaimsMapping": {"z2DJARPM": "fd54hxbZ", "c998Xcw9": "YIXM0Sxw", "gJx9XSTQ": "Cu7aq948"}, "TokenEndpoint": "PzwMUIs0", "UserInfoEndpoint": "9zOmQo6a", "UserInfoHTTPMethod": "xEC8OMzB", "googleAdminConsoleKey": "filUjdGb", "scopes": ["AUKoAUg6", "KyjOeQnS", "hLUVqaUh"]}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 151 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'O5g668k7' \
    --body '{"affectedClientIDs": ["2rnKamie", "hVMMImPy", "ttqoUwyl"], "assignedNamespaces": ["1R2WGuj6", "vezv90PX", "FqYMxxVQ"], "domain": "hI1Zyhs7", "roleId": "RRNmU7BW", "ssoCfg": {"googleKey": {"4UuqS4Fw": {}, "CClgFc5T": {}, "B8ORUD1S": {}}, "groupConfigs": [{"assignNamespaces": ["w2VLmIr2", "0aOePVc0", "2nqlYXiR"], "group": "ew5VghRc", "roleId": "BPcvAq3H"}, {"assignNamespaces": ["9cisbQge", "E7z0uQrs", "hhO2I98K"], "group": "mh9hFjeD", "roleId": "vF2VfOgv"}, {"assignNamespaces": ["H9s09kTC", "7V4LIKqx", "VbEkyEkL"], "group": "wnpbjHb6", "roleId": "LWlKEPrL"}]}}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 152 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZuScYXt2' \
    --body '{"domain": "A1aogH4w", "ssoGroups": ["77UmOdfH", "omKqNRbS", "ZL9OvpJX"]}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 153 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zOy3DVAd' \
    --body '{"affectedClientIDs": ["aZytJvCK", "rfU9heK2", "v0WxoBJr"], "assignedNamespaces": ["ObEnI7KW", "tmn0Cjss", "7DmEvTjL"], "domain": "YH1iXi4y", "roleId": "4xXxzUFx", "ssoCfg": {"googleKey": {"T2qKLs2s": {}, "qGM7nSeF": {}, "2mO8WPgQ": {}}, "groupConfigs": [{"assignNamespaces": ["96MhOYaa", "48KT3RXR", "jUC7J0h8"], "group": "yQi4k62I", "roleId": "8h3DVdxJ"}, {"assignNamespaces": ["u62bYbRk", "CxfSgjjx", "cnTtl2Fh"], "group": "FtoW8f0k", "roleId": "StQynql2"}, {"assignNamespaces": ["72OO1gjl", "qstVX8DK", "6UXk9ptr"], "group": "Iv9yBMM5", "roleId": "4bUaeY8A"}]}}' \
    > test.out 2>&1
eval_tap $? 153 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 154 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '2628Fx62' \
    > test.out 2>&1
eval_tap $? 154 'RetrieveSSOLoginPlatformCredential' test.out

#- 155 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Eo8nPduY' \
    --body '{"acsUrl": "jM2bFJwe", "apiKey": "rH10O0be", "appId": "xuQPirNR", "federationMetadataUrl": "JievxxCb", "isActive": false, "redirectUri": "lml5XPNU", "secret": "cL4FnLph", "ssoUrl": "fAHqJW8f"}' \
    > test.out 2>&1
eval_tap $? 155 'AddSSOLoginPlatformCredential' test.out

#- 156 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Z5U0i9cj' \
    > test.out 2>&1
eval_tap $? 156 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 157 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'QfjOn0cc' \
    --body '{"acsUrl": "vT9vY9BG", "apiKey": "Pt8VqNHQ", "appId": "F7DWusix", "federationMetadataUrl": "SwodiKpp", "isActive": true, "redirectUri": "9jH6PbWh", "secret": "AxYHOItg", "ssoUrl": "NCFZuu3b"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSSOPlatformCredential' test.out

#- 158 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6lr7jL6P' \
    --rawPID 'true' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["EVshrggi", "JHZOn6nD", "jEclW0mA"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 159 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JqasXMHV' \
    --platformUserId '80ckNT0V' \
    --pidType 'kpNuM88P' \
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
    --field 'dob' \
    --body '{"config": {"minimumAllowedInterval": 55}, "type": "ulxIQYRc"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 162 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetRoleOverrideConfigV3' test.out

#- 163 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"additions": [{"actions": [18, 34, 96], "resource": "Tdbp6dFO"}, {"actions": [81, 24, 55], "resource": "WhuiMGtE"}, {"actions": [61, 51, 60], "resource": "f4GCEhZe"}], "exclusions": [{"actions": [52, 66, 98], "resource": "CMfw8FF3"}, {"actions": [27, 44, 20], "resource": "UsjesiMR"}, {"actions": [33, 97, 83], "resource": "Qao56Niw"}], "overrides": [{"actions": [46, 75, 63], "resource": "NyOdcYXz"}, {"actions": [94, 90, 39], "resource": "HbU0W884"}, {"actions": [93, 51, 76], "resource": "0TWL3Sw1"}], "replacements": [{"replacement": {"actions": [47, 52, 33], "resource": "XuACxozm"}, "target": "AlbNDKyi"}, {"replacement": {"actions": [51, 17, 38], "resource": "nS0jVuBn"}, "target": "xnj3Cg3G"}, {"replacement": {"actions": [100, 60, 52], "resource": "YaA5MfaV"}, "target": "DcOMHrF7"}]}' \
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
    --roleId 'MEmlOg0M' \
    > test.out 2>&1
eval_tap $? 166 'AdminGetRoleNamespacePermissionV3' test.out

#- 167 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '6wB18emR' \
    --after '52' \
    --before '2' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 167 'GetAdminUsersByRoleIdV3' test.out

#- 168 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '23' \
    --tagName 'iz3qU4B2' \
    > test.out 2>&1
eval_tap $? 168 'AdminQueryTagV3' test.out

#- 169 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "NobDhWOt"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminCreateTagV3' test.out

#- 170 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId '8t0nocI4' \
    --body '{"tagName": "EcCiDXNz"}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateTagV3' test.out

#- 171 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'vIaCPdHu' \
    > test.out 2>&1
eval_tap $? 171 'AdminDeleteTagV3' test.out

#- 172 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'ybSu12kF' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByEmailAddressV3' test.out

#- 173 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["n9EjeDwX", "jBsbbjUT", "JgaihXWJ"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminBulkUpdateUsersV3' test.out

#- 174 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'l049SvtA' \
    --body '{"bulkUserId": ["gTC4WZGq", "B15pWn97", "vzJrdhiR"]}' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetBulkUserBanV3' test.out

#- 175 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["FFCx9IMc", "Sx5ZwLVY", "FsSEzRrN"]}' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUserIDByUserIDsV3' test.out

#- 176 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["sMyPs4ER", "IUqv0bRP", "EzsYuTwN"]}' \
    > test.out 2>&1
eval_tap $? 176 'AdminBulkGetUsersPlatform' test.out

#- 177 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "udcSHXrv", "userId": "AqgsMYQT"}, "fields": ["F8nmujtx", "wikoSr3a", "kf4tzXrs"], "limit": 43}' \
    > test.out 2>&1
eval_tap $? 177 'AdminCursorGetUserV3' test.out

#- 178 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["JIUEs8i0", "dLgJv8xg", "Z5JwDtaH"], "isAdmin": false, "languageTag": "3pwdIVxp", "namespace": "NOxh1gh1", "roles": ["pRYoO1CJ", "wudhwQ1I", "DpN85HZO"]}' \
    > test.out 2>&1
eval_tap $? 178 'AdminInviteUserV3' test.out

#- 179 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '28' \
    --platformUserId 'MyfRVJ3y' \
    --platformId 'YmkBm5rc' \
    > test.out 2>&1
eval_tap $? 179 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 180 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 180 'AdminListUsersV3' test.out

#- 181 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '8cxbisKw' \
    --endDate 'Zx09q9qX' \
    --includeTotal 'true' \
    --limit '34' \
    --offset '0' \
    --platformBy 'TwErEagd' \
    --platformId '0hPohTqx' \
    --query 'w4RHry60' \
    --roleIds '3JMdlBB7' \
    --selectedFields 'LKlRhndn' \
    --skipLoginQueue 'false' \
    --startDate '4GRjk1yB' \
    --tagIds 'ssADm4N5' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 181 'AdminSearchUserV3' test.out

#- 182 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["7Pgrc6zf", "LHJxyI3y", "obuyITd7"]}' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetBulkUserByEmailAddressV3' test.out

#- 183 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pbXBE1c1' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserByUserIdV3' test.out

#- 184 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '0fwSJNpH' \
    --body '{"avatarUrl": "VRHA1kr9", "country": "S0iyT0bq", "dateOfBirth": "2NYud1jl", "displayName": "7N1rkczk", "languageTag": "dvAQ18mo", "skipLoginQueue": true, "tags": ["kMKOLhX4", "WfQa4gVx", "56xjjJzs"], "uniqueDisplayName": "auL8DG0q", "userName": "iOmgtGOP"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateUserV3' test.out

#- 185 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NcmYSgra' \
    --activeOnly 'true' \
    --after 'i5rEGwZg' \
    --before 'AiGxG0gR' \
    --limit '8' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetUserBanV3' test.out

#- 186 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '3bTOlBmU' \
    --body '{"ban": "ZCvsqom5", "comment": "PnDO5u1J", "endDate": "AMpSg5ds", "reason": "BRNY5Uzt", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 186 'AdminBanUserV3' test.out

#- 187 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EtQxaZHH' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserBanSummaryV3' test.out

#- 188 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '8uhtTGpL' \
    --namespace $AB_NAMESPACE \
    --userId '33CGtDI6' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserBanV3' test.out

#- 189 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tPwpA40J' \
    --body '{"context": "z1w0z69M", "emailAddress": "ONehQD4O", "languageTag": "5zjfsHOk", "upgradeToken": "F2C2W79w"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminSendVerificationCodeV3' test.out

#- 190 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Y7gfGtbX' \
    --body '{"Code": "3DhlllnO", "ContactType": "wknn0ct1", "LanguageTag": "vqy5gjW2", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyAccountV3' test.out

#- 191 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'x2s4bQdd' \
    > test.out 2>&1
eval_tap $? 191 'GetUserVerificationCode' test.out

#- 192 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '3PBWM042' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserDeletionStatusV3' test.out

#- 193 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qxYXWsCj' \
    --body '{"deletionDate": 58, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserDeletionStatusV3' test.out

#- 194 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AWm8oUBP' \
    > test.out 2>&1
eval_tap $? 194 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 195 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MhQK6I5a' \
    --body '{"code": "jgjMssX8", "country": "ibxVSFoV", "dateOfBirth": "Mhh2MR5w", "displayName": "AROTOZuk", "emailAddress": "No1L78Uu", "password": "NWc2fgvc", "uniqueDisplayName": "NyLLPPvL", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpgradeHeadlessAccountV3' test.out

#- 196 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HOOzEbFv' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserInformationV3' test.out

#- 197 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yOY9sHUM' \
    --after '0.30141502837052325' \
    --before '0.9121279417877199' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetUserLoginHistoriesV3' test.out

#- 198 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fb8RvlA4' \
    --body '{"languageTag": "mu1p9nsn", "mfaToken": "5HQHmS8L", "newPassword": "VFCUTplF", "oldPassword": "Gg0iWAKK"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminResetPasswordV3' test.out

#- 199 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '9A8v9bw6' \
    --body '{"Permissions": [{"Action": 30, "Resource": "cAQYYOi8", "SchedAction": 91, "SchedCron": "7reBnWh0", "SchedRange": ["VmkEsrVV", "E5WO8gsO", "XW7gwsX9"]}, {"Action": 91, "Resource": "UNVxAwHs", "SchedAction": 27, "SchedCron": "fpw89OY3", "SchedRange": ["iGHr9VCY", "OGhgjpI7", "senx4KLZ"]}, {"Action": 29, "Resource": "GIfssMQM", "SchedAction": 12, "SchedCron": "I3q2zUec", "SchedRange": ["XAoM8v1q", "OTt8Ujit", "OIIBTooi"]}]}' \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateUserPermissionV3' test.out

#- 200 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ETGufhAX' \
    --body '{"Permissions": [{"Action": 12, "Resource": "lHjeC9Bz", "SchedAction": 58, "SchedCron": "hnJd6Bvo", "SchedRange": ["vqlZRpth", "SuF0eTl2", "pdX0modS"]}, {"Action": 19, "Resource": "p2a97VWn", "SchedAction": 10, "SchedCron": "lxnjTcXZ", "SchedRange": ["tbom43U7", "GT8uAfLd", "uk6nIFSq"]}, {"Action": 56, "Resource": "8NrULcJl", "SchedAction": 34, "SchedCron": "vXbsvRmF", "SchedRange": ["avGIx11Q", "wzIFx9up", "pUppAw8t"]}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddUserPermissionsV3' test.out

#- 201 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j7XOkNdu' \
    --body '[{"Action": 83, "Resource": "94SAI7q7"}, {"Action": 65, "Resource": "4SCYwUPe"}, {"Action": 89, "Resource": "oYuOtOmC"}]' \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteUserPermissionBulkV3' test.out

#- 202 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '64' \
    --namespace $AB_NAMESPACE \
    --resource '00yn9qwg' \
    --userId 'wEBYgCjE' \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteUserPermissionV3' test.out

#- 203 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kUEHSv8V' \
    --after 'iOwWypC1' \
    --before 'IDm6JDeo' \
    --limit '65' \
    --platformId 'jgZGVnBr' \
    --targetNamespace 'ZqsIBYgi' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetUserPlatformAccountsV3' test.out

#- 204 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '2tpLlDVo' \
    --status 'TxflzVCP' \
    > test.out 2>&1
eval_tap $? 204 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 205 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'rWZjtWn4' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetListJusticePlatformAccounts' test.out

#- 206 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace '5LT3SowE' \
    --userId 'FaMAgfAs' \
    --createIfNotFound 'true' \
    > test.out 2>&1
eval_tap $? 206 'AdminGetUserMapping' test.out

#- 207 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '0qTV87ZS' \
    --userId 'gGjWr0M4' \
    > test.out 2>&1
eval_tap $? 207 'AdminCreateJusticeUser' test.out

#- 208 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'krqkEvoA' \
    --skipConflict 'false' \
    --body '{"platformId": "0pcVjpoP", "platformUserId": "9lvDPho1"}' \
    > test.out 2>&1
eval_tap $? 208 'AdminLinkPlatformAccount' test.out

#- 209 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iqop2QOT' \
    --platformId 'pfvTcWqk' \
    > test.out 2>&1
eval_tap $? 209 'AdminGetUserLinkHistoriesV3' test.out

#- 210 AdminPlatformUnlinkV3
eval_tap 0 210 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 211 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BuUcd1tg' \
    --userId 'ImUmGQGK' \
    > test.out 2>&1
eval_tap $? 211 'AdminPlatformUnlinkAllV3' test.out

#- 212 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Lq2gba7E' \
    --userId 'ZWIsfsIj' \
    --ticket 'jjq9N6zH' \
    > test.out 2>&1
eval_tap $? 212 'AdminPlatformLinkV3' test.out

#- 213 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 213 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 214 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MHQa8YCo' \
    --userId 'MiIjLWcd' \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 215 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AhMaXIcX' \
    --userId '72aii4Za' \
    --platformToken 'U8Xvxpy4' \
    > test.out 2>&1
eval_tap $? 215 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 216 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'KgDXPehf' \
    --userId 'sHonYxQL' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserSinglePlatformAccount' test.out

#- 217 AdminDeleteUserRolesV3
eval_tap 0 217 'AdminDeleteUserRolesV3 # SKIP deprecated' test.out

#- 218 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IHrlUpQU' \
    --body '[{"namespace": "I5oeK7o5", "roleId": "1YmbaZXi"}, {"namespace": "ukNTlcP3", "roleId": "OZsNJAeA"}, {"namespace": "ByRrDJTb", "roleId": "5zWJvBFm"}]' \
    > test.out 2>&1
eval_tap $? 218 'AdminSaveUserRoleV3' test.out

#- 219 AdminAddUserRoleV3
eval_tap 0 219 'AdminAddUserRoleV3 # SKIP deprecated' test.out

#- 220 AdminDeleteUserRoleV3
eval_tap 0 220 'AdminDeleteUserRoleV3 # SKIP deprecated' test.out

#- 221 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PIcONhKl' \
    > test.out 2>&1
eval_tap $? 221 'AdminGetUserStateByUserIdV3' test.out

#- 222 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jHG0RC3o' \
    --body '{"enabled": true, "reason": "m4ZBmsC3"}' \
    > test.out 2>&1
eval_tap $? 222 'AdminUpdateUserStatusV3' test.out

#- 223 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'ssNqXyKe' \
    --body '{"emailAddress": "LhfrQsmY", "password": "hV9y2q98"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminTrustlyUpdateUserIdentity' test.out

#- 224 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gkUa6ZYf' \
    > test.out 2>&1
eval_tap $? 224 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 225 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'QRW2zgyg' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "5ggTsBqH"}' \
    > test.out 2>&1
eval_tap $? 225 'AdminUpdateClientSecretV3' test.out

#- 226 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId '0RtKHW8W' \
    > test.out 2>&1
eval_tap $? 226 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 227 GetThirdPartyLoginPlatformDefaultsV3
samples/cli/sample-apps Iam getThirdPartyLoginPlatformDefaultsV3 \
    --platformId 'GtfMBaUB' \
    > test.out 2>&1
eval_tap $? 227 'GetThirdPartyLoginPlatformDefaultsV3' test.out

#- 228 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'tdtf3lvl' \
    --before 'UlFdQoOb' \
    --isWildcard 'true' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 228 'AdminGetRolesV3' test.out

#- 229 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "sXShCdym", "namespace": "HtGy5fho", "userId": "EbDquRZw"}, {"displayName": "on2uzDcV", "namespace": "YCNqfsLZ", "userId": "afEWEQqD"}, {"displayName": "dBVoqpLW", "namespace": "9PYk32NW", "userId": "eQgVPNOb"}], "members": [{"displayName": "w9UM6Sjl", "namespace": "0q0l1xh5", "userId": "09x5l4AM"}, {"displayName": "I0SleOct", "namespace": "vllym845", "userId": "C0PSy90J"}, {"displayName": "xZCRno7E", "namespace": "ImVUdz4d", "userId": "5fJxfQp5"}], "permissions": [{"action": 98, "resource": "nune3ORM", "schedAction": 44, "schedCron": "LcHcXPu0", "schedRange": ["pW54mSGA", "ClFG0AWy", "jWpNOVxb"]}, {"action": 61, "resource": "XOKpu7HB", "schedAction": 90, "schedCron": "Icl9gf79", "schedRange": ["NLmf91xm", "JTtwr4gg", "O6RWxyku"]}, {"action": 17, "resource": "GWOGxEn6", "schedAction": 82, "schedCron": "jVi8hGDY", "schedRange": ["y00XIFI4", "RwSm6S8v", "ynz04ku1"]}], "roleName": "ziI9JF3K"}' \
    > test.out 2>&1
eval_tap $? 229 'AdminCreateRoleV3' test.out

#- 230 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'AxPQTSml' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleV3' test.out

#- 231 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'rKqi8NNS' \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRoleV3' test.out

#- 232 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'DNLFuBrb' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "at4nUbWG"}' \
    > test.out 2>&1
eval_tap $? 232 'AdminUpdateRoleV3' test.out

#- 233 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'iSYHoUwC' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleAdminStatusV3' test.out

#- 234 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'RcTEJbot' \
    > test.out 2>&1
eval_tap $? 234 'AdminUpdateAdminRoleStatusV3' test.out

#- 235 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'iVqWCcnn' \
    > test.out 2>&1
eval_tap $? 235 'AdminRemoveRoleAdminV3' test.out

#- 236 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '1uMpro8e' \
    --after 'URqpgsvN' \
    --before 'Q5EGgYEM' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 236 'AdminGetRoleManagersV3' test.out

#- 237 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'btB72C6k' \
    --body '{"managers": [{"displayName": "wI7N5CD5", "namespace": "Q21LIdcS", "userId": "YQdGhLBi"}, {"displayName": "yrszqWFl", "namespace": "cDCIJOwF", "userId": "Zg7kxKKT"}, {"displayName": "xo1h29m7", "namespace": "qbBDRz3U", "userId": "RvWVBeGC"}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRoleManagersV3' test.out

#- 238 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'thMl99HK' \
    --body '{"managers": [{"displayName": "yBilD5gb", "namespace": "IV7soUGC", "userId": "7IkRexQU"}, {"displayName": "u48vMNnA", "namespace": "JVFeCDu7", "userId": "nZZBvwMc"}, {"displayName": "bed3TDPb", "namespace": "XTycZzhU", "userId": "CQU3wpS3"}]}' \
    > test.out 2>&1
eval_tap $? 238 'AdminRemoveRoleManagersV3' test.out

#- 239 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'Wxv0063P' \
    --after 'oUw9Lpcj' \
    --before 'wBWWlVSU' \
    --limit '70' \
    > test.out 2>&1
eval_tap $? 239 'AdminGetRoleMembersV3' test.out

#- 240 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'Ff9ulOeZ' \
    --body '{"members": [{"displayName": "XEDSbh5v", "namespace": "GeoA0NAj", "userId": "ng6jXK6Z"}, {"displayName": "Ogl1LzRv", "namespace": "7nMRc5Qj", "userId": "Tzx4wC1m"}, {"displayName": "SiLCpKba", "namespace": "09Kyggjr", "userId": "pxCxASEc"}]}' \
    > test.out 2>&1
eval_tap $? 240 'AdminAddRoleMembersV3' test.out

#- 241 AdminRemoveRoleMembersV3
eval_tap 0 241 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 242 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'L0TgqgGu' \
    --body '{"permissions": [{"action": 88, "resource": "sfa0v0dU", "schedAction": 68, "schedCron": "Jrlico4I", "schedRange": ["anZxN2w6", "16ztLm3v", "Q91fT9Ux"]}, {"action": 33, "resource": "6m9GtMPH", "schedAction": 36, "schedCron": "3vKyuYPy", "schedRange": ["bxCv0nTJ", "35qXu6eR", "F863BjE3"]}, {"action": 61, "resource": "fXzsFSru", "schedAction": 74, "schedCron": "WZn6VHup", "schedRange": ["1XaurmUQ", "WHlTC0v6", "s17H1heS"]}]}' \
    > test.out 2>&1
eval_tap $? 242 'AdminUpdateRolePermissionsV3' test.out

#- 243 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'WW96IEES' \
    --body '{"permissions": [{"action": 71, "resource": "HFQUK27m", "schedAction": 84, "schedCron": "R3EAQITY", "schedRange": ["gs893i4z", "wut8MXRO", "8xBfLYqu"]}, {"action": 64, "resource": "S6MboCsQ", "schedAction": 84, "schedCron": "g65xwjVf", "schedRange": ["DOsFaA5l", "MFYIAJnz", "2FqaQZZF"]}, {"action": 43, "resource": "tKF8vlDm", "schedAction": 53, "schedCron": "0r1UQ0lx", "schedRange": ["vhcUsQ6r", "2xDXUXU7", "7RjESGd0"]}]}' \
    > test.out 2>&1
eval_tap $? 243 'AdminAddRolePermissionsV3' test.out

#- 244 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'HAfv9q1e' \
    --body '["HjljbPAo", "uNBJNPzd", "wIgeUF2o"]' \
    > test.out 2>&1
eval_tap $? 244 'AdminDeleteRolePermissionsV3' test.out

#- 245 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '7' \
    --resource 'RomuDg35' \
    --roleId 'JGF2Tw64' \
    > test.out 2>&1
eval_tap $? 245 'AdminDeleteRolePermissionV3' test.out

#- 246 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 246 'AdminGetMyUserV3' test.out

#- 247 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'HnEdhUK9' \
    --extendExp 'true' \
    --redirectUri 'Gg0Zl9m1' \
    --password '4KWVboFw' \
    --requestId 'aQu2SzLn' \
    --userName '6uD4ys7O' \
    > test.out 2>&1
eval_tap $? 247 'UserAuthenticationV3' test.out

#- 248 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'vVytRuHo' \
    --linkingToken 'dYvMbT0n' \
    --password '1cCLzP1A' \
    --username 'xcYkrZtB' \
    > test.out 2>&1
eval_tap $? 248 'AuthenticationWithPlatformLinkV3' test.out

#- 249 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'VL30eOaL' \
    --linkingToken '5SvG4waB' \
    --password 'knOelJ9C' \
    --username 'QutpN1VU' \
    > test.out 2>&1
eval_tap $? 249 'AuthenticateAndLinkForwardV3' test.out

#- 250 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 250 'PublicGetSystemConfigV3' test.out

#- 251 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'eypY7RKG' \
    --extendExp 'false' \
    --linkingToken 'udycMvya' \
    > test.out 2>&1
eval_tap $? 251 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 252 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'bOwFqwNO' \
    --state 'ws50Sp0J' \
    --platformId 'uYF0ZsK2' \
    > test.out 2>&1
eval_tap $? 252 'RequestOneTimeLinkingCodeV3' test.out

#- 253 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode '527grs0r' \
    > test.out 2>&1
eval_tap $? 253 'ValidateOneTimeLinkingCodeV3' test.out

#- 254 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'CkrYfgqi' \
    --isTransient 'false' \
    --clientId 'reaxrtyW' \
    --oneTimeLinkCode 'Pr2xp1JS' \
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
    --codeChallenge '0lz3Fqon' \
    --codeChallengeMethod 'S256' \
    --clientId 'JX1kk2Fk' \
    > test.out 2>&1
eval_tap $? 257 'RequestTokenExchangeCodeV3' test.out

#- 258 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Z7VOBS50' \
    --userId 'zERSDdk5' \
    --platformUserId 'GenvfgSU' \
    > test.out 2>&1
eval_tap $? 258 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 259 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eqVoJYk3' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 259 'RevokeUserV3' test.out

#- 260 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'mHZjBECG' \
    --codeChallenge 'WT9n4Siy' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --loginWebBased 'false' \
    --nonce 'o5mgyIZT' \
    --oneTimeLinkCode 'ZJcTmdMf' \
    --redirectUri 'rN14MZ8T' \
    --scope 'Ip4jEER6' \
    --state '5GJe20qk' \
    --targetAuthPage '63XvYekd' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'TBUt8u2I' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 260 'AuthorizeV3' test.out

#- 261 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'mOCnwY7k' \
    > test.out 2>&1
eval_tap $? 261 'TokenIntrospectionV3' test.out

#- 262 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 262 'GetJWKSV3' test.out

#- 263 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'A5ngZsgq' \
    --factor 'BO81SqFi' \
    --mfaToken 'ZTq0nC3l' \
    > test.out 2>&1
eval_tap $? 263 'SendMFAAuthenticationCode' test.out

#- 264 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'xxeZiERa' \
    --mfaToken 'Je0BuiPI' \
    > test.out 2>&1
eval_tap $? 264 'Change2faMethod' test.out

#- 265 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'wtNYUHDi' \
    --factor 'StZQWYif' \
    --mfaToken 'QDKbUud5' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 265 'Verify2faCode' test.out

#- 266 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor '6MpgXwHJ' \
    --factors '67C5DTrC' \
    --rememberDevice 'true' \
    --clientId 'tHBUDlqH' \
    --code 'oA7ijam2' \
    --factor 'kGHJy3h3' \
    --mfaToken 'pKHPQaq5' \
    > test.out 2>&1
eval_tap $? 266 'Verify2faCodeForward' test.out

#- 267 OAuthDynamicClientRegisterWithNamespaceV3
samples/cli/sample-apps Iam oAuthDynamicClientRegisterWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --body '{"client_name": "hPBCl7JF", "client_uri": "LIJ41iEW", "grant_types": ["XFSSOuzw", "aqU9Jtk6", "5BXsUiUP"], "redirect_uris": ["VeliA6zx", "Tm9LdWX5", "FeDcqZNt"], "response_types": ["lIqQcs3K", "NtAFPEsq", "By9WLwtt"], "scopes": ["kjBofOKb", "uoA4vPNQ", "iMuMesCl"], "token_endpoint_auth_method": "3UnMVUAn"}' \
    > test.out 2>&1
eval_tap $? 267 'OAuthDynamicClientRegisterWithNamespaceV3' test.out

#- 268 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1NaaWokd' \
    --userId 'fbvRzWbA' \
    > test.out 2>&1
eval_tap $? 268 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 269 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '3GGFkZWw' \
    --clientId 'kZcUStFg' \
    --redirectUri '5WNWA3y3' \
    --requestId '7lnrrJoz' \
    > test.out 2>&1
eval_tap $? 269 'AuthCodeRequestV3' test.out

#- 270 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'yif0IiRK' \
    --additionalData 'mTqt0DXO' \
    --clientId '8KkKMJiE' \
    --createHeadless 'true' \
    --deviceId 'tWCB0qFc' \
    --macAddress 'ZToSQTKx' \
    --platformToken 'wsk1Jyci' \
    --serviceLabel '0.8574039289640969' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenGrantV3' test.out

#- 271 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 271 'GetRevocationListV3' test.out

#- 272 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '0yhZZ9jm' \
    > test.out 2>&1
eval_tap $? 272 'TokenRevocationV3' test.out

#- 273 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'scNAj2b3' \
    --simultaneousTicket 'x6ZjaRxf' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'aOzjvo6N' \
    > test.out 2>&1
eval_tap $? 273 'SimultaneousLoginV3' test.out

#- 274 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'X2ExHi59' \
    --clientId '5gvEP62M' \
    --clientSecret 'b0aS5xmP' \
    --code 'SuEaqNm6' \
    --codeVerifier 'qXZWbfe5' \
    --extendNamespace 'ZhmaZ4iK' \
    --extendExp 'true' \
    --password 'PDmbwo60' \
    --redirectUri 'XXBr1VCm' \
    --refreshToken 'HDWC1s9c' \
    --scope 'nSKUzgj3' \
    --username 'eA4IlmWX' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 274 'TokenGrantV3' test.out

#- 275 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'RkJhTYBx' \
    > test.out 2>&1
eval_tap $? 275 'VerifyTokenV3' test.out

#- 276 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'eY2ELYk7' \
    --code 'HVQFssWw' \
    --error 'qB99b4BO' \
    --openidAssocHandle 'sjQuZyKI' \
    --openidClaimedId 'GJKuB3uc' \
    --openidIdentity 'NbCGTtBt' \
    --openidMode 'Bv2D8pC9' \
    --openidNs 'DSichKJ3' \
    --openidOpEndpoint 'Taa97UI0' \
    --openidResponseNonce 'vfyRmEc0' \
    --openidReturnTo 'kLBSNOfW' \
    --openidSig 'hkFbTGDt' \
    --openidSigned 'uFZuYBUC' \
    --state 'Uw0LuWtO' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticationV3' test.out

#- 277 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '4Rkq9vRb' \
    --platformToken 'Xq5bgYkd' \
    > test.out 2>&1
eval_tap $? 277 'PlatformTokenRefreshV3' test.out

#- 278 PublicGetInputValidations
eval_tap 0 278 'PublicGetInputValidations # SKIP deprecated' test.out

#- 279 PublicGetInputValidationByField
eval_tap 0 279 'PublicGetInputValidationByField # SKIP deprecated' test.out

#- 280 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'A34Z0Wf5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 280 'PublicGetCountryAgeRestrictionV3' test.out

#- 281 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'q0Cgnu9C' \
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
    --languageCode '093ykybc' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetNamespaceScopedInputValidations' test.out

#- 284 PublicGetNamespaceScopedInputValidationByField
samples/cli/sample-apps Iam publicGetNamespaceScopedInputValidationByField \
    --field 'xNeNmYdO' \
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
    --clientId 'n0QDbCsj' \
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
    --requestId 'JzKECfNM' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetAsyncStatus' test.out

#- 291 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'i1NdTkuL' \
    --limit '38' \
    --offset '5' \
    --platformBy 'vSP84Xw6' \
    --platformId 'DYmMtRoR' \
    --query '13ZBNxEm' \
    > test.out 2>&1
eval_tap $? 291 'PublicSearchUserV3' test.out

#- 292 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "W44QbuWe", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ufCpYs9X", "policyId": "zsnnepdl", "policyVersionId": "7GuAUJuy"}, {"isAccepted": false, "localizedPolicyVersionId": "qwdISzIM", "policyId": "vhueYU2l", "policyVersionId": "IUfRQNjj"}, {"isAccepted": false, "localizedPolicyVersionId": "2dErw3HB", "policyId": "PyaGJgDQ", "policyVersionId": "3QE93hpz"}], "authType": "elvRTyC7", "code": "y1Kv4fNL", "country": "B2Azdahx", "dateOfBirth": "Eh27sgVL", "displayName": "r43Norz9", "emailAddress": "C6hjXvj1", "password": "ltoCDVwS", "reachMinimumAge": true, "uniqueDisplayName": "w46zbFBs"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicCreateUserV3' test.out

#- 293 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '0xPcxCYd' \
    --query 'T2gYBEgm' \
    > test.out 2>&1
eval_tap $? 293 'CheckUserAvailability' test.out

#- 294 PublicBulkGetUsers
eval_tap 0 294 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 295 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "TTtUZckS", "languageTag": "aJmsdsOU"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicSendRegistrationCode' test.out

#- 296 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WFvPOX3Q", "emailAddress": "FABJwLbm"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicVerifyRegistrationCode' test.out

#- 297 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "7YfTLP0f", "languageTag": "9T7Une0Q"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicForgotPasswordV3' test.out

#- 298 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "mGzQWcT0", "password": "gEuv2hhV", "uniqueDisplayName": "9zlxpRaO", "username": "BJs8Ggj5"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicValidateUserInput' test.out

#- 299 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'UAUAjmA1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 299 'GetAdminInvitationV3' test.out

#- 300 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'FoiUWkFW' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "3WeLN602", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "MmBp4bcg", "policyId": "EZBZDvCy", "policyVersionId": "xFt4lKwP"}, {"isAccepted": true, "localizedPolicyVersionId": "8qtptlCf", "policyId": "tMiE8Tdu", "policyVersionId": "ek25nJOV"}, {"isAccepted": true, "localizedPolicyVersionId": "OgMNsBjJ", "policyId": "OYVb0Hn8", "policyVersionId": "giPpCGfm"}], "authType": "uqOPjm6p", "code": "L1IdJfd5", "country": "kLHgL3fo", "dateOfBirth": "bxK3eXaj", "displayName": "JCVZye76", "emailAddress": "IC8YNoQb", "password": "COi5hTEq", "reachMinimumAge": false, "uniqueDisplayName": "hUCPTOtO"}' \
    > test.out 2>&1
eval_tap $? 300 'CreateUserFromInvitationV3' test.out

#- 301 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "hePrQhof", "country": "lBWp9Stb", "dateOfBirth": "ywmvQiWG", "displayName": "oDmkanAH", "languageTag": "niMCoEza", "uniqueDisplayName": "Qm6jGYIU", "userName": "NtXUFb5N"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateUserV3' test.out

#- 302 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "3BMYoLmH", "country": "7sKfXiW1", "dateOfBirth": "BzN1OfLx", "displayName": "xnCrrH2q", "languageTag": "kgN0DDl5", "uniqueDisplayName": "OiCdKzYN", "userName": "V1olsllf"}' \
    > test.out 2>&1
eval_tap $? 302 'PublicPartialUpdateUserV3' test.out

#- 303 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "XjrMtKZ4", "emailAddress": "W8hYkVZe", "languageTag": "rRLxz4JK", "upgradeToken": "xgW3FIQV"}' \
    > test.out 2>&1
eval_tap $? 303 'PublicSendVerificationCodeV3' test.out

#- 304 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZdY2Vqvl", "contactType": "U8mc605o", "languageTag": "rOdSaikH", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 304 'PublicUserVerificationV3' test.out

#- 305 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "SNzBjSah", "country": "fadmpgES", "dateOfBirth": "FXWrhsz0", "displayName": "9UfHKvK5", "emailAddress": "crEQG8vA", "password": "Qk4REGo8", "uniqueDisplayName": "UQxVKBI3", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 305 'PublicUpgradeHeadlessAccountV3' test.out

#- 306 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "p5b7H7Jn", "password": "fiAsULeE"}' \
    > test.out 2>&1
eval_tap $? 306 'PublicVerifyHeadlessAccountV3' test.out

#- 307 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "3OHYUULe", "mfaToken": "Y81AvyS6", "newPassword": "snX8YxJQ", "oldPassword": "F0UJsBUp"}' \
    > test.out 2>&1
eval_tap $? 307 'PublicUpdatePasswordV3' test.out

#- 308 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'hOufdYNJ' \
    > test.out 2>&1
eval_tap $? 308 'PublicCreateJusticeUser' test.out

#- 309 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XhskxLMK' \
    --redirectUri 'AN68Ybjp' \
    --ticket 'vUYwHcDO' \
    > test.out 2>&1
eval_tap $? 309 'PublicPlatformLinkV3' test.out

#- 310 PublicPlatformUnlinkV3
eval_tap 0 310 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 311 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZvhAfpJx' \
    > test.out 2>&1
eval_tap $? 311 'PublicPlatformUnlinkAllV3' test.out

#- 312 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EV8oBWQW' \
    --ticket 'aXP7gdfX' \
    > test.out 2>&1
eval_tap $? 312 'PublicForcePlatformLinkV3' test.out

#- 313 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'cFUSZnOS' \
    --clientId 'pXmf3Fpr' \
    --redirectUri 'YmhOqZWm' \
    > test.out 2>&1
eval_tap $? 313 'PublicWebLinkPlatform' test.out

#- 314 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'rc7D89ck' \
    --code 'TVurS2YN' \
    --state 'IlLcpnFK' \
    > test.out 2>&1
eval_tap $? 314 'PublicWebLinkPlatformEstablish' test.out

#- 315 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wjOAif6d' \
    --code 'fFhDF1nL' \
    --state 're1SOpcX' \
    > test.out 2>&1
eval_tap $? 315 'PublicProcessWebLinkPlatformV3' test.out

#- 316 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "0ii3yotv", "userIds": ["oOe2FvA6", "wizjHLp4", "VbXlSJXU"]}' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUsersPlatformInfosV3' test.out

#- 317 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "Wb0dvT1K", "code": "jHnM4Kjp", "emailAddress": "1hgadFiw", "languageTag": "EZnoHmFk", "newPassword": "F7jtBH8D"}' \
    > test.out 2>&1
eval_tap $? 317 'ResetPasswordV3' test.out

#- 318 PublicGetUserByUserIdV3
eval_tap 0 318 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 319 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dxExzhsH' \
    --activeOnly 'false' \
    --limit '73' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserBanHistoryV3' test.out

#- 320 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'N6JSu9tO' \
    > test.out 2>&1
eval_tap $? 320 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 321 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Jj2VXr7m' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetUserInformationV3' test.out

#- 322 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QrN8UWRc' \
    --after '0.2537676193685682' \
    --before '0.9830842419188821' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserLoginHistoriesV3' test.out

#- 323 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tMejkvZs' \
    --after 'EP2y8tQa' \
    --before '7GuPRY36' \
    --limit '21' \
    --platformId 'HWyRsb6b' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetUserPlatformAccountsV3' test.out

#- 324 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ccb9QQxt' \
    > test.out 2>&1
eval_tap $? 324 'PublicListJusticePlatformAccountsV3' test.out

#- 325 PublicLinkPlatformAccount
eval_tap 0 325 'PublicLinkPlatformAccount # SKIP deprecated' test.out

#- 326 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'lGhNDNDh' \
    --body '{"chosenNamespaces": ["LkI441On", "9nChEiZY", "5s6Rgy4u"], "requestId": "Ie2ppS7M"}' \
    > test.out 2>&1
eval_tap $? 326 'PublicForceLinkPlatformWithProgression' test.out

#- 327 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jmOWLrxR' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetPublisherUserV3' test.out

#- 328 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uc3B7lfH' \
    --password 'x2Ua9mqI' \
    > test.out 2>&1
eval_tap $? 328 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 329 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'UNg17dAp' \
    --before 'vhZVL9jM' \
    --isWildcard 'false' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetRolesV3' test.out

#- 330 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'IORgIjhU' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetRoleV3' test.out

#- 331 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "NyZQH1hI", "emailAddress": "5PKBymon", "languageTag": "ErHvbX3i"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 332 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyUserV3' test.out

#- 333 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "8q7UzTcp", "emailAddress": "T0zz7FdZ", "languageTag": "OlfavEEO", "upgradeToken": "nr0CmhPW"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicSendCodeForwardV3' test.out

#- 334 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'SmuVdgyE' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 335 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["GzNKdd4p", "N27x2PNX", "3pX8YPW3"], "oneTimeLinkCode": "r9w6VTA4"}' \
    > test.out 2>&1
eval_tap $? 335 'LinkHeadlessAccountToMyAccountV3' test.out

#- 336 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'CyLlystx' \
    > test.out 2>&1
eval_tap $? 336 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 337 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 338 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "i2ViDECv"}' \
    > test.out 2>&1
eval_tap $? 338 'PublicSendVerificationLinkV3' test.out

#- 339 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 339 'PublicGetOpenidUserInfoV3' test.out

#- 340 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'MKFipeor' \
    > test.out 2>&1
eval_tap $? 340 'PublicVerifyUserByLinkV3' test.out

#- 341 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'DhuaySlA' \
    --code 'vfAXFtrs' \
    --error 'ksCf2ALX' \
    --state 'oAVKZfd0' \
    > test.out 2>&1
eval_tap $? 341 'PlatformAuthenticateSAMLV3Handler' test.out

#- 342 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'e7bv1zZ9' \
    --payload 'A4TBsXhV' \
    > test.out 2>&1
eval_tap $? 342 'LoginSSOClient' test.out

#- 343 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '94zed5X1' \
    > test.out 2>&1
eval_tap $? 343 'LogoutSSOClient' test.out

#- 344 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'qIkTgOFQ' \
    --code 'yYSdVS7u' \
    > test.out 2>&1
eval_tap $? 344 'RequestTargetTokenResponseV3' test.out

#- 345 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'dt1jsNV5' \
    --upgradeSuccessToken 'JAVDxBY9' \
    > test.out 2>&1
eval_tap $? 345 'UpgradeAndAuthenticateForwardV3' test.out

#- 346 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '41' \
    --namespace 'l8BtNQSr' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 346 'AdminListInvitationHistoriesV4' test.out

#- 347 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '1BsBEnmV' \
    > test.out 2>&1
eval_tap $? 347 'AdminGetDevicesByUserV4' test.out

#- 348 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'BG856Cfi' \
    --endDate '6kSxKUUg' \
    --limit '23' \
    --offset '64' \
    --startDate 'W3lfpyqW' \
    > test.out 2>&1
eval_tap $? 348 'AdminGetBannedDevicesV4' test.out

#- 349 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OKkuQiDG' \
    > test.out 2>&1
eval_tap $? 349 'AdminGetUserDeviceBansV4' test.out

#- 350 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "WXDnjJz1", "deviceId": "aJTAK0WO", "deviceType": "n4FIdREP", "enabled": false, "endDate": "9nzYiPxm", "ext": {"zzUY12KP": {}, "9xbGdfV7": {}, "60FKxGhL": {}}, "reason": "3IBwEZKY"}' \
    > test.out 2>&1
eval_tap $? 350 'AdminBanDeviceV4' test.out

#- 351 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'eXKighgL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 351 'AdminGetDeviceBanV4' test.out

#- 352 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'QwDhL0t1' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 352 'AdminUpdateDeviceBanV4' test.out

#- 353 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'sAenbvTd' \
    --startDate 'uQXfzjiB' \
    --deviceType 'tTxeZ8v9' \
    > test.out 2>&1
eval_tap $? 353 'AdminGenerateReportV4' test.out

#- 354 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'AdminGetDeviceTypesV4' test.out

#- 355 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'eLkfgc41' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'AdminGetDeviceBansV4' test.out

#- 356 AdminDecryptDeviceV4
eval_tap 0 356 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 357 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'rS6YfjJZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'AdminUnbanDeviceV4' test.out

#- 358 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'xu0DqZvJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'AdminGetUsersByDeviceV4' test.out

#- 359 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 359 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 360 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 360 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 361 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "JaKMJ2As", "policyId": "940LvS4f", "policyVersionId": "M9Amx1JJ"}, {"isAccepted": false, "localizedPolicyVersionId": "myMMU1iM", "policyId": "TYX794H9", "policyVersionId": "HR3Px42A"}, {"isAccepted": false, "localizedPolicyVersionId": "jRqSGpn1", "policyId": "hUEjeOIs", "policyVersionId": "hLCtyttM"}], "count": 34, "userInfo": {"country": "wXo5dGe5"}}' \
    > test.out 2>&1
eval_tap $? 361 'AdminCreateTestUsersV4' test.out

#- 362 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "c2eJmfht", "policyId": "oTSrSPZq", "policyVersionId": "fNlbO36f"}, {"isAccepted": false, "localizedPolicyVersionId": "3Mc1KFfV", "policyId": "gVIXLKGc", "policyVersionId": "aB530Cs0"}, {"isAccepted": false, "localizedPolicyVersionId": "0VbXwb7c", "policyId": "GaK32wf7", "policyVersionId": "g1gtrHd3"}], "authType": "EMAILPASSWD", "code": "UfHop1WD", "country": "tmI7uAlf", "dateOfBirth": "QIixH2bc", "displayName": "nnXLT5NS", "emailAddress": "CwWoewe5", "password": "r7J7XQ12", "passwordMD5Sum": "oi7YqIvJ", "reachMinimumAge": true, "uniqueDisplayName": "k29ANxqF", "username": "wujiSJ1t"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminCreateUserV4' test.out

#- 363 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["kVeWf2Im", "SIbkGWra", "Fs6zDvTw"]}' \
    > test.out 2>&1
eval_tap $? 363 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 364 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["NEaBeKQM", "TnAUFWqg", "UjqTD0h0"]}' \
    > test.out 2>&1
eval_tap $? 364 'AdminBulkCheckValidUserIDV4' test.out

#- 365 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'BmaWoIU6' \
    --body '{"avatarUrl": "67xXwozw", "country": "RivIBlQP", "dateOfBirth": "YSBQgqZh", "displayName": "D4xmsG71", "languageTag": "OeTmcYtP", "skipLoginQueue": true, "tags": ["gGcngG0N", "ZsSpmCE3", "kWL32qMQ"], "uniqueDisplayName": "2DWcZTgb", "userName": "hpFPC19E"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminUpdateUserV4' test.out

#- 366 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'YNm9QyRb' \
    --body '{"code": "Qikipk1s", "emailAddress": "2ahvnVTH"}' \
    > test.out 2>&1
eval_tap $? 366 'AdminUpdateUserEmailAddressV4' test.out

#- 367 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JJ0j1BoU' \
    --body '{"factor": "VouAzhJh", "mfaToken": "GpdegW1y"}' \
    > test.out 2>&1
eval_tap $? 367 'AdminDisableUserMFAV4' test.out

#- 368 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId '4UdQSk3t' \
    > test.out 2>&1
eval_tap $? 368 'AdminGetUserMFAStatusV4' test.out

#- 369 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '73z6CS2P' \
    > test.out 2>&1
eval_tap $? 369 'AdminListUserRolesV4' test.out

#- 370 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'eagQjp2R' \
    --body '{"assignedNamespaces": ["T8TYJl5x", "5pA7pPNp", "BQUSwXqp"], "roleId": "RBF89Gmt"}' \
    > test.out 2>&1
eval_tap $? 370 'AdminUpdateUserRoleV4' test.out

#- 371 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'dLqgGCTM' \
    --body '{"assignedNamespaces": ["MluPYUPp", "mRWkJrSo", "aHsoC4Fi"], "roleId": "BSVbrksG"}' \
    > test.out 2>&1
eval_tap $? 371 'AdminAddUserRoleV4' test.out

#- 372 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UY70bHfr' \
    --body '{"assignedNamespaces": ["pZAwj0L2", "BMasE5sv", "MYYC1YtG"], "roleId": "JHQkTcXc"}' \
    > test.out 2>&1
eval_tap $? 372 'AdminRemoveUserRoleV4' test.out

#- 373 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '48' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 373 'AdminGetRolesV4' test.out

#- 374 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "k4sLWtNy"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminCreateRoleV4' test.out

#- 375 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'wmFExeET' \
    > test.out 2>&1
eval_tap $? 375 'AdminGetRoleV4' test.out

#- 376 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'p56ovkqh' \
    > test.out 2>&1
eval_tap $? 376 'AdminDeleteRoleV4' test.out

#- 377 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'taDR4Gm4' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "pjWeGgVk"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminUpdateRoleV4' test.out

#- 378 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'UhFUPyuk' \
    --body '{"permissions": [{"action": 100, "resource": "NJfWjY5J", "schedAction": 9, "schedCron": "oWuZKfkr", "schedRange": ["jEBs8AK2", "TYzeeact", "As4mN86q"]}, {"action": 41, "resource": "VLO3HkwE", "schedAction": 11, "schedCron": "lY3jw2CP", "schedRange": ["WBePKL3f", "F2eISVVt", "axmtjsmr"]}, {"action": 43, "resource": "BbCNh03V", "schedAction": 0, "schedCron": "4eNSrGLq", "schedRange": ["kAtkkmQL", "HEyc3J5D", "6YJDoGnL"]}]}' \
    > test.out 2>&1
eval_tap $? 378 'AdminUpdateRolePermissionsV4' test.out

#- 379 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'QzFAzbxx' \
    --body '{"permissions": [{"action": 45, "resource": "zLJTo4yH", "schedAction": 11, "schedCron": "14bpeFqh", "schedRange": ["NoiJPVvD", "8GSbWVnx", "kdxD2Oo6"]}, {"action": 55, "resource": "70nStQ2Z", "schedAction": 66, "schedCron": "kSO7Kh9k", "schedRange": ["9uhc3r6I", "DX0qOcji", "mICvBLty"]}, {"action": 94, "resource": "u0Za7vEd", "schedAction": 49, "schedCron": "rY6ncNoZ", "schedRange": ["jzYoTenU", "wPjexvM9", "KhlCTQDK"]}]}' \
    > test.out 2>&1
eval_tap $? 379 'AdminAddRolePermissionsV4' test.out

#- 380 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'sNoHgLDA' \
    --body '["6wnspXvb", "0BBXSBxS", "bWNaVPnr"]' \
    > test.out 2>&1
eval_tap $? 380 'AdminDeleteRolePermissionsV4' test.out

#- 381 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'Owb2SVYn' \
    --after '6oocUivP' \
    --before 'fSBAOVCX' \
    --limit '77' \
    > test.out 2>&1
eval_tap $? 381 'AdminListAssignedUsersV4' test.out

#- 382 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId '91Po8UMr' \
    --body '{"assignedNamespaces": ["tQxtBcXB", "lgKVhIBL", "cR28r9x5"], "namespace": "hwrxlMtr", "userId": "VJKlMtNu"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminAssignUserToRoleV4' test.out

#- 383 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'LPALSvkO' \
    --body '{"namespace": "rMVEQdH8", "userId": "2aRePTnM"}' \
    > test.out 2>&1
eval_tap $? 383 'AdminRevokeUserFromRoleV4' test.out

#- 384 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["qqNqkyUg", "ivLiM2lm", "Xaifl2tu"], "emailAddresses": ["PXn8DpjQ", "0jF3b8hd", "3P2Ar2aL"], "isAdmin": false, "isNewStudio": false, "languageTag": "Wi0w2Meq", "namespace": "t1oUWRpd", "roleId": "zJxrVwIg"}' \
    > test.out 2>&1
eval_tap $? 384 'AdminInviteUserNewV4' test.out

#- 385 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "OOi2ufrt", "country": "xHw6FkJ2", "dateOfBirth": "gWsMic5T", "displayName": "Q2aB2kYP", "languageTag": "MIiMAYRD", "skipLoginQueue": false, "tags": ["lM84TRHZ", "aHlp8zpI", "LkNQ3zQ7"], "uniqueDisplayName": "4AmVuZMK", "userName": "xCL5Ss93"}' \
    > test.out 2>&1
eval_tap $? 385 'AdminUpdateMyUserV4' test.out

#- 386 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "wtmXUYPG", "mfaToken": "eNwsrqMY"}' \
    > test.out 2>&1
eval_tap $? 386 'AdminDisableMyAuthenticatorV4' test.out

#- 387 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'XOMY8j19' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableMyAuthenticatorV4' test.out

#- 388 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 388 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 389 AdminGetMyBackupCodesV4
eval_tap 0 389 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 390 AdminGenerateMyBackupCodesV4
eval_tap 0 390 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 391 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "x9sHc9S0", "mfaToken": "5Vh0PeVf"}' \
    > test.out 2>&1
eval_tap $? 391 'AdminDisableMyBackupCodesV4' test.out

#- 392 AdminDownloadMyBackupCodesV4
eval_tap 0 392 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 393 AdminEnableMyBackupCodesV4
eval_tap 0 393 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 394 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'JNhDkLbV' \
    > test.out 2>&1
eval_tap $? 394 'AdminGetBackupCodesV4' test.out

#- 395 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'hmxuCPf4' \
    > test.out 2>&1
eval_tap $? 395 'AdminGenerateBackupCodesV4' test.out

#- 396 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'oazQiU8t' \
    > test.out 2>&1
eval_tap $? 396 'AdminEnableBackupCodesV4' test.out

#- 397 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'uNfez4w5' \
    --factor 'T1syxtnH' \
    > test.out 2>&1
eval_tap $? 397 'AdminChallengeMyMFAV4' test.out

#- 398 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'MwlLOhCC' \
    --languageTag 'XZIDzJ2M' \
    > test.out 2>&1
eval_tap $? 398 'AdminSendMyMFAEmailCodeV4' test.out

#- 399 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "emRO2xN8", "mfaToken": "LcZxWAlZ"}' \
    > test.out 2>&1
eval_tap $? 399 'AdminDisableMyEmailV4' test.out

#- 400 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'z7hXG39i' \
    > test.out 2>&1
eval_tap $? 400 'AdminEnableMyEmailV4' test.out

#- 401 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 401 'AdminGetMyEnabledFactorsV4' test.out

#- 402 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'ZRwaM4ly' \
    > test.out 2>&1
eval_tap $? 402 'AdminMakeFactorMyDefaultV4' test.out

#- 403 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 403 'AdminGetMyOwnMFAStatusV4' test.out

#- 404 AdminGetMyMFAStatusV4
eval_tap 0 404 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 405 AdminInviteUserV4
eval_tap 0 405 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 406 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'lFPbopBZ' \
    --linkingToken '6u5M7MEu' \
    --password 'bUfFiNIs' \
    --username 'eGI2UERO' \
    > test.out 2>&1
eval_tap $? 406 'AuthenticationWithPlatformLinkV4' test.out

#- 407 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'JlYwulVG' \
    --extendExp 'true' \
    --linkingToken 'zYCPKXdG' \
    > test.out 2>&1
eval_tap $? 407 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 408 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'qMrKzRBP' \
    --factor 'ZmfZtDVr' \
    --mfaToken 'ovJEZguP' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 408 'Verify2faCodeV4' test.out

#- 409 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'iZufhewc' \
    --codeChallenge '5wgjM2Y9' \
    --codeChallengeMethod 'plain' \
    --additionalData 'WZgRT1r6' \
    --clientId 'tUMaNcwm' \
    --createHeadless 'false' \
    --deviceId 'S9wc32Ln' \
    --macAddress 'svA1RqHs' \
    --platformToken 'gpCVpMXF' \
    --serviceLabel '0.3003321694338076' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 409 'PlatformTokenGrantV4' test.out

#- 410 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'WY2lV8nn' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'RwFy6QnQ' \
    --simultaneousTicket 'R9aMMqRR' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'VzXxBnOL' \
    > test.out 2>&1
eval_tap $? 410 'SimultaneousLoginV4' test.out

#- 411 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'DLgnadGp' \
    --codeChallengeMethod 'S256' \
    --additionalData '1Ptp8TWB' \
    --clientId 'Oyszbcc0' \
    --clientSecret 'QT3222xz' \
    --code 'Mh9HNR8Y' \
    --codeVerifier 'vKm33ecB' \
    --extendNamespace 'oGVt0oNq' \
    --extendExp 'true' \
    --loginQueueTicket 'CeAyxgMm' \
    --password 'yZwuIqzA' \
    --redirectUri '9YBSmPHN' \
    --refreshToken '75uPzoH4' \
    --scope '87Dix0iV' \
    --username 'cfQdnLKE' \
    --grantType 'urn:ietf:params:oauth:grant-type:login_queue_ticket' \
    > test.out 2>&1
eval_tap $? 411 'TokenGrantV4' test.out

#- 412 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData '4nwoeuYP' \
    --code 'yWO5xNHA' \
    > test.out 2>&1
eval_tap $? 412 'RequestTargetTokenResponseV4' test.out

#- 413 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'fxX1uhD2' \
    --rawPUID 'false' \
    --body '{"pidType": "yHH8Ifeo", "platformUserIds": ["r2DcpDen", "HAFDyVfm", "EabazXS0"]}' \
    > test.out 2>&1
eval_tap $? 413 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 414 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId '7cPBI4Y0' \
    --platformUserId 'CkT7nfhs' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetUserByPlatformUserIDV4' test.out

#- 415 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "yG9Upr1p", "policyId": "0bgCSjQH", "policyVersionId": "qMwQH1iT"}, {"isAccepted": false, "localizedPolicyVersionId": "fotGbC7e", "policyId": "8k7Owbmr", "policyVersionId": "gyEYFvX6"}, {"isAccepted": false, "localizedPolicyVersionId": "ElzR7Fn5", "policyId": "ImRhyBGR", "policyVersionId": "UdvffC9I"}], "authType": "EMAILPASSWD", "country": "iXIEEYbE", "dateOfBirth": "wbPo0Wg7", "displayName": "iZwJBK7j", "emailAddress": "meah3Jbq", "password": "Qp0uvru5", "passwordMD5Sum": "YHPR9Kka", "uniqueDisplayName": "GsyfZJCw", "username": "1jn4o45S", "verified": false}' \
    > test.out 2>&1
eval_tap $? 415 'PublicCreateTestUserV4' test.out

#- 416 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "JLvullMm", "policyId": "mNQ8ei2o", "policyVersionId": "kDYcmHVC"}, {"isAccepted": true, "localizedPolicyVersionId": "zxUpfYKf", "policyId": "ZWTs59oH", "policyVersionId": "soz23LW6"}, {"isAccepted": true, "localizedPolicyVersionId": "7ZBxIyqi", "policyId": "LPNS0EXd", "policyVersionId": "E8q8aitW"}], "authType": "EMAILPASSWD", "code": "lXgiqMTn", "country": "Xa24fRd6", "dateOfBirth": "3ZHjVcPl", "displayName": "9DLmtMGr", "emailAddress": "oMClLY6i", "password": "aE4O68EA", "passwordMD5Sum": "2dE0Oo0u", "reachMinimumAge": true, "uniqueDisplayName": "bMDjsqO9", "username": "PaaA7AwR"}' \
    > test.out 2>&1
eval_tap $? 416 'PublicCreateUserV4' test.out

#- 417 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'mw0mCFan' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "EjfTXIG7", "policyId": "j5kuWW34", "policyVersionId": "xMMxSYGu"}, {"isAccepted": true, "localizedPolicyVersionId": "YzvnKkzh", "policyId": "vBMU7iRR", "policyVersionId": "e46xRr59"}, {"isAccepted": true, "localizedPolicyVersionId": "vdgP9eJx", "policyId": "V9LcAFDs", "policyVersionId": "SwNhlquQ"}], "authType": "EMAILPASSWD", "code": "Nvsb8bzT", "country": "PtlDQbJn", "dateOfBirth": "zzOZBRvv", "displayName": "db5plYRM", "emailAddress": "QMpUQJ3m", "password": "NX8g5FDR", "passwordMD5Sum": "skoRNRNt", "reachMinimumAge": false, "uniqueDisplayName": "Bhd7XKlh", "username": "KN1yNLHF"}' \
    > test.out 2>&1
eval_tap $? 417 'CreateUserFromInvitationV4' test.out

#- 418 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "xQd2HR8d", "country": "IOOWTbJx", "dateOfBirth": "FzMaIbTN", "displayName": "btNOTEEx", "languageTag": "Ue4qgRC0", "uniqueDisplayName": "MoY65yMV", "userName": "ywAYbLvu"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicUpdateUserV4' test.out

#- 419 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vy3TDxxV", "emailAddress": "O7FXhNgQ"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicUpdateUserEmailAddressV4' test.out

#- 420 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Fntiddwt", "country": "FX4NN3Fc", "dateOfBirth": "Q7qmKIQl", "displayName": "G3tQTLdT", "emailAddress": "AYv7lLaY", "password": "LFyHVzOu", "reachMinimumAge": true, "uniqueDisplayName": "mJ6tW1Ix", "username": "ZUrWGxMO", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 420 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 421 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "RDsHJsfr", "displayName": "CJCJBfym", "emailAddress": "FrQ2Burt", "password": "6Oe1myMS", "uniqueDisplayName": "VDw118Eb", "username": "6ZCn66DB"}' \
    > test.out 2>&1
eval_tap $? 421 'PublicUpgradeHeadlessAccountV4' test.out

#- 422 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "CWSmz6lZ", "mfaToken": "aYSAH87v"}' \
    > test.out 2>&1
eval_tap $? 422 'PublicDisableMyAuthenticatorV4' test.out

#- 423 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'fyDXDJOU' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableMyAuthenticatorV4' test.out

#- 424 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 424 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 425 PublicGetMyBackupCodesV4
eval_tap 0 425 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 426 PublicGenerateMyBackupCodesV4
eval_tap 0 426 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 427 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "Om3461pb", "mfaToken": "Iiql8Z1A"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyBackupCodesV4' test.out

#- 428 PublicDownloadMyBackupCodesV4
eval_tap 0 428 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 429 PublicEnableMyBackupCodesV4
eval_tap 0 429 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 430 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'VJnbZxBp' \
    > test.out 2>&1
eval_tap $? 430 'PublicGetBackupCodesV4' test.out

#- 431 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'xKRjpFGK' \
    > test.out 2>&1
eval_tap $? 431 'PublicGenerateBackupCodesV4' test.out

#- 432 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'ChB1C5LO' \
    > test.out 2>&1
eval_tap $? 432 'PublicEnableBackupCodesV4' test.out

#- 433 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'I8AvcsCN' \
    --factor 'KZ1WdHuX' \
    > test.out 2>&1
eval_tap $? 433 'PublicChallengeMyMFAV4' test.out

#- 434 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 434 'PublicRemoveTrustedDeviceV4' test.out

#- 435 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'hCq0vkB1' \
    --languageTag 'V2TFXhge' \
    > test.out 2>&1
eval_tap $? 435 'PublicSendMyMFAEmailCodeV4' test.out

#- 436 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "qu0gnKvf", "mfaToken": "v5uipHMJ"}' \
    > test.out 2>&1
eval_tap $? 436 'PublicDisableMyEmailV4' test.out

#- 437 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'CrajBh7r' \
    > test.out 2>&1
eval_tap $? 437 'PublicEnableMyEmailV4' test.out

#- 438 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 438 'PublicGetMyEnabledFactorsV4' test.out

#- 439 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'bjdAKhuL' \
    > test.out 2>&1
eval_tap $? 439 'PublicMakeFactorMyDefaultV4' test.out

#- 440 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 440 'PublicGetMyOwnMFAStatusV4' test.out

#- 441 PublicGetMyMFAStatusV4
eval_tap 0 441 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 442 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kDyLOYQ3' \
    > test.out 2>&1
eval_tap $? 442 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 443 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "MR9PNRAi", "emailAddress": "4poCnD62", "languageTag": "Y8jyO1XA", "namespace": "j8zXKblU", "namespaceDisplayName": "MzpZyBB2"}' \
    > test.out 2>&1
eval_tap $? 443 'PublicInviteUserV4' test.out

#- 444 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Zmomu4MZ", "policyId": "cXeCNkLH", "policyVersionId": "e6KPkned"}, {"isAccepted": false, "localizedPolicyVersionId": "5Et3J13O", "policyId": "0ytze6Sb", "policyVersionId": "1EE1iPP9"}, {"isAccepted": false, "localizedPolicyVersionId": "vYEqJhfN", "policyId": "cRjgdKQQ", "policyVersionId": "UWeInJtf"}], "code": "TDBqtpLD", "country": "mclRf6Kd", "dateOfBirth": "ucBZRxkd", "displayName": "e1Ki4pMs", "emailAddress": "M6qLFB3X", "password": "W3WBxZyC", "reachMinimumAge": false, "uniqueDisplayName": "shOnt5KO", "username": "f0OgZGVE", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 444 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE