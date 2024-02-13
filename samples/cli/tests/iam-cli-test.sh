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
echo "1..376"

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
    --body '[{"field": "BKJEAuKB", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["fqgXo8L2", "kHCLeQ2d", "yefM2cDk"], "preferRegex": false, "regex": "RKji36sB"}, "blockedWord": ["7qTTq7WU", "DU698hb9", "GERL7Zco"], "description": [{"language": "PVbzt2tC", "message": ["HxFBAWCr", "HbW2ShkP", "YZn5RU0H"]}, {"language": "7HJoSset", "message": ["gZMDvmwR", "CHmCUhsu", "CFCYNrgq"]}, {"language": "sMraJuqm", "message": ["18XBSiGW", "Ug5SUxdw", "Y6vI2y60"]}], "isCustomRegex": true, "letterCase": "xtgyTyZy", "maxLength": 28, "maxRepeatingAlphaNum": 12, "maxRepeatingSpecialCharacter": 4, "minCharType": 86, "minLength": 3, "regex": "xp7zHyE5", "specialCharacterLocation": "WLl18Wgc", "specialCharacters": ["vDCvayHG", "M6gklUne", "NTWAuLqD"]}}, {"field": "KtlqBsgN", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["SZptqdMx", "18IZ31PI", "ZgOPgELY"], "preferRegex": true, "regex": "aQbrIIi0"}, "blockedWord": ["Z8k6RH28", "AN3psTUc", "PZj775k8"], "description": [{"language": "2bq2IXc0", "message": ["oehOFkTX", "SvSBQ6Tj", "bDzNhTWB"]}, {"language": "GeDMZeXD", "message": ["BscO7NmN", "lx54Ebgl", "Qe9khByI"]}, {"language": "vzyTacL9", "message": ["EXQtUH9X", "9dUqacWw", "KsnY2gGn"]}], "isCustomRegex": false, "letterCase": "t4KFfrPS", "maxLength": 69, "maxRepeatingAlphaNum": 50, "maxRepeatingSpecialCharacter": 90, "minCharType": 40, "minLength": 84, "regex": "07HQxxKa", "specialCharacterLocation": "wmx0TRrV", "specialCharacters": ["EM5VjpHH", "Key2IDAK", "53CgYYMz"]}}, {"field": "c3mmlCAn", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["PUVTApJi", "Yk5zG6WO", "hV9eLwDP"], "preferRegex": false, "regex": "XllxNrJL"}, "blockedWord": ["4uebX9ss", "9QrfFvzK", "ebDKdInG"], "description": [{"language": "REMSR0Hb", "message": ["MxpUixs4", "JEqOAyo1", "PUqccF91"]}, {"language": "sgkBudhb", "message": ["doD0LfbP", "MButKEWc", "FHfeXhwo"]}, {"language": "pjmZ1cvi", "message": ["7gTety3t", "jKHeMR1S", "yXwJbOzU"]}], "isCustomRegex": true, "letterCase": "JwDKQDnW", "maxLength": 60, "maxRepeatingAlphaNum": 90, "maxRepeatingSpecialCharacter": 9, "minCharType": 63, "minLength": 15, "regex": "VdUuhASM", "specialCharacterLocation": "JZPPstsW", "specialCharacters": ["eaITNXMy", "ZWbPXe53", "6H0v7os4"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field '8Nzjf4db' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'njOVYvdG' \
    --before 'rapB4uwB' \
    --limit '48' \
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
    --body '{"ageRestriction": 21, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'JMAnD0ZM' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 17}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'jlMD7fsZ' \
    --limit '92' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "Tkjs3rBZ", "comment": "icORgoVU", "endDate": "gkncRBYn", "reason": "NQ1BqYyV", "skipNotif": false, "userIds": ["DPWGtmWS", "7Zady1md", "jzUd7bc1"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "appxTEcu", "userId": "1HB3ApgX"}, {"banId": "TkjotiTi", "userId": "pm6GkKD1"}, {"banId": "vsUkOqlX", "userId": "jAwDFTn3"}]}' \
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
    --clientId 'vQKpha84' \
    --clientName 'cEVEzh8H' \
    --clientType '9pEBNKbM' \
    --limit '69' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["p7FUjAsM", "rgIi92LW", "AsBTSZlG"], "baseUri": "RWuMscPU", "clientId": "4YSwEsM6", "clientName": "Iqa8yd6I", "clientPermissions": [{"action": 36, "resource": "BPHhZcEF", "schedAction": 22, "schedCron": "P240OcRJ", "schedRange": ["dXPD9Tdg", "LIvDT2OC", "2K43q4DL"]}, {"action": 31, "resource": "7absGaB1", "schedAction": 39, "schedCron": "FL0evN5h", "schedRange": ["wKw9Dwpn", "pbMcEp0Y", "YRWA1F2a"]}, {"action": 40, "resource": "BjZ0eF5z", "schedAction": 86, "schedCron": "cU7rPj9P", "schedRange": ["uiWwXwvY", "JdIZCldf", "WpNlJNDK"]}], "clientPlatform": "buRpeAki", "deletable": true, "description": "X8YQhVcJ", "namespace": "DluKq4C8", "oauthAccessTokenExpiration": 29, "oauthAccessTokenExpirationTimeUnit": "8ryerrT6", "oauthClientType": "HxqFhHeP", "oauthRefreshTokenExpiration": 77, "oauthRefreshTokenExpirationTimeUnit": "vFq6tAQG", "parentNamespace": "61Jt8YbF", "redirectUri": "7ImXObCe", "scopes": ["SbombSlm", "NkdiGMyX", "sgjBgfF2"], "secret": "hGAuClGL", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'AxpfDAWy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'g12hKoqS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'aXIvUvJ8' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["pMqTraN4", "6KTvQtRe", "MLLLbfoW"], "baseUri": "CLpBMBXm", "clientName": "p1MLYpXR", "clientPermissions": [{"action": 18, "resource": "bBR4Elo6", "schedAction": 100, "schedCron": "UeiympqY", "schedRange": ["Ehu2hTsO", "sEZacXAF", "iXOxI0lc"]}, {"action": 17, "resource": "0d4EOKF8", "schedAction": 39, "schedCron": "GsWsEXIA", "schedRange": ["EQb5TSXB", "ZZjKKBwd", "ez9H9BqS"]}, {"action": 78, "resource": "nruAmUnk", "schedAction": 27, "schedCron": "KxbaS7z1", "schedRange": ["cI49kPFM", "eZgktIS7", "den0PNvM"]}], "clientPlatform": "jxMzTmgJ", "deletable": true, "description": "mV7hHUC8", "namespace": "rq16gRu5", "oauthAccessTokenExpiration": 68, "oauthAccessTokenExpirationTimeUnit": "HNBb9TVA", "oauthRefreshTokenExpiration": 32, "oauthRefreshTokenExpirationTimeUnit": "uqWfihzm", "redirectUri": "hTLvucOR", "scopes": ["GEAhkbkB", "YQ39NpOq", "OpvwA5YC"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '8aCb8nOu' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 40, "resource": "iW7kCa2J"}, {"action": 1, "resource": "WAjK98wH"}, {"action": 36, "resource": "sR6e4tqv"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '0fbT7djf' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 76, "resource": "X0Laz0rM"}, {"action": 65, "resource": "w7R9TGCP"}, {"action": 71, "resource": "VV8SwnHe"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '64' \
    --clientId 'jBBrmbTe' \
    --namespace $AB_NAMESPACE \
    --resource 'AtqxqiG2' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'lKtaEKht' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminGetConfigValueV3' test.out

#- 129 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
    > test.out 2>&1
eval_tap $? 129 'AdminGetCountryListV3' test.out

#- 130 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'AdminGetCountryBlacklistV3' test.out

#- 131 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["tyPOAy0K", "pjhefI5E", "v7SPh5eL"]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddCountryBlacklistV3' test.out

#- 132 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 132 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 133 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 134 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 135 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'W2KPJ8ur' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 136 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hSwHsZRc' \
    --body '{"ACSURL": "Z8qs4Bde", "AWSCognitoRegion": "q7RP3Fsb", "AWSCognitoUserPool": "qrEKcYwT", "AllowedClients": ["Hle7qJj2", "2HCDrmzi", "3fQfaMMb"], "AppId": "9YyNU2Rw", "AuthorizationEndpoint": "Ao0vKjgd", "ClientId": "xE8qomcg", "Environment": "lKsvu8DU", "FederationMetadataURL": "bDrj9XFo", "GenericOauthFlow": true, "IsActive": false, "Issuer": "UTCeTtsp", "JWKSEndpoint": "AvXPnmF6", "KeyID": "bHVyqXhC", "NetflixCertificates": {"encryptedPrivateKey": "rSznUHrr", "encryptedPrivateKeyName": "De1DHrH4", "publicCertificate": "tV6EEqeC", "publicCertificateName": "lZCAzVbG", "rootCertificate": "uKjC92Ur", "rootCertificateName": "oQbFXDEh"}, "OrganizationId": "rZWCDieW", "PlatformName": "qdrKRFHO", "RedirectUri": "NsAJZPzp", "RegisteredDomains": [{"affectedClientIDs": ["9xVyBkZF", "rrPaJoGF", "xf5I0mL9"], "domain": "GLphnYjR", "namespaces": ["8osinGdp", "2T5rKoNY", "e4aYj7Ul"], "roleId": "k4mPukTw"}, {"affectedClientIDs": ["zffkY6ma", "47jA9ZKd", "sr9HoG21"], "domain": "nu2QxE0G", "namespaces": ["9ZyeRBMU", "6Ip8FqAC", "HifE00oo"], "roleId": "ywXRFq6o"}, {"affectedClientIDs": ["FkSuNUfn", "78ujdrGj", "CHfMLh8z"], "domain": "uheMslCb", "namespaces": ["srngtFhD", "xzWNtBCT", "0JKIWcr6"], "roleId": "VDcYDjmV"}], "Secret": "1pOrq7QE", "TeamID": "09q01yIU", "TokenAuthenticationType": "geo8kd40", "TokenClaimsMapping": {"45jO3mRG": "bfYUriIR", "kqxKEwfr": "0vrVoOfG", "tlmcNtXp": "BxuanEKO"}, "TokenEndpoint": "aJS59cpT", "UserInfoEndpoint": "Z3elix9B", "UserInfoHTTPMethod": "uSJymKQU", "scopes": ["ZaRFDTGL", "2HCYQOTA", "0qVkrsEX"]}' \
    > test.out 2>&1
eval_tap $? 136 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 137 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OGHDLTjf' \
    > test.out 2>&1
eval_tap $? 137 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qAzQ8rFa' \
    --body '{"ACSURL": "Do2BIaAY", "AWSCognitoRegion": "xJLs03IE", "AWSCognitoUserPool": "31Gka5QI", "AllowedClients": ["YFooaBTb", "pszixmFE", "2kPUGqjX"], "AppId": "Tb9Z0Rfn", "AuthorizationEndpoint": "wMPPFPkR", "ClientId": "wMA2jEXC", "Environment": "YDJrei3G", "FederationMetadataURL": "ZliDRduQ", "GenericOauthFlow": true, "IsActive": true, "Issuer": "Fi8kz3yF", "JWKSEndpoint": "GAri55qW", "KeyID": "4FFcvHPM", "NetflixCertificates": {"encryptedPrivateKey": "NN8evbzl", "encryptedPrivateKeyName": "x5x08t5w", "publicCertificate": "VYEuRgjg", "publicCertificateName": "hwBrRu9K", "rootCertificate": "55cTe0eS", "rootCertificateName": "Gmp5iYyS"}, "OrganizationId": "kkc3I2Bw", "PlatformName": "0gBD3KJB", "RedirectUri": "eIAaKzN3", "RegisteredDomains": [{"affectedClientIDs": ["g9mC9FvN", "rLTNTUPH", "sHGnkQuu"], "domain": "XDbBYAgL", "namespaces": ["37TJXkIs", "fQ6uVyqo", "OymRPTFu"], "roleId": "yKHhra2t"}, {"affectedClientIDs": ["ewX2rfp2", "lMoBasJa", "VGKcHUYf"], "domain": "S5hlJQly", "namespaces": ["mZsSSGCH", "nCwBLc7K", "4BgC8rTK"], "roleId": "B36qAhqX"}, {"affectedClientIDs": ["OE6xLFl4", "jKUApL0I", "3kTbhJFe"], "domain": "7toJqB9E", "namespaces": ["xYy3AFLA", "7Mw21kkq", "R39eVzRo"], "roleId": "8pwB51Y7"}], "Secret": "tq457HVk", "TeamID": "40Ncve3l", "TokenAuthenticationType": "xIc75xXZ", "TokenClaimsMapping": {"whLzsybr": "awhtxDSL", "8UYFwMlx": "xnkoQyab", "TrUqjuxI": "07ROrenn"}, "TokenEndpoint": "NbA4bQ7k", "UserInfoEndpoint": "9S9cYjVZ", "UserInfoHTTPMethod": "Dc7Yp5bw", "scopes": ["xmVMVZ8B", "zqJMEAbx", "lKslj7Qm"]}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 139 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7kXFd2bA' \
    --body '{"affectedClientIDs": ["3JO4XP9J", "ViTrKO8V", "rnW68ZAz"], "assignedNamespaces": ["xkqAOnKO", "25J5kooV", "rfRXS9Qf"], "domain": "XpKdmzLj", "roleId": "ziQcAFLn"}' \
    > test.out 2>&1
eval_tap $? 139 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 140 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ipjF9BT5' \
    --body '{"domain": "urPcfooO"}' \
    > test.out 2>&1
eval_tap $? 140 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 141 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '1W0DHqQI' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveSSOLoginPlatformCredential' test.out

#- 142 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'YLNajxrq' \
    --body '{"acsUrl": "ahsIBhLp", "apiKey": "GMIjCpIx", "appId": "UPTcmYmG", "federationMetadataUrl": "kaWnKGjL", "isActive": true, "redirectUri": "aDleuE9U", "secret": "FY78d14K", "ssoUrl": "CHGyhj6Q"}' \
    > test.out 2>&1
eval_tap $? 142 'AddSSOLoginPlatformCredential' test.out

#- 143 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gmofeTOu' \
    > test.out 2>&1
eval_tap $? 143 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 144 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'o3cuKBC7' \
    --body '{"acsUrl": "2XXhl414", "apiKey": "Fxnz2FsT", "appId": "1gmb7kAI", "federationMetadataUrl": "xV8H2PBI", "isActive": false, "redirectUri": "IXovzzpT", "secret": "PQuyiAkK", "ssoUrl": "NrSgrSnd"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateSSOPlatformCredential' test.out

#- 145 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PsIb6zSX' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["KTEPjU7I", "nE6KAdNt", "csyUXC89"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 146 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ra1fc5QJ' \
    --platformUserId 'k5SLxXIj' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetUserByPlatformUserIDV3' test.out

#- 147 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'yDb7rCcv' \
    --after '9' \
    --before '28' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 147 'GetAdminUsersByRoleIdV3' test.out

#- 148 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'xA868Ayk' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetUserByEmailAddressV3' test.out

#- 149 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'erUHar3n' \
    --body '{"bulkUserId": ["GA0e8hgl", "KR2hgDFL", "2o28YX7i"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserBanV3' test.out

#- 150 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TDABcnLp", "riaQGb1h", "AhDrideT"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByUserIDsV3' test.out

#- 151 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["i7KCTXWx", "6hY7mFfV", "aoqgEbk0"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminBulkGetUsersPlatform' test.out

#- 152 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["W9lMaXFa", "VuljezAD", "ma00fXE9"], "isAdmin": false, "namespace": "z73j0PEB", "roles": ["czjIJ11F", "gjuEdIEU", "pmtqcNQp"]}' \
    > test.out 2>&1
eval_tap $? 152 'AdminInviteUserV3' test.out

#- 153 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '25' \
    --platformUserId 'VleDQXcu' \
    --platformId 'LP1CMGXA' \
    > test.out 2>&1
eval_tap $? 153 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 154 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 154 'AdminListUsersV3' test.out

#- 155 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'm3JHVYAW' \
    --endDate 'OKHjD1jk' \
    --includeTotal 'true' \
    --limit '29' \
    --offset '48' \
    --platformBy 'BYdGLaV0' \
    --platformId 'urV5k99v' \
    --query '2zoZvPYh' \
    --startDate 'eXFWycPH' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 155 'AdminSearchUserV3' test.out

#- 156 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["07vHO6Vj", "zIfZfNXN", "Z8oPtTg6"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetBulkUserByEmailAddressV3' test.out

#- 157 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CSvw0t90' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserByUserIdV3' test.out

#- 158 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zqHSunMm' \
    --body '{"avatarUrl": "whs0QP3d", "country": "edj7867Q", "dateOfBirth": "UaMMvr8v", "displayName": "MHKkAJ4F", "languageTag": "wvvdyOjn", "uniqueDisplayName": "inxmHRLr", "userName": "yhnuhxnb"}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserV3' test.out

#- 159 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BRDFxBoj' \
    --activeOnly 'false' \
    --after 'mQZIYbUd' \
    --before 'lkIxcvR7' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserBanV3' test.out

#- 160 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HmPXXavC' \
    --body '{"ban": "QmO4TZ36", "comment": "DYdplPDp", "endDate": "DcMzOD1q", "reason": "WkMIgLfI", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminBanUserV3' test.out

#- 161 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '1apYcAwF' \
    --namespace $AB_NAMESPACE \
    --userId 'MYHo66Qo' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 161 'AdminUpdateUserBanV3' test.out

#- 162 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Y0SuSV20' \
    --body '{"context": "QSfQPzZJ", "emailAddress": "tKnRq0qk", "languageTag": "ascAAupS"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminSendVerificationCodeV3' test.out

#- 163 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UTSkIBSS' \
    --body '{"Code": "KqmGnkAC", "ContactType": "N8uyaYLV", "LanguageTag": "cqeenq1B", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 163 'AdminVerifyAccountV3' test.out

#- 164 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'Lvx9YOy6' \
    > test.out 2>&1
eval_tap $? 164 'GetUserVerificationCode' test.out

#- 165 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'k9G3f0Tq' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserDeletionStatusV3' test.out

#- 166 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Zhr2ZcFu' \
    --body '{"deletionDate": 49, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpdateUserDeletionStatusV3' test.out

#- 167 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QEnBiLb6' \
    --body '{"code": "4deuP9Zx", "country": "91KBW0W4", "dateOfBirth": "2m71rnVL", "displayName": "Ki37SJlD", "emailAddress": "Za0Zqfmp", "password": "3HZXBFnY", "uniqueDisplayName": "D2e2Dd7V", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 167 'AdminUpgradeHeadlessAccountV3' test.out

#- 168 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'db0gxPZz' \
    > test.out 2>&1
eval_tap $? 168 'AdminDeleteUserInformationV3' test.out

#- 169 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FvDV1YXq' \
    --after '0.688336799359553' \
    --before '0.8816416725884106' \
    --limit '8' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserLoginHistoriesV3' test.out

#- 170 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XgZNMrGF' \
    --body '{"languageTag": "U4HWJQNl", "newPassword": "feL33jfG", "oldPassword": "Z7OGRLjP"}' \
    > test.out 2>&1
eval_tap $? 170 'AdminResetPasswordV3' test.out

#- 171 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bwAGYUyg' \
    --body '{"Permissions": [{"Action": 71, "Resource": "dWj6kPuC", "SchedAction": 53, "SchedCron": "D0cDAtux", "SchedRange": ["bAraFHKR", "MeaGF477", "dQ06dneN"]}, {"Action": 42, "Resource": "WszHbL8W", "SchedAction": 80, "SchedCron": "uMDLtBce", "SchedRange": ["G8L5BzXY", "8RVsZvUo", "arhcaXh4"]}, {"Action": 46, "Resource": "Nx8UqQfj", "SchedAction": 5, "SchedCron": "jsfSanqr", "SchedRange": ["IwLDnzcC", "mP11ufR9", "luUkOhKG"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminUpdateUserPermissionV3' test.out

#- 172 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '2G8MGCYn' \
    --body '{"Permissions": [{"Action": 37, "Resource": "LSV6Q9kj", "SchedAction": 5, "SchedCron": "g1gISguI", "SchedRange": ["ErkYZzj8", "m59qAE1x", "OEDtBpAB"]}, {"Action": 22, "Resource": "E8MqYLhl", "SchedAction": 26, "SchedCron": "tDo17jr7", "SchedRange": ["gEpIismt", "SSd0yldB", "2Vcp7p3R"]}, {"Action": 43, "Resource": "ab45EXxv", "SchedAction": 21, "SchedCron": "dg6PdiE1", "SchedRange": ["ul15M0MH", "neIZ6dWq", "IFNZVHGB"]}]}' \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserPermissionsV3' test.out

#- 173 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Hf3sjlgF' \
    --body '[{"Action": 93, "Resource": "1Mdz3Mdc"}, {"Action": 78, "Resource": "uzomR20b"}, {"Action": 44, "Resource": "XZifJY1g"}]' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionBulkV3' test.out

#- 174 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '10' \
    --namespace $AB_NAMESPACE \
    --resource 'xwBgWPUs' \
    --userId 'wYywztRS' \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserPermissionV3' test.out

#- 175 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dvoNf0ph' \
    --after 'oMshyEGA' \
    --before 'RHGPS7TP' \
    --limit '79' \
    --platformId 'IXBX0oIr' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetUserPlatformAccountsV3' test.out

#- 176 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'BDOpskHs' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetListJusticePlatformAccounts' test.out

#- 177 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'teCHheTt' \
    --userId 'mMiaHj9E' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserMapping' test.out

#- 178 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'u9rqEOZA' \
    --userId 'eLsYGEU5' \
    > test.out 2>&1
eval_tap $? 178 'AdminCreateJusticeUser' test.out

#- 179 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'sETXCTVZ' \
    --skipConflict 'true' \
    --body '{"platformId": "KdZp8B2h", "platformUserId": "1fg0ySle"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminLinkPlatformAccount' test.out

#- 180 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8vC7CQC7' \
    --userId 'QjdC3ReE' \
    --body '{"platformNamespace": "3bGkFqug"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformUnlinkV3' test.out

#- 181 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PWrXvsy4' \
    --userId 'ososacg4' \
    --ticket 'sqsZcfvB' \
    > test.out 2>&1
eval_tap $? 181 'AdminPlatformLinkV3' test.out

#- 182 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MiLCRmiI' \
    --userId 'okE3kd5L' \
    > test.out 2>&1
eval_tap $? 182 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 183 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DVe0ZsYl' \
    --userId 'rDcp3S8e' \
    --platformToken 'PYQXva0K' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 184 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'ZphtNELj' \
    --userId 'DSChnlio' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetUserSinglePlatformAccount' test.out

#- 185 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EfYkOlvy' \
    --body '["AjEdov9C", "MpOQmaMc", "1963byym"]' \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteUserRolesV3' test.out

#- 186 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '6P9ykKNP' \
    --body '[{"namespace": "VxwI0AtB", "roleId": "M2goGOfG"}, {"namespace": "pbKYXw8B", "roleId": "m4mu5wod"}, {"namespace": "bMrAJf3r", "roleId": "ip0XRZt0"}]' \
    > test.out 2>&1
eval_tap $? 186 'AdminSaveUserRoleV3' test.out

#- 187 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '8iGUBOJk' \
    --userId 'mvFT2IGX' \
    > test.out 2>&1
eval_tap $? 187 'AdminAddUserRoleV3' test.out

#- 188 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Mdsvs1kd' \
    --userId '9Nzh5PeI' \
    > test.out 2>&1
eval_tap $? 188 'AdminDeleteUserRoleV3' test.out

#- 189 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZyRaKZN2' \
    --body '{"enabled": false, "reason": "3AI9gO0y"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateUserStatusV3' test.out

#- 190 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'EEnWwMu6' \
    --body '{"emailAddress": "7wNJB7yc", "password": "Hangvo8L"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminTrustlyUpdateUserIdentity' test.out

#- 191 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NqvLoloG' \
    > test.out 2>&1
eval_tap $? 191 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 192 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '1jChjbTa' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "4vrGcojY"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminUpdateClientSecretV3' test.out

#- 193 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '5Sa3UFMr' \
    --before 'tNsgGSE6' \
    --isWildcard 'false' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRolesV3' test.out

#- 194 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "BZDqUxZj", "namespace": "wPw8aZk6", "userId": "8X3kYQ7o"}, {"displayName": "PiLfOSn9", "namespace": "1GTdNr83", "userId": "mDop2KWr"}, {"displayName": "3TH1tuWg", "namespace": "aX9Ctdgy", "userId": "7UKppPtj"}], "members": [{"displayName": "4euBYMal", "namespace": "crhUrBVz", "userId": "MyeQBn74"}, {"displayName": "JwhukN59", "namespace": "bcsfzKJ4", "userId": "ssB0BUwP"}, {"displayName": "LTAMt2Nk", "namespace": "Tjfv58GP", "userId": "WasqO3JH"}], "permissions": [{"action": 98, "resource": "QCLgmHkp", "schedAction": 94, "schedCron": "hBRY6G5b", "schedRange": ["vsUSwBNd", "isiUvUR3", "k4MoRbn8"]}, {"action": 25, "resource": "3Rrx5YRr", "schedAction": 50, "schedCron": "juEbBlSI", "schedRange": ["kIrzKnfa", "ds0z3Nnd", "cYDJgaAs"]}, {"action": 8, "resource": "hSllqPOI", "schedAction": 15, "schedCron": "5t2tlLiX", "schedRange": ["5kegWrZk", "WeEThEvh", "cJOhxr7o"]}], "roleName": "vmDajHkR"}' \
    > test.out 2>&1
eval_tap $? 194 'AdminCreateRoleV3' test.out

#- 195 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'n8WqUsNB' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetRoleV3' test.out

#- 196 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '35f11CxC' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteRoleV3' test.out

#- 197 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '7lxf0YpH' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "mDBxRFl4"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRoleV3' test.out

#- 198 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'x6h6bkxS' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetRoleAdminStatusV3' test.out

#- 199 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'QrHH0SPg' \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateAdminRoleStatusV3' test.out

#- 200 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'y9tQC15D' \
    > test.out 2>&1
eval_tap $? 200 'AdminRemoveRoleAdminV3' test.out

#- 201 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'tgfmBdUO' \
    --after 'YTFxu54a' \
    --before '4nD0pnQo' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetRoleManagersV3' test.out

#- 202 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '5LyJvEj1' \
    --body '{"managers": [{"displayName": "DgHdlNnG", "namespace": "jBqm9MPv", "userId": "Gn31bO2f"}, {"displayName": "mT2YFgV4", "namespace": "WY1OD39Z", "userId": "rSFZFMPT"}, {"displayName": "XXhxr3Kn", "namespace": "nRE2LPzy", "userId": "8uQs2aea"}]}' \
    > test.out 2>&1
eval_tap $? 202 'AdminAddRoleManagersV3' test.out

#- 203 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '6NOr62AG' \
    --body '{"managers": [{"displayName": "hnSp7L6f", "namespace": "3lzDT7Ju", "userId": "cN3LGDX6"}, {"displayName": "HRL65qye", "namespace": "R7SVHET6", "userId": "fyYPvnqu"}, {"displayName": "zD48TEJi", "namespace": "eHmZrE2d", "userId": "I3QESI2l"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminRemoveRoleManagersV3' test.out

#- 204 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'RoaR8Wez' \
    --after 'yUudq5oy' \
    --before 'ejIU79pS' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetRoleMembersV3' test.out

#- 205 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'WPF9Vxlq' \
    --body '{"members": [{"displayName": "8H9CBbyy", "namespace": "oVHYUvqH", "userId": "2noc4RV1"}, {"displayName": "43qOtfPL", "namespace": "iP3oXUox", "userId": "qrowYXGu"}, {"displayName": "IbWwKqz2", "namespace": "ZeEuskUj", "userId": "QVfDjCdG"}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminAddRoleMembersV3' test.out

#- 206 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '2Yr4wBpJ' \
    --body '{"members": [{"displayName": "tnd66akj", "namespace": "r46mBb8b", "userId": "JLXuuIvB"}, {"displayName": "XBtr9qMD", "namespace": "YiWnU7og", "userId": "xUD6d6Pw"}, {"displayName": "vx5Hqc4O", "namespace": "NFSzFroi", "userId": "OnHHH5wk"}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminRemoveRoleMembersV3' test.out

#- 207 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'zDQeF13I' \
    --body '{"permissions": [{"action": 11, "resource": "OoSPFQfl", "schedAction": 71, "schedCron": "BBvPvtZn", "schedRange": ["6kec9DQO", "xSSkRsxH", "ncY4XO71"]}, {"action": 94, "resource": "28lfWhBh", "schedAction": 48, "schedCron": "O1IvHHtt", "schedRange": ["ZaqOMdr7", "NIRkvODc", "MbU6t5b2"]}, {"action": 57, "resource": "7sy1g2UO", "schedAction": 9, "schedCron": "xxpVn2sN", "schedRange": ["8MDuT0Vw", "vkT0gYpd", "1fe2pprP"]}]}' \
    > test.out 2>&1
eval_tap $? 207 'AdminUpdateRolePermissionsV3' test.out

#- 208 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'qkxZWxAh' \
    --body '{"permissions": [{"action": 31, "resource": "VALIXCM9", "schedAction": 99, "schedCron": "7PkXL6A0", "schedRange": ["NnC32TrJ", "3NcmjCi9", "V0mel356"]}, {"action": 44, "resource": "h2rTpJAl", "schedAction": 98, "schedCron": "ZSzYcHLt", "schedRange": ["9FcVpL30", "Yk3AmhfT", "8bK7jtZq"]}, {"action": 12, "resource": "6CZT0tC6", "schedAction": 60, "schedCron": "W3YHT6TC", "schedRange": ["fUSaExJB", "2wAtenr4", "3JMesTrg"]}]}' \
    > test.out 2>&1
eval_tap $? 208 'AdminAddRolePermissionsV3' test.out

#- 209 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'F78G300v' \
    --body '["Gtcr0S05", "wZ29Xqx7", "fO4vrNwv"]' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRolePermissionsV3' test.out

#- 210 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '93' \
    --resource 'ZiY8VI8z' \
    --roleId 'rFXqFRmJ' \
    > test.out 2>&1
eval_tap $? 210 'AdminDeleteRolePermissionV3' test.out

#- 211 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 211 'AdminGetMyUserV3' test.out

#- 212 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'qd1RC3rx' \
    --extendExp 'true' \
    --redirectUri 'bulqLdC1' \
    --password 'Jlbq7ljm' \
    --requestId 'pY2Nc87W' \
    --userName 'b7FXsFuK' \
    > test.out 2>&1
eval_tap $? 212 'UserAuthenticationV3' test.out

#- 213 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId '0WSd2AbK' \
    --linkingToken 'xse3lx8n' \
    --password 'V4X7ad3b' \
    --username 'JDkbtDvn' \
    > test.out 2>&1
eval_tap $? 213 'AuthenticationWithPlatformLinkV3' test.out

#- 214 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'i4g1tZao' \
    --extendExp 'true' \
    --linkingToken 'KjWCq3Dr' \
    > test.out 2>&1
eval_tap $? 214 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 215 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'UWJonm1y' \
    > test.out 2>&1
eval_tap $? 215 'RequestOneTimeLinkingCodeV3' test.out

#- 216 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'FG4VacHH' \
    > test.out 2>&1
eval_tap $? 216 'ValidateOneTimeLinkingCodeV3' test.out

#- 217 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'qmlhsWEx' \
    --isTransient 'false' \
    --clientId 'AUYWTlyZ' \
    --oneTimeLinkCode 'yVZLYQ7U' \
    > test.out 2>&1
eval_tap $? 217 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 218 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 218 'GetCountryLocationV3' test.out

#- 219 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 219 'Logout' test.out

#- 220 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'ZYDkvNGk' \
    > test.out 2>&1
eval_tap $? 220 'RequestTokenExchangeCodeV3' test.out

#- 221 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Vs0w7eAZ' \
    --userId '7DCdvIw4' \
    > test.out 2>&1
eval_tap $? 221 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 222 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hs1NESss' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 222 'RevokeUserV3' test.out

#- 223 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'vAZ0RYzG' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'VcOo2Zd1' \
    --redirectUri 'UafmidSg' \
    --scope 'ZOnr3aO2' \
    --state 'TIOxTC9a' \
    --targetAuthPage 'LM6UDpAm' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'c4UHQKur' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 223 'AuthorizeV3' test.out

#- 224 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'QSBYxfLH' \
    > test.out 2>&1
eval_tap $? 224 'TokenIntrospectionV3' test.out

#- 225 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 225 'GetJWKSV3' test.out

#- 226 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '9M8GlWvP' \
    --factor 'hBKAMswo' \
    --mfaToken 'JSoGnJKM' \
    > test.out 2>&1
eval_tap $? 226 'SendMFAAuthenticationCode' test.out

#- 227 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'BrLvHIeT' \
    --mfaToken 'L5EfFBBw' \
    > test.out 2>&1
eval_tap $? 227 'Change2faMethod' test.out

#- 228 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'zc6KZ5H0' \
    --factor 'IfJeUOil' \
    --mfaToken 'aQ7pEFYB' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 228 'Verify2faCode' test.out

#- 229 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Mf2AdUgm' \
    --userId 'LII7fKMl' \
    > test.out 2>&1
eval_tap $? 229 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 230 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'kLhiEFE6' \
    --clientId 'jYcsQV1a' \
    --redirectUri '9cTS0D79' \
    --requestId 'bgybnl2H' \
    > test.out 2>&1
eval_tap $? 230 'AuthCodeRequestV3' test.out

#- 231 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'oYn84qzR' \
    --additionalData 'YKEjy04s' \
    --clientId 'RjkRxL8h' \
    --createHeadless 'false' \
    --deviceId 'YKh280tR' \
    --macAddress '3AjMvQv8' \
    --platformToken 'LOLLhILv' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 231 'PlatformTokenGrantV3' test.out

#- 232 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 232 'GetRevocationListV3' test.out

#- 233 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '43JPhnOE' \
    > test.out 2>&1
eval_tap $? 233 'TokenRevocationV3' test.out

#- 234 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'S1xGKylz' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'IU0m0HY0' \
    > test.out 2>&1
eval_tap $? 234 'SimultaneousLoginV3' test.out

#- 235 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'votFygzD' \
    --clientId 's8X05RCL' \
    --code 'FarlWssU' \
    --codeVerifier 'xTRZdq2W' \
    --extendNamespace '4tg5zTS3' \
    --extendExp 'true' \
    --password '1Uq9VQqn' \
    --redirectUri 'x3doX44o' \
    --refreshToken '5WvaYOwT' \
    --username '2dqI8O5j' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 235 'TokenGrantV3' test.out

#- 236 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '3VOEk2v4' \
    > test.out 2>&1
eval_tap $? 236 'VerifyTokenV3' test.out

#- 237 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'AkvN3mhr' \
    --code 'SqeqOOnz' \
    --error 'vVH6uukn' \
    --openidAssocHandle '00RkNOjW' \
    --openidClaimedId 'nxuNRsHO' \
    --openidIdentity '9uyplccc' \
    --openidMode 'XptvYd2p' \
    --openidNs 'xyAeruCQ' \
    --openidOpEndpoint 'xZctknyC' \
    --openidResponseNonce '8bIEEgtc' \
    --openidReturnTo 'aKoIBkVE' \
    --openidSig '15QP8HEh' \
    --openidSigned 'KxLbvMsZ' \
    --state '54K7BEF6' \
    > test.out 2>&1
eval_tap $? 237 'PlatformAuthenticationV3' test.out

#- 238 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'tPo30EwY' \
    --platformToken 'Kmvsw4cy' \
    > test.out 2>&1
eval_tap $? 238 'PlatformTokenRefreshV3' test.out

#- 239 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'nrVcecGx' \
    > test.out 2>&1
eval_tap $? 239 'PublicGetInputValidations' test.out

#- 240 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'dDZpUzHi' \
    > test.out 2>&1
eval_tap $? 240 'PublicGetInputValidationByField' test.out

#- 241 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'd40V3DwR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'PublicGetCountryAgeRestrictionV3' test.out

#- 242 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'LgItBbkh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'PublicGetConfigValueV3' test.out

#- 243 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 243 'PublicGetCountryListV3' test.out

#- 244 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 244 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 245 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId '4YjLke6N' \
    > test.out 2>&1
eval_tap $? 245 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 246 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2Q2f1mSB' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["cpn88KgM", "Usr2EkCV", "94jmZXZs"]}' \
    > test.out 2>&1
eval_tap $? 246 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 247 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 't0TMpkp6' \
    --platformUserId 'LoSW595D' \
    > test.out 2>&1
eval_tap $? 247 'PublicGetUserByPlatformUserIDV3' test.out

#- 248 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'twS1ZtSn' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetAsyncStatus' test.out

#- 249 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'il9JxzJ9' \
    --limit '19' \
    --offset '78' \
    --platformBy 'FNeoTLlr' \
    --platformId '9HVlluvf' \
    --query '01Ow1Gea' \
    > test.out 2>&1
eval_tap $? 249 'PublicSearchUserV3' test.out

#- 250 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "VlC6LAKk", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "sA0cApXA", "policyId": "EltaUTgw", "policyVersionId": "oJVbVyAL"}, {"isAccepted": true, "localizedPolicyVersionId": "VKnNsTBh", "policyId": "z2OpV6RS", "policyVersionId": "uidbygsn"}, {"isAccepted": false, "localizedPolicyVersionId": "nYbLh9Zt", "policyId": "xYVNjtVQ", "policyVersionId": "fHCVJUW7"}], "authType": "DeK9jPF6", "code": "2cgotlCP", "country": "t7tdpwL4", "dateOfBirth": "W5hjgR9x", "displayName": "HwiDg8Sh", "emailAddress": "FqaNkQ3W", "password": "TKMFrNvH", "reachMinimumAge": true, "uniqueDisplayName": "hrwUGZEF"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateUserV3' test.out

#- 251 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'W2PbIZDH' \
    --query 'KTML9VeO' \
    > test.out 2>&1
eval_tap $? 251 'CheckUserAvailability' test.out

#- 252 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TPRh76Vt", "8xOSyd1a", "fumQmRjy"]}' \
    > test.out 2>&1
eval_tap $? 252 'PublicBulkGetUsers' test.out

#- 253 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "8uqHbU5F", "languageTag": "hra1LTl4"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicSendRegistrationCode' test.out

#- 254 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "48JzDhmA", "emailAddress": "ziJzLneQ"}' \
    > test.out 2>&1
eval_tap $? 254 'PublicVerifyRegistrationCode' test.out

#- 255 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "mV6N96tQ", "languageTag": "DaIfLA03"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicForgotPasswordV3' test.out

#- 256 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'Pyx3Lf6q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 256 'GetAdminInvitationV3' test.out

#- 257 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'foT6TjY9' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "vS9Xioa0", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "YNVwEYa7", "policyId": "LQfFy5KP", "policyVersionId": "41DuU29E"}, {"isAccepted": true, "localizedPolicyVersionId": "8Qrrfw2R", "policyId": "BTQoDMGE", "policyVersionId": "sbnQasgd"}, {"isAccepted": true, "localizedPolicyVersionId": "e2ixRYxn", "policyId": "cxY1GOlU", "policyVersionId": "cIIsZ92e"}], "authType": "rJibqdQm", "code": "TFQse22m", "country": "b275QQCV", "dateOfBirth": "DTxxN8G5", "displayName": "XiQL4tpR", "emailAddress": "Lv5f9PGy", "password": "1RMjoHnf", "reachMinimumAge": true, "uniqueDisplayName": "Qwhw7pOk"}' \
    > test.out 2>&1
eval_tap $? 257 'CreateUserFromInvitationV3' test.out

#- 258 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "VgxWM3F4", "country": "ojl7OcYK", "dateOfBirth": "Udjm0B4R", "displayName": "A36nVJ7F", "languageTag": "TXRYHy5K", "uniqueDisplayName": "wAwqk0ql", "userName": "pFDlwehB"}' \
    > test.out 2>&1
eval_tap $? 258 'UpdateUserV3' test.out

#- 259 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "oKnPTbD7", "country": "vxCB4oy4", "dateOfBirth": "KUKQ2tbD", "displayName": "ubmLQoX8", "languageTag": "Meyq4RbT", "uniqueDisplayName": "plVNfCH4", "userName": "lzoUxtv1"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicPartialUpdateUserV3' test.out

#- 260 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "cWXc6Pdx", "emailAddress": "8kbSCUrg", "languageTag": "bIvOg2oA"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicSendVerificationCodeV3' test.out

#- 261 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "wQcE4muQ", "contactType": "L68imMDP", "languageTag": "ryB5kM3q", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 261 'PublicUserVerificationV3' test.out

#- 262 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ytZyTG6k", "country": "zmawAL46", "dateOfBirth": "DlSHIK91", "displayName": "NDf3n6P8", "emailAddress": "XwLp27wl", "password": "HG61gJR1", "uniqueDisplayName": "bdN1BMXG", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 262 'PublicUpgradeHeadlessAccountV3' test.out

#- 263 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "WRITZyLm", "password": "Xwm1Gfna"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicVerifyHeadlessAccountV3' test.out

#- 264 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "asBxU4e0", "newPassword": "S2wdRhMP", "oldPassword": "PR9PXOvq"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicUpdatePasswordV3' test.out

#- 265 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'JjV6zWYz' \
    > test.out 2>&1
eval_tap $? 265 'PublicCreateJusticeUser' test.out

#- 266 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SUgFBNQc' \
    --redirectUri 'SZd2Qhc2' \
    --ticket 'KWGZLs5I' \
    > test.out 2>&1
eval_tap $? 266 'PublicPlatformLinkV3' test.out

#- 267 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WfDEUFd4' \
    --body '{"platformNamespace": "5oc8uEVL"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicPlatformUnlinkV3' test.out

#- 268 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yeLHj6DI' \
    > test.out 2>&1
eval_tap $? 268 'PublicPlatformUnlinkAllV3' test.out

#- 269 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5KgPc4Zk' \
    --ticket 'h5ylfkDt' \
    > test.out 2>&1
eval_tap $? 269 'PublicForcePlatformLinkV3' test.out

#- 270 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'N5ILT5kv' \
    --clientId 'PQV4harY' \
    --redirectUri '5LRVTlyS' \
    > test.out 2>&1
eval_tap $? 270 'PublicWebLinkPlatform' test.out

#- 271 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'mepv9GmS' \
    --code 'Py5wa0Vj' \
    --state 'lbBQh0vo' \
    > test.out 2>&1
eval_tap $? 271 'PublicWebLinkPlatformEstablish' test.out

#- 272 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'f2fTXLqP' \
    --code 'WlbAXssy' \
    --state 'kGNreZVr' \
    > test.out 2>&1
eval_tap $? 272 'PublicProcessWebLinkPlatformV3' test.out

#- 273 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "QOFrNkXz", "userIds": ["F9BrupJH", "AKYE9gOa", "l0GtRrTj"]}' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUsersPlatformInfosV3' test.out

#- 274 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8nDTEnCt", "emailAddress": "OHxNWXOq", "newPassword": "fTF0wCnW"}' \
    > test.out 2>&1
eval_tap $? 274 'ResetPasswordV3' test.out

#- 275 PublicGetUserByUserIdV3
eval_tap 0 275 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 276 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '0f4w1ZTH' \
    --activeOnly 'true' \
    --after 'D0COASlf' \
    --before 'mlcF843s' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserBanHistoryV3' test.out

#- 277 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '6N6Ch1B9' \
    > test.out 2>&1
eval_tap $? 277 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 278 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fwf6qpXD' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetUserInformationV3' test.out

#- 279 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OCxCcH6p' \
    --after '0.12211880998141678' \
    --before '0.20358359691956496' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetUserLoginHistoriesV3' test.out

#- 280 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Y6lQYr1B' \
    --after '3KzM7Czs' \
    --before 'v805HjIM' \
    --limit '10' \
    --platformId 'IlNqaECn' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetUserPlatformAccountsV3' test.out

#- 281 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uTz7G9QL' \
    > test.out 2>&1
eval_tap $? 281 'PublicListJusticePlatformAccountsV3' test.out

#- 282 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '8TyLWXhF' \
    --body '{"platformId": "a83ahtHO", "platformUserId": "qpAnSQov"}' \
    > test.out 2>&1
eval_tap $? 282 'PublicLinkPlatformAccount' test.out

#- 283 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'vUGTJQG2' \
    --body '{"chosenNamespaces": ["xR32Qzld", "rfbPNkkc", "ZpBGl1co"], "requestId": "attnEpt5"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicForceLinkPlatformWithProgression' test.out

#- 284 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '0mykWFZv' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetPublisherUserV3' test.out

#- 285 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vCz8O30M' \
    --password 'RAXwFDUm' \
    > test.out 2>&1
eval_tap $? 285 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 286 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'zxP8qMga' \
    --before 'DthhpBdr' \
    --isWildcard 'false' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetRolesV3' test.out

#- 287 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'wQIMEuaG' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetRoleV3' test.out

#- 288 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetMyUserV3' test.out

#- 289 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'Y1DYPwIS' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 290 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["JvJwR0Xz", "Gv67GpKF", "RkCiOF3d"], "oneTimeLinkCode": "WAqS5vF7"}' \
    > test.out 2>&1
eval_tap $? 290 'LinkHeadlessAccountToMyAccountV3' test.out

#- 291 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "DlmdbulQ"}' \
    > test.out 2>&1
eval_tap $? 291 'PublicSendVerificationLinkV3' test.out

#- 292 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'g3zRXAIb' \
    > test.out 2>&1
eval_tap $? 292 'PublicVerifyUserByLinkV3' test.out

#- 293 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'TJxS4t8a' \
    --code 'aCgrDSax' \
    --error 'XASEwLmx' \
    --state 'GyY6sv0X' \
    > test.out 2>&1
eval_tap $? 293 'PlatformAuthenticateSAMLV3Handler' test.out

#- 294 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'Yn85j5Mw' \
    --payload 'QVDsIzoG' \
    > test.out 2>&1
eval_tap $? 294 'LoginSSOClient' test.out

#- 295 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '3cOM2oE6' \
    > test.out 2>&1
eval_tap $? 295 'LogoutSSOClient' test.out

#- 296 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'dmk7Oy9e' \
    --code 'D1JDitRS' \
    > test.out 2>&1
eval_tap $? 296 'RequestTargetTokenResponseV3' test.out

#- 297 PlatformTokenRefreshV3Deprecate
eval_tap 0 297 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 298 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'XbL8wquN' \
    > test.out 2>&1
eval_tap $? 298 'AdminGetDevicesByUserV4' test.out

#- 299 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'NlMamdf3' \
    --endDate '96UgfiNs' \
    --limit '4' \
    --offset '44' \
    --startDate '5jJVEmuy' \
    > test.out 2>&1
eval_tap $? 299 'AdminGetBannedDevicesV4' test.out

#- 300 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Zdz8WGPk' \
    > test.out 2>&1
eval_tap $? 300 'AdminGetUserDeviceBansV4' test.out

#- 301 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "otCTG4mo", "deviceId": "FJ8mdf20", "deviceType": "0kUiigiE", "enabled": true, "endDate": "rfpwiyFm", "ext": {"GG3c2JKj": {}, "O30wTrjH": {}, "PRCNgAhG": {}}, "reason": "9YYXvvcf"}' \
    > test.out 2>&1
eval_tap $? 301 'AdminBanDeviceV4' test.out

#- 302 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'uYTrSYGS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminGetDeviceBanV4' test.out

#- 303 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'oFtPEl6e' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 303 'AdminUpdateDeviceBanV4' test.out

#- 304 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'wl1XAhsm' \
    --startDate 'o7zbREzD' \
    --deviceType 'BowBPuQO' \
    > test.out 2>&1
eval_tap $? 304 'AdminGenerateReportV4' test.out

#- 305 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'AdminGetDeviceTypesV4' test.out

#- 306 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '41OYbBwz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'AdminGetDeviceBansV4' test.out

#- 307 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'CsiLAG4Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 307 'AdminDecryptDeviceV4' test.out

#- 308 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'Mm77UjmZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 308 'AdminUnbanDeviceV4' test.out

#- 309 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'nXUaD6k8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 309 'AdminGetUsersByDeviceV4' test.out

#- 310 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 70}' \
    > test.out 2>&1
eval_tap $? 310 'AdminCreateTestUsersV4' test.out

#- 311 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "AS4KcxDP", "policyId": "b84IlQwb", "policyVersionId": "CqpiZAMv"}, {"isAccepted": false, "localizedPolicyVersionId": "iMrR0EDO", "policyId": "qFLFhZ3x", "policyVersionId": "aixjgxkE"}, {"isAccepted": true, "localizedPolicyVersionId": "apubGAqo", "policyId": "uZ0711lZ", "policyVersionId": "skpo8CWY"}], "authType": "EMAILPASSWD", "code": "WRyuwQwX", "country": "qJnddIwt", "dateOfBirth": "zAoyPEHC", "displayName": "dlJK1SsL", "emailAddress": "q5lHMNKY", "password": "tyQ4cOz0", "passwordMD5Sum": "7Eoz71bq", "reachMinimumAge": true, "uniqueDisplayName": "apPP8uvs", "username": "IRmM1O8s"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminCreateUserV4' test.out

#- 312 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["P3FGtuB9", "5kZHR6ZE", "u3pqnV4N"]}' \
    > test.out 2>&1
eval_tap $? 312 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 313 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["cffkLc6Z", "9LKj76IN", "hyDe9two"]}' \
    > test.out 2>&1
eval_tap $? 313 'AdminBulkCheckValidUserIDV4' test.out

#- 314 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'MMdWJg4U' \
    --body '{"avatarUrl": "U2JQzH1t", "country": "en2LdpeR", "dateOfBirth": "wM0D25fk", "displayName": "L8oqpsBK", "languageTag": "fZDHng4v", "uniqueDisplayName": "Sn5dSIik", "userName": "ONEgMmKh"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminUpdateUserV4' test.out

#- 315 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'W02hahhQ' \
    --body '{"code": "2wLeuSqT", "emailAddress": "f8nTSBmz"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminUpdateUserEmailAddressV4' test.out

#- 316 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HlQyGfer' \
    > test.out 2>&1
eval_tap $? 316 'AdminDisableUserMFAV4' test.out

#- 317 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'lMjrIg61' \
    > test.out 2>&1
eval_tap $? 317 'AdminListUserRolesV4' test.out

#- 318 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'nv6WmrFW' \
    --body '{"assignedNamespaces": ["tPuXutto", "a8buciXa", "rkl5G2Bb"], "roleId": "3CSdGghS"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateUserRoleV4' test.out

#- 319 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'qNXhw4C4' \
    --body '{"assignedNamespaces": ["O0yqDoLX", "zVM2SWrV", "1dxiy7zZ"], "roleId": "AQ7X8eyN"}' \
    > test.out 2>&1
eval_tap $? 319 'AdminAddUserRoleV4' test.out

#- 320 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'c4OwTvsl' \
    --body '{"assignedNamespaces": ["plxOQPxd", "OOa7U8ep", "Dpq00ENE"], "roleId": "OQRt9kBi"}' \
    > test.out 2>&1
eval_tap $? 320 'AdminRemoveUserRoleV4' test.out

#- 321 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '2' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 321 'AdminGetRolesV4' test.out

#- 322 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "ym6iOksE"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminCreateRoleV4' test.out

#- 323 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'oJ1uyf8F' \
    > test.out 2>&1
eval_tap $? 323 'AdminGetRoleV4' test.out

#- 324 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '2Trw6SC4' \
    > test.out 2>&1
eval_tap $? 324 'AdminDeleteRoleV4' test.out

#- 325 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'GaLRUDNY' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "y0sTUNdh"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminUpdateRoleV4' test.out

#- 326 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '8R1sjurW' \
    --body '{"permissions": [{"action": 21, "resource": "Y1eRJnbr", "schedAction": 84, "schedCron": "OGXzT7oi", "schedRange": ["CXKB4ibB", "dQtQErGz", "fAIIsGti"]}, {"action": 34, "resource": "gsvPqQfQ", "schedAction": 11, "schedCron": "1BfO6rgw", "schedRange": ["FIlYncsu", "Fz6c6KZK", "RfK2P2eg"]}, {"action": 81, "resource": "7LIB585r", "schedAction": 16, "schedCron": "n1NtRVJP", "schedRange": ["VWHJmuY7", "FFhIlWxz", "jMtrkmrZ"]}]}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateRolePermissionsV4' test.out

#- 327 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'codXujHj' \
    --body '{"permissions": [{"action": 17, "resource": "QcHlU8Yw", "schedAction": 42, "schedCron": "B2ldIr4s", "schedRange": ["7tOwdLiK", "95cJI5Ou", "2gzdOqGp"]}, {"action": 93, "resource": "Z6DJYmGR", "schedAction": 93, "schedCron": "kX6qYC5E", "schedRange": ["xSNK9zTP", "g6WdNfNx", "c8qrfxS8"]}, {"action": 91, "resource": "6FwFoTtD", "schedAction": 72, "schedCron": "3ZuY0gqm", "schedRange": ["5IzkhulY", "uPfxWh4q", "KRbP0fkA"]}]}' \
    > test.out 2>&1
eval_tap $? 327 'AdminAddRolePermissionsV4' test.out

#- 328 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '3ziOyOKu' \
    --body '["zJjA17q8", "yRBkyYmX", "2nbhz3NK"]' \
    > test.out 2>&1
eval_tap $? 328 'AdminDeleteRolePermissionsV4' test.out

#- 329 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'iWOhqwYi' \
    --after 'ZBYw5sNB' \
    --before 'vbICkRDZ' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 329 'AdminListAssignedUsersV4' test.out

#- 330 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'PBUkW0o3' \
    --body '{"assignedNamespaces": ["esYRCoOZ", "qon9OhIX", "IIS3Uud0"], "namespace": "88gv2eK8", "userId": "hNwiuKJk"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminAssignUserToRoleV4' test.out

#- 331 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'yQpsgNwy' \
    --body '{"namespace": "ltsKvpw1", "userId": "2eB0R3R4"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminRevokeUserFromRoleV4' test.out

#- 332 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["ng2c939z", "2RAJMZXw", "k4GZ4kni"], "emailAddresses": ["QF64cBui", "bszLOmrg", "13KTIUrB"], "isAdmin": true, "isNewStudio": true, "namespace": "XmJOdj5d", "roleId": "M7mEJwVu"}' \
    > test.out 2>&1
eval_tap $? 332 'AdminInviteUserNewV4' test.out

#- 333 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "b60u7Skf", "country": "5BQgcdfZ", "dateOfBirth": "WLe4EfP2", "displayName": "tmeDt2Vj", "languageTag": "YsA492Ik", "uniqueDisplayName": "yG6Obumr", "userName": "GJxnrHIE"}' \
    > test.out 2>&1
eval_tap $? 333 'AdminUpdateMyUserV4' test.out

#- 334 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminDisableMyAuthenticatorV4' test.out

#- 335 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '3XXfdbkv' \
    > test.out 2>&1
eval_tap $? 335 'AdminEnableMyAuthenticatorV4' test.out

#- 336 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 337 AdminGetMyBackupCodesV4
eval_tap 0 337 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 338 AdminGenerateMyBackupCodesV4
eval_tap 0 338 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 339 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 339 'AdminDisableMyBackupCodesV4' test.out

#- 340 AdminDownloadMyBackupCodesV4
eval_tap 0 340 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 341 AdminEnableMyBackupCodesV4
eval_tap 0 341 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 342 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 342 'AdminGetBackupCodesV4' test.out

#- 343 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 343 'AdminGenerateBackupCodesV4' test.out

#- 344 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 344 'AdminEnableBackupCodesV4' test.out

#- 345 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 345 'AdminSendMyMFAEmailCodeV4' test.out

#- 346 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 346 'AdminDisableMyEmailV4' test.out

#- 347 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'H1q4UG1A' \
    > test.out 2>&1
eval_tap $? 347 'AdminEnableMyEmailV4' test.out

#- 348 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 348 'AdminGetMyEnabledFactorsV4' test.out

#- 349 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '3fbpKvU0' \
    > test.out 2>&1
eval_tap $? 349 'AdminMakeFactorMyDefaultV4' test.out

#- 350 AdminInviteUserV4
eval_tap 0 350 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 351 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "me67UdCV", "policyId": "uGnMnClJ", "policyVersionId": "NcTuMiKu"}, {"isAccepted": true, "localizedPolicyVersionId": "t4M7mFT1", "policyId": "23RLF9K5", "policyVersionId": "iQZzRb2W"}, {"isAccepted": false, "localizedPolicyVersionId": "0t39KDDI", "policyId": "XJfZfsdK", "policyVersionId": "GVtN4UvX"}], "authType": "EMAILPASSWD", "country": "dcciQQNl", "dateOfBirth": "Yul1PNLN", "displayName": "BPdYzLmH", "emailAddress": "kNvYaQsW", "password": "O7PR1y5U", "passwordMD5Sum": "ahKukhX4", "uniqueDisplayName": "iFm7OTGw", "username": "7jO7pBL6", "verified": false}' \
    > test.out 2>&1
eval_tap $? 351 'PublicCreateTestUserV4' test.out

#- 352 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "QERaqM69", "policyId": "8NTemUjp", "policyVersionId": "8sl08LU3"}, {"isAccepted": true, "localizedPolicyVersionId": "ElmjbSCR", "policyId": "G6io5bxM", "policyVersionId": "9z3uRCnK"}, {"isAccepted": false, "localizedPolicyVersionId": "OJxO66Fd", "policyId": "twRbPJBv", "policyVersionId": "f5lqCgm3"}], "authType": "EMAILPASSWD", "code": "CF8b0opi", "country": "8K9Bjm7w", "dateOfBirth": "kyQ7y3xy", "displayName": "qTNWm68f", "emailAddress": "3AFC0PwG", "password": "3ATz1GDY", "passwordMD5Sum": "1sALz1fi", "reachMinimumAge": false, "uniqueDisplayName": "OBSNdpAs", "username": "6TXtpR8u"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicCreateUserV4' test.out

#- 353 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'KFj6VokO' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "SOFdaRgs", "policyId": "BBVIJCsV", "policyVersionId": "XPdbek9h"}, {"isAccepted": true, "localizedPolicyVersionId": "bKkmBZud", "policyId": "MKw72CNh", "policyVersionId": "L8T0aI3Y"}, {"isAccepted": false, "localizedPolicyVersionId": "F2gF9gmD", "policyId": "egIeleYy", "policyVersionId": "UFw8X48b"}], "authType": "EMAILPASSWD", "code": "cGwSZrQM", "country": "venIWTP3", "dateOfBirth": "xW4zCu2i", "displayName": "XqUnYJbC", "emailAddress": "6rOh7C2U", "password": "pD59M5Dz", "passwordMD5Sum": "F4hIjd1R", "reachMinimumAge": true, "uniqueDisplayName": "dzvmSFF0", "username": "EKInCW29"}' \
    > test.out 2>&1
eval_tap $? 353 'CreateUserFromInvitationV4' test.out

#- 354 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "Ab3yHld9", "country": "xFoNWhtG", "dateOfBirth": "yv2ACaHT", "displayName": "K2hehGDJ", "languageTag": "241JdDI1", "uniqueDisplayName": "yXMBh8WH", "userName": "td4GFsWN"}' \
    > test.out 2>&1
eval_tap $? 354 'PublicUpdateUserV4' test.out

#- 355 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "yKi5GpAw", "emailAddress": "JEwjpdLs"}' \
    > test.out 2>&1
eval_tap $? 355 'PublicUpdateUserEmailAddressV4' test.out

#- 356 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vwvLxPXc", "country": "PtAbUZeK", "dateOfBirth": "ki6101av", "displayName": "a3wIYYk1", "emailAddress": "AWP2GSS8", "password": "oEr6McT5", "reachMinimumAge": false, "uniqueDisplayName": "IGQGgivH", "username": "kQ2HNE4K", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 356 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 357 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "EwNmzW2h", "password": "fY3J1lOq", "username": "9T3JQaHB"}' \
    > test.out 2>&1
eval_tap $? 357 'PublicUpgradeHeadlessAccountV4' test.out

#- 358 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDisableMyAuthenticatorV4' test.out

#- 359 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'L3JELuMw' \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyAuthenticatorV4' test.out

#- 360 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 361 PublicGetMyBackupCodesV4
eval_tap 0 361 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 362 PublicGenerateMyBackupCodesV4
eval_tap 0 362 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 363 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 363 'PublicDisableMyBackupCodesV4' test.out

#- 364 PublicDownloadMyBackupCodesV4
eval_tap 0 364 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 365 PublicEnableMyBackupCodesV4
eval_tap 0 365 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 366 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 366 'PublicGetBackupCodesV4' test.out

#- 367 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGenerateBackupCodesV4' test.out

#- 368 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 368 'PublicEnableBackupCodesV4' test.out

#- 369 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 369 'PublicRemoveTrustedDeviceV4' test.out

#- 370 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 370 'PublicSendMyMFAEmailCodeV4' test.out

#- 371 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 371 'PublicDisableMyEmailV4' test.out

#- 372 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'mNy5yt9K' \
    > test.out 2>&1
eval_tap $? 372 'PublicEnableMyEmailV4' test.out

#- 373 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 373 'PublicGetMyEnabledFactorsV4' test.out

#- 374 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'ZczD0Oxr' \
    > test.out 2>&1
eval_tap $? 374 'PublicMakeFactorMyDefaultV4' test.out

#- 375 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId '6AQk7UUe' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 376 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "VmP5fwgO", "emailAddress": "shCaWW4F", "namespace": "VE96sRIE", "namespaceDisplayName": "SajMfJ4Z"}' \
    > test.out 2>&1
eval_tap $? 376 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE