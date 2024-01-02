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
echo "1..367"

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

#- 108 AdminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    > test.out 2>&1
eval_tap $? 108 'AdminGetInputValidations' test.out

#- 109 AdminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "iiir9kIC", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["zCsDQpCw", "DcEf6UwG", "FhlBEpGS"], "preferRegex": true, "regex": "NPcHvQ1r"}, "blockedWord": ["RUEgrIOm", "qP5FU0Yw", "FCLF0fHa"], "description": [{"language": "jfHLPZj9", "message": ["RYbX1Sgf", "CiU0w6iP", "JDm8nVCV"]}, {"language": "NrPQJlFs", "message": ["cGg0X2VS", "tq0ef1kJ", "KGL3C9h0"]}, {"language": "8bQaDMBB", "message": ["29K3yEgS", "mjqpzMmG", "XoaF0gkI"]}], "isCustomRegex": false, "letterCase": "1PSdCa9o", "maxLength": 99, "maxRepeatingAlphaNum": 41, "maxRepeatingSpecialCharacter": 67, "minCharType": 73, "minLength": 86, "regex": "OvAzkP4s", "specialCharacterLocation": "9sgEK5x0", "specialCharacters": ["zimgVaAd", "wWrdxpiM", "dOpTKmUy"]}}, {"field": "XhoZEdAf", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["3jKABhaP", "aooCBrVu", "LBCD100m"], "preferRegex": true, "regex": "vZrG5TeM"}, "blockedWord": ["g0hexPbp", "L003LxbI", "mNUNy2Pz"], "description": [{"language": "cJjSgvHI", "message": ["MNceyK8s", "ZvJN7hOp", "jtXLNMxz"]}, {"language": "RfpF9jkX", "message": ["f5cHig3T", "uKhuS6uW", "cr9EKysr"]}, {"language": "7MD11o2k", "message": ["FHQmlSoP", "zwcIUx39", "hLRDlCrn"]}], "isCustomRegex": true, "letterCase": "YSR0EEHD", "maxLength": 54, "maxRepeatingAlphaNum": 64, "maxRepeatingSpecialCharacter": 75, "minCharType": 13, "minLength": 47, "regex": "qqc8WFOU", "specialCharacterLocation": "migDVjrG", "specialCharacters": ["IQc44EG9", "sbGAAIih", "mQu0EOEA"]}}, {"field": "SP3iv9gX", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["9R37EAHP", "ZF9BPArn", "MOLf96UF"], "preferRegex": true, "regex": "DNG4MkNa"}, "blockedWord": ["795QEP6W", "vFks4qiE", "HW0U22m4"], "description": [{"language": "upPmGxu2", "message": ["FRuxNBoP", "bNxWN29u", "jdwQJEe3"]}, {"language": "hJOH3Uuc", "message": ["fH3S2dSF", "gQvHWIi3", "8YTJsDW4"]}, {"language": "Az1lDOwi", "message": ["qbb0D9RR", "6y68BtzZ", "1eic1HSh"]}], "isCustomRegex": false, "letterCase": "XRiGyXKG", "maxLength": 64, "maxRepeatingAlphaNum": 58, "maxRepeatingSpecialCharacter": 60, "minCharType": 49, "minLength": 73, "regex": "kdz1M27Y", "specialCharacterLocation": "8B774JQL", "specialCharacters": ["O33r2IKd", "maNSIrEf", "oB1TTveT"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'Wcod6hBA' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'rxNjWiqv' \
    --before 'QlpFEJgo' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 111 'ListAdminsV3' test.out

#- 112 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminGetAgeRestrictionStatusV3' test.out

#- 113 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 18, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'aOnhx5H7' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 93}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'sgpRlAg7' \
    --limit '48' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "pqTpJSEU", "comment": "gDZqJvo8", "endDate": "ZyTIa5mN", "reason": "Y8FkqqAD", "skipNotif": false, "userIds": ["gcjvCGV3", "PKLxKy9J", "ibufDveg"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "Jg7vzMBO", "userId": "4mIAPON0"}, {"banId": "7wXpmiBB", "userId": "G3MOQcvz"}, {"banId": "IczAPcoD", "userId": "f6OxqoIz"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUnbanUserBulkV3' test.out

#- 119 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'AdminGetBansTypeWithNamespaceV3' test.out

#- 120 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'WXhouixT' \
    --clientName 'DmcPDenC' \
    --clientType 'ww7OSwTM' \
    --limit '29' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Cw6LDZyM", "WhcmiARx", "BlMcOuxA"], "baseUri": "beD2hrrY", "clientId": "wZKhLEha", "clientName": "jsMIkpf9", "clientPermissions": [{"action": 44, "resource": "OLEi1JTH", "schedAction": 56, "schedCron": "oDOVujmN", "schedRange": ["EIB8DjR3", "weHkkVpP", "34nIGDtt"]}, {"action": 31, "resource": "pq4WIy0z", "schedAction": 9, "schedCron": "Fibi0Hn9", "schedRange": ["9ajahtPP", "P89T2cgX", "VKZwDvSH"]}, {"action": 99, "resource": "hfeDQ5bt", "schedAction": 0, "schedCron": "Ugl3bZQL", "schedRange": ["4wASKPYK", "mGRonKYt", "XCbcr9JC"]}], "clientPlatform": "vzfS2vwK", "deletable": true, "description": "3OgUMnwp", "namespace": "KuKG5INB", "oauthAccessTokenExpiration": 33, "oauthAccessTokenExpirationTimeUnit": "RvJctnP6", "oauthClientType": "P1hLYwDq", "oauthRefreshTokenExpiration": 61, "oauthRefreshTokenExpirationTimeUnit": "dG7o90n6", "parentNamespace": "ZzXWtEr9", "redirectUri": "tK82XLKE", "scopes": ["f24XvIWF", "QEobx7E2", "tQM9zfQp"], "secret": "1K9Mb1bM", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'jrUa9ucN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'WeqSB73x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'jGHNQnrR' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["8FnVKSBH", "8Ias7T4u", "EmmmneLB"], "baseUri": "tj29yMNd", "clientName": "NOrCrcwm", "clientPermissions": [{"action": 85, "resource": "3ePyprqW", "schedAction": 70, "schedCron": "kuzBxwtZ", "schedRange": ["C4o5JHMB", "f8u53VCb", "5P6nq4pN"]}, {"action": 58, "resource": "m21724kW", "schedAction": 87, "schedCron": "0XeY87B1", "schedRange": ["i5mpMwCW", "fS5k1CPN", "lLu7lqTE"]}, {"action": 22, "resource": "l2JBEy4e", "schedAction": 50, "schedCron": "SKRuOea4", "schedRange": ["3nX3jAAz", "NosTr3kY", "881TFXVi"]}], "clientPlatform": "d3kHDHpC", "deletable": true, "description": "QYf4hp9J", "namespace": "34hFhJwZ", "oauthAccessTokenExpiration": 36, "oauthAccessTokenExpirationTimeUnit": "rNIo6hur", "oauthRefreshTokenExpiration": 64, "oauthRefreshTokenExpirationTimeUnit": "ISFVlTQB", "redirectUri": "HLkryqzr", "scopes": ["Dd8sY4tm", "6ING4gmj", "KyBEYKfT"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '6wJi9f5R' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 20, "resource": "ltKsWdvg"}, {"action": 51, "resource": "Qw2qtYoI"}, {"action": 0, "resource": "JHVAlkLl"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'hf3HTLZQ' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 52, "resource": "jVEQx9CV"}, {"action": 37, "resource": "QPAHn25T"}, {"action": 89, "resource": "DJr2WxWs"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '10' \
    --clientId 'B8VolkaV' \
    --namespace $AB_NAMESPACE \
    --resource 'IIgrh7NM' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'true' \
    > test.out 2>&1
eval_tap $? 128 'AdminGetCountryListV3' test.out

#- 129 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'AdminGetCountryBlacklistV3' test.out

#- 130 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["8rrWaEKm", "Yw5gKcij", "kzoFSWiF"]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminAddCountryBlacklistV3' test.out

#- 131 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 131 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 132 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 132 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 133 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kYhzhVy3' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'i9O8DPnJ' \
    --body '{"ACSURL": "IBgjawn2", "AWSCognitoRegion": "UvDFMl85", "AWSCognitoUserPool": "SmH6GTud", "AllowedClients": ["CADKSxoH", "ujPwviSf", "ls4yhthW"], "AppId": "WO1HUW1z", "AuthorizationEndpoint": "jd9UTwlK", "ClientId": "MQlV8jOv", "Environment": "wX2nTQYQ", "FederationMetadataURL": "IegkYH1c", "GenericOauthFlow": false, "IsActive": true, "Issuer": "GEUb5rhE", "JWKSEndpoint": "yk0zvg6u", "KeyID": "Ai9aLg4a", "NetflixCertificates": {"encryptedPrivateKey": "1hZlSs3R", "encryptedPrivateKeyName": "6oBeZiKZ", "publicCertificate": "l002w4mw", "publicCertificateName": "TpozfhQd", "rootCertificate": "XkFsxOYq", "rootCertificateName": "gnNTcrok"}, "OrganizationId": "RuGjBz7P", "PlatformName": "tH1hcFyX", "RedirectUri": "UTnZ0QZy", "RegisteredDomains": [{"affectedClientIDs": ["FIqbbjZZ", "by1jgc2s", "4IfjJjsy"], "domain": "ETb0g4Uh", "namespaces": ["ZFQbG3X4", "BGGYVesL", "z9pdxXgQ"], "roleId": "89ayPwWe"}, {"affectedClientIDs": ["ulcEGzMn", "PauShvyg", "corfCYww"], "domain": "17oaWmxK", "namespaces": ["tDGzWSG9", "rSMw2ajU", "oQ83OhLH"], "roleId": "7F04xL5h"}, {"affectedClientIDs": ["YL4N9Xag", "T3yao9PX", "MxyrISri"], "domain": "dAwlGst1", "namespaces": ["jOfTx4Yv", "1uZpMIUd", "uJrOa2Wd"], "roleId": "IzsUmYEg"}], "Secret": "y3TBAMBi", "TeamID": "tXk7ol2Z", "TokenAuthenticationType": "ggYXjSmC", "TokenClaimsMapping": {"PCsJRNTM": "2r7TOVlv", "OMPdTUNm": "6ckv4FFT", "BRLbLY4C": "WOhvvj19"}, "TokenEndpoint": "kzUjY9kh", "UserInfoEndpoint": "fxPoY3EP", "UserInfoHTTPMethod": "PLmtwE4c", "scopes": ["WbBxMYto", "kD3mkcLV", "G3gcXLVZ"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wrvbBSnI' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mP93srPt' \
    --body '{"ACSURL": "VoeocP36", "AWSCognitoRegion": "9kHJXLkx", "AWSCognitoUserPool": "cgUioGXt", "AllowedClients": ["zA7Z8ciW", "qLJyKtmg", "m6mFE9Hz"], "AppId": "fOXpw0jQ", "AuthorizationEndpoint": "ftgQ1IDe", "ClientId": "6W0JBr3Q", "Environment": "QiPTT7Gf", "FederationMetadataURL": "Q9kRTKET", "GenericOauthFlow": true, "IsActive": true, "Issuer": "tbLW2aqQ", "JWKSEndpoint": "FzwyxeLh", "KeyID": "sHLGNoAd", "NetflixCertificates": {"encryptedPrivateKey": "SwUSlMCX", "encryptedPrivateKeyName": "9dj3e2oA", "publicCertificate": "Lxf3whb1", "publicCertificateName": "JEBst06S", "rootCertificate": "PamvCmFP", "rootCertificateName": "WlOSES56"}, "OrganizationId": "Qa5gw9Z0", "PlatformName": "9qZT9Ns3", "RedirectUri": "Y09rQJgu", "RegisteredDomains": [{"affectedClientIDs": ["tcm3GVBi", "9M9rEfTc", "dJwiemZG"], "domain": "0kuSnzKW", "namespaces": ["CE5PnBfq", "MXegCE3y", "McnBtEqt"], "roleId": "dTVgrf6s"}, {"affectedClientIDs": ["NkT0Mppl", "iCfSPCcL", "7bP2vFm3"], "domain": "pWPBDoIa", "namespaces": ["kDDUNAEy", "B1NgCXUP", "qqzvwBpJ"], "roleId": "zUAfMZDg"}, {"affectedClientIDs": ["cezIyR3n", "Qteyg45m", "GkHDotTs"], "domain": "jVoZK4jI", "namespaces": ["tqLNxUcn", "juBy17EG", "dutb1lL8"], "roleId": "9zlPuCM8"}], "Secret": "1FGoeZkt", "TeamID": "BD6BgFEu", "TokenAuthenticationType": "ee5e81pu", "TokenClaimsMapping": {"9L5kHSL6": "DwXgsN5L", "7qy7SZZ1": "VzJVHyaJ", "Ys3fK6uq": "ef5wlbnI"}, "TokenEndpoint": "kYc0tDVW", "UserInfoEndpoint": "kgZNytLC", "UserInfoHTTPMethod": "iMjokuw4", "scopes": ["h2e2J3fg", "9DFBxEcE", "LitCMC7T"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EJuwgxfl' \
    --body '{"affectedClientIDs": ["8YuduoT4", "hRUJGlcV", "W9fV73FK"], "assignedNamespaces": ["Kn4HTsTU", "iMNymCJZ", "GDkrof3i"], "domain": "gIckpR4n", "roleId": "T2CoCNCH"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XyhZs2gU' \
    --body '{"domain": "QsL8DUb1"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'F1SM8C1C' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'H7qDLw88' \
    --body '{"acsUrl": "t02ajc3Z", "apiKey": "tcbSONpl", "appId": "XR872qIn", "federationMetadataUrl": "OjcIEtwL", "isActive": false, "redirectUri": "JcpaqAOg", "secret": "PQ2W9ex5", "ssoUrl": "kvVUWx2Q"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7L4nZ0ZY' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'wzDJj5ek' \
    --body '{"acsUrl": "CvPp2XHq", "apiKey": "LKLyHBwh", "appId": "rDuL7Vi9", "federationMetadataUrl": "SI42kG8H", "isActive": true, "redirectUri": "F5zBBJla", "secret": "wOZgQqlH", "ssoUrl": "6ilzEPn7"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pNRxx5r3' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["SodKIRYs", "dxNIZLA0", "5dfv74yu"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PlEUJJYx' \
    --platformUserId 'lmD3Uv4X' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ybuI2jU1' \
    --after '10' \
    --before '70' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'dvx379NI' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'f6kTs67c' \
    --body '{"bulkUserId": ["G0uXTUwb", "SZzmYHEb", "P4P9vA1b"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["OasjVbet", "JPRF47ZO", "imAgCuVd"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["eVdqOqCZ", "jfzRo2x8", "sGw3A7vg"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["nmDlNmUx", "30OxveW4", "vwplz8xT"], "isAdmin": false, "namespace": "1rnzOfHF", "roles": ["X19vQksV", "uvDmvSdd", "8ujfK54M"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '55' \
    --platformUserId 'poJPuJkK' \
    --platformId 'aOBfw6WC' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'OwEuWyGG' \
    --endDate '7lPePHor' \
    --includeTotal 'true' \
    --limit '54' \
    --offset '8' \
    --platformBy 'LEefDloY' \
    --platformId 'nzjY1jq8' \
    --query 'DwbG2O7g' \
    --startDate '44W8yK0F' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["0poM44FG", "71CV6Uw7", "zMc9ZHHb"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'x95ztVKP' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '4AEDoiu2' \
    --body '{"avatarUrl": "UHSKlE9P", "country": "uW9o3nfk", "dateOfBirth": "m7Iu3FzC", "displayName": "Tj6NbVPg", "languageTag": "p03EJpKU", "userName": "zPVqlC9j"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'U1lWUcvh' \
    --activeOnly 'true' \
    --after '4tatcplj' \
    --before 'tPwROrMC' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'diGS3M2C' \
    --body '{"ban": "Y32DC9N6", "comment": "06nhrBYV", "endDate": "iyRvtYjA", "reason": "pfSrNwS9", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'rWCkkjym' \
    --namespace $AB_NAMESPACE \
    --userId 'pDVa6M6W' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HixnImYr' \
    --body '{"context": "eHCJevJL", "emailAddress": "CU4hV6Hm", "languageTag": "QbAyFwE0"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dRB3fDba' \
    --body '{"Code": "zByDviJc", "ContactType": "JP0k2v5P", "LanguageTag": "6oKfKPwo", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'nK1s1nsu' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Bj8UBQ7a' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '6mLCkQii' \
    --body '{"deletionDate": 60, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '2NzKK6Hn' \
    --body '{"code": "5oXBkZvD", "country": "1OaBKpL5", "dateOfBirth": "4wMfSHWW", "displayName": "Qa0zoBEU", "emailAddress": "oXV2MsBr", "password": "MMukbAkX", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '0nA0UcKl' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ytUTQxI0' \
    --after '0.3194565262348458' \
    --before '0.7175802279280182' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Zv4XtkS3' \
    --body '{"languageTag": "AfLJzD41", "newPassword": "YXFtQnON", "oldPassword": "zudNfQN5"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GxUvSHBP' \
    --body '{"Permissions": [{"Action": 7, "Resource": "rN1Jm8f5", "SchedAction": 87, "SchedCron": "9ps3ZDdZ", "SchedRange": ["1MtnVdhS", "0vHgobSP", "uFZHxmIa"]}, {"Action": 52, "Resource": "v5coJdOt", "SchedAction": 7, "SchedCron": "EAFcExCv", "SchedRange": ["a4A45ptx", "CBL2L4pE", "Y0UzMeQv"]}, {"Action": 55, "Resource": "LcMRq3C5", "SchedAction": 44, "SchedCron": "bqyajpAl", "SchedRange": ["1vbwElcu", "oC2GkJfD", "2G571ytx"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'huP15Xi1' \
    --body '{"Permissions": [{"Action": 63, "Resource": "DseFSn8y", "SchedAction": 62, "SchedCron": "zRS0KsdE", "SchedRange": ["IgC06cho", "rA59FSCQ", "uAaQhsft"]}, {"Action": 20, "Resource": "JBVMkOT6", "SchedAction": 4, "SchedCron": "myeXwYFT", "SchedRange": ["Sla4coda", "yOKth8VP", "AlxQtNBV"]}, {"Action": 9, "Resource": "wybKHXcO", "SchedAction": 63, "SchedCron": "WUdziRZ6", "SchedRange": ["mJZ38jee", "DxTFHgXc", "T8Qnth8i"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '3qLuxwXy' \
    --body '[{"Action": 62, "Resource": "PQNSOASa"}, {"Action": 43, "Resource": "2j4F2q0s"}, {"Action": 41, "Resource": "AHoWb77C"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '34' \
    --namespace $AB_NAMESPACE \
    --resource 'i5bWRe6w' \
    --userId '5Qvy5X8W' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gfNSftYe' \
    --after 'MsrZUVcS' \
    --before 'wDihnwqi' \
    --limit '56' \
    --platformId 'nqSqIAyH' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'BdaKYuJf' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'XbKdcybA' \
    --userId 'xJU36ae9' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'tNc6gvUA' \
    --userId 'RRpeJkfq' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'lvOoB1o1' \
    --skipConflict 'false' \
    --body '{"platformId": "8zgSXrAH", "platformUserId": "xzEJBn1R"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6d2wUDGu' \
    --userId 'eFDwfp23' \
    --body '{"platformNamespace": "nZf1S3BD"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'sU5WtkLW' \
    --userId 'DYe7564S' \
    --ticket '5ckvbxIM' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Fk4quj0h' \
    --userId 'wBDk4OMi' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 182 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A4QROlqA' \
    --userId 'rwbx52Hr' \
    --platformToken 'qLtprZzR' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 183 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'nq4YZTBM' \
    --userId 'PIz05J80' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserSinglePlatformAccount' test.out

#- 184 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JUzKWDbf' \
    --body '["HwJx2qTx", "1MDSlbEx", "BkpXy8mF"]' \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteUserRolesV3' test.out

#- 185 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '9W3XZNR2' \
    --body '[{"namespace": "YvZAnSLt", "roleId": "UcraoreE"}, {"namespace": "Y3ScJmd4", "roleId": "sKOmLe6p"}, {"namespace": "gRPaFyYU", "roleId": "u4ksy6oI"}]' \
    > test.out 2>&1
eval_tap $? 185 'AdminSaveUserRoleV3' test.out

#- 186 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'A4HLreIl' \
    --userId 'I2f1TtMP' \
    > test.out 2>&1
eval_tap $? 186 'AdminAddUserRoleV3' test.out

#- 187 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'DUfyuM8T' \
    --userId 'xFhn9b92' \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteUserRoleV3' test.out

#- 188 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ax8lxLY9' \
    --body '{"enabled": false, "reason": "bnA86XBT"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserStatusV3' test.out

#- 189 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'fgMV4btI' \
    --body '{"emailAddress": "hTsWxhyx", "password": "7hUBNwvj"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminTrustlyUpdateUserIdentity' test.out

#- 190 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'i3NMDnFo' \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 191 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'AyMsdFmL' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "2NqqelL6"}' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateClientSecretV3' test.out

#- 192 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '5p2TZDCG' \
    --before 'FiM8tZyq' \
    --isWildcard 'true' \
    --limit '38' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRolesV3' test.out

#- 193 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "HPifEVc6", "namespace": "e6dS7N1y", "userId": "NNeKzXOi"}, {"displayName": "RNb9yvol", "namespace": "8N1sFumR", "userId": "YCkYvmZQ"}, {"displayName": "nWwqm1Zr", "namespace": "pPuBt841", "userId": "T9EWIXQw"}], "members": [{"displayName": "pVhqlggS", "namespace": "lY7OqJXd", "userId": "9RdRLfRy"}, {"displayName": "5DhjzxNC", "namespace": "lCYiqbSm", "userId": "X5Laq953"}, {"displayName": "TRWnDaEO", "namespace": "gjCjbmgk", "userId": "mPQLlLep"}], "permissions": [{"action": 62, "resource": "MKtBMUi7", "schedAction": 88, "schedCron": "rEyNrelN", "schedRange": ["G0kQCb2H", "4SR67fey", "5SM2HUaV"]}, {"action": 92, "resource": "LylnuqgY", "schedAction": 84, "schedCron": "J9cC7Azt", "schedRange": ["zjZFitJX", "vxSDxpeH", "jV7w6EhC"]}, {"action": 6, "resource": "bwbpOEIN", "schedAction": 88, "schedCron": "FqKVE00L", "schedRange": ["ikV41fD5", "8D3QV5sL", "a10NqdFQ"]}], "roleName": "VxgI6oMs"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminCreateRoleV3' test.out

#- 194 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'DmOnLpcX' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleV3' test.out

#- 195 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'az1sWLVr' \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteRoleV3' test.out

#- 196 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'CpWMeHsG' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "F5XvXHp4"}' \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateRoleV3' test.out

#- 197 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'bPGJ0k7z' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRoleAdminStatusV3' test.out

#- 198 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'KOmRslka' \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateAdminRoleStatusV3' test.out

#- 199 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'nSCfqEoj' \
    > test.out 2>&1
eval_tap $? 199 'AdminRemoveRoleAdminV3' test.out

#- 200 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'Tcvblx11' \
    --after 'aJbwEydt' \
    --before 'jbnzwQYB' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetRoleManagersV3' test.out

#- 201 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'rQlbFfQp' \
    --body '{"managers": [{"displayName": "LA0VnrUR", "namespace": "Oq9HNRQW", "userId": "VO3QE19X"}, {"displayName": "mALJO7u4", "namespace": "8jMDYASJ", "userId": "F59nztNi"}, {"displayName": "sjk0GZHK", "namespace": "Dg588JBB", "userId": "A26DTmwD"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminAddRoleManagersV3' test.out

#- 202 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'aUzn7a47' \
    --body '{"managers": [{"displayName": "g9bvXbOS", "namespace": "ljqQaYTm", "userId": "Qozg03eT"}, {"displayName": "fQ7sgpyq", "namespace": "sVsJM1F8", "userId": "Yyo9AAUY"}, {"displayName": "fwMH9vxj", "namespace": "EYUhMlou", "userId": "FxgMmviP"}]}' \
    > test.out 2>&1
eval_tap $? 202 'AdminRemoveRoleManagersV3' test.out

#- 203 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '23m1kT9v' \
    --after 'ciSEGOF6' \
    --before 'U5moMzzq' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetRoleMembersV3' test.out

#- 204 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'VYxPQFtV' \
    --body '{"members": [{"displayName": "dlIgjYMg", "namespace": "dw4PuxcG", "userId": "0UOuL28d"}, {"displayName": "WOWdh0N7", "namespace": "GN1DDNiC", "userId": "sYIvukGR"}, {"displayName": "N3CPC9PG", "namespace": "OF83UQB6", "userId": "DzBQN1AI"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminAddRoleMembersV3' test.out

#- 205 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'XqIa4hxw' \
    --body '{"members": [{"displayName": "hqgLSSPH", "namespace": "LPZEa9np", "userId": "Ar8CcohJ"}, {"displayName": "Hnz3Ycri", "namespace": "e7GKEhQw", "userId": "bOSWuIKJ"}, {"displayName": "jQKysKHq", "namespace": "ft17ESVx", "userId": "18NW3pCn"}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminRemoveRoleMembersV3' test.out

#- 206 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'ReJUkKAp' \
    --body '{"permissions": [{"action": 73, "resource": "VkAqxKu8", "schedAction": 43, "schedCron": "lVB7rwXL", "schedRange": ["6K6M9r6V", "5gS9A3QX", "1j93tMnL"]}, {"action": 54, "resource": "YXZ5v6RU", "schedAction": 91, "schedCron": "fvLuHm1R", "schedRange": ["4Upw5hzD", "N14zewZ1", "CbGJ6TB4"]}, {"action": 61, "resource": "MlTmha6V", "schedAction": 17, "schedCron": "8EAqYmeN", "schedRange": ["9cDqavyT", "dOHnUR0D", "NmdcXQxB"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRolePermissionsV3' test.out

#- 207 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'cuLrBWLi' \
    --body '{"permissions": [{"action": 95, "resource": "6C3XVbau", "schedAction": 25, "schedCron": "n6MtoMdG", "schedRange": ["uHBgQdkJ", "ZcXSvJFK", "a9qxpQOe"]}, {"action": 37, "resource": "pBgckE6Y", "schedAction": 54, "schedCron": "V9873ba3", "schedRange": ["hua3fPhU", "3g2FA5eN", "djAPpiFt"]}, {"action": 2, "resource": "BKY0yiPw", "schedAction": 40, "schedCron": "XVR8Owub", "schedRange": ["5O2zBRHy", "Ve4TVPdJ", "RHpqEZDR"]}]}' \
    > test.out 2>&1
eval_tap $? 207 'AdminAddRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '4dG1zp5k' \
    --body '["I9UiDVzM", "GitpR6xA", "lT9OZYUa"]' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionsV3' test.out

#- 209 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '64' \
    --resource 'ESBlFZNl' \
    --roleId '0t8UIDyi' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRolePermissionV3' test.out

#- 210 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 210 'AdminGetMyUserV3' test.out

#- 211 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '1KkPWJOB' \
    --extendExp 'false' \
    --redirectUri 'RL3Ke12X' \
    --password 'JI7FJ2h7' \
    --requestId 'ygMWat7i' \
    --userName 'lfYd7ZGV' \
    > test.out 2>&1
eval_tap $? 211 'UserAuthenticationV3' test.out

#- 212 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'OYz5v3Ti' \
    --linkingToken 'OiFMKLDn' \
    --password 't6jX9W0R' \
    --username 'z7yS1JVq' \
    > test.out 2>&1
eval_tap $? 212 'AuthenticationWithPlatformLinkV3' test.out

#- 213 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'pr1ZS3ck' \
    --extendExp 'true' \
    --linkingToken 'nJYPxBTP' \
    > test.out 2>&1
eval_tap $? 213 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 214 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'ndcNQh16' \
    > test.out 2>&1
eval_tap $? 214 'RequestOneTimeLinkingCodeV3' test.out

#- 215 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'zWLXgANI' \
    > test.out 2>&1
eval_tap $? 215 'ValidateOneTimeLinkingCodeV3' test.out

#- 216 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'VdBAefvo' \
    --isTransient 'false' \
    --clientId 'VcIlywaa' \
    --oneTimeLinkCode 'HQggJJSU' \
    > test.out 2>&1
eval_tap $? 216 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 217 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 217 'GetCountryLocationV3' test.out

#- 218 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 218 'Logout' test.out

#- 219 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'jXAF8dOM' \
    > test.out 2>&1
eval_tap $? 219 'RequestTokenExchangeCodeV3' test.out

#- 220 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ezK45u6e' \
    --userId 'OYtaL5lb' \
    > test.out 2>&1
eval_tap $? 220 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 221 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PJToat0U' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUserV3' test.out

#- 222 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'hW1F2SZC' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'U4M2myP0' \
    --redirectUri 'dnjVLjk3' \
    --scope '7wkWI0Wn' \
    --state 'PVQpphcu' \
    --targetAuthPage '3E839dmC' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'pHKECpK2' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 222 'AuthorizeV3' test.out

#- 223 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'BmRieSi9' \
    > test.out 2>&1
eval_tap $? 223 'TokenIntrospectionV3' test.out

#- 224 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 224 'GetJWKSV3' test.out

#- 225 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '8JQCoue5' \
    --factor 'LEBZ1iOM' \
    --mfaToken 'veUerDGK' \
    > test.out 2>&1
eval_tap $? 225 'SendMFAAuthenticationCode' test.out

#- 226 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'WhX74AkM' \
    --mfaToken 'b9r7AuSE' \
    > test.out 2>&1
eval_tap $? 226 'Change2faMethod' test.out

#- 227 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '2HRQ8bge' \
    --factor 'EssY1Bv9' \
    --mfaToken 'dm2mY58c' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 227 'Verify2faCode' test.out

#- 228 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wUOoInMa' \
    --userId 'ti9JdBaN' \
    > test.out 2>&1
eval_tap $? 228 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 229 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'oj7HdJSb' \
    --clientId 'AYIeB7I7' \
    --redirectUri 'ByibZs3W' \
    --requestId 'wTrXoHvp' \
    > test.out 2>&1
eval_tap $? 229 'AuthCodeRequestV3' test.out

#- 230 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'oljb6Pat' \
    --additionalData 'KAdVBiv5' \
    --clientId 'VAx5p2qn' \
    --createHeadless 'true' \
    --deviceId 'KuWnopr1' \
    --macAddress 'VoNlEIVW' \
    --platformToken 'v8fKlMVx' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 230 'PlatformTokenGrantV3' test.out

#- 231 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 231 'GetRevocationListV3' test.out

#- 232 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'TDUpGg6a' \
    > test.out 2>&1
eval_tap $? 232 'TokenRevocationV3' test.out

#- 233 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'KjVSS9MD' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'PFS5JmAT' \
    > test.out 2>&1
eval_tap $? 233 'SimultaneousLoginV3' test.out

#- 234 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'UrkimGuk' \
    --clientId 'huqmwBfL' \
    --code 'dv39T2pr' \
    --codeVerifier '3mau5WEN' \
    --extendNamespace 'xifhytDa' \
    --extendExp 'true' \
    --password 'B6G2NZJu' \
    --redirectUri 'tRj1GemZ' \
    --refreshToken 'S2O66krv' \
    --username 'eoiRXgo5' \
    --grantType 'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    > test.out 2>&1
eval_tap $? 234 'TokenGrantV3' test.out

#- 235 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'zSKAXVcF' \
    > test.out 2>&1
eval_tap $? 235 'VerifyTokenV3' test.out

#- 236 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'zjC5wTmK' \
    --code 'YGli70eF' \
    --error 'iPaJES4S' \
    --openidAssocHandle 'ZhhchBKq' \
    --openidClaimedId 'uGZNcHTm' \
    --openidIdentity 'eR749ygS' \
    --openidMode 'G4ugA86I' \
    --openidNs 'P50cU902' \
    --openidOpEndpoint 'LyLRkh7Q' \
    --openidResponseNonce 'fjKiaAOi' \
    --openidReturnTo 'f14yN44X' \
    --openidSig 'aG1aTAal' \
    --openidSigned 'P3VYQuKC' \
    --state 'S5uHcucI' \
    > test.out 2>&1
eval_tap $? 236 'PlatformAuthenticationV3' test.out

#- 237 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'MLUFTbh5' \
    --platformToken '4VTR4ZoY' \
    > test.out 2>&1
eval_tap $? 237 'PlatformTokenRefreshV3' test.out

#- 238 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'pg57hR90' \
    > test.out 2>&1
eval_tap $? 238 'PublicGetInputValidations' test.out

#- 239 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'VkmcKuS6' \
    > test.out 2>&1
eval_tap $? 239 'PublicGetInputValidationByField' test.out

#- 240 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'QtVfDQWQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'PublicGetCountryAgeRestrictionV3' test.out

#- 241 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'PublicGetCountryListV3' test.out

#- 242 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 243 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'kZ8dGZ0R' \
    > test.out 2>&1
eval_tap $? 243 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 244 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tiAj3WC5' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["1m3f95YY", "260zAXau", "o8rqPb5J"]}' \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 245 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nncddwGb' \
    --platformUserId 'AgiYYkIK' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByPlatformUserIDV3' test.out

#- 246 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'ghGtihBY' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetAsyncStatus' test.out

#- 247 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '8Y9PRGlR' \
    --limit '28' \
    --offset '76' \
    --platformBy '51sQMYII' \
    --platformId 'z5KIX9k9' \
    --query 'oBRqc1ou' \
    > test.out 2>&1
eval_tap $? 247 'PublicSearchUserV3' test.out

#- 248 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "zvpy3qCo", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "uBIY0LOO", "policyId": "BmE2Z3KD", "policyVersionId": "7XD6dvJo"}, {"isAccepted": true, "localizedPolicyVersionId": "7m8fo8zS", "policyId": "5BOWYW8k", "policyVersionId": "KfIRvlra"}, {"isAccepted": false, "localizedPolicyVersionId": "kfYiPbN6", "policyId": "xfkTi4v5", "policyVersionId": "HdWNjAIC"}], "authType": "4bNRWRqQ", "code": "6j246Jgo", "country": "zHb3BTNo", "dateOfBirth": "B4V1r15l", "displayName": "ckTPyDlV", "emailAddress": "7MuHMrqX", "password": "8JwbtvKg", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 248 'PublicCreateUserV3' test.out

#- 249 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'U9goLnlg' \
    --query 'DeLcTcEP' \
    > test.out 2>&1
eval_tap $? 249 'CheckUserAvailability' test.out

#- 250 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BjZ9y8Q9", "3kiLLhif", "NgMynZy1"]}' \
    > test.out 2>&1
eval_tap $? 250 'PublicBulkGetUsers' test.out

#- 251 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "5GcASSv6", "languageTag": "LOx4vhZN"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicSendRegistrationCode' test.out

#- 252 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "bib310S9", "emailAddress": "YHVhWFty"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicVerifyRegistrationCode' test.out

#- 253 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "phzRLDXv", "languageTag": "ag5O5CYl"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicForgotPasswordV3' test.out

#- 254 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '1fAouffI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 254 'GetAdminInvitationV3' test.out

#- 255 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'wtPlrsJ6' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "YvWODCGt", "policyId": "Gvn6lug8", "policyVersionId": "sjUaAT46"}, {"isAccepted": false, "localizedPolicyVersionId": "ABk4XNI9", "policyId": "piCa4fNs", "policyVersionId": "iiWS3V6n"}, {"isAccepted": false, "localizedPolicyVersionId": "J80Nam4y", "policyId": "9nkLboJf", "policyVersionId": "uBem1DNX"}], "authType": "EMAILPASSWD", "country": "MBGX5lGO", "dateOfBirth": "FzD4tUhS", "displayName": "wlma90cQ", "password": "KmVnGk3I", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 255 'CreateUserFromInvitationV3' test.out

#- 256 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "zvoHhy6S", "country": "7G7sbGbW", "dateOfBirth": "j7k8GvZw", "displayName": "sDmlFTX1", "languageTag": "68k2GQTX", "userName": "UWXAHgso"}' \
    > test.out 2>&1
eval_tap $? 256 'UpdateUserV3' test.out

#- 257 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "ICN2iYyM", "country": "cbTIhtKp", "dateOfBirth": "fTPxmSdo", "displayName": "W6VIEYl8", "languageTag": "SVyfJ9jh", "userName": "euTQhhDF"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicPartialUpdateUserV3' test.out

#- 258 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "RADDAhEH", "emailAddress": "lETi6D3b", "languageTag": "1YYgAPZs"}' \
    > test.out 2>&1
eval_tap $? 258 'PublicSendVerificationCodeV3' test.out

#- 259 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Zd4pNEoZ", "contactType": "IMN1Ougn", "languageTag": "8DHbF4if", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 259 'PublicUserVerificationV3' test.out

#- 260 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "I0BwNpRP", "country": "S36y77MN", "dateOfBirth": "mFlrySaw", "displayName": "vBYMdT4o", "emailAddress": "5x8R7WjX", "password": "jHVe4ls5", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpgradeHeadlessAccountV3' test.out

#- 261 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "TYQuJoox", "password": "N7ur9aXD"}' \
    > test.out 2>&1
eval_tap $? 261 'PublicVerifyHeadlessAccountV3' test.out

#- 262 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "CifCEEJB", "newPassword": "EPKswOfJ", "oldPassword": "tGavTXBg"}' \
    > test.out 2>&1
eval_tap $? 262 'PublicUpdatePasswordV3' test.out

#- 263 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '8q8VIJQV' \
    > test.out 2>&1
eval_tap $? 263 'PublicCreateJusticeUser' test.out

#- 264 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0LE0hOw6' \
    --redirectUri '0wtvC6I6' \
    --ticket 'hvwBbSzf' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformLinkV3' test.out

#- 265 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Yy4UrB7E' \
    --body '{"platformNamespace": "2Wj47j82"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicPlatformUnlinkV3' test.out

#- 266 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iKTWAKLN' \
    > test.out 2>&1
eval_tap $? 266 'PublicPlatformUnlinkAllV3' test.out

#- 267 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TuX3cDqr' \
    --ticket '35zegQwz' \
    > test.out 2>&1
eval_tap $? 267 'PublicForcePlatformLinkV3' test.out

#- 268 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'yskEy3qV' \
    --clientId 'aHjZM06f' \
    --redirectUri 'wiksQoq0' \
    > test.out 2>&1
eval_tap $? 268 'PublicWebLinkPlatform' test.out

#- 269 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'PYLLwqTq' \
    --code '6OdFCLVq' \
    --state 'Cmj4qPQU' \
    > test.out 2>&1
eval_tap $? 269 'PublicWebLinkPlatformEstablish' test.out

#- 270 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '98La4afN' \
    --code 'PKgYmtVm' \
    --state 'SiuPiLfR' \
    > test.out 2>&1
eval_tap $? 270 'PublicProcessWebLinkPlatformV3' test.out

#- 271 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "f9Xmrlu5", "userIds": ["PBmDBfGV", "R79MfBjw", "i29PVrAB"]}' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUsersPlatformInfosV3' test.out

#- 272 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "M3FA3UdJ", "emailAddress": "DV94Ow2F", "newPassword": "7mCuep5q"}' \
    > test.out 2>&1
eval_tap $? 272 'ResetPasswordV3' test.out

#- 273 PublicGetUserByUserIdV3
eval_tap 0 273 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 274 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jSaWxEst' \
    --activeOnly 'true' \
    --after 'gHQ3eppq' \
    --before 'K5L0ViB6' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserBanHistoryV3' test.out

#- 275 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rkSxPDyd' \
    > test.out 2>&1
eval_tap $? 275 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 276 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZBcSt4LR' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserInformationV3' test.out

#- 277 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '0vKwfSG0' \
    --after '0.7585798677079746' \
    --before '0.2396694000888201' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUserLoginHistoriesV3' test.out

#- 278 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PAy0m9fR' \
    --after 'hlRIs49h' \
    --before 'Mcd9tPKz' \
    --limit '64' \
    --platformId 'Y4IhWFcQ' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetUserPlatformAccountsV3' test.out

#- 279 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '0YZUG5km' \
    > test.out 2>&1
eval_tap $? 279 'PublicListJusticePlatformAccountsV3' test.out

#- 280 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'qJhwqLWO' \
    --body '{"platformId": "sLdk0gNw", "platformUserId": "1zuIfVJJ"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicLinkPlatformAccount' test.out

#- 281 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'RsHsTnx6' \
    --body '{"chosenNamespaces": ["pau7Hbn6", "83RC1r6H", "S4UoICmS"], "requestId": "ac7sLKZk"}' \
    > test.out 2>&1
eval_tap $? 281 'PublicForceLinkPlatformWithProgression' test.out

#- 282 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7q3vAuP4' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetPublisherUserV3' test.out

#- 283 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Bsdn0b2f' \
    --password '3UKa7qEm' \
    > test.out 2>&1
eval_tap $? 283 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 284 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'VLAuw1mX' \
    --before 'CJFsd6bA' \
    --isWildcard 'true' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetRolesV3' test.out

#- 285 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '2YLwVXfQ' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetRoleV3' test.out

#- 286 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetMyUserV3' test.out

#- 287 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '00tCuzK1' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 288 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["mmbcZyr3", "vyc0xPMq", "I60O3MSK"], "oneTimeLinkCode": "zQHpFqfi"}' \
    > test.out 2>&1
eval_tap $? 288 'LinkHeadlessAccountToMyAccountV3' test.out

#- 289 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "y50Nj8f1"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicSendVerificationLinkV3' test.out

#- 290 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '5N8w3rZQ' \
    > test.out 2>&1
eval_tap $? 290 'PublicVerifyUserByLinkV3' test.out

#- 291 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'JMRArELG' \
    --code 'ZPZTeZlA' \
    --error 'ARxa6bcm' \
    --state 'OcavKDjP' \
    > test.out 2>&1
eval_tap $? 291 'PlatformAuthenticateSAMLV3Handler' test.out

#- 292 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'xD2aSnzV' \
    --payload '0awjcxgF' \
    > test.out 2>&1
eval_tap $? 292 'LoginSSOClient' test.out

#- 293 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'wB9aX3la' \
    > test.out 2>&1
eval_tap $? 293 'LogoutSSOClient' test.out

#- 294 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'kbeYtZFV' \
    --code '0P7u2jBU' \
    > test.out 2>&1
eval_tap $? 294 'RequestTargetTokenResponseV3' test.out

#- 295 PlatformTokenRefreshV3Deprecate
eval_tap 0 295 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 296 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'L9DahA3G' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetDevicesByUserV4' test.out

#- 297 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'oikGxYH0' \
    --endDate '0SSYpkYS' \
    --limit '42' \
    --offset '63' \
    --startDate 'kJAxIY3f' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetBannedDevicesV4' test.out

#- 298 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'wrlYTJab' \
    > test.out 2>&1
eval_tap $? 298 'AdminGetUserDeviceBansV4' test.out

#- 299 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "vNwMwpiI", "deviceId": "NgQuQ5Wv", "deviceType": "XXwWRR81", "enabled": false, "endDate": "F1Ay7p5s", "ext": {"9h6LuJry": {}, "UosUh0nR": {}, "twK1Frul": {}}, "reason": "ikidobEK"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminBanDeviceV4' test.out

#- 300 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '4206V47s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceBanV4' test.out

#- 301 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '14TxhDUD' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateDeviceBanV4' test.out

#- 302 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'urkuFhUY' \
    --startDate 'KWV4fVL3' \
    --deviceType 'QpOl9sxa' \
    > test.out 2>&1
eval_tap $? 302 'AdminGenerateReportV4' test.out

#- 303 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminGetDeviceTypesV4' test.out

#- 304 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'fJisbrhR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetDeviceBansV4' test.out

#- 305 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId '7ptJ6usI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'AdminDecryptDeviceV4' test.out

#- 306 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '1k6Ue1Vy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'AdminUnbanDeviceV4' test.out

#- 307 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '8fTzyPuJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 307 'AdminGetUsersByDeviceV4' test.out

#- 308 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 28}' \
    > test.out 2>&1
eval_tap $? 308 'AdminCreateTestUsersV4' test.out

#- 309 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["NTQWUHWJ", "chFW0tkx", "6RJAIWK0"]}' \
    > test.out 2>&1
eval_tap $? 309 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 310 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["L31g6cJJ", "m7CXWPzD", "E1iI19eO"]}' \
    > test.out 2>&1
eval_tap $? 310 'AdminBulkCheckValidUserIDV4' test.out

#- 311 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'F0pgmtYb' \
    --body '{"avatarUrl": "GfoQ7IYC", "country": "zGXg1olH", "dateOfBirth": "wI3TfrPT", "displayName": "eaACuCob", "languageTag": "7aOcMe9w", "userName": "ISJvDI2r"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserV4' test.out

#- 312 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Rm7YWcoO' \
    --body '{"code": "vjCRkN3Q", "emailAddress": "EU52iczq"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateUserEmailAddressV4' test.out

#- 313 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'P1swP3NF' \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableUserMFAV4' test.out

#- 314 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yt4Qd57T' \
    > test.out 2>&1
eval_tap $? 314 'AdminListUserRolesV4' test.out

#- 315 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RBZPIyIe' \
    --body '{"assignedNamespaces": ["saJDmMCV", "yPzoiUTo", "iOrs191a"], "roleId": "LMWufcXk"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminUpdateUserRoleV4' test.out

#- 316 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '7F9uHay9' \
    --body '{"assignedNamespaces": ["0z3g3R8d", "WayLuX8h", "DjbnkeSW"], "roleId": "9JoXIFNW"}' \
    > test.out 2>&1
eval_tap $? 316 'AdminAddUserRoleV4' test.out

#- 317 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tdAcBh66' \
    --body '{"assignedNamespaces": ["QBGt7xhk", "1Gg0YLy9", "2xEVq1Hs"], "roleId": "OKNKFtGw"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminRemoveUserRoleV4' test.out

#- 318 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '70' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 318 'AdminGetRolesV4' test.out

#- 319 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "c86qRqZL"}' \
    > test.out 2>&1
eval_tap $? 319 'AdminCreateRoleV4' test.out

#- 320 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'jDxkYQ3r' \
    > test.out 2>&1
eval_tap $? 320 'AdminGetRoleV4' test.out

#- 321 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'WuH3kprI' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRoleV4' test.out

#- 322 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'Yrwiky3k' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "OrQFsEhB"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminUpdateRoleV4' test.out

#- 323 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'kapDyNwA' \
    --body '{"permissions": [{"action": 41, "resource": "HTM0sxIw", "schedAction": 98, "schedCron": "l0G61elt", "schedRange": ["44YbIbQv", "6jYaWekS", "QQEbviAz"]}, {"action": 100, "resource": "3sRpu0k7", "schedAction": 20, "schedCron": "l6QmOb7x", "schedRange": ["XwpUgdG8", "kIsgGUOW", "QZJqQuEF"]}, {"action": 60, "resource": "MLjvwrtW", "schedAction": 9, "schedCron": "bpJAuosq", "schedRange": ["jR3TOYin", "OKNBejEu", "gBagbtLF"]}]}' \
    > test.out 2>&1
eval_tap $? 323 'AdminUpdateRolePermissionsV4' test.out

#- 324 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'FV1SqRUF' \
    --body '{"permissions": [{"action": 33, "resource": "L5dgXNWW", "schedAction": 22, "schedCron": "9M7WXIeR", "schedRange": ["Qzonj1gi", "IdsgkvJU", "rKWwsjDU"]}, {"action": 33, "resource": "Ic78bOpM", "schedAction": 3, "schedCron": "1WkBI0fh", "schedRange": ["eXH56Sxr", "aj1roZ3l", "vsQRZAVY"]}, {"action": 37, "resource": "BTI8povr", "schedAction": 57, "schedCron": "Ug3oWgWc", "schedRange": ["RXPfZy4L", "T4wK8C9n", "yhFF9HjJ"]}]}' \
    > test.out 2>&1
eval_tap $? 324 'AdminAddRolePermissionsV4' test.out

#- 325 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'M6BY0lSz' \
    --body '["gluGjhMx", "ZrrIRErV", "fxxBWrGg"]' \
    > test.out 2>&1
eval_tap $? 325 'AdminDeleteRolePermissionsV4' test.out

#- 326 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'htjcnYsi' \
    --after 't5FCKs0w' \
    --before '9yfFxM4q' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 326 'AdminListAssignedUsersV4' test.out

#- 327 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'QCjj3ycR' \
    --body '{"assignedNamespaces": ["WKIi0Mr0", "t3IkjLsZ", "j3EtZ9uW"], "namespace": "mMYmp7aG", "userId": "KzGVcDxs"}' \
    > test.out 2>&1
eval_tap $? 327 'AdminAssignUserToRoleV4' test.out

#- 328 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'qtOkhNU4' \
    --body '{"namespace": "9d74xTCq", "userId": "dyzT3tXA"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminRevokeUserFromRoleV4' test.out

#- 329 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["C2cgq0DR", "kw9lKIDQ", "1fHGuIv0"], "emailAddresses": ["o6YklzyO", "p5hw1wqq", "y5srGryt"], "isAdmin": false, "namespace": "pQPgugJZ", "roleId": "VRq025ew"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminInviteUserNewV4' test.out

#- 330 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "nmC6zlpr", "country": "hudOD3J7", "dateOfBirth": "L756lNsL", "displayName": "5S7S6qen", "languageTag": "hCXYV7Mk", "userName": "MazyA364"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminUpdateMyUserV4' test.out

#- 331 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 331 'AdminDisableMyAuthenticatorV4' test.out

#- 332 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'H1X558JK' \
    > test.out 2>&1
eval_tap $? 332 'AdminEnableMyAuthenticatorV4' test.out

#- 333 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 333 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 334 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminGetMyBackupCodesV4' test.out

#- 335 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminGenerateMyBackupCodesV4' test.out

#- 336 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminDisableMyBackupCodesV4' test.out

#- 337 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 337 'AdminDownloadMyBackupCodesV4' test.out

#- 338 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminEnableMyBackupCodesV4' test.out

#- 339 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 339 'AdminSendMyMFAEmailCodeV4' test.out

#- 340 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 340 'AdminDisableMyEmailV4' test.out

#- 341 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '3bcUenMP' \
    > test.out 2>&1
eval_tap $? 341 'AdminEnableMyEmailV4' test.out

#- 342 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 342 'AdminGetMyEnabledFactorsV4' test.out

#- 343 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'ydUIKlFr' \
    > test.out 2>&1
eval_tap $? 343 'AdminMakeFactorMyDefaultV4' test.out

#- 344 AdminInviteUserV4
eval_tap 0 344 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 345 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "v6bkzzHk", "policyId": "R5QFz1x8", "policyVersionId": "LuJKgnnK"}, {"isAccepted": true, "localizedPolicyVersionId": "ISj7OcjN", "policyId": "OuFzAgvm", "policyVersionId": "2zwrZriD"}, {"isAccepted": true, "localizedPolicyVersionId": "rSzIA0RF", "policyId": "I3zCHuMg", "policyVersionId": "xwFaf8c8"}], "authType": "EMAILPASSWD", "country": "QQB0JKq8", "dateOfBirth": "fVnC33Bf", "displayName": "9n9t3vkE", "emailAddress": "zI565EkT", "password": "R3qaRF7v", "passwordMD5Sum": "wNINIl8J", "username": "YTP3EpkO", "verified": false}' \
    > test.out 2>&1
eval_tap $? 345 'PublicCreateTestUserV4' test.out

#- 346 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "FUB5mlMM", "policyId": "7CRiu2tn", "policyVersionId": "s0NZ27hm"}, {"isAccepted": true, "localizedPolicyVersionId": "wdGhX6CS", "policyId": "kxh3KGIU", "policyVersionId": "9eqQIFMO"}, {"isAccepted": false, "localizedPolicyVersionId": "m544FVr0", "policyId": "8UU6FUEF", "policyVersionId": "lb6jXKGL"}], "authType": "EMAILPASSWD", "code": "SghCfwdf", "country": "nQZR0DX3", "dateOfBirth": "4AfjGlBd", "displayName": "l34FEnB1", "emailAddress": "RJOuV2iQ", "password": "6EpQFM64", "passwordMD5Sum": "RYxOSJ41", "reachMinimumAge": false, "username": "t3xbj9Ya"}' \
    > test.out 2>&1
eval_tap $? 346 'PublicCreateUserV4' test.out

#- 347 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId '6j0lR2DT' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "MExHrahJ", "policyId": "RILK7lna", "policyVersionId": "RG4Q5GnS"}, {"isAccepted": true, "localizedPolicyVersionId": "KsEfWsM6", "policyId": "ukdcGrEV", "policyVersionId": "bK297DhV"}, {"isAccepted": true, "localizedPolicyVersionId": "8o5A0N7W", "policyId": "yYGgGdqq", "policyVersionId": "7uXbOvrk"}], "authType": "EMAILPASSWD", "country": "j2KF0zZr", "dateOfBirth": "71KRhQGP", "displayName": "gVmK0Mi0", "password": "tM6fy9cD", "reachMinimumAge": false, "username": "A2farsU0"}' \
    > test.out 2>&1
eval_tap $? 347 'CreateUserFromInvitationV4' test.out

#- 348 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "PFY7bCr0", "country": "ESYn0hgp", "dateOfBirth": "eMyGSD8Q", "displayName": "c3p2HUxP", "languageTag": "jplf6Rwm", "userName": "DvK8VzX6"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicUpdateUserV4' test.out

#- 349 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rvTPiDqy", "emailAddress": "gnXmwVns"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicUpdateUserEmailAddressV4' test.out

#- 350 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "nBUP2lmn", "country": "S9BGKrkG", "dateOfBirth": "YcCbyYYR", "displayName": "Ut8YQZka", "emailAddress": "NRdLa3W6", "password": "Lxal1n4p", "reachMinimumAge": false, "username": "45hgc9QI", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 350 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 351 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "vpz2GSwX", "password": "3HO8rQml", "username": "OcK9gk9w"}' \
    > test.out 2>&1
eval_tap $? 351 'PublicUpgradeHeadlessAccountV4' test.out

#- 352 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 352 'PublicDisableMyAuthenticatorV4' test.out

#- 353 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'JiAu2ENR' \
    > test.out 2>&1
eval_tap $? 353 'PublicEnableMyAuthenticatorV4' test.out

#- 354 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 355 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicGetMyBackupCodesV4' test.out

#- 356 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 356 'PublicGenerateMyBackupCodesV4' test.out

#- 357 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicDisableMyBackupCodesV4' test.out

#- 358 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDownloadMyBackupCodesV4' test.out

#- 359 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyBackupCodesV4' test.out

#- 360 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 360 'PublicRemoveTrustedDeviceV4' test.out

#- 361 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 361 'PublicSendMyMFAEmailCodeV4' test.out

#- 362 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 362 'PublicDisableMyEmailV4' test.out

#- 363 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'lQl3IDJF' \
    > test.out 2>&1
eval_tap $? 363 'PublicEnableMyEmailV4' test.out

#- 364 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyEnabledFactorsV4' test.out

#- 365 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'jElU6EZ7' \
    > test.out 2>&1
eval_tap $? 365 'PublicMakeFactorMyDefaultV4' test.out

#- 366 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'l0NRZ8UG' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 367 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "hknizfal", "emailAddress": "C77pxCkj", "namespace": "hmjVGVFl", "namespaceDisplayName": "JC1TAUsF"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE