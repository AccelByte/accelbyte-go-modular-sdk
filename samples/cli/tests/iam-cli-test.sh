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
echo "1..366"

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
    --body '[{"field": "ojbIdwk8", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["ce8CtmUb", "VaJP4ql3", "f1gvk15A"], "preferRegex": true, "regex": "uYkzukWB"}, "blockedWord": ["f6BfiS6g", "syO2Bf2w", "A6RkcgEt"], "description": [{"language": "5MjVFTbH", "message": ["h7hQo8Ap", "pWPujfyn", "KFOgDbSZ"]}, {"language": "ucrrF3L7", "message": ["Z6TUj2YB", "nWlsOlI0", "Ab2SS8tB"]}, {"language": "Ia1p0Nmk", "message": ["AmP6lviV", "S9fzKoo6", "StzsOyKT"]}], "isCustomRegex": false, "letterCase": "qgQTTSP5", "maxLength": 99, "maxRepeatingAlphaNum": 28, "maxRepeatingSpecialCharacter": 22, "minCharType": 53, "minLength": 82, "regex": "I9nM4NaB", "specialCharacterLocation": "WLLvK5yz", "specialCharacters": ["ZKXNdyQT", "Yy98wJuT", "hSE6IFH6"]}}, {"field": "16zx0xmI", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["xmrMkLiS", "dWtBZwVc", "saNiriQV"], "preferRegex": false, "regex": "rj7oyujc"}, "blockedWord": ["5xmbWCfb", "ekwy60IN", "PxjzxZiW"], "description": [{"language": "3eAKoIJP", "message": ["BqE4g8T5", "CEdSsu7X", "wPXCNvDM"]}, {"language": "hPB3lfee", "message": ["3Tmyg8oS", "55MB7Yxa", "PeqSTifX"]}, {"language": "EjToyUUT", "message": ["oW5NLOOs", "AXaj3btU", "rRgJkXci"]}], "isCustomRegex": true, "letterCase": "bhXLmL7f", "maxLength": 60, "maxRepeatingAlphaNum": 77, "maxRepeatingSpecialCharacter": 16, "minCharType": 50, "minLength": 69, "regex": "CcS1AEge", "specialCharacterLocation": "e9jkYaKU", "specialCharacters": ["i0ne98uw", "aG7RYzi2", "Zv6Kaemd"]}}, {"field": "LYVB1bpD", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["3YFiDdWl", "rjooFfos", "6FEhJldn"], "preferRegex": false, "regex": "MrSDWskV"}, "blockedWord": ["jiG8w5uI", "vOkdJBbV", "jS3NPaom"], "description": [{"language": "PKDlUUe2", "message": ["Ky3HnRul", "8cADjeNf", "FT3GNNFS"]}, {"language": "se9Tsnvn", "message": ["xvqVFu3p", "gVjGEw9f", "N1uPFiel"]}, {"language": "yS9f6A4e", "message": ["esIB28I2", "WZooBdzB", "iaps3FzD"]}], "isCustomRegex": true, "letterCase": "tgoXKpqY", "maxLength": 60, "maxRepeatingAlphaNum": 44, "maxRepeatingSpecialCharacter": 57, "minCharType": 21, "minLength": 86, "regex": "omqULckI", "specialCharacterLocation": "ocmNf9ja", "specialCharacters": ["sftwNoQV", "Lg4u8jVq", "esCVW3nR"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'x397i3nv' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'KjrpzNWu' \
    --before 'l43GvVrF' \
    --limit '70' \
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
    --body '{"ageRestriction": 70, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'oFmMIexs' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 65}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'wTMOPf3i' \
    --limit '99' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "eDU2mSLQ", "comment": "SFrQyTQz", "endDate": "QDNynWTD", "reason": "upJz8ABN", "skipNotif": true, "userIds": ["cHRsRzuN", "9t9CMbKw", "tcRpik28"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "NdACFJn5", "userId": "ObFGrqsj"}, {"banId": "lQ0OMetc", "userId": "0Hw2MQaL"}, {"banId": "Izcrykok", "userId": "vfy8wvZY"}]}' \
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
    --clientId 'ffrXtFdU' \
    --clientName 'GV7QCTYG' \
    --clientType 'mpkwpljJ' \
    --limit '59' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["6C1qHq3F", "zXaw3JJF", "ZSXCWHcA"], "baseUri": "YBhWsDy2", "clientId": "oHFh4b2W", "clientName": "oa79ul4p", "clientPermissions": [{"action": 83, "resource": "Mc9AD9Ik", "schedAction": 34, "schedCron": "htOaMNye", "schedRange": ["x8nF3NSo", "u1Rt810g", "LhuxlRs0"]}, {"action": 30, "resource": "iuXlADnc", "schedAction": 72, "schedCron": "zKXG5O4v", "schedRange": ["HH0kFrdT", "8Nq31z95", "PfwrmqFb"]}, {"action": 48, "resource": "7t5KyMeu", "schedAction": 81, "schedCron": "kwpeuozo", "schedRange": ["2dLMXUcz", "m87iMf5R", "3dmtcFu4"]}], "clientPlatform": "n4mmkq94", "deletable": false, "description": "JondpQxc", "namespace": "YSPyd8hx", "oauthAccessTokenExpiration": 81, "oauthAccessTokenExpirationTimeUnit": "2vRSlcEo", "oauthClientType": "Hg0pd6me", "oauthRefreshTokenExpiration": 8, "oauthRefreshTokenExpirationTimeUnit": "b1oXGOS3", "parentNamespace": "pccKSnH6", "redirectUri": "y643Hy9m", "scopes": ["xSJDuSIh", "jGqkxGrJ", "n60uUnqv"], "secret": "6xE2Hzez", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'fZVEy8ig' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'OgFy9utR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'dBx3AnMR' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["zQJ4uHNB", "ebQX8r0d", "csq9YVZG"], "baseUri": "1u10ApD7", "clientName": "kqDCYkV8", "clientPermissions": [{"action": 61, "resource": "A5aZhUJH", "schedAction": 54, "schedCron": "8tgEquSS", "schedRange": ["aSOouCTR", "qNwznWkP", "0CRQQ6HW"]}, {"action": 97, "resource": "PhLtOBq0", "schedAction": 86, "schedCron": "OkdFgSaW", "schedRange": ["dF7Tt1nj", "GXqSulQH", "AeQ15Mib"]}, {"action": 39, "resource": "aEFoUZKJ", "schedAction": 8, "schedCron": "RrhIcc9m", "schedRange": ["UEwzinSN", "TNtJ2Yy2", "ctiMiGvy"]}], "clientPlatform": "oI87GNlX", "deletable": false, "description": "BXAXVlhA", "namespace": "GvtKrtSX", "oauthAccessTokenExpiration": 83, "oauthAccessTokenExpirationTimeUnit": "Danogre3", "oauthRefreshTokenExpiration": 73, "oauthRefreshTokenExpirationTimeUnit": "e4PemkjF", "redirectUri": "guKBwfpX", "scopes": ["Hldepc7W", "imUvzXtl", "sk2yDvWX"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'VNPJtpfT' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 27, "resource": "93F9UQ9i"}, {"action": 51, "resource": "qV2UHIWw"}, {"action": 90, "resource": "91vNvIMR"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'YB0OoZQJ' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 33, "resource": "SC24cNJO"}, {"action": 93, "resource": "QD667AOo"}, {"action": 42, "resource": "fkWE0WeK"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '49' \
    --clientId 'aQzdgFIp' \
    --namespace $AB_NAMESPACE \
    --resource 'HtRPlMob' \
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
    --body '{"blacklist": ["Y2JWRLs4", "iAfSbW79", "KObO3CGp"]}' \
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
    --limit '18' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yGeNu4ga' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kpOjcQ5j' \
    --body '{"ACSURL": "cCb9jWmY", "AWSCognitoRegion": "j5D3UnLs", "AWSCognitoUserPool": "u6VFpFke", "AllowedClients": ["xj3Yu3s6", "19Zr92sp", "F478ItwD"], "AppId": "jCypodBZ", "AuthorizationEndpoint": "FkPSk6FR", "ClientId": "I08VN3jI", "Environment": "BFzj0YYi", "FederationMetadataURL": "4ElTDJPu", "GenericOauthFlow": true, "IsActive": false, "Issuer": "pG2AbfnH", "JWKSEndpoint": "UbJhZh9V", "KeyID": "MoZzAlAL", "NetflixCertificates": {"encryptedPrivateKey": "ZU6OWSZ7", "encryptedPrivateKeyName": "6dgjEpc9", "publicCertificate": "CRekq3of", "publicCertificateName": "nStNfT9I", "rootCertificate": "X2H719y9", "rootCertificateName": "kRrwlbwS"}, "OrganizationId": "bslG911l", "PlatformName": "G7Caj914", "RedirectUri": "yV7ky6k1", "RegisteredDomains": [{"affectedClientIDs": ["9rUqwokt", "IrSOuP8A", "p1DFH5ny"], "domain": "MBFaLOMr", "namespaces": ["R3uMqMcZ", "EM5SXGim", "H95e7TmQ"], "roleId": "wvuhHncx"}, {"affectedClientIDs": ["VH4LbblX", "qFw4Jxei", "uwYNagVW"], "domain": "sO4081Ty", "namespaces": ["AJp5ERgl", "CdGSwKzX", "U00qAJwo"], "roleId": "AhQxuLFY"}, {"affectedClientIDs": ["OBXLAiD4", "38o5uizW", "xghFkRZZ"], "domain": "tPDNNCcV", "namespaces": ["Folph9s8", "3XkzbvFv", "Wrz7YQk1"], "roleId": "eRNjMYmF"}], "Secret": "r597GSqN", "TeamID": "okSAXztO", "TokenAuthenticationType": "KDcjbRh3", "TokenClaimsMapping": {"kPq06o2R": "BIIAXxTd", "LRlwQecn": "D5yt6SPM", "wZong2rq": "XMjaUqLC"}, "TokenEndpoint": "3BsYVHb6", "UserInfoEndpoint": "BUMwYJsI", "UserInfoHTTPMethod": "dovyL3c7", "scopes": ["GjrqWe6y", "Ty8aiNIw", "mORnyJIF"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HYAsUbwL' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'phVhlHQn' \
    --body '{"ACSURL": "1Gtl2b5t", "AWSCognitoRegion": "1y8uioBG", "AWSCognitoUserPool": "V3Hgtav5", "AllowedClients": ["1a3nGcuq", "GCPVNtTp", "gIOKzhPo"], "AppId": "Fg4h1UGa", "AuthorizationEndpoint": "ya5TutkT", "ClientId": "gDvIzg6Y", "Environment": "aTDXL2Ub", "FederationMetadataURL": "lZayuOOf", "GenericOauthFlow": true, "IsActive": false, "Issuer": "dmOGWNgM", "JWKSEndpoint": "g2OFIsFa", "KeyID": "iNqJzpqJ", "NetflixCertificates": {"encryptedPrivateKey": "4GM0sf3v", "encryptedPrivateKeyName": "vhmxTQx0", "publicCertificate": "nOQtF3Ui", "publicCertificateName": "3AbqtPkq", "rootCertificate": "w8aPEkKD", "rootCertificateName": "PPptcqWk"}, "OrganizationId": "Q0RkvPy5", "PlatformName": "DWPN4F7l", "RedirectUri": "eIhgFoSq", "RegisteredDomains": [{"affectedClientIDs": ["GlPbz3KA", "KB7lR7IT", "7eX78Qq0"], "domain": "4pAZm7dj", "namespaces": ["oqJrwpPS", "TtWbeCmM", "voEyevMC"], "roleId": "PTfRG5RS"}, {"affectedClientIDs": ["2a0cDLfo", "Wk0Yyrf6", "p7d437US"], "domain": "YZKeQLXO", "namespaces": ["lftlt1m7", "G4nJKLZz", "297yFRGI"], "roleId": "ecuOSWVy"}, {"affectedClientIDs": ["gmfPJPgH", "Xeo1nK3A", "AkhkUr4A"], "domain": "qeBwTRSw", "namespaces": ["1fFvJicM", "dNhiIHY0", "wyHp9zgd"], "roleId": "MYpZ8zQZ"}], "Secret": "G9Zq8w5l", "TeamID": "eVXTEnBN", "TokenAuthenticationType": "YqGDCxyK", "TokenClaimsMapping": {"npNPa1ry": "o4XndgVp", "tqsuUULE": "CKRc9iAW", "3mxG2VlA": "D9x4uneN"}, "TokenEndpoint": "EjgGnbt1", "UserInfoEndpoint": "wVYQrHwF", "UserInfoHTTPMethod": "mmY02sAi", "scopes": ["j47VbX7G", "8F1hy4tk", "7Ivn2IhS"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0SR5wELV' \
    --body '{"affectedClientIDs": ["rRVcriY3", "k39La39o", "RyHe4gfB"], "assignedNamespaces": ["bGV2fFVI", "jpKNcqhF", "IPjzxwNj"], "domain": "6pTBpo2Z", "roleId": "5EyOssLY"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '65CFATMW' \
    --body '{"domain": "Zw8EWFKw"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'DRF0gFZp' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'xgB1tQEJ' \
    --body '{"acsUrl": "Ipil1sUS", "apiKey": "CxpeRuk5", "appId": "RKBTne0b", "federationMetadataUrl": "BWQTo8Vz", "isActive": false, "redirectUri": "UF51ruT7", "secret": "G1katjmn", "ssoUrl": "uFiFqkLj"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FLmBZ7Zp' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'tiXhuYLW' \
    --body '{"acsUrl": "xZu7b00u", "apiKey": "qZfd0GMU", "appId": "3IpPnqsv", "federationMetadataUrl": "BOcdqISA", "isActive": true, "redirectUri": "PQ2C6yKo", "secret": "BvxB4vqc", "ssoUrl": "RUEsWEsb"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jx0JDXeY' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["joSphaFK", "Dj7shH32", "rD2i4Vno"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GvGRVeTx' \
    --platformUserId 'AWgHhZtk' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'dY2pURhW' \
    --after '93' \
    --before '16' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'tlnZtKkh' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'dy2zcbvC' \
    --body '{"bulkUserId": ["LzJaAekY", "YuH9q3f5", "oQXm88rX"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jbRReBSs", "0GS1C3Mc", "QO2HG7lx"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["tUtNbtV7", "gQkTr4HG", "dd70UHD6"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["XoUeXasU", "O2izcsFF", "sTeoz87q"], "isAdmin": true, "namespace": "yyClu7uE", "roles": ["cSxj3mH8", "C5BiqWeY", "OJLnOIHu"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '4' \
    --platformUserId '9Hr0yU6l' \
    --platformId '2nMIU9b2' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'RFhoG4eb' \
    --endDate '0IyEaC84' \
    --includeTotal 'true' \
    --limit '37' \
    --offset '15' \
    --platformBy 'C9HEwH0t' \
    --platformId 'h43m0sUI' \
    --query 'EsUR7O7d' \
    --startDate 'JoSpOf9P' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ZM26D2kX", "OASMvRp9", "bp0SqZvX"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uy0dE4oL' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UwwaZk1s' \
    --body '{"avatarUrl": "dQw72Lib", "country": "nnVg4Qpv", "dateOfBirth": "qZYVuORr", "displayName": "J3qwiy4v", "languageTag": "UTHW3Pfg", "userName": "ielfhEfx"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EjA4DBLM' \
    --activeOnly 'false' \
    --after 'bWzvf4LV' \
    --before 'lGJ66U6b' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Hl7ANzXC' \
    --body '{"ban": "XOwGkv6w", "comment": "f1yepgcL", "endDate": "lXG68FOB", "reason": "cLPsnTHe", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'XrltExxY' \
    --namespace $AB_NAMESPACE \
    --userId 'GuDbzUXt' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IF0Js7Zr' \
    --body '{"context": "D7vOU1iO", "emailAddress": "9IdvOdpZ", "languageTag": "G6FysI7I"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '8MElkznU' \
    --body '{"Code": "rZY7NiPS", "ContactType": "qh8WjwBB", "LanguageTag": "HNSfXH3J", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'L2T3KlZh' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'T4w7xCg4' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '4kRM1mGg' \
    --body '{"deletionDate": 77, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Sl2UCeVB' \
    --body '{"code": "zZwJyCPi", "country": "1tW5y8xw", "dateOfBirth": "AIzGLUMG", "displayName": "zByvfU0h", "emailAddress": "H0I320TZ", "password": "4Dpwxkku", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wC70z4ut' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'maF5q6tx' \
    --after '0.23601133277128805' \
    --before '0.18380398552994337' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '1vWwerrV' \
    --body '{"languageTag": "mhbb2CIg", "newPassword": "DiH7vfMQ", "oldPassword": "dj2XXvn1"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WgLVSyak' \
    --body '{"Permissions": [{"Action": 19, "Resource": "qgL8DPQG", "SchedAction": 33, "SchedCron": "Kkfaid9x", "SchedRange": ["WJMCgoym", "jYDlZQd9", "mgadJka7"]}, {"Action": 4, "Resource": "fupgP1WE", "SchedAction": 39, "SchedCron": "vilEDkZf", "SchedRange": ["ipJmUa6L", "WCOpxIAJ", "iwbG0gxq"]}, {"Action": 32, "Resource": "PL4562lD", "SchedAction": 84, "SchedCron": "lJddkiIk", "SchedRange": ["t31Gromh", "WAtUi4Hu", "kM01wboU"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VVLNgdos' \
    --body '{"Permissions": [{"Action": 76, "Resource": "ltgdCBNH", "SchedAction": 28, "SchedCron": "KPDAWosr", "SchedRange": ["dXQX3v8O", "l6MBhcQb", "SDSxxuo7"]}, {"Action": 4, "Resource": "2p1Pvfxd", "SchedAction": 74, "SchedCron": "AggyEXvC", "SchedRange": ["NSu43Ykc", "8aTpFFv8", "IWpESJqG"]}, {"Action": 68, "Resource": "qeLn0AuJ", "SchedAction": 2, "SchedCron": "BuYS9Eco", "SchedRange": ["2xAGsAKx", "nPCBLBT2", "QbtH2o9W"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gHLHrbZn' \
    --body '[{"Action": 95, "Resource": "Xt4NemN4"}, {"Action": 80, "Resource": "fHXuEWm6"}, {"Action": 46, "Resource": "TJPX1veq"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '37' \
    --namespace $AB_NAMESPACE \
    --resource 'mFhl5bny' \
    --userId 'MHseTpnm' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'B1MtTlew' \
    --after 'vbdzAfUb' \
    --before 'WP1kcw4q' \
    --limit '22' \
    --platformId 'xRthAyVn' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'R5cNirUw' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'XgWatD9i' \
    --userId 'AlfOAxAP' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'MR3mUpbk' \
    --userId 'mlba7jA3' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'ebjNUmvz' \
    --skipConflict 'true' \
    --body '{"platformId": "zZ7jZiUq", "platformUserId": "7Y9SUNpx"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iTrOg4mE' \
    --userId 'M8X6wCiB' \
    --body '{"platformNamespace": "lNzzPy3S"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IRgWLWzW' \
    --userId 'kQmHfDqi' \
    --ticket 'txOtvOnf' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5T3rSGzf' \
    --userId 'sRnW1moB' \
    --platformToken 'T2F5ZmjK' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'rwTQKRXq' \
    --userId 'xdYABLY6' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UJ0dcTNI' \
    --body '["z3cybMAV", "GhAA7lZ3", "OBG3pFw0"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '5z0AgcIn' \
    --body '[{"namespace": "P87HolCm", "roleId": "aiRRHTLB"}, {"namespace": "LxmnNUEm", "roleId": "ZW6Xlt2h"}, {"namespace": "flGNhVWK", "roleId": "Ph9vMFfU"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ZUJBwE1J' \
    --userId 'Z7XIIx48' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'FhJdrCzI' \
    --userId '6r4JGOJa' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '92KdVccO' \
    --body '{"enabled": true, "reason": "qI9O44cI"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'GpaTAJ1a' \
    --body '{"emailAddress": "Dby9ueH9", "password": "CCxhGgnc"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hEb1RuFZ' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'gCl1go6j' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "yQ4pgY8W"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'hM0MG2Mf' \
    --before 'EoZSPmHT' \
    --isWildcard 'true' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "WyxCQIbU", "namespace": "Akm5H6IK", "userId": "F5OsDJry"}, {"displayName": "Cegz7mIz", "namespace": "zWxNV6IL", "userId": "xucid7rA"}, {"displayName": "TtSNF6w0", "namespace": "gJUSPrpt", "userId": "OuVkOlw6"}], "members": [{"displayName": "uCcnDoKo", "namespace": "pVfpmBbN", "userId": "49tvWRwF"}, {"displayName": "pXi8WZ9H", "namespace": "E8ZaXUf4", "userId": "AkI6jRj7"}, {"displayName": "od5ODoKV", "namespace": "ZmzjLeoT", "userId": "NYmYBGz7"}], "permissions": [{"action": 5, "resource": "k1E7eskS", "schedAction": 34, "schedCron": "ovOPpGfN", "schedRange": ["xmtHWFad", "vmMuPvzl", "OasyDXT1"]}, {"action": 92, "resource": "CGwrE9qU", "schedAction": 40, "schedCron": "ALh15iiu", "schedRange": ["y7w3eYnC", "FgzcR0Fb", "PZgyqCsB"]}, {"action": 82, "resource": "PMdhna7T", "schedAction": 71, "schedCron": "iltZQzDW", "schedRange": ["nmckAdJK", "FBFFOhc8", "zxii5Hz6"]}], "roleName": "iSC1uhLp"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'GMKwufNu' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'aRaXE4rH' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'V4px3XlO' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "XJkNrJPq"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '3c3FnTeV' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '2ExIlgx7' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'Fq9osIHN' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '3FDe2sZJ' \
    --after 'kIsqXUJM' \
    --before 'CZyO4J98' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '0LusK7gg' \
    --body '{"managers": [{"displayName": "dQyE7AlL", "namespace": "wygTAtS4", "userId": "ASw8NXc3"}, {"displayName": "R35IY1fs", "namespace": "BxMsCA4b", "userId": "kSORdIIe"}, {"displayName": "TgZQOak9", "namespace": "eayJbVHJ", "userId": "4svtSuM3"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'Ue6bQulY' \
    --body '{"managers": [{"displayName": "qF8aRqng", "namespace": "MstaU1D1", "userId": "oqJrOBoO"}, {"displayName": "SwTG4FAc", "namespace": "7nNpfg1h", "userId": "iBupEsUr"}, {"displayName": "ZnM8B8Or", "namespace": "RtigYNh6", "userId": "GFbRL1xp"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'EZp0cD5b' \
    --after 'zrCt8TQQ' \
    --before 'hZXprNM7' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'uVIPBVKF' \
    --body '{"members": [{"displayName": "pq7IcOaV", "namespace": "pK0DkraS", "userId": "p9WUBC6t"}, {"displayName": "fh4yOUrv", "namespace": "n6oWDd30", "userId": "3DS8Ldy0"}, {"displayName": "natWA6uk", "namespace": "fh3PwRvz", "userId": "1fwX2kw6"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'm1gOOalO' \
    --body '{"members": [{"displayName": "fcbchBc4", "namespace": "09w2JVFe", "userId": "utwxXK7S"}, {"displayName": "0bvxyZqL", "namespace": "4DIBZJ48", "userId": "m1Awvmap"}, {"displayName": "jFEBcei1", "namespace": "UCgtRGuO", "userId": "DWMLwsyn"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'EYFQPP7I' \
    --body '{"permissions": [{"action": 30, "resource": "YXUa6edf", "schedAction": 28, "schedCron": "r6QOhaNo", "schedRange": ["OdGXc1VZ", "rlr3vcXZ", "u58uTClK"]}, {"action": 62, "resource": "qjCFK3bw", "schedAction": 67, "schedCron": "VbDSAwJg", "schedRange": ["Xn51qf9s", "I2DCNQU4", "RwFF8NRi"]}, {"action": 55, "resource": "XIIPdUKQ", "schedAction": 42, "schedCron": "RObvcnEr", "schedRange": ["tGIeQvsh", "m6u77DNd", "iULNHVhV"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'HyrpYJSy' \
    --body '{"permissions": [{"action": 44, "resource": "0zOmRXPj", "schedAction": 96, "schedCron": "Bek43tzE", "schedRange": ["8G8hDqlH", "NhJ6xX5E", "6FPKyzn7"]}, {"action": 22, "resource": "dhPpag4A", "schedAction": 37, "schedCron": "u4SmDKAo", "schedRange": ["JSJ7Rso4", "1xbUPW8d", "Yrbi7kgU"]}, {"action": 62, "resource": "h7D767km", "schedAction": 99, "schedCron": "cW9ltVPa", "schedRange": ["6WPtu2Ow", "bd0lVGN1", "Uq9x60zF"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'DOgEQUr8' \
    --body '["bnYThEeN", "zz9SDEsJ", "4r14hHhA"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '14' \
    --resource 'owVPUE3u' \
    --roleId 'AORk4V23' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'xAVqLp8v' \
    --extendExp 'true' \
    --redirectUri 'GPJg8T2I' \
    --password '7dgEPFvC' \
    --requestId 'pgeVCRnj' \
    --userName '7K5BBeDr' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'EmdRqdGG' \
    --linkingToken 'iw8D0dVR' \
    --password 'snM99oUO' \
    --username 'GgGni39N' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'JWgPXSHv' \
    --extendExp 'false' \
    --linkingToken 'zSxpf3Sd' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '12tIZXK8' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'jHoX63Yb' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'emudKew6' \
    --isTransient 'true' \
    --clientId '6WlUgIZ7' \
    --oneTimeLinkCode 'J4uR4AAh' \
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

#- 218 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'gnM3VkYx' \
    > test.out 2>&1
eval_tap $? 218 'RequestTokenExchangeCodeV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6ZAhV6mT' \
    --userId 'xQiva2gW' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pNN7hpwc' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'YVO6RwrD' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'phniWGCu' \
    --redirectUri 'dI0mmdh5' \
    --scope 'Nst0eAg5' \
    --state 'vzrwE9sD' \
    --targetAuthPage 'Ebv2MLnz' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId '2MA5DnO2' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '3jUkWkAY' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'BsbVdRq7' \
    --factor 'VTDYJ0jS' \
    --mfaToken 'NdQyr8Lz' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'U46CETCK' \
    --mfaToken 'zo7PqTvC' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'jSkHEVZW' \
    --factor 'IYR8f9uF' \
    --mfaToken 'nC9ec6TQ' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ctDjYDdj' \
    --userId 'zzvi4HuV' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'EC3tSiKN' \
    --clientId 'o4zOYDMH' \
    --redirectUri 'BOaeHXM9' \
    --requestId '97lzOMKn' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'D0h4nE1B' \
    --additionalData 'whXCh18H' \
    --clientId 'LwbxYOfn' \
    --createHeadless 'false' \
    --deviceId 'SBGMtPlv' \
    --macAddress 'CtWpuz6R' \
    --platformToken 'vAWQFN01' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'OkpUhfXX' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'rZ1SsIVW' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'tk85MWLt' \
    > test.out 2>&1
eval_tap $? 232 'SimultaneousLoginV3' test.out

#- 233 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'z9q0efZ2' \
    --clientId '0ZOxX1S4' \
    --code 'lnOWnPeR' \
    --codeVerifier 'HcPU0WCL' \
    --extendNamespace 'O8yI6YCh' \
    --extendExp 'true' \
    --password 'rSh4CYRV' \
    --redirectUri 'of2kfyPV' \
    --refreshToken 'UYXPvZVy' \
    --username 'Ec1pfziK' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 233 'TokenGrantV3' test.out

#- 234 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'm9GCZjZm' \
    > test.out 2>&1
eval_tap $? 234 'VerifyTokenV3' test.out

#- 235 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'LTeFDoKH' \
    --code '9dlp24dl' \
    --error '7h8byTiJ' \
    --openidAssocHandle 't0vlv87o' \
    --openidClaimedId 'j4jhbojZ' \
    --openidIdentity 'SLPglvdh' \
    --openidMode 'rJoxvOJz' \
    --openidNs 'fWeXCWzC' \
    --openidOpEndpoint 'tE3twzpz' \
    --openidResponseNonce 'SzVba0qa' \
    --openidReturnTo 'k3x8xVdf' \
    --openidSig '4slxaGzu' \
    --openidSigned '9AL8i6tO' \
    --state 'S0DRwCUa' \
    > test.out 2>&1
eval_tap $? 235 'PlatformAuthenticationV3' test.out

#- 236 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'mTxXcQIJ' \
    --platformToken 'gWRziLg4' \
    > test.out 2>&1
eval_tap $? 236 'PlatformTokenRefreshV3' test.out

#- 237 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'd4VqlTsv' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidations' test.out

#- 238 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'AfqfffWI' \
    > test.out 2>&1
eval_tap $? 238 'PublicGetInputValidationByField' test.out

#- 239 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'doxvJnLb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'PublicGetCountryAgeRestrictionV3' test.out

#- 240 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'PublicGetCountryListV3' test.out

#- 241 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 242 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'H3RgW6Fz' \
    > test.out 2>&1
eval_tap $? 242 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 243 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aEW4wp1Q' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["uEvuim1h", "RZ0if6AU", "utMh9O7N"]}' \
    > test.out 2>&1
eval_tap $? 243 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 244 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3WR1oHTg' \
    --platformUserId 'ozdR7KEm' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetUserByPlatformUserIDV3' test.out

#- 245 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'R61nMlD6' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetAsyncStatus' test.out

#- 246 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'sEdXvVld' \
    --limit '9' \
    --offset '5' \
    --platformBy 'nSCYFxQI' \
    --platformId '9THFQGBp' \
    --query 'Qlng3msR' \
    > test.out 2>&1
eval_tap $? 246 'PublicSearchUserV3' test.out

#- 247 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "jfn2079p", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "NGfJNAzp", "policyId": "5UgwWsOE", "policyVersionId": "U0IALcoX"}, {"isAccepted": true, "localizedPolicyVersionId": "8YG5ACV3", "policyId": "x0FPjmdA", "policyVersionId": "4mqk60KP"}, {"isAccepted": true, "localizedPolicyVersionId": "k8L1Lrar", "policyId": "boNeWnHo", "policyVersionId": "1Qv1x7un"}], "authType": "YbwBQ2Nj", "code": "wh5FMQXh", "country": "0GcAzPxs", "dateOfBirth": "ELX3WN1M", "displayName": "CaTNEdM8", "emailAddress": "jF9q2OPX", "password": "pNe7s2zS", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 247 'PublicCreateUserV3' test.out

#- 248 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'E7jBjvLE' \
    --query 'QoTiG3oN' \
    > test.out 2>&1
eval_tap $? 248 'CheckUserAvailability' test.out

#- 249 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["M6za5xjq", "oMfcEKvI", "AMCVbM8i"]}' \
    > test.out 2>&1
eval_tap $? 249 'PublicBulkGetUsers' test.out

#- 250 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "pdBETX9h", "languageTag": "56CWIwyl"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicSendRegistrationCode' test.out

#- 251 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "bXKAsgBw", "emailAddress": "ppSmYmso"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicVerifyRegistrationCode' test.out

#- 252 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "tGGYmDfg", "languageTag": "IQ4Ragmc"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicForgotPasswordV3' test.out

#- 253 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'ksg26VaI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 253 'GetAdminInvitationV3' test.out

#- 254 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'JE1lnxfd' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "BvTYYSxh", "policyId": "OFk1SaPm", "policyVersionId": "Z6gFAEP1"}, {"isAccepted": false, "localizedPolicyVersionId": "K7FQgEOB", "policyId": "zlu2VeYX", "policyVersionId": "saqkVqGp"}, {"isAccepted": false, "localizedPolicyVersionId": "Bt9d5aeW", "policyId": "Zk0gdGvi", "policyVersionId": "61Yu7SbJ"}], "authType": "EMAILPASSWD", "country": "JIShwEIf", "dateOfBirth": "uQ3zJWdI", "displayName": "ybVKX16Y", "password": "xmTtUcVC", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 254 'CreateUserFromInvitationV3' test.out

#- 255 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "1aK8gkUv", "country": "r6bgjvaU", "dateOfBirth": "4exPWgx4", "displayName": "ggB10ugk", "languageTag": "MZvSYlIR", "userName": "TbVjPMKu"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserV3' test.out

#- 256 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "FxxaIijk", "country": "2DlXhmwe", "dateOfBirth": "e8G7411W", "displayName": "AbZ2FdEA", "languageTag": "15jdtJ2K", "userName": "lzXBl3fq"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicPartialUpdateUserV3' test.out

#- 257 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "ooCCsYZr", "emailAddress": "iNEH0Rri", "languageTag": "1GlzhypF"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicSendVerificationCodeV3' test.out

#- 258 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "zLbObLeR", "contactType": "HeIlBHnj", "languageTag": "8L9YJhVV", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUserVerificationV3' test.out

#- 259 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uS2RL3fC", "country": "6qGIGKgf", "dateOfBirth": "RuaPU98a", "displayName": "Ldk3w9dU", "emailAddress": "9MRDpoiW", "password": "C1ad847H", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 259 'PublicUpgradeHeadlessAccountV3' test.out

#- 260 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "4oOdU1vR", "password": "toWeKvbf"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicVerifyHeadlessAccountV3' test.out

#- 261 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "zhLSpNU8", "newPassword": "bQL29W2j", "oldPassword": "yzOWoDK2"}' \
    > test.out 2>&1
eval_tap $? 261 'PublicUpdatePasswordV3' test.out

#- 262 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'T5dHdf6y' \
    > test.out 2>&1
eval_tap $? 262 'PublicCreateJusticeUser' test.out

#- 263 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RDGbKStc' \
    --redirectUri 'N3romsbr' \
    --ticket 'ugC1LzAz' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformLinkV3' test.out

#- 264 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hwYYKAux' \
    --body '{"platformNamespace": "ICMwRdGw"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkV3' test.out

#- 265 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KZZ2C0Qn' \
    > test.out 2>&1
eval_tap $? 265 'PublicPlatformUnlinkAllV3' test.out

#- 266 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DYLtJmpK' \
    --ticket 'sjHzrEYC' \
    > test.out 2>&1
eval_tap $? 266 'PublicForcePlatformLinkV3' test.out

#- 267 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'V3Ikv9ua' \
    --clientId 'ywOKBK9s' \
    --redirectUri 'b73Fr1R4' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatform' test.out

#- 268 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'tf7RTF2O' \
    --code 'ZokgThZo' \
    --state 'F2KPvInY' \
    > test.out 2>&1
eval_tap $? 268 'PublicWebLinkPlatformEstablish' test.out

#- 269 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pC2iwoyw' \
    --code 'UYEeEt3j' \
    --state 'R1cDvxXe' \
    > test.out 2>&1
eval_tap $? 269 'PublicProcessWebLinkPlatformV3' test.out

#- 270 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "Xv9Tud6u", "userIds": ["eRKCF8K1", "qKAuzW5D", "FdTKAprg"]}' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetUsersPlatformInfosV3' test.out

#- 271 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IYJ1RV8O", "emailAddress": "ZrVTbJ5K", "newPassword": "FaQOYGLq"}' \
    > test.out 2>&1
eval_tap $? 271 'ResetPasswordV3' test.out

#- 272 PublicGetUserByUserIdV3
eval_tap 0 272 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 273 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'A36Buqik' \
    --activeOnly 'true' \
    --after 'egtz7kJA' \
    --before 'xhxmPvGg' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserBanHistoryV3' test.out

#- 274 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'm8tLtIDe' \
    > test.out 2>&1
eval_tap $? 274 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 275 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OCxLYJJC' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserInformationV3' test.out

#- 276 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PSXPwww1' \
    --after '0.28337479325614423' \
    --before '0.3814242958205344' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserLoginHistoriesV3' test.out

#- 277 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 't5Yep0oy' \
    --after 'ciPXWVKG' \
    --before 'a7DjByDO' \
    --limit '4' \
    --platformId 'x7EhMbSg' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUserPlatformAccountsV3' test.out

#- 278 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b0j05veU' \
    > test.out 2>&1
eval_tap $? 278 'PublicListJusticePlatformAccountsV3' test.out

#- 279 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'qZ8148Dd' \
    --body '{"platformId": "0rWcvZbj", "platformUserId": "r2zzfeqK"}' \
    > test.out 2>&1
eval_tap $? 279 'PublicLinkPlatformAccount' test.out

#- 280 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'yWErTBj2' \
    --body '{"chosenNamespaces": ["pJItI6je", "teYeYZJs", "CqF5skx4"], "requestId": "B6x4JawC"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicForceLinkPlatformWithProgression' test.out

#- 281 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OXqfpUVW' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetPublisherUserV3' test.out

#- 282 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KD8YYylg' \
    --password '6Ovv9FUp' \
    > test.out 2>&1
eval_tap $? 282 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 283 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'QabQZsme' \
    --before 'JtokjITT' \
    --isWildcard 'true' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetRolesV3' test.out

#- 284 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'KVvLpJsp' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetRoleV3' test.out

#- 285 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetMyUserV3' test.out

#- 286 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'm2quta7D' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 287 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["FVwhFonL", "ouFKhMqn", "oxhviFvA"], "oneTimeLinkCode": "KfqVG7MK"}' \
    > test.out 2>&1
eval_tap $? 287 'LinkHeadlessAccountToMyAccountV3' test.out

#- 288 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "dhSVC19A"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicSendVerificationLinkV3' test.out

#- 289 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'kx2xb8SP' \
    > test.out 2>&1
eval_tap $? 289 'PublicVerifyUserByLinkV3' test.out

#- 290 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'latOrhLo' \
    --code 'SrlLCXah' \
    --error 'jRRiDc5n' \
    --state 'fZOeB2wM' \
    > test.out 2>&1
eval_tap $? 290 'PlatformAuthenticateSAMLV3Handler' test.out

#- 291 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'eGqFxuPi' \
    --payload 'IHFQUCcD' \
    > test.out 2>&1
eval_tap $? 291 'LoginSSOClient' test.out

#- 292 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'rbxwbXYm' \
    > test.out 2>&1
eval_tap $? 292 'LogoutSSOClient' test.out

#- 293 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'iVfikPpm' \
    --code 'XRxLTuQz' \
    > test.out 2>&1
eval_tap $? 293 'RequestTargetTokenResponseV3' test.out

#- 294 PlatformTokenRefreshV3Deprecate
eval_tap 0 294 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 295 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'owmQzhBw' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetDevicesByUserV4' test.out

#- 296 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'HIyFlwPO' \
    --endDate 'LZn7SCgP' \
    --limit '99' \
    --offset '15' \
    --startDate 'giEcJwpD' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetBannedDevicesV4' test.out

#- 297 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'l2lrspt8' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetUserDeviceBansV4' test.out

#- 298 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "QQGB4oUD", "deviceId": "8hPSkZWl", "deviceType": "p0xgG7jG", "enabled": false, "endDate": "Jp34UwHA", "ext": {"o0vLpPRH": {}, "X0gxUGcY": {}, "kZ29xZ0O": {}}, "reason": "3ZTHl7cN"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminBanDeviceV4' test.out

#- 299 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'BTCBwdFP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 299 'AdminGetDeviceBanV4' test.out

#- 300 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'gHmDL5Lg' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 300 'AdminUpdateDeviceBanV4' test.out

#- 301 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'DtvaiRdo' \
    --startDate 'xHoSom0T' \
    --deviceType 'qjRBboZg' \
    > test.out 2>&1
eval_tap $? 301 'AdminGenerateReportV4' test.out

#- 302 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminGetDeviceTypesV4' test.out

#- 303 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'flhd2lea' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminGetDeviceBansV4' test.out

#- 304 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'O1bTfKFz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminDecryptDeviceV4' test.out

#- 305 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'cwJrntZH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'AdminUnbanDeviceV4' test.out

#- 306 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '3OYHI5Mn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'AdminGetUsersByDeviceV4' test.out

#- 307 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 2}' \
    > test.out 2>&1
eval_tap $? 307 'AdminCreateTestUsersV4' test.out

#- 308 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["LIZy9dqh", "mc0Fa3Dd", "nlSvqx12"]}' \
    > test.out 2>&1
eval_tap $? 308 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 309 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ln4XW0Qn", "4NAHdyQQ", "ISHQO56q"]}' \
    > test.out 2>&1
eval_tap $? 309 'AdminBulkCheckValidUserIDV4' test.out

#- 310 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ess4xEt6' \
    --body '{"avatarUrl": "5hcotMZC", "country": "nYrpJY12", "dateOfBirth": "qw0m3seu", "displayName": "nEYJsggy", "languageTag": "gnS4FFVU", "userName": "kA3D5qc8"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminUpdateUserV4' test.out

#- 311 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'lX67KkoW' \
    --body '{"code": "8pbvUR9G", "emailAddress": "F2rVIK6E"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserEmailAddressV4' test.out

#- 312 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'C4JOVM7A' \
    > test.out 2>&1
eval_tap $? 312 'AdminDisableUserMFAV4' test.out

#- 313 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yI2RfVwT' \
    > test.out 2>&1
eval_tap $? 313 'AdminListUserRolesV4' test.out

#- 314 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'c5gSZyut' \
    --body '{"assignedNamespaces": ["xCTjsawG", "G87Q7iLz", "OBuaP6BH"], "roleId": "GAgAGGCR"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminUpdateUserRoleV4' test.out

#- 315 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RZUO9sKO' \
    --body '{"assignedNamespaces": ["jd9mWfms", "FiB3mGE0", "3zxvX0As"], "roleId": "jNNVaUp9"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminAddUserRoleV4' test.out

#- 316 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'F8J6zUhX' \
    --body '{"assignedNamespaces": ["7zoOGxkF", "oEeZU5mu", "BGTI2Knk"], "roleId": "ZpssmRJw"}' \
    > test.out 2>&1
eval_tap $? 316 'AdminRemoveUserRoleV4' test.out

#- 317 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '47' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 317 'AdminGetRolesV4' test.out

#- 318 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "2Wqj15lW"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminCreateRoleV4' test.out

#- 319 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'YW19aH0B' \
    > test.out 2>&1
eval_tap $? 319 'AdminGetRoleV4' test.out

#- 320 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'XZiVre6S' \
    > test.out 2>&1
eval_tap $? 320 'AdminDeleteRoleV4' test.out

#- 321 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'GBL87zzh' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "gXEpKJtJ"}' \
    > test.out 2>&1
eval_tap $? 321 'AdminUpdateRoleV4' test.out

#- 322 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '2kh6talR' \
    --body '{"permissions": [{"action": 70, "resource": "MUbKsQvF", "schedAction": 6, "schedCron": "MONzgK9Y", "schedRange": ["21tLwvac", "ilCFzw53", "VuYSg8QF"]}, {"action": 8, "resource": "KImSuUFD", "schedAction": 1, "schedCron": "qjesSgQv", "schedRange": ["tgQIRhks", "QMuCNFDR", "H678ssJd"]}, {"action": 74, "resource": "QLVv2akZ", "schedAction": 82, "schedCron": "bbuU2lNa", "schedRange": ["Qqdu2MEk", "hHfrJWWw", "MX1UtkYL"]}]}' \
    > test.out 2>&1
eval_tap $? 322 'AdminUpdateRolePermissionsV4' test.out

#- 323 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'ljwh0wjf' \
    --body '{"permissions": [{"action": 63, "resource": "zZMNplo4", "schedAction": 93, "schedCron": "q8a0daPS", "schedRange": ["srkbJ9RE", "0QYylWec", "KqtaDzRu"]}, {"action": 24, "resource": "4uHHTWfs", "schedAction": 12, "schedCron": "rMtHPwVJ", "schedRange": ["7iOmGUXe", "sHfJw9xb", "ITJKLdmk"]}, {"action": 24, "resource": "GrsloGP6", "schedAction": 79, "schedCron": "vBCOgznY", "schedRange": ["sqegzMbP", "xxjXJMOS", "PxA9sKhF"]}]}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAddRolePermissionsV4' test.out

#- 324 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '9DlXg7Ex' \
    --body '["nBaA2mCV", "mKGO6XL2", "sxbifsqQ"]' \
    > test.out 2>&1
eval_tap $? 324 'AdminDeleteRolePermissionsV4' test.out

#- 325 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'EoXGuHIR' \
    --after 'vlh2lu2s' \
    --before 'IDpg8XWd' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 325 'AdminListAssignedUsersV4' test.out

#- 326 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'iqnSoTbM' \
    --body '{"assignedNamespaces": ["5KFzN0eF", "FIr54RKq", "GRunBQzM"], "namespace": "Mm8prCl1", "userId": "vFDld4LG"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminAssignUserToRoleV4' test.out

#- 327 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'PGmOYnE7' \
    --body '{"namespace": "bHBnA4QL", "userId": "LQvP1j64"}' \
    > test.out 2>&1
eval_tap $? 327 'AdminRevokeUserFromRoleV4' test.out

#- 328 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["ABwiPbuD", "qu394pZb", "ajiCYLVB"], "emailAddresses": ["kR3sv7Uy", "SY69P1SM", "KTybN7Qu"], "isAdmin": true, "namespace": "yYw7kibH", "roleId": "R6SUXIKJ"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminInviteUserNewV4' test.out

#- 329 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "dtr7TkzQ", "country": "dJQ53esP", "dateOfBirth": "VAqbcMbA", "displayName": "TOxUrkk8", "languageTag": "d00PW6w0", "userName": "Qw5Uose6"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminUpdateMyUserV4' test.out

#- 330 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 330 'AdminDisableMyAuthenticatorV4' test.out

#- 331 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'yecTH5NQ' \
    > test.out 2>&1
eval_tap $? 331 'AdminEnableMyAuthenticatorV4' test.out

#- 332 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 332 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 333 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 333 'AdminGetMyBackupCodesV4' test.out

#- 334 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminGenerateMyBackupCodesV4' test.out

#- 335 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminDisableMyBackupCodesV4' test.out

#- 336 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminDownloadMyBackupCodesV4' test.out

#- 337 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyBackupCodesV4' test.out

#- 338 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminSendMyMFAEmailCodeV4' test.out

#- 339 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 339 'AdminDisableMyEmailV4' test.out

#- 340 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'irz6xXM9' \
    > test.out 2>&1
eval_tap $? 340 'AdminEnableMyEmailV4' test.out

#- 341 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 341 'AdminGetMyEnabledFactorsV4' test.out

#- 342 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'eKPzWhOX' \
    > test.out 2>&1
eval_tap $? 342 'AdminMakeFactorMyDefaultV4' test.out

#- 343 AdminInviteUserV4
eval_tap 0 343 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 344 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "7Gy6zEuw", "policyId": "4js77Ylo", "policyVersionId": "MaFEramR"}, {"isAccepted": true, "localizedPolicyVersionId": "moIvg0mY", "policyId": "jbh49yhR", "policyVersionId": "bU6jRs9U"}, {"isAccepted": true, "localizedPolicyVersionId": "XBL3ogUG", "policyId": "szxvfWcH", "policyVersionId": "9PipHI4F"}], "authType": "EMAILPASSWD", "country": "e08nysun", "dateOfBirth": "uyWGmNTF", "displayName": "BBNDprjJ", "emailAddress": "XdfNsQ8M", "password": "gpEnF4L2", "passwordMD5Sum": "uXpvmZ1W", "username": "7BlMo3ZM", "verified": true}' \
    > test.out 2>&1
eval_tap $? 344 'PublicCreateTestUserV4' test.out

#- 345 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "nroZYuQO", "policyId": "cxiKI8Uk", "policyVersionId": "yyrVHq6I"}, {"isAccepted": false, "localizedPolicyVersionId": "7UliKxz2", "policyId": "yLD7Oy0U", "policyVersionId": "DLV4kCqz"}, {"isAccepted": false, "localizedPolicyVersionId": "Wesv52Hk", "policyId": "C44Bv3TP", "policyVersionId": "jJpaUwZW"}], "authType": "EMAILPASSWD", "code": "qm1kjqvh", "country": "eqchJHQi", "dateOfBirth": "ZaDevmk0", "displayName": "bFZzRZ6d", "emailAddress": "6FvbZfcr", "password": "RREjgUkA", "passwordMD5Sum": "9QUDOC0D", "reachMinimumAge": false, "username": "eyFVsRfq"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicCreateUserV4' test.out

#- 346 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'NggspAim' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7XOfeEwV", "policyId": "6BqOzz72", "policyVersionId": "HewlRcIt"}, {"isAccepted": true, "localizedPolicyVersionId": "y9BHpFvp", "policyId": "LUBMWB1b", "policyVersionId": "3xGdYTJ8"}, {"isAccepted": false, "localizedPolicyVersionId": "lByvHvNl", "policyId": "MzNXnrUG", "policyVersionId": "eJUc5LT9"}], "authType": "EMAILPASSWD", "country": "Rxlg9Kq7", "dateOfBirth": "ye8SQday", "displayName": "IbJWdZfm", "password": "GvATc6GG", "reachMinimumAge": true, "username": "O5hSyjSv"}' \
    > test.out 2>&1
eval_tap $? 346 'CreateUserFromInvitationV4' test.out

#- 347 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "FbfkuAdw", "country": "PQyt1ftv", "dateOfBirth": "A0qGKS1C", "displayName": "HLzjjGXo", "languageTag": "zYBKAQcl", "userName": "MHfO5dSL"}' \
    > test.out 2>&1
eval_tap $? 347 'PublicUpdateUserV4' test.out

#- 348 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "PrceHJYh", "emailAddress": "4ClO1nZp"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicUpdateUserEmailAddressV4' test.out

#- 349 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "FUZxYQTX", "country": "RbYIawY1", "dateOfBirth": "r1z75KlU", "displayName": "HWoscrT5", "emailAddress": "7YzF4y9K", "password": "JZsHAmOl", "reachMinimumAge": true, "username": "dYF0LDQr", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 349 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 350 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "ZXK784t7", "password": "d71sLs0P", "username": "wBqKWHzk"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicUpgradeHeadlessAccountV4' test.out

#- 351 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 351 'PublicDisableMyAuthenticatorV4' test.out

#- 352 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'eInVh4gs' \
    > test.out 2>&1
eval_tap $? 352 'PublicEnableMyAuthenticatorV4' test.out

#- 353 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 354 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicGetMyBackupCodesV4' test.out

#- 355 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicGenerateMyBackupCodesV4' test.out

#- 356 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 356 'PublicDisableMyBackupCodesV4' test.out

#- 357 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicDownloadMyBackupCodesV4' test.out

#- 358 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicEnableMyBackupCodesV4' test.out

#- 359 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 359 'PublicRemoveTrustedDeviceV4' test.out

#- 360 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicSendMyMFAEmailCodeV4' test.out

#- 361 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 361 'PublicDisableMyEmailV4' test.out

#- 362 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'jWDEMxfa' \
    > test.out 2>&1
eval_tap $? 362 'PublicEnableMyEmailV4' test.out

#- 363 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 363 'PublicGetMyEnabledFactorsV4' test.out

#- 364 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'T2PARHHE' \
    > test.out 2>&1
eval_tap $? 364 'PublicMakeFactorMyDefaultV4' test.out

#- 365 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'TTMxXHah' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 366 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "0cAA7pnc", "emailAddress": "JskFyyyq", "namespace": "RZPwtB3B", "namespaceDisplayName": "BmHQBKBy"}' \
    > test.out 2>&1
eval_tap $? 366 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE