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
echo "1..363"

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
    --body '[{"field": "puQX4kPQ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["uUZv67Ep", "E0nzpQP8", "txQKExrd"], "preferRegex": true, "regex": "atnephES"}, "blockedWord": ["4ZXI3n3Z", "HEHyj8XA", "qeQZ0teU"], "description": [{"language": "2r74wwfy", "message": ["3mRCc6nu", "k8y5SWVU", "w7JDaOL3"]}, {"language": "hKoIQ8zt", "message": ["NcCJ4a6F", "PcQEm7wU", "cn8q5oxo"]}, {"language": "TtLJqnoP", "message": ["NpLMTfPj", "yhpkXHqZ", "bxx63HcV"]}], "isCustomRegex": true, "letterCase": "5B6eFq5R", "maxLength": 51, "maxRepeatingAlphaNum": 8, "maxRepeatingSpecialCharacter": 47, "minCharType": 0, "minLength": 48, "regex": "8DxBf9m9", "specialCharacterLocation": "YRPilS6N", "specialCharacters": ["8GX0NxIX", "f8eeG2CP", "vgfThw1M"]}}, {"field": "Xfbbe7Kz", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["o2BDIDyJ", "nzyuqVVE", "10pfAUdu"], "preferRegex": false, "regex": "YKVcKGZr"}, "blockedWord": ["XmopC9fi", "gvVqIL7o", "KWmnXFdO"], "description": [{"language": "GYvoVRWB", "message": ["MDDY7JcG", "O6SOiDxw", "L75R5GxT"]}, {"language": "sqjxqDQU", "message": ["2r6faCy1", "eghBxtWl", "2XBHMjNK"]}, {"language": "mp9Z7DM3", "message": ["nhOWTdfk", "1ubTJl26", "nQLZckY6"]}], "isCustomRegex": false, "letterCase": "MFkI4hVt", "maxLength": 53, "maxRepeatingAlphaNum": 7, "maxRepeatingSpecialCharacter": 74, "minCharType": 86, "minLength": 4, "regex": "Td2uABPm", "specialCharacterLocation": "VzU8ezTP", "specialCharacters": ["iH9IG7nz", "4TlVPl4g", "JvkqRjtu"]}}, {"field": "FDciU7Ch", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["MBZsmUJ9", "AEAJxriP", "9MsEohWX"], "preferRegex": true, "regex": "noyd6drr"}, "blockedWord": ["tGAUTBDm", "UeWOAZOW", "G4qBCx4g"], "description": [{"language": "x2Rchzyb", "message": ["Vvuh9gwa", "SSgAPWiC", "Ey803caA"]}, {"language": "4IXr4C1D", "message": ["49BYvdDZ", "pmweqjPp", "KMtmHAFj"]}, {"language": "ThRi8Kum", "message": ["QCUi5oSD", "TYXQ1bKf", "LUFRDpz6"]}], "isCustomRegex": false, "letterCase": "xJ5qwXtV", "maxLength": 100, "maxRepeatingAlphaNum": 65, "maxRepeatingSpecialCharacter": 72, "minCharType": 20, "minLength": 67, "regex": "SKRrj2el", "specialCharacterLocation": "ZBTbpiAE", "specialCharacters": ["klBmdd1t", "2E5FqPqU", "GpNRc3Ug"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field '25EVeN2i' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'mJg6CsNY' \
    --before 'i4js81Fm' \
    --limit '95' \
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
    --body '{"ageRestriction": 68, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'ivkMBNUK' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 6}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '3K4VZrl5' \
    --limit '63' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "ZJoLbgKu", "comment": "Kuk4bUpq", "endDate": "9xkwdymo", "reason": "re2agXgw", "skipNotif": false, "userIds": ["O12jJuh8", "yGauYAFv", "pD8aN647"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "0IEMxPpa", "userId": "Vsl28b3I"}, {"banId": "kZ6lK7bF", "userId": "lnEyKw9F"}, {"banId": "Ri31O7qN", "userId": "BVYTyyFV"}]}' \
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
    --clientId '18LSAd4O' \
    --clientName 'O5vD6tXP' \
    --clientType 'KMQ3XmiQ' \
    --limit '37' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["AXrKXy21", "m7LChobt", "0OZiTYzc"], "baseUri": "GtavI9fG", "clientId": "TaLNQuq8", "clientName": "dRuL66zK", "clientPermissions": [{"action": 1, "resource": "9zMyisGK", "schedAction": 44, "schedCron": "sUwPNhoT", "schedRange": ["smKA7Jh6", "AOUriV84", "V5UgUkha"]}, {"action": 36, "resource": "2SzPY3V2", "schedAction": 85, "schedCron": "TGL8jbL0", "schedRange": ["3cZvq6Ec", "dQF8BW4t", "uzHJvRph"]}, {"action": 56, "resource": "NSIaZkXp", "schedAction": 56, "schedCron": "LvUkU467", "schedRange": ["GFUW8qdF", "7VUvqqyk", "GQ3b0Dfq"]}], "clientPlatform": "IPwug93i", "deletable": false, "description": "kgW413Gz", "namespace": "b4kiInA3", "oauthAccessTokenExpiration": 67, "oauthAccessTokenExpirationTimeUnit": "LfI2mwLp", "oauthClientType": "KfsXyz6E", "oauthRefreshTokenExpiration": 69, "oauthRefreshTokenExpirationTimeUnit": "JTS3nLIr", "parentNamespace": "CwXgETMj", "redirectUri": "zlZasVYc", "scopes": ["olCT2n3s", "12IpyLlQ", "eW095myj"], "secret": "JYB2Nt5p", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'qjEmWB7U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'E8UgDaur' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'EfSV5cXs' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["gCqN2wN1", "fIhYteRL", "0Nyg9uUS"], "baseUri": "2iEzjOJ9", "clientName": "LcCuLYGe", "clientPermissions": [{"action": 26, "resource": "JgFiWSzf", "schedAction": 51, "schedCron": "cWmUBMb5", "schedRange": ["ekgLI9T4", "lxH4evr8", "ET3KwIBX"]}, {"action": 91, "resource": "PZV2chhZ", "schedAction": 1, "schedCron": "iwUsBpk2", "schedRange": ["S9kFdcmZ", "d0LBrwqI", "RgCTqYlw"]}, {"action": 26, "resource": "X3PGyLTT", "schedAction": 89, "schedCron": "SuvE9wzm", "schedRange": ["fNA13rwJ", "Yoodruds", "ofuRVhxJ"]}], "clientPlatform": "MOEHbRT0", "deletable": false, "description": "p6uGvUkD", "namespace": "0h8vtZUs", "oauthAccessTokenExpiration": 90, "oauthAccessTokenExpirationTimeUnit": "HVGwjuS1", "oauthRefreshTokenExpiration": 72, "oauthRefreshTokenExpirationTimeUnit": "djCsdC6A", "redirectUri": "bSehJkwG", "scopes": ["xwiPpWq2", "sdXM1PUv", "meUMbExA"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'olJ0gx5I' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 38, "resource": "sDvdrvAi"}, {"action": 29, "resource": "iFePsgro"}, {"action": 34, "resource": "AP0E2MEU"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '8fD2Inzt' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 35, "resource": "24VZC8YW"}, {"action": 54, "resource": "mZybL6KB"}, {"action": 15, "resource": "vAJ0RDHu"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '39' \
    --clientId '6pm4O7pn' \
    --namespace $AB_NAMESPACE \
    --resource '1NnaQcvj' \
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
    --body '{"blacklist": ["v7m98Ssx", "nNM6lMsp", "QVn4QXUH"]}' \
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
    --limit '32' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9oiYKJlt' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'v0mbzroD' \
    --body '{"ACSURL": "RgyJtCis", "AWSCognitoRegion": "MQQQBeNc", "AWSCognitoUserPool": "qIuQsrc8", "AllowedClients": ["C5G64nQK", "8ZftEYbP", "M8uGUKcN"], "AppId": "UgFHcydD", "AuthorizationEndpoint": "aSii9be1", "ClientId": "n3ux9Iu3", "Environment": "IcpMCih5", "FederationMetadataURL": "wbz0xMno", "GenericOauthFlow": false, "IsActive": false, "Issuer": "MjPIgQsr", "JWKSEndpoint": "hY7jUbr4", "KeyID": "XE3Hd2KN", "NetflixCertificates": {"encryptedPrivateKey": "nM5RUhvG", "encryptedPrivateKeyName": "5Xa1VB82", "publicCertificate": "0hEU6tqd", "publicCertificateName": "cvCunZyu", "rootCertificate": "dtSUUmRX", "rootCertificateName": "g65oNObq"}, "OrganizationId": "e1p4KcOW", "PlatformName": "F9tfUtl8", "RedirectUri": "9qaGA8mT", "RegisteredDomains": [{"affectedClientIDs": ["DTRvFAYU", "ByWyQbih", "1IrLqMnt"], "domain": "87JGbJR4", "namespaces": ["uXY08bxm", "OtkRqrFm", "5fIdKxMF"], "roleId": "VjkEsgfD"}, {"affectedClientIDs": ["BfCEo8Jz", "oVaCUF1V", "wZQ8aPyY"], "domain": "8rqE7CKc", "namespaces": ["HIXPYuWn", "lz0JAPX3", "7HZN1SN5"], "roleId": "JPRItjQV"}, {"affectedClientIDs": ["T6cB24z3", "Cjz15bnE", "p8JrHAHp"], "domain": "VjoACHzE", "namespaces": ["n7IuoMbb", "nrDWPuNO", "qFNpHMpR"], "roleId": "huva4fwc"}], "Secret": "AlbYIsKh", "TeamID": "eGFjhHPW", "TokenAuthenticationType": "gzD1TZOS", "TokenClaimsMapping": {"HDmOtU1R": "VbHfrqsa", "i7jWkJtq": "HQX9O35w", "zIMGzrB1": "al8hEJdI"}, "TokenEndpoint": "NzoDCcZ7", "UserInfoEndpoint": "S1fgGSjJ", "UserInfoHTTPMethod": "kx9fO60t", "scopes": ["7jcXszxA", "5AcCHwjM", "PZG4p3QR"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'D0S3izry' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jS7hQEu3' \
    --body '{"ACSURL": "q3N64kIP", "AWSCognitoRegion": "NdfioYwU", "AWSCognitoUserPool": "aG0SY2Kc", "AllowedClients": ["nf30IVhT", "d3AWPwPg", "qQXyrp83"], "AppId": "kFFsYSSp", "AuthorizationEndpoint": "gp7GScOL", "ClientId": "Is4B48Pq", "Environment": "zm3fL9M9", "FederationMetadataURL": "SEkW91un", "GenericOauthFlow": true, "IsActive": true, "Issuer": "4FbRxv6n", "JWKSEndpoint": "7vXWWpnK", "KeyID": "GdkZBE9q", "NetflixCertificates": {"encryptedPrivateKey": "67in5gci", "encryptedPrivateKeyName": "Tcyk5bYD", "publicCertificate": "SBzNJvCD", "publicCertificateName": "PVjP6SNG", "rootCertificate": "rluWJqll", "rootCertificateName": "Wttdvnje"}, "OrganizationId": "RoqbdPmI", "PlatformName": "nOumvhjG", "RedirectUri": "p1nWOLL5", "RegisteredDomains": [{"affectedClientIDs": ["TbF2HyaU", "CXIoAxP9", "ZOEdR4QO"], "domain": "FPNLuhE1", "namespaces": ["VNOoL1ik", "qfbKXkbQ", "Ihomy8J1"], "roleId": "kpPZuGlx"}, {"affectedClientIDs": ["Lcz28vm2", "YkUy15fj", "KUfLfUGz"], "domain": "KGnLCfH0", "namespaces": ["e3CHJCq2", "pYL7hH6V", "x7eP7qmO"], "roleId": "vJ7X2sTa"}, {"affectedClientIDs": ["PBNj9cOs", "ewcTomX0", "0ksS6GGm"], "domain": "2a6lhQsB", "namespaces": ["G4R1fsmB", "9crodmgI", "74f2i7OX"], "roleId": "KUTOuFfL"}], "Secret": "yAdEMHjc", "TeamID": "nG3LFrwn", "TokenAuthenticationType": "YgeWOBew", "TokenClaimsMapping": {"Ar18Vlzx": "mCqU1ss6", "bE9T9lny": "yiBTxKZh", "SNSF2b84": "5MV1p9Xi"}, "TokenEndpoint": "V4lAVOc2", "UserInfoEndpoint": "Z6bEVExV", "UserInfoHTTPMethod": "BTPJhNSC", "scopes": ["AavJmUhw", "NGNVR0yi", "Bugrcquw"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zAkpy3y6' \
    --body '{"affectedClientIDs": ["p3OsJRpI", "bmkmJ2vT", "0bvlGasZ"], "assignedNamespaces": ["mtz7GNt6", "PmyU6Fpi", "nex34NNu"], "domain": "5jRITqjP", "roleId": "v8B3R527"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kyfAYDmw' \
    --body '{"domain": "5UL8q9Ho"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'aAUrsLcc' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'mFShuKyZ' \
    --body '{"acsUrl": "YZMXUMwv", "apiKey": "YGEk5Sg6", "appId": "ijsihNlI", "federationMetadataUrl": "TPWtqLjh", "isActive": false, "redirectUri": "UxO8FG6x", "secret": "UskEaiMM", "ssoUrl": "wFFgerRC"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'q74yuGnj' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'IxhBiinv' \
    --body '{"acsUrl": "iqqcSKVx", "apiKey": "2C7PmZAS", "appId": "fbLITimU", "federationMetadataUrl": "DIJqFRAV", "isActive": false, "redirectUri": "OBEh9kkm", "secret": "INmrYk29", "ssoUrl": "mO3aDEdK"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Wq031LVm' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["hcCRxEv6", "7I4hd1fL", "JCYt8kDM"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ISYKTBkA' \
    --platformUserId '9Lj2FMTn' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'OUF48ac9' \
    --after '39' \
    --before '34' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'uJyhNp1h' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'KSLBrW6m' \
    --body '{"bulkUserId": ["CJG5BZiu", "iMz4hnfz", "Wgtw5uoz"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Svdr4TVF", "UhnKqaVA", "BXc0mYXI"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["8taaWOYz", "n3lst8OC", "mHC3Ippz"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["3BghpmTv", "48K7FLXe", "7agpDZXQ"], "isAdmin": false, "namespace": "6EYWPIhE", "roles": ["zDjNYqgp", "7qQcbNBZ", "n6HMBG5d"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '1' \
    --platformUserId 'pVdh88as' \
    --platformId '3hAmygld' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'MCaLGheL' \
    --endDate 'wXcgrzR1' \
    --limit '67' \
    --offset '72' \
    --platformBy '5hPZrzh7' \
    --platformId 'xVAc9XeO' \
    --query 'R2JL8EAE' \
    --startDate 'mrBysfNS' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["IfXVWRCK", "SU5CgQTD", "OzgoaeGF"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ifnvMAb7' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'f3S339vF' \
    --body '{"avatarUrl": "Knymvs2H", "country": "CJEyY53x", "dateOfBirth": "LjAKUjmf", "displayName": "7lv9UC14", "languageTag": "wFTihrZp", "userName": "UuWv6YBu"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId '1KoiQ7Is' \
    --activeOnly 'false' \
    --after '3iBpqJ2a' \
    --before 'rQJPPKma' \
    --limit '59' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Hc3eIQPy' \
    --body '{"ban": "aqPUS3pm", "comment": "wOOsNsxK", "endDate": "ifipOHEK", "reason": "xhQVIhrK", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '7EZm8J0J' \
    --namespace $AB_NAMESPACE \
    --userId 'oTzZiFIi' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uL7EPhtu' \
    --body '{"context": "XGoiyIu4", "emailAddress": "2EZH0IK8", "languageTag": "VT6fMBHt"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UYC3yn4C' \
    --body '{"Code": "9CCVdvNk", "ContactType": "VOPiWGrB", "LanguageTag": "N8yccb1X", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'dcwHOFa2' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wEWGCREj' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Zy1TaAUb' \
    --body '{"deletionDate": 95, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TfpS06fG' \
    --body '{"code": "IX4oaoar", "country": "MM9jgc99", "dateOfBirth": "G4dx1pye", "displayName": "W5r8XwXG", "emailAddress": "ODnmaG6R", "password": "yxLE6CuP", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vZoATWXh' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZwG5fhLo' \
    --after '0.7661431989205532' \
    --before '0.8984151695981855' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '8B5wbLhF' \
    --body '{"languageTag": "8kDRmezn", "newPassword": "EJMG21jT", "oldPassword": "4DmREe0h"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '4wl749O3' \
    --body '{"Permissions": [{"Action": 12, "Resource": "3vYTtFqB", "SchedAction": 58, "SchedCron": "pKy62Vw1", "SchedRange": ["1vrhTdNN", "Yhv3WuSd", "6X8Ks5fw"]}, {"Action": 87, "Resource": "yZZ7gEww", "SchedAction": 16, "SchedCron": "9yJWtmUz", "SchedRange": ["H5LJvBpm", "zwknlijG", "zMwYadOS"]}, {"Action": 71, "Resource": "wrWHZcND", "SchedAction": 18, "SchedCron": "a8roxUf9", "SchedRange": ["L3h2V6FB", "WwGYW7JH", "BnPjYF3P"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '9NtXfpCe' \
    --body '{"Permissions": [{"Action": 76, "Resource": "XEUOcbNK", "SchedAction": 1, "SchedCron": "V0FdddPU", "SchedRange": ["lGOaID49", "2Xyui0ap", "kTp3OauS"]}, {"Action": 45, "Resource": "sQjXkh1W", "SchedAction": 80, "SchedCron": "V4tK3A4O", "SchedRange": ["n2D1JKTb", "zyIFwDI3", "8Vdf310k"]}, {"Action": 88, "Resource": "ZwuwRjhq", "SchedAction": 13, "SchedCron": "FtD2s2ph", "SchedRange": ["rqjYYzmB", "qURuySjD", "i5OLQ25j"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yXl5ayWH' \
    --body '[{"Action": 92, "Resource": "TuEwyB8R"}, {"Action": 75, "Resource": "Q2FDIPYg"}, {"Action": 44, "Resource": "JJ7YABho"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '80' \
    --namespace $AB_NAMESPACE \
    --resource 'bB574JMY' \
    --userId 'QVHWbnAh' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VearLSzl' \
    --after 'lXOex5wx' \
    --before 'T5uP5EWl' \
    --limit '56' \
    --platformId 'qgRvNa0B' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'eTqJmbu0' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'WmQvD7u6' \
    --userId 'BUIR1G2h' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'wtfIpV2u' \
    --userId 'Xf26OulC' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'LWeKkdmQ' \
    --skipConflict 'false' \
    --body '{"platformId": "H3zfkKWo", "platformUserId": "YBCGrQm3"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kGKAX2yp' \
    --userId 'esRPrDvg' \
    --body '{"platformNamespace": "kAu0BUCA"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AHoaPScF' \
    --userId 'l9wPxA77' \
    --ticket 'hVzeBMtV' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dZlTFJYE' \
    --userId 'p2eYW6Ei' \
    --platformToken 'fqRxNahE' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId '4BFu7MBd' \
    --userId 'qWvniE5O' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'p6KuuOuM' \
    --body '["Y1Ic24sI", "6vVdZBUA", "3W6cMzlh"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'etHjaMoi' \
    --body '[{"namespace": "O2DcAWuH", "roleId": "M2xIYoiP"}, {"namespace": "pgC5uM1p", "roleId": "DQQ272af"}, {"namespace": "f6n4Lu99", "roleId": "QG4PmJi0"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'xWfRVyzf' \
    --userId 'R9CFsMKA' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'AdOMqIxO' \
    --userId 'Cx4hWLrL' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LHzrAYnO' \
    --body '{"enabled": false, "reason": "Mg8W2w4E"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'HlkvQrWj' \
    --body '{"emailAddress": "LAKQA4Zp", "password": "nnsK5zSg"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UNHFqGCY' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'r7CIjMxb' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "ksqYmi55"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'MlTpMc2u' \
    --before 'L3fKg6E0' \
    --isWildcard 'true' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "pUmlBECB", "namespace": "alxnrF0p", "userId": "akQY1Z3L"}, {"displayName": "GR0V2KT7", "namespace": "pRKBOvok", "userId": "TJlqT5LK"}, {"displayName": "RkcM2Blh", "namespace": "AMotYsyj", "userId": "M9c1VVZW"}], "members": [{"displayName": "OObHyKCJ", "namespace": "BnZinKm6", "userId": "mhgEKSCx"}, {"displayName": "YtoKH5mT", "namespace": "b2ZoKnuk", "userId": "pI2KHgDu"}, {"displayName": "lHBrjZwI", "namespace": "OHtVncEJ", "userId": "Ok3AyG7w"}], "permissions": [{"action": 89, "resource": "dyM5XrqT", "schedAction": 60, "schedCron": "zja4xuIH", "schedRange": ["B5ia6cpV", "K79dPrbE", "2mfWdYF3"]}, {"action": 70, "resource": "0Wbyrjb2", "schedAction": 26, "schedCron": "ySHPzTnJ", "schedRange": ["RffdocPj", "guCM5Pvn", "ROc1AgrI"]}, {"action": 27, "resource": "SaPBehuW", "schedAction": 32, "schedCron": "RyRVgLxf", "schedRange": ["EbEcD586", "aOYSziRy", "u3cDCHLk"]}], "roleName": "V1wQjuV3"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'yfmuniYA' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'b9TaKw81' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'adcWXp48' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "wGxgXF3A"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'PPFVB33T' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'm8Ply1fa' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'zrkxGYkd' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '4lQabvC7' \
    --after 'PhYYvdAb' \
    --before 'j71lArrD' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'LeWYfXjk' \
    --body '{"managers": [{"displayName": "kU6ykjEZ", "namespace": "XN1dPKeN", "userId": "NVWsQQqt"}, {"displayName": "0M3nsM3U", "namespace": "lInAr0DC", "userId": "KZAewvqJ"}, {"displayName": "okcYvNZ7", "namespace": "NynaumkW", "userId": "zWYtXTqJ"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'mfxaD2tB' \
    --body '{"managers": [{"displayName": "zVHK5ivv", "namespace": "xlPKfMPt", "userId": "FuSLlxIP"}, {"displayName": "7332zUTw", "namespace": "WFFM3iJr", "userId": "STANIime"}, {"displayName": "aTvlNZul", "namespace": "f2zT0GJy", "userId": "WOm2kQtM"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'WLbTo8yn' \
    --after 'qQMQc70a' \
    --before 'd8SrGGwq' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'EnRbzQxx' \
    --body '{"members": [{"displayName": "pAbOjulk", "namespace": "fVqAlcWH", "userId": "nhh5Qc1W"}, {"displayName": "lC4lfehf", "namespace": "vtzLn3Co", "userId": "OKQAlPZa"}, {"displayName": "bPu4TJSy", "namespace": "xeTR9llk", "userId": "EcXMHGcs"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '8QkZuWay' \
    --body '{"members": [{"displayName": "Fn8MaLS8", "namespace": "tC3PWW3q", "userId": "268X6ybr"}, {"displayName": "61Dma7rm", "namespace": "vPokD7oT", "userId": "IxCaRQ8Y"}, {"displayName": "cwQd76pr", "namespace": "tAZl2Oq9", "userId": "X1DByRXF"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'ZUyETJJ2' \
    --body '{"permissions": [{"action": 33, "resource": "ECmNYRNZ", "schedAction": 32, "schedCron": "UAe5DJdx", "schedRange": ["qLWkmOYN", "CobDQaOl", "VUsrROX9"]}, {"action": 86, "resource": "2FVyCekp", "schedAction": 23, "schedCron": "4hucvTVA", "schedRange": ["ycrwlXY3", "xrSm8gkm", "2UAmPRCm"]}, {"action": 94, "resource": "ZrGBZiMo", "schedAction": 46, "schedCron": "4rcDEooo", "schedRange": ["dEE61W2x", "G9poQFBx", "MvmhcrbM"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'hAd7L16a' \
    --body '{"permissions": [{"action": 90, "resource": "I9WrfK1Y", "schedAction": 21, "schedCron": "2tsxA2WT", "schedRange": ["qoiSZ1s7", "LawyokJN", "d7PZW94j"]}, {"action": 19, "resource": "uhCFaaLj", "schedAction": 96, "schedCron": "xP1PUZ6o", "schedRange": ["4pvnoHCE", "daqAuV14", "MS7YOkXF"]}, {"action": 58, "resource": "qnpLBXXO", "schedAction": 85, "schedCron": "qYYlzsUy", "schedRange": ["HRKhXH0P", "74td3nZO", "9V2K8qnP"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'aAdjWEo3' \
    --body '["C3GFzM7y", "MgukXUzl", "WRU0rB7M"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '61' \
    --resource 'Z6uHaMz8' \
    --roleId 'OpPVyWIb' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'GUDlmPJD' \
    --extendExp 'false' \
    --redirectUri 'b0CXnWfT' \
    --password 'CckcxJvG' \
    --requestId 'goOMvvIj' \
    --userName 'Jb46Vqv6' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'hvUKJVkY' \
    --linkingToken 'CnyMA1ye' \
    --password 'o9NHzFdb' \
    --username 'RYXc5lnA' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'TiAbUxtm' \
    --extendExp 'true' \
    --linkingToken 'K64NMD50' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'awEFGUxd' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'PKT9iecf' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'Ff3dOixS' \
    --isTransient 'true' \
    --clientId 'sXO6aQ0D' \
    --oneTimeLinkCode 'BbomfKrm' \
    > test.out 2>&1
eval_tap $? 215 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 216 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 216 'GetCountryLocationV3' test.out

#- 217 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 217 'Logout' test.out

#- 218 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'BwwRGTT9' \
    > test.out 2>&1
eval_tap $? 218 'RequestGameTokenCodeResponseV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6IqxzkaZ' \
    --userId 'hSFE4H6P' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EjMokk1M' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'QPDgOiUZ' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'aYmoXgaG' \
    --redirectUri 'ja8tnLeT' \
    --scope '4COka6De' \
    --state 'SK35Ia44' \
    --targetAuthPage 'GtzTpXsm' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'cNULuyqf' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'mch2lKQU' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '8GIleBaf' \
    --factor 'WZUebOtU' \
    --mfaToken 'S3ubm8lU' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'm5GdiSqo' \
    --mfaToken 'lO4cgeBx' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'XNxdLuP0' \
    --factor 'gJhrl14R' \
    --mfaToken 'm6rQMcW7' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DRWC5nXl' \
    --userId '2dMLCrHF' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'NHozFuiO' \
    --clientId 'SmW4fn5X' \
    --redirectUri 'tjG1mctF' \
    --requestId 'WNQN0Uvw' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'Yy8XcsHt' \
    --additionalData '0xBePmCM' \
    --clientId '8U55gbZP' \
    --createHeadless 'true' \
    --deviceId 'AqhsSJ3V' \
    --macAddress '8V72zIT5' \
    --platformToken 'yEbasSVF' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'mELakxC6' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'Znkze9Az' \
    --clientId 'ros6XaXI' \
    --code 'TZXV4HnV' \
    --codeVerifier 'F0MwBaLI' \
    --extendExp 'false' \
    --password '1MCSPXXf' \
    --redirectUri 'dZprG2zC' \
    --refreshToken '67BpgpFy' \
    --username 'HXxRVwiH' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'kEazGyhc' \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'DRr47UpU' \
    --code 'joIsRphP' \
    --error 'I88Nz2Rr' \
    --openidAssocHandle '5Sv9h6EI' \
    --openidClaimedId 'LqyFTc1X' \
    --openidIdentity 'pcskBIDX' \
    --openidMode 'o1xfqfig' \
    --openidNs 'uAH26CtN' \
    --openidOpEndpoint 'ftQehRRI' \
    --openidResponseNonce 'DxcOeeXi' \
    --openidReturnTo 'ACxAuwTj' \
    --openidSig 'cXCcjCnn' \
    --openidSigned 'Br4Q7eIt' \
    --state 'WHIiiCTT' \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'aslFnkc6' \
    --platformToken 'ybVhwTam' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'k4aY9yyW' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'cIc79x47' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'UZfmML1B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 238 'PublicGetCountryAgeRestrictionV3' test.out

#- 239 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'PublicGetCountryListV3' test.out

#- 240 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 241 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'gnto0XLa' \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gOSaCvTM' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["fzapjW0P", "4hWPUn2o", "apwQ7uTD"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'i03URpt0' \
    --platformUserId '4vht9OUq' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '2qOPMybY' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '6MjDZ4RR' \
    --limit '49' \
    --offset '89' \
    --query 'b3YH9WZ3' \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "f61HABXO", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "KZTSq9ZM", "policyId": "fUqdXSyp", "policyVersionId": "OaHt0OEj"}, {"isAccepted": true, "localizedPolicyVersionId": "DZh33sYx", "policyId": "9sXBStDX", "policyVersionId": "o3K2hiey"}, {"isAccepted": true, "localizedPolicyVersionId": "kKx0MQMJ", "policyId": "ayjMj31s", "policyVersionId": "l4ABpu6x"}], "authType": "G3tUG7d3", "code": "6LJCaW3B", "country": "MrQQZDT1", "dateOfBirth": "NOFYJP8w", "displayName": "02aVEHor", "emailAddress": "WUQSuH1Y", "password": "O5kM5EHM", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '6UmgSEiB' \
    --query 'XuxBsbZJ' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["853VPUvn", "nEntv963", "vhTgsulq"]}' \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "c2usxrn7", "languageTag": "maa01G3Z"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "H4WHwGHc", "emailAddress": "lmtMqr1T"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "vjE0AlHn", "languageTag": "oBuRwXNE"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'IdrGSCGn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'bFngj7uP' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "VK8OCGs5", "policyId": "SZA8GiW8", "policyVersionId": "3O09kmyU"}, {"isAccepted": true, "localizedPolicyVersionId": "rtTBDgGr", "policyId": "W5l9eF82", "policyVersionId": "QVSqCLc7"}, {"isAccepted": false, "localizedPolicyVersionId": "Ss1zZDSL", "policyId": "N6U2adRe", "policyVersionId": "EdAaM1NW"}], "authType": "EMAILPASSWD", "country": "TV978oSJ", "dateOfBirth": "otZUPUCj", "displayName": "aRj0kwzd", "password": "fwFcLOgn", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "D5nXa6FD", "country": "QMsSpaop", "dateOfBirth": "SwKYPCB1", "displayName": "IkbqPEpF", "languageTag": "ddD1hpm4", "userName": "XzZT6UBn"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "283BOfMy", "country": "LIKAIl3b", "dateOfBirth": "rY6LMFG0", "displayName": "FaMoXiC7", "languageTag": "7BQjliJf", "userName": "o7iGFXWe"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "0A5QScKi", "emailAddress": "0Bt5vpHW", "languageTag": "sTPksugr"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "9rMoHXf7", "contactType": "phYHpqRl", "languageTag": "O9jfAXaq", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CINjJbh9", "country": "U5HeLWFU", "dateOfBirth": "j4UyUj5L", "displayName": "VmdK32U8", "emailAddress": "tnFqHHzH", "password": "Kts1lySH", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "CXwWmDXa", "password": "08bw7aDX"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "JO7KsxCX", "newPassword": "UOeF78B7", "oldPassword": "c8EotoyC"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'hdsu0lLg' \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GKiNUQzS' \
    --redirectUri 'piOXkXkh' \
    --ticket '2xhDTAcW' \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'v6jP6VJy' \
    --body '{"platformNamespace": "ibD14rUO"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SFXxArdp' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WHndEdKh' \
    --ticket 'PDOkEgDi' \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'fu3iXamo' \
    --clientId 'lGRMQ6L1' \
    --redirectUri '4vKcz0br' \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'Wag3qPZA' \
    --code 'KeNZuRDv' \
    --state 'bYrxEB7u' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7cyZRcWz' \
    --code 'nSwHSTuY' \
    --state 'Tc8BymES' \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uW8X6Jsh", "emailAddress": "XVXwvZKl", "newPassword": "kR8ccW5K"}' \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j5d4LtdR' \
    --activeOnly 'true' \
    --after '575pBo0b' \
    --before '5GPOcTKv' \
    --limit '56' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 't3i1TEp6' \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WQFBEnuZ' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RzlKoFXd' \
    --after '0.8924255862071425' \
    --before '0.6863776310140639' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dyRJv8ln' \
    --after 'FpZM28SM' \
    --before 'ZJgHmFds' \
    --limit '9' \
    --platformId 'zu8bLgQY' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LXUozYdO' \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'NrOORdyI' \
    --body '{"platformId": "Gny3RMUw", "platformUserId": "BotXyzpv"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'IPwSwMKd' \
    --body '{"chosenNamespaces": ["9TrZdBAd", "R1DmbfWG", "Lk1lQtU2"], "requestId": "EjXKCjFE"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gQD7WYFl' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JMSQgSft' \
    --password 'Cq55bjOO' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'vHwOcUVQ' \
    --before 'JjSLvbMK' \
    --isWildcard 'true' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'Kx3wPVTm' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'jVGK4bco' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["mruLW8mx", "6fh7B4zo", "vSbqa0Jc"], "oneTimeLinkCode": "Dg5o9Whv"}' \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "1tAZ8fCT"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'mwlSvZum' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'nJXCsveO' \
    --code 'Vtve7JmG' \
    --error 'TPRjFWv9' \
    --state '8n663zse' \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'cg9xNmtD' \
    --payload 'O5Lkpr8P' \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'zAqTaKAZ' \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData 'AVFfkucL' \
    --code 't6gSPPc9' \
    > test.out 2>&1
eval_tap $? 291 'RequestGameTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'p3Wq5Te1' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'qOVxiT91' \
    --endDate 'NUVrFv7e' \
    --limit '29' \
    --offset '53' \
    --startDate 'ZFFpB0HR' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'XTQrq26f' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "1EW0ALxc", "deviceId": "q5Yf4dEO", "deviceType": "iIYlGlut", "enabled": false, "endDate": "VRiqp6uE", "ext": {"puUbcSmr": {}, "UtGPmKll": {}, "VlGFhReD": {}}, "reason": "ZkNlISOF"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'CKDnPZll' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'ZTpTEt52' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'VZnYjie5' \
    --startDate 'd9npgyw6' \
    --deviceType '3eoqxOHb' \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'osH06gEM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'FkrOUyiQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'LIoZsI1F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'JXp5n2wR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 6}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["mBQAdBQq", "9RloNCQU", "x5rticsU"]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ip3BCCLg' \
    --body '{"avatarUrl": "tEFaYKTX", "country": "HHwklUjt", "dateOfBirth": "0iU7rsWA", "displayName": "3er7WNHh", "languageTag": "odw1fRmL", "userName": "jZynh6OV"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '7pB3xwEs' \
    --body '{"code": "hfTdITxP", "emailAddress": "KwshQT63"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'nG9v8nrR' \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '6tv29m5W' \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZEABI2yL' \
    --body '{"assignedNamespaces": ["HDQVqSv5", "InkFBIWh", "aQTeS1cc"], "roleId": "K5mUNwoS"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'b5V4NBx5' \
    --body '{"assignedNamespaces": ["ax7WrdNJ", "fS5lvB2C", "XLkY6aS2"], "roleId": "LM4X5Be4"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HaawhV66' \
    --body '{"assignedNamespaces": ["kwNnXPyd", "fM0Tnmt4", "1uXFHMFz"], "roleId": "Z6IELYRS"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '9' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "l0PpkLFW"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'dErGESPU' \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'nREV4Sti' \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'rvV9wlUC' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "OfUUcLq6"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'yLsOwswb' \
    --body '{"permissions": [{"action": 17, "resource": "e5WjmqUF", "schedAction": 29, "schedCron": "yUXrcVIZ", "schedRange": ["fuz9lVyo", "utZU03Uh", "7i5wwI4E"]}, {"action": 13, "resource": "x82oYhJF", "schedAction": 1, "schedCron": "KC5ePBbQ", "schedRange": ["bwZg3cch", "AG1tXvJd", "Cbh2gI8h"]}, {"action": 38, "resource": "VbaCcxH7", "schedAction": 44, "schedCron": "dO4IpBQ6", "schedRange": ["Q2w2USSO", "nYgtfHWA", "0O0ZGjHA"]}]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'XhMkD6Xy' \
    --body '{"permissions": [{"action": 30, "resource": "nVNqoKjL", "schedAction": 34, "schedCron": "Ts9rOzNH", "schedRange": ["DoUii39u", "UZQwjJXn", "AbditVpy"]}, {"action": 46, "resource": "UByUbJKO", "schedAction": 9, "schedCron": "uS6j6Ig0", "schedRange": ["gxUWI3rF", "ow5Gvqi8", "poZVS4pf"]}, {"action": 49, "resource": "tumOJWoK", "schedAction": 50, "schedCron": "smpN2Y9e", "schedRange": ["3wzISJSO", "jUvdpkMd", "g0Heoo4L"]}]}' \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'FmoLq5H3' \
    --body '["KhZTjB4S", "SL7L2rrX", "v9hNplf3"]' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'vP7l667S' \
    --after 'IHQ4Q8xl' \
    --before 'VhWhgwmz' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'YYqg9bzl' \
    --body '{"assignedNamespaces": ["5rsdKeV4", "JfDrNmTW", "08bEzzx2"], "namespace": "p5uE4azL", "userId": "dn4hbGWg"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'Y7kgLLlo' \
    --body '{"namespace": "ddrj6kjV", "userId": "XZUa9g9o"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["42MY7rlF", "Yf61nUWs", "tduZK7eV"], "emailAddresses": ["IYFYoQK4", "dYJtBR5G", "XvDRzGTM"], "isAdmin": true, "namespace": "fWVzK7Ib", "roleId": "mFPzyj0U"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "Fy120Lay", "country": "t4K7exRe", "dateOfBirth": "0lktUzcl", "displayName": "2aj652CE", "languageTag": "KBUYeAGO", "userName": "lQpoqNiY"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'yFUmCUc1' \
    > test.out 2>&1
eval_tap $? 328 'AdminEnableMyAuthenticatorV4' test.out

#- 329 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 329 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 330 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 330 'AdminGetMyBackupCodesV4' test.out

#- 331 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 331 'AdminGenerateMyBackupCodesV4' test.out

#- 332 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 332 'AdminDisableMyBackupCodesV4' test.out

#- 333 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 333 'AdminDownloadMyBackupCodesV4' test.out

#- 334 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminEnableMyBackupCodesV4' test.out

#- 335 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminSendMyMFAEmailCodeV4' test.out

#- 336 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminDisableMyEmailV4' test.out

#- 337 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'xeShU5Qp' \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'WqIe1MZg' \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "G7xQ5y7P", "policyId": "xeFrVN7I", "policyVersionId": "jmiYxvfl"}, {"isAccepted": true, "localizedPolicyVersionId": "DwGIWKvg", "policyId": "816jn3sf", "policyVersionId": "3aTqL2j7"}, {"isAccepted": false, "localizedPolicyVersionId": "lqotq7qY", "policyId": "MayDEEl7", "policyVersionId": "2Qi5yCMq"}], "authType": "EMAILPASSWD", "country": "HCtCa2Pv", "dateOfBirth": "5bDBOlfc", "displayName": "qkVLDRhb", "emailAddress": "JMS60iYr", "password": "Cd6c4u1a", "passwordMD5Sum": "dHyizt6h", "username": "4cZb7VaP", "verified": false}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "bkTak9Yr", "policyId": "906G8BYb", "policyVersionId": "MW4dnUPk"}, {"isAccepted": false, "localizedPolicyVersionId": "6dX1hTsn", "policyId": "8Z9kSCjF", "policyVersionId": "eBQwdXy0"}, {"isAccepted": false, "localizedPolicyVersionId": "z7y3P4Er", "policyId": "ypRWA3So", "policyVersionId": "R0K6YTVk"}], "authType": "EMAILPASSWD", "code": "w5fZlfN3", "country": "DA0iVJBO", "dateOfBirth": "wJ2YqVzV", "displayName": "bpJCZHYg", "emailAddress": "lbORZwU2", "password": "m2yShKWX", "passwordMD5Sum": "evLQWlkG", "reachMinimumAge": false, "username": "5jOIJHW4"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId '4mPtKop8' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "0zbJmVjB", "policyId": "nK1PFtdC", "policyVersionId": "HmAGFoOy"}, {"isAccepted": false, "localizedPolicyVersionId": "D0EaKj3s", "policyId": "dXeEVgFC", "policyVersionId": "lzhI9daP"}, {"isAccepted": false, "localizedPolicyVersionId": "sMny11AX", "policyId": "PS4eObMc", "policyVersionId": "HHgtP5bn"}], "authType": "EMAILPASSWD", "country": "nz1o0L5S", "dateOfBirth": "yF7R74TU", "displayName": "9HwVN9Ye", "password": "pVpDh2lI", "reachMinimumAge": false, "username": "7LMivThG"}' \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "r2RHWA2V", "country": "RVHlXdN6", "dateOfBirth": "rm8MdVWQ", "displayName": "D5Az3xJL", "languageTag": "BKMbv1y1", "userName": "1yqmzZSH"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Zztb5yZH", "emailAddress": "7hzVP4s8"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "yBJLUKB9", "country": "hpxHrJ0d", "dateOfBirth": "3dCSX4eR", "displayName": "ljqNByZ3", "emailAddress": "Dtjr54VW", "password": "UTg6h2xm", "reachMinimumAge": false, "username": "ss0ykOUA", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "1WL53jhA", "password": "xW2ltgzr", "username": "zhnEANxz"}' \
    > test.out 2>&1
eval_tap $? 347 'PublicUpgradeHeadlessAccountV4' test.out

#- 348 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicDisableMyAuthenticatorV4' test.out

#- 349 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'FvOufKbx' \
    > test.out 2>&1
eval_tap $? 349 'PublicEnableMyAuthenticatorV4' test.out

#- 350 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 351 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 351 'PublicGetMyBackupCodesV4' test.out

#- 352 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 352 'PublicGenerateMyBackupCodesV4' test.out

#- 353 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicDisableMyBackupCodesV4' test.out

#- 354 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicDownloadMyBackupCodesV4' test.out

#- 355 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicEnableMyBackupCodesV4' test.out

#- 356 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 356 'PublicRemoveTrustedDeviceV4' test.out

#- 357 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicSendMyMFAEmailCodeV4' test.out

#- 358 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDisableMyEmailV4' test.out

#- 359 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'fmlD5OgM' \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyEmailV4' test.out

#- 360 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEnabledFactorsV4' test.out

#- 361 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'WdJKIlbW' \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Knz4mvpO' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "ivBaCzH9", "namespace": "9nx6nCFK", "namespaceDisplayName": "kU81SZsK"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE