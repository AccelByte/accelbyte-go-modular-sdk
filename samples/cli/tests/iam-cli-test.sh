#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..348"

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
    --body '[{"field": "YeOvRM51Kh2TmBma", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["APkDfzMTZJh0ln7f", "sqjFTEVc1o9XmOYe", "1eIARSEBiLWDGvbX"], "description": [{"language": "xNFcIAg5Xa427zqP", "message": ["AH3GqdDDL9FdRnCU", "c4OBexpmD7p40hhv", "kOnNUi0QYeGkjSa1"]}, {"language": "oZaUbVkQZzEQM8yi", "message": ["ANOV7CIi9aOyiDLH", "XkcUjqKxK3FDBzj0", "fp6MedsbUHNliFKr"]}, {"language": "0T4AxSqcoz4fcPp2", "message": ["lgUiQvBtAXCj7Sfn", "IcxE1SzJrJqCHyNV", "fNOSfZCvZtJGSLNT"]}], "isCustomRegex": false, "letterCase": "82uu6LFnPL5VHpIh", "maxLength": 69, "maxRepeatingAlphaNum": 23, "maxRepeatingSpecialCharacter": 89, "minCharType": 51, "minLength": 28, "regex": "p8R6cDL7MuIPkZb7", "specialCharacterLocation": "7gZLcKCpR9Jiuh4l", "specialCharacters": ["Hxhnuu2USywtMiD3", "HR3hEO5OtB6R8396", "G5JLy077zx0FDYyv"]}}, {"field": "XjMlj8CYOynRrkCm", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["O2gh9jG4CXKyKWKM", "TrRjgss235BOOlcc", "XkEolhXdDvEdDp24"], "description": [{"language": "r2zqFh35nL3U9EcH", "message": ["KIsqiUOsoR4sI5Jz", "1Vn2YJYEWNiAhhFe", "51M1eyXmSW391S8Y"]}, {"language": "mkGr5vcKUU4LUGoA", "message": ["reY68N3xLuDOvH3H", "zUasCa3Awz4gE1La", "pn4xx90eBYOKakde"]}, {"language": "YURw5ShClWt2N92y", "message": ["XbQM2ONKcKSg8krU", "4hge5m5uo1LZES0V", "hoFKIGHtfoKaN40q"]}], "isCustomRegex": false, "letterCase": "cGS6YHj62hidtKgY", "maxLength": 31, "maxRepeatingAlphaNum": 42, "maxRepeatingSpecialCharacter": 37, "minCharType": 11, "minLength": 64, "regex": "RtmmnqLEvXTEH0if", "specialCharacterLocation": "RJww3RI9ho8gX3KZ", "specialCharacters": ["TUgkZGb0bKcQ4BMp", "smC9Yl4FohEpAGBa", "K3slqrceOW5euQdm"]}}, {"field": "dJ6zhUaiQUAv7QYz", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["l4ZcFkYyJ9UpQkaI", "0xBrXEOnAocJVDTV", "M2w7hbTGmW2jUOtO"], "description": [{"language": "A6eOJIjlciUIZd7q", "message": ["eOLEuZpdAJKDRuVA", "ea13GZrbkvJWaeDk", "DEcXS71e2i7Ot0ab"]}, {"language": "V2zo2nbe4xqOUI7T", "message": ["ph27M61baabPE00b", "YW59w0AbcaIF0RiZ", "2hmMcZgJmVa7HFXd"]}, {"language": "gsEcduaRV06sWmxE", "message": ["uHaTwAecQd09BKBQ", "rdDKL8DVyLNxattz", "XbNzqbOyOK5aQsoL"]}], "isCustomRegex": true, "letterCase": "5vCl809P2amSKGd2", "maxLength": 33, "maxRepeatingAlphaNum": 70, "maxRepeatingSpecialCharacter": 61, "minCharType": 93, "minLength": 100, "regex": "uJg0mkwSbvOZTB0v", "specialCharacterLocation": "QujdG6wgKfOzxiAU", "specialCharacters": ["3lACQrTrXdvXJInv", "VGGlBUthtzFRA6Rc", "mFCSnhLmQVPmFoJ9"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'cPOlFelkzRwkSAVM' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'EyLTLAF3x6FZDGGG' \
    --before 'wbCvhFhSmOkeeLnt' \
    --limit '63' \
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
    --body '{"ageRestriction": 30, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'hT85cHLps5CwdCE7' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 46}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'slfhISczdk7V9S4w' \
    --limit '93' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "N7T9DDLXRUn4nqBF", "comment": "X0PM9Krmswgu2Oln", "endDate": "IfOWxptvuoGYsxkK", "reason": "DHd0rdJ5Vzd42CMb", "skipNotif": true, "userIds": ["DjfZETMLZisrYoBP", "cq8cuvCMobnvqO3P", "K92XypUtgSqO959A"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "YTkCOPtYr0xBja9W", "userId": "c6I1A9wWdsxB5TV9"}, {"banId": "yLzuTjD7ToBdLevJ", "userId": "b4BhhbCn3nq7Q5Po"}, {"banId": "0697BeCDALLTOlqV", "userId": "8HSQDqoguApNtULh"}]}' \
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
    --clientId 'GFfpVCftssTAYuGr' \
    --clientName 'Uf7o6dWy6uPAGvWK' \
    --clientType 'XXWpwpxXwzrCimVe' \
    --limit '19' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["82mRzCmc3fJ6faoq", "4F8LmrpPu5Ucielp", "xVzpR1haItmPDRql"], "baseUri": "aw5EP3zLyPRBt66V", "clientId": "gV22ungmKYvfkaS3", "clientName": "48IpOT8JIDTYx01i", "clientPermissions": [{"action": 80, "resource": "18IhUyOa24R2SAf6", "schedAction": 69, "schedCron": "tI2W1XzoZiVYedL0", "schedRange": ["dEev6ssKsEzjnRUE", "zbMtZ9DEyDhD4rpm", "Ydg90RsyyUOdPAD0"]}, {"action": 2, "resource": "WiOiakzjh0NZwJhw", "schedAction": 62, "schedCron": "i8pggghrYtqIiPGU", "schedRange": ["68nbuH9cBP3O4CfM", "A7gG0OjRALXLDBZQ", "IhjS69YQz4cS6eSq"]}, {"action": 1, "resource": "asBJktbs1s77NZjC", "schedAction": 91, "schedCron": "UN3IDxS7ZiBwkwMs", "schedRange": ["7a9ivrJhgycf9jKR", "6C9z9QzKTeinhbWE", "PnDN8xndCylt0Pzz"]}], "clientPlatform": "XAdzORs7obyHUfRi", "deletable": true, "description": "HOlPPmE2gn0SHG7w", "namespace": "P9bUt7WazxIzR1Fc", "oauthAccessTokenExpiration": 33, "oauthAccessTokenExpirationTimeUnit": "zjNT1MnVBO5fvtzu", "oauthClientType": "vB2v3EJAh7toTlke", "oauthRefreshTokenExpiration": 31, "oauthRefreshTokenExpirationTimeUnit": "2BacF9XaFcXf6B0D", "parentNamespace": "TzfOuvIUKzMwrm8n", "redirectUri": "Z2UR1ECuS02AdYkQ", "scopes": ["7zoSjtVVV5Az2eUo", "HIhlQK8W9SbJ42ie", "HO88d8Y7uUEi532n"], "secret": "zc1kDk43xb2ASYlR", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'vRXHYkfvF9HZA5D4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'C03eNnDENvQZf31x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'Y3LvwxLy7rDxogcq' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["hGNnNYu4ZELLk8bZ", "uqlEZgXkkvkJhEOT", "ZaidIsTzGqb3QiSh"], "baseUri": "JoSldTaNTUiPtBq2", "clientName": "8G8UdBtlEyc66p9f", "clientPermissions": [{"action": 68, "resource": "yL4OYJkPKvPzkNC6", "schedAction": 12, "schedCron": "53Ci2iXhmOteeGbj", "schedRange": ["AwZIQaTNDMXFZs0c", "PHDZJcMHQysqIi6G", "dgPBho0LiWOme1Nc"]}, {"action": 16, "resource": "JibwNeVbGykrq7Nv", "schedAction": 68, "schedCron": "T87vHSzXNvwm4C69", "schedRange": ["KNW1yuAa1LbJ5169", "EB8wgTO43iUtH4uK", "ZpSofbLXeY2CRfnN"]}, {"action": 27, "resource": "0KP6O91moZ4rqYU9", "schedAction": 46, "schedCron": "BcafgO2XNmU5Yr3T", "schedRange": ["hxfiRIlQc29wuYso", "Oo0nIy17njtBfnKO", "olZsba0JsmdzcQmx"]}], "clientPlatform": "HDPRRXxUiD3akEa8", "deletable": false, "description": "tSmw0MDEcYI6yu1y", "namespace": "LlsIHgaZjPdZIKTc", "oauthAccessTokenExpiration": 39, "oauthAccessTokenExpirationTimeUnit": "HLF2zYR5HA7ufN8I", "oauthRefreshTokenExpiration": 24, "oauthRefreshTokenExpirationTimeUnit": "s5RZ24omlSgMTeWd", "redirectUri": "er9TeQW7kg5RCA7q", "scopes": ["2oIl7fWXABOb6P97", "pCgt7rksM9oiJVTR", "U1KIdSW3iTVgs44O"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'UIOLncg63MgqevSJ' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 5, "resource": "eRQa2FcDxq0XhEun"}, {"action": 13, "resource": "Dk93EOGX4z850x4D"}, {"action": 21, "resource": "AY6rBCFsfR2T4eAV"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '9i0kkSuautzgc4tO' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 95, "resource": "JeEhqC5ViZdM1gZz"}, {"action": 49, "resource": "TJmasfTokLsTtVLe"}, {"action": 71, "resource": "ysqhWkQXF6L1530D"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '0' \
    --clientId 'AKYUL7ehMOcNJtX2' \
    --namespace $AB_NAMESPACE \
    --resource '84Z7Dc8QUB13CGZR' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 129 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'p4meiSw39YezQViH' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HfgWxgB7qxOEGDCl' \
    --body '{"ACSURL": "pu6Pn97fv2gMf7Rb", "AWSCognitoRegion": "RLmlZMt8oYtTWE3Y", "AWSCognitoUserPool": "Jm0WH5s0oArNl35l", "AllowedClients": ["yYwjlLotOZhU6xnY", "s5OCw0z8Mnse8v73", "vwCnwMfC6XTkTTSb"], "AppId": "5UN6omdjTgxKt51R", "AuthorizationEndpoint": "70cGM66ZxzUUtiNS", "ClientId": "P7sn6BEuyKd1rKeT", "Environment": "cIYzK7ubIU0QJAVE", "FederationMetadataURL": "0yKJZL4WMoJbmgRi", "GenericOauthFlow": true, "IsActive": true, "Issuer": "116OKp6ugT8JPZhJ", "JWKSEndpoint": "NiiT4S8gO2iQCLoh", "KeyID": "n2Za8kvfCyzV0WLU", "NetflixCertificates": {"encryptedPrivateKey": "BMr9796pSyvJLWDF", "encryptedPrivateKeyName": "crUQQoO4G1hV0CMK", "publicCertificate": "LM4d6j9jSRYOOTQD", "publicCertificateName": "TJMNCtRf5BWyVK68", "rootCertificate": "h2pb9r9mJIgkf4Ul", "rootCertificateName": "nJLrjNhEYbBT9DZD"}, "OrganizationId": "4lq6CE6zGjZ18syi", "PlatformName": "vf0zieZV87KbkUeY", "RedirectUri": "ifGlj66o7piS4Z7P", "RegisteredDomains": [{"affectedClientIDs": ["rPobj18hdBDVcHlZ", "pjcR6XIgzcbL9omz", "erktr5coQUdL10Ni"], "domain": "UDI0TeBNX4oeTTPz", "namespaces": ["setpNNG7DBPv8nDl", "sSO1AgeuuQCiDEFy", "O04LXKP2SHoHCjV3"], "roleId": "shhIm5zmT00ZILlX"}, {"affectedClientIDs": ["naF91osBTpd4XCoW", "srcYOBq4dOcUxHMm", "ixcFFj4dDrZqNX69"], "domain": "k6BqWcxlN3QpsRu2", "namespaces": ["IlUGgZC5idKsNndY", "YtQWXMjSe2M0mNMO", "WCQL6ewwwLcXXuTf"], "roleId": "guclcrreamltrBPd"}, {"affectedClientIDs": ["dgIfMNcDpFrXZOVD", "wVZtJ89Pha05bVDI", "8TrfpaEEvtdf3GMf"], "domain": "aMu33tacMxAyq3qT", "namespaces": ["RiZTbybWzEFbnjy2", "ZxjJkGELNK2bRu6H", "5ndKVX7yniKZksMh"], "roleId": "FJvkaemgn2j4zMaL"}], "Secret": "kiPKC7MwIBlzWmR1", "TeamID": "zqnX2MYGWpMiiTw6", "TokenAuthenticationType": "VZ5cWolR9N3pUnK4", "TokenClaimsMapping": {"djtwab9jmwZ8Ovyx": "c2T7kyYyT5cxOQS2", "rRBGrNJDyIULidbT": "mqJsejM0QFBFIODY", "GZWKrBldNBfTS6iZ": "tpakZWV8SmKY2hvd"}, "TokenEndpoint": "cov0OG9wMh0PZY9h", "UserInfoEndpoint": "oFOlbY0MaB4yj6Qa", "UserInfoHTTPMethod": "9eObIaKLn2L2oAD7", "scopes": ["xrma3Q0rHCd2qQiH", "Ciia2Prlfd6DzfIr", "lPxjTcByu4FFTaFm"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DVy0JiDqiJz4shWo' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DtqBgXGtSMW2HIJI' \
    --body '{"ACSURL": "yejxYbYwVBrR0l7k", "AWSCognitoRegion": "vJHV7qGDOzWTngOt", "AWSCognitoUserPool": "eTVhTJRF0zCJZLWT", "AllowedClients": ["DSbPDlWlvdLjDHnf", "WiLmsaCwFuGgIta0", "m0T1o9lLPyI0RCzQ"], "AppId": "PDp71hTEgwYI3JUm", "AuthorizationEndpoint": "MnOgo5PVmpCxoOpW", "ClientId": "lzSsRyKTW4gKYJ1x", "Environment": "fFcHvokhLSpbqgwB", "FederationMetadataURL": "1FGKI7r6Qp2UzE6C", "GenericOauthFlow": false, "IsActive": false, "Issuer": "MgTJo8ffSKZPMGs8", "JWKSEndpoint": "U84BY1zu5rw4c8oZ", "KeyID": "LcS7ADppZRHD8VDu", "NetflixCertificates": {"encryptedPrivateKey": "86TYgf9cxkAN0DFx", "encryptedPrivateKeyName": "DICDvalGBbYUMJlA", "publicCertificate": "kYMwupX99npecZJq", "publicCertificateName": "JLeFLrfd31iK5N5m", "rootCertificate": "zDMJc4RJagkaPZKm", "rootCertificateName": "j9xkJ6E54zld4S4s"}, "OrganizationId": "YgikZgrtEBbvolq8", "PlatformName": "qas6r4jBrRtPLSZw", "RedirectUri": "A0n0eVJKWvuju86u", "RegisteredDomains": [{"affectedClientIDs": ["iMzqwLI8WSDyg8No", "TY1yMsmPOtm2S1Ed", "5OfPcmosOmRJvrye"], "domain": "9MEsd7CWo8VybFGP", "namespaces": ["HOUsWLBL82ITuqeW", "zjyCSfzUy7QoUbLN", "Ixutdgtam8AyFPm0"], "roleId": "pGxaj3W9ZjxqGSeT"}, {"affectedClientIDs": ["6SCUD2dcpZJ4RiNm", "ySXFZPF3jEOfecn9", "VbberrfiZVVQqWLf"], "domain": "yPuzdaZWrQ05aOfI", "namespaces": ["ZSCvMUvv4mNetvih", "zkzBN4hmIal94HuY", "bqptVzI7gVlTXfhY"], "roleId": "jPXc7roQQQO7dKry"}, {"affectedClientIDs": ["JwgVWzunaPHdT0s4", "fqxXoVmiRSFBmiKp", "eZT90JavTgxhmm0o"], "domain": "gmURpaZRUgN5Wj52", "namespaces": ["goM2P7Pk2cFZF7jL", "dUriXUnr5b1488Tz", "BucSAns5VtPm0IZM"], "roleId": "ka7rgXnxvOc0I8fJ"}], "Secret": "1KJveNNaH48hGUXG", "TeamID": "cR6fq6k7yq0OOtQu", "TokenAuthenticationType": "hgdz7LClvqvsUS74", "TokenClaimsMapping": {"XbhtAzRVINhzFlxI": "NyscAqi4HkI381Sj", "WwRnDiqGEdEqJln3": "T7hh0Oom4pv00RKu", "6tTDQLk6sSPH73fB": "pTw9UdfeydZIV8Vj"}, "TokenEndpoint": "FzkQEHlqnXOzujNp", "UserInfoEndpoint": "C1XGxPwJ6repEcIs", "UserInfoHTTPMethod": "cCojX82VnEJLkWcy", "scopes": ["oUA8Hjwo2gjdqNIO", "O6I6t3jeeyD2lgtR", "sSDiTwoAqrrAF4GL"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aTQX2VtlImuz0VOg' \
    --body '{"affectedClientIDs": ["ueXolpIwCmC7PWC5", "eq7hzhf5LyzcerTC", "CbIaRtWG56ycLvQ6"], "assignedNamespaces": ["T3AbQCpqoQzi42xi", "gYKllCJJJAaPbOkG", "AhmWqbKWkYUSFW8v"], "domain": "B4sAHwgl1vh7joG7", "roleId": "IwmTGNNGLb8RQLKk"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HWRdFtLE2Wx4UsvZ' \
    --body '{"domain": "CFaqsTL24k681dQh"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'J8bRXo7d3EWalIoA' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Sh3mNzdSzqt0ANZr' \
    --body '{"acsUrl": "M80R9kkBDfJbwc7o", "apiKey": "vc3T45BHvUStDOho", "appId": "4hHhaLbooBfGT3xB", "federationMetadataUrl": "FCl8xo6ThBrq2EVQ", "isActive": false, "redirectUri": "wlNu7sfP71Hog50i", "secret": "yyAycoMkwjjTZWNb", "ssoUrl": "Sm7MzXQ1ehbKG5qm"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cRvPgGCVX7z9SF8x' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'kNhtLuVsjs7obYHy' \
    --body '{"acsUrl": "HCb7NowAVM4dcfOQ", "apiKey": "C5cQEOtUVzaIX2sI", "appId": "dlgeaGiyvzZoMh6Q", "federationMetadataUrl": "2sdJp5JTL3pglWhC", "isActive": true, "redirectUri": "bALR8PX05yKQFUPt", "secret": "D50u4zn66n1R98jk", "ssoUrl": "Y9qiT3ddyrbXlgiR"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MFufT2ITZYkVcAkC' \
    --platformUserId '3XVWI2DGHZrqDXax' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'WYR3RrTIsnfc6eL0' \
    --after '81' \
    --before '88' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'CR2AX1INgGmvaJJ2' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["u99ViZfwWtshDjIy", "6ykuX5NXuawsq46b", "E94ZjiWVNYiWz6Do"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["i8QMcyvZFFQcGss6", "0pHVvbTY5PNHcUDe", "gACBjAY0PghGPUcp"], "isAdmin": false, "namespace": "bXUdYFqK1XH9b9Hi", "roles": ["Tfc0JL9Y160gHoXU", "9TQdADwIS3FjtuaZ", "ovNFuxtARxMKA75n"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '76' \
    --platformUserId 'pgqZVcXDrn1wZ9Hm' \
    --platformId '1pGb4ezb3be8S9Os' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'NiWjdbvXtEIEM3sP' \
    --endDate 'xlEnV8vrgn593dU8' \
    --limit '99' \
    --offset '33' \
    --platformBy '7www14FOfWwCOq6P' \
    --platformId 'CHTu91tjOVc9wQzn' \
    --query 'kXqmlxjTPMT1CJZG' \
    --startDate 'Njj3LsRNlOkLCFRE' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["BC06Pmx4vf1brrY5", "HZeoz9s9fQZwVpbc", "gLXDMNA7Rsf5GuBE"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rHLNIbEGTLunQ7QD' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vh4tfwwRXY7U27vb' \
    --body '{"avatarUrl": "njWE3XK21MwPEKH2", "country": "lsiG8cqiP0ul3PDw", "dateOfBirth": "qpM2NjJh5pLXiaak", "displayName": "uSDPPnpluYOUIhZr", "languageTag": "Kl7TQ7Iqicl0IAbM", "userName": "SIBT09NQZoULb5cz"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId '6lxgzbz03rS4Isfp' \
    --activeOnly 'true' \
    --after 'Bz4j63Pia9NqZLzG' \
    --before 'jOvza7CeBWZPjveC' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DigP0F6YBA1QYINe' \
    --body '{"ban": "OKlO5Y6VPuyzYYHq", "comment": "4mPX5iHOT9MK0VQ2", "endDate": "Xrem9z9tV9FGYd5Y", "reason": "DwqeiixsBpUlliKP", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'iHG3N0GQ1ZyaVRxI' \
    --namespace $AB_NAMESPACE \
    --userId 'TpPT4ea0xgQCwPlN' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SkAEEn9YBKt52PGB' \
    --body '{"context": "j63niFoi9tnjKK5I", "emailAddress": "e3lTj6z0qgcTiwm5", "languageTag": "nAxXFgOW0lYnNUEY"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dzNIQf4cR5wW1Y0t' \
    --body '{"Code": "u4zLSavQPythgcQg", "ContactType": "VjliJXJHPhxKs7kM", "LanguageTag": "3CzpOR7M2NS1kHTH", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '6WenLpbPCFuiSlT2' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'juJGTwc4GjHlhmUY' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wAooB3cifWfdrlsP' \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hrlgwXzBZdWlDRDi' \
    --body '{"code": "4Z8wfVHc5XqF8U3a", "country": "mJV7casjKqkx5LgU", "dateOfBirth": "gVARZI6UDEhYI0si", "displayName": "sXdEprFqMeObqWjO", "emailAddress": "yt5H8JSwIM6hLFFZ", "password": "YyDikYEyhh0mdQWS", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uDRLbp46GYwnqbG6' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nSTu6OHddYFRERug' \
    --after '0.24239973924146196' \
    --before '0.6912333129149728' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CwwWio1VhxqWJ66Z' \
    --body '{"languageTag": "feRBJl1J2yJJvTwW", "newPassword": "wzshS4rNnuYg8N28", "oldPassword": "F3yLcqZka6GvCdyz"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dXJLXpd11LHJ0GAA' \
    --body '{"Permissions": [{"Action": 69, "Resource": "FRRx9hY6H7fMPjTR", "SchedAction": 20, "SchedCron": "h3mXgm14PcrN2yvq", "SchedRange": ["OejQNgfxU4KtpGgl", "ia3jtMaVEPNFatD1", "7KDfuQuJTF3AXn7P"]}, {"Action": 19, "Resource": "hcKRqhcn4L0lRbu3", "SchedAction": 49, "SchedCron": "jFLNM93VAhRIFBEB", "SchedRange": ["nnj5rjXWJWC36kzs", "JwKojuJtMsKKpFjf", "AZYQJmDImymV0tQt"]}, {"Action": 92, "Resource": "BXKtPzoyuL5NV9l1", "SchedAction": 26, "SchedCron": "CskV2O4qd5kULXdu", "SchedRange": ["4cQtGMCOdNV2O7Vn", "x3k92sEVPEvogid8", "ZNVJ9uHsaETOZSfW"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '7Fyt8XGhrLtHP0XP' \
    --body '{"Permissions": [{"Action": 26, "Resource": "D09xPVakNdr9gC6l", "SchedAction": 47, "SchedCron": "gLsc5wXUZo3SnLAf", "SchedRange": ["axNY7W1ZcU8cOb14", "2a46cauzoHGjHHoe", "vFc7pwGxIBQdelGx"]}, {"Action": 62, "Resource": "M2UaXcScs1RIXYOB", "SchedAction": 16, "SchedCron": "bq0rTSGp16mOA9gY", "SchedRange": ["L6QTUb2OMdlIaQYo", "mpzyTYHrsdcXgWpX", "Tzza5WO51nHIRKPz"]}, {"Action": 88, "Resource": "SZwnsp04CMURUX1g", "SchedAction": 27, "SchedCron": "AvC1uAJuCbVFpciK", "SchedRange": ["YXFSyOaHcB0BA7jv", "1Zj7WFcpqbeTCiK1", "1K8rKLF9zVB3cWbY"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CXp13mN1GDfl6ORk' \
    --body '[{"Action": 19, "Resource": "5kz6877eEneQ4s3K"}, {"Action": 96, "Resource": "g3XgArJLG4MUbDaJ"}, {"Action": 47, "Resource": "TlGUXquvXKz9Fumh"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '92' \
    --namespace $AB_NAMESPACE \
    --resource 'y7WRUurEfoUrwgcd' \
    --userId 'FwbGAt7sfWzpp9tG' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'N8xGyE5XByxLBdQN' \
    --after 'rzohy32CRJ2KW971' \
    --before 'TKiQLjKEgusi6Hv2' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'J9kiGivHNl1rvHaJ' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace '4wZVdLRqTQNiiyhd' \
    --userId 'mHWXdXTUg2mFxnNz' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '6gXxARgk4kdE2fyl' \
    --userId 'M2ftUyJdelgpvXzd' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'sbfEOqEyelofJkTM' \
    --body '{"platformId": "0uqwGG7LTgMPriJ1", "platformUserId": "9WIcExeD5fjRyQIX"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VFQzGlgNKaqXoAzN' \
    --userId '3JgluEDx7RkJjhgP' \
    --body '{"platformNamespace": "wOfwTrhkvxxXRfhA"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QYmqLidJCyHSIe19' \
    --userId 'BOQO0AyEV27SZxAl' \
    --ticket 'jvjv58bWJYSxGjI4' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7ckT1vfgJMkVcGUy' \
    --userId 'dSpL7PoFR3VORCjN' \
    --platformToken '6JDDXOSaaTrLmw6T' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y8sZwVi7Gwp4xtHa' \
    --body '["zS5yNAyPa9eI5uDj", "y7ZI5lpGvi16sCmn", "Cs2CoAOQD46gFzw0"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'q5kCPoNKJXmo5073' \
    --body '[{"namespace": "3DdCHvIguHvVdr9K", "roleId": "ywH4aF1vIc2GDjzk"}, {"namespace": "mqAJjZ2EubJuLa8i", "roleId": "RM20wGlSYKE6WBxu"}, {"namespace": "hwmJi9tQu0rLNKpF", "roleId": "gSZA7qKgs1wJUiQ1"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'kn6lgcd0QhvEaPss' \
    --userId 'qZFd9IKs9FbxviO2' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'PrzRTIXl4ZVTuLWO' \
    --userId '1HbozTIGF8uMAtzk' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'r8ZIJdEptb2LiWF5' \
    --body '{"enabled": true, "reason": "cheYZHDaBmi1ugAE"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '7hwHhCpSxvkVUBIm' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '0sIZpQO8UksNX6Pz' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "HhbK9bfKs3qDaazJ"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'er8kJIUJ336vJsZm' \
    --before 'YbBa37SnLC2rcG7L' \
    --isWildcard 'true' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "yqHUccKrF3vvMvKS", "namespace": "AcpPxsV0jOgBHqWD", "userId": "q4VP9eaIKXO9rrRH"}, {"displayName": "6U3RhF9Orsb2MSPF", "namespace": "aOR0DImEWx8Vpvnk", "userId": "S5JlbZ2LuZj6HPmE"}, {"displayName": "fYyh29WZab632EIC", "namespace": "efH3B8sBzECMpuM9", "userId": "cpvkpuUaR3mKToUz"}], "members": [{"displayName": "CwE9F7VSMQheb28F", "namespace": "D0ft6ndpHRjTuPwf", "userId": "rw0oy7WNjz1WutUH"}, {"displayName": "NSCXfc4TdluImy9u", "namespace": "dhKJBuO2qJmX3JRK", "userId": "f98xpvSPDj7Wb0zh"}, {"displayName": "gjgtIH5oEETVtOYC", "namespace": "7udSzg3BwcAHdf5v", "userId": "rgkkV9q8ZJ3Dhhlh"}], "permissions": [{"action": 57, "resource": "GrIacm3V0D3WOWj5", "schedAction": 38, "schedCron": "ytaU42rRWQdBut6Z", "schedRange": ["6AkinSdlJHP0OuOH", "btmqts5PE3CR5IME", "qLxvwPS4NI6OJ6dg"]}, {"action": 69, "resource": "VvpHWhqIMLPWs7vW", "schedAction": 69, "schedCron": "PWDbC6ovzYStG5j0", "schedRange": ["ihpIkGiegqOQxhaT", "gVl8kbdqSNMQyRZ3", "t9bRZOQS67flrNvP"]}, {"action": 40, "resource": "TqtdaNfddp9xYe0J", "schedAction": 8, "schedCron": "N7eF026oWEbE02Tj", "schedRange": ["YKoBWhvb87MCIC5b", "nO3HHxKXIHh0Gz4H", "9fg6Ug8nVKRMdkeb"]}], "roleName": "Y48DkkchwD5QHsN6"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'Zl6FJlGA6KKXqD8i' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'WWnAeQ3uJuvbv0XD' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'bxnFmZ1ty4IjtQQI' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "ZdsCPQ3qe56T0WEf"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'iSrPHVd0L5ixnuSZ' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'pERuRWdD8hPoRdEJ' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '94QtewdMQehIYC3H' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '1wcNRg2yN5mLmXm0' \
    --after 'OljEyQY4NHrAY1UZ' \
    --before 'CvwBUIaUogpenCKL' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 't7DM6lGp7iDTRs3F' \
    --body '{"managers": [{"displayName": "4D0c3bQ1WdFzhnxD", "namespace": "z1DlaojQ1C4QlKFZ", "userId": "eOgNR8zuUA9HfkpF"}, {"displayName": "yM9fPyUhDc2bdFVs", "namespace": "LgqlwCtdV0ijwzqj", "userId": "blRKzqdVJhjSTscZ"}, {"displayName": "R9FmO9wByRygwyMf", "namespace": "JLq9rvVcDjZijwLC", "userId": "VBcCvpOQ46OgsN8R"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'kUoiqt5RnpNiVlH2' \
    --body '{"managers": [{"displayName": "KX9wFv73zgzRJ488", "namespace": "2tVxWb4BGpuvSsBl", "userId": "vWguSBlKKN7lYufb"}, {"displayName": "7wcNYYQ8ClYcfCMk", "namespace": "jFiV2MMC5AmImc2P", "userId": "6kRTkUcBAMwLQsiU"}, {"displayName": "KXJIz1o2p54e7WHc", "namespace": "YYTOtR2DqHE9QsMs", "userId": "H4wJr7o3mZIPbgh6"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'u9QBWBc4JFzxEZOg' \
    --after 'c5R488ihIJ6AP1NF' \
    --before 'B0h3QYkc02f3OPyU' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'wD6g9UKGabfbm6QE' \
    --body '{"members": [{"displayName": "dvCIu5WK5j9UtYkw", "namespace": "QBkDB6NAAX5ng0Bg", "userId": "RN3WKKgfya11J9YD"}, {"displayName": "aUOAhnKZXT0L0ZLX", "namespace": "OoAh88A4bPf4KfQc", "userId": "46R30Hvs9OIhKACv"}, {"displayName": "Ut3f2p8EeoO9UXiV", "namespace": "0oxDBJMjLWzKsySj", "userId": "rmhB3m89f0ddOF5C"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'DNjobpoG4GePTyzP' \
    --body '{"members": [{"displayName": "uZyXfoXNGB4fJypL", "namespace": "i1mQ74hdaUk7VSci", "userId": "qqxPW8kbLlQ5jttB"}, {"displayName": "0nQF98eOVC9EOCJ1", "namespace": "bNnaL0mP6wNvKTXo", "userId": "DJTraeJZLnMByLyB"}, {"displayName": "3QhcZMe5ObQT2Lq3", "namespace": "jSeJ8xe5ieGzbTdJ", "userId": "HXkJbRMsVwQc9Xc7"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '5gwWVTBkzd5SEYR7' \
    --body '{"permissions": [{"action": 76, "resource": "ii2mVszVDf0AW9kV", "schedAction": 64, "schedCron": "o5byb6uv4yU5n0Ps", "schedRange": ["EebBl4R4rEspPnx4", "ac5oBEDnUWDKX2nd", "PfHYOSI24eVZArPT"]}, {"action": 40, "resource": "AtKapJz1PGLK83Ut", "schedAction": 48, "schedCron": "w079JLgDyuo92D7C", "schedRange": ["putWSEyUb1Tx4QOC", "BOkXupVkrcjyiw3q", "ik6KRrWLMkNOQXNu"]}, {"action": 67, "resource": "9SKNurjZVHQoPeIK", "schedAction": 40, "schedCron": "5VYBAzxIz6fMK5pi", "schedRange": ["rO0OOQeN1Z4LvwT2", "3sxlDVIEjqK67H7u", "n7nO08wXK89sEuzJ"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'wzirpr0yn64oUB1d' \
    --body '{"permissions": [{"action": 62, "resource": "gVI0hKboX6vOLKRh", "schedAction": 43, "schedCron": "MWTheetBw7fxKNlq", "schedRange": ["G1Zi1YLzmwpN5C4R", "csGlUn44uPQkEPj7", "XZmhEhcXYtbS33Ru"]}, {"action": 9, "resource": "DhYrbLGaTR20RMLd", "schedAction": 34, "schedCron": "GqazV6ZFHvyLqmwW", "schedRange": ["hHNUu1PI7u2Nixpn", "d2LHsYAgbV3SChdD", "VZxMTaCjjcNgTLaQ"]}, {"action": 25, "resource": "7frC7hlOOwx6Khql", "schedAction": 55, "schedCron": "VBCzyjCjtjbjPtD7", "schedRange": ["qREo9yPvui8QGHIm", "hs4H3xxxtxymw9Ch", "p5IN2Vo3ReCaX7pL"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'J0C4CYUc7PURd1W0' \
    --body '["wtT66atCmkDY8bJx", "jLjJYM3k9HgvEVrM", "lSkDHBaNTb4VxCf7"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '98' \
    --resource '15I43YmdxPNgPj7U' \
    --roleId 'HhW2iADNYK54LGVh' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'HYz95reHSIOA9XfM' \
    --extendExp 'false' \
    --redirectUri 'dVlkgOD060nSMNR7' \
    --password 'zv0vKB9XTpXLFFt8' \
    --requestId 'twqnR6oAffytO3QU' \
    --userName 'h4WozlYvhrt4M0FL' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'FpDQI7bUp7Xdti0f' \
    --linkingToken 'kYf0ytRLHz4TJD9T' \
    --password 'qpVYIbE8O3n9qZ3S' \
    --username 'ENh4ZH6aSiMePQdp' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'rZRIIpRsKmvGBevp' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'AxDVfYC6wqE8mOPG' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'hc3NnzQ7ai9S01V1' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId 'svVPMoO0CdWzv8wS' \
    --oneTimeLinkCode 'KYHetZgz52j6LNmM' \
    > test.out 2>&1
eval_tap $? 207 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 208 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 208 'GetCountryLocationV3' test.out

#- 209 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 209 'Logout' test.out

#- 210 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'apu8OUzgiZiFgLjI' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9tWyg7UEU0GaTfNg' \
    --userId 'GcjTgYZn3DkXZVQC' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OQIr9f7m2u7G9toM' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'blY3uhEfJkKsOWpw' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'tDKJDjN2g5FBvdrB' \
    --redirectUri 'ygaIantwQBuAkTjy' \
    --scope 'LOCDGq4883PqZaS8' \
    --state 'hflpJPCRHAuzsa3H' \
    --targetAuthPage 'AgYYQkCjD2Jz8Eww' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'BWB2214k40akj3bX' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'goCm7Ns1z0BJXQGK' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'LDBENcMXwR3LL1e2' \
    --factor '2JYeLXFLuKeDA55m' \
    --mfaToken 'yUP3OYlgV5c050N1' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'uYwzC8GIwzd5Xa9w' \
    --mfaToken 'XMzsur9QN3ByOAbp' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '3Nv6khQK9H2g8ib5' \
    --factor '6qf4wZv8HJnTOyQu' \
    --mfaToken 'JAAr17x1AEThEG4i' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XZdaBG18SzVirNoB' \
    --userId 'tgS0Cy9otM5jh9TH' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'VuDXphIKVQrucgeq' \
    --clientId 'DcZbI43CXPx9oYyg' \
    --redirectUri 'NF4rATZpCngadQoo' \
    --requestId 'fjNGIFNGbee8yjsW' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '6mEkfZb3lxqPSCaQ' \
    --clientId 'vpkOe5PFdQxvxRzh' \
    --createHeadless 'false' \
    --deviceId 'UmoKTjTyBWyxDZcR' \
    --macAddress 'Qy3bPV8JEO4VYBk3' \
    --platformToken 'kE65EAjVx0xabASP' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'WlduEHzMAytNX0wR' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'sIdEegpt76IkVpVO' \
    --code 'rD6ZiB1h8jgdSj3h' \
    --codeVerifier 'RY8jIRqtgk81rVJw' \
    --extendExp 'true' \
    --password 'mUtwC3M6qwf6DvoI' \
    --redirectUri 'xBduGj2I2rdxGvF4' \
    --refreshToken 'y2kc5JstKRouHiyw' \
    --username 'cFSXYHyae1gSES4Q' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'CQqKXIQiHlLoNO0c' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'one7kaMixcuWdPPM' \
    --code 'MZn7ma2aj08ntUGw' \
    --error 'O5QvylIskgYP9ur9' \
    --openidAssocHandle 'am8PF6WFxNtJm1Be' \
    --openidClaimedId 'XQHX8eD2NOCSesyY' \
    --openidIdentity 'aBLNk1RE5WFxBmzr' \
    --openidMode 'B7SBQBF5wTOjNHR3' \
    --openidNs 'p0iF8sSQo6Kf9rFd' \
    --openidOpEndpoint 'FL75co8LmvKTspb4' \
    --openidResponseNonce 'Uhu7KQbocxWMgx9F' \
    --openidReturnTo 'vkuD7XmwvS4sTD4d' \
    --openidSig 'FCXYwsSu6IzbNclD' \
    --openidSigned 'HhfkMdeK0BYE3w1h' \
    --state 'xjYFj996AldbLX4o' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'XjVmIvAHyMvzavle' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'jq3Nls2zX05ot4iQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 228 'PublicGetCountryAgeRestrictionV3' test.out

#- 229 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 229 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 230 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'yZIRFlwVFOeWi36p' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bh0GHTca6QoZRIa7' \
    --body '{"platformUserIds": ["do7igXyEiqTNrgsg", "eOFS1kONtQlVUZUq", "MneWYxi4bQUzkB2d"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pUQ1f8O6rbaFgY5B' \
    --platformUserId 'toxakzPEuYFXIbio' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'z7wN4d476JHKtc3v' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'j9N8um8LfbvjlO63' \
    --limit '78' \
    --offset '28' \
    --query 'rbD0g9D8S5dx24NV' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "UhOWklJeXnmGTc44", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "PEuW8RsCpnoCDbXf", "policyId": "F16NlawQmUn9UeGA", "policyVersionId": "mpAnuaWfWwanai6Y"}, {"isAccepted": false, "localizedPolicyVersionId": "iucPTQPgegg7kTuq", "policyId": "s3TPmx7iQOHHeFww", "policyVersionId": "Po7Vo0268p6UGxeJ"}, {"isAccepted": false, "localizedPolicyVersionId": "Fc9nIPMuydU82TiY", "policyId": "aiSeYUHH9TYTa8ph", "policyVersionId": "y18CKhIuKrx4IgWY"}], "authType": "rMAhXpNNjuRa4Yyw", "code": "0wqKYkqJZ1GmLZIe", "country": "Kk0t9RPMUn4Z0dMg", "dateOfBirth": "uD6L91VVVY31oNfI", "displayName": "QXjbxYIaTmwUasHx", "emailAddress": "TNGrd26jL362Y65K", "password": "je32LJU10dRf29Wb", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'E6iNNYKSKhMvVBBl' \
    --query 'bnpzjjs9TQlWzwzd' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KNmL6XXEGBhu4EAH", "RORrnJDJalTk0YyT", "XqQCCjAja0ZmLTv1"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "tVWeQxNjOt8GtJ0E", "languageTag": "Fqc6lhYLopNQPaSO"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "z0Zjuz7FlgrqG6ij", "emailAddress": "t2e6rXtke9OvFTT0"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "7MkAvMC2Md6LkbxD", "languageTag": "2g8AOC6APobz0s87"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'Ek2yzhjTgpUBnN4g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'oL1vNQvCLtiijYEm' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "fPYWtInc0oVJDyvc", "policyId": "evPXYkjWZrLwVEfn", "policyVersionId": "wOCdAiZgOqYKVt1j"}, {"isAccepted": false, "localizedPolicyVersionId": "KNcC1VIOAzEmVLqL", "policyId": "0JVrYvgXUCIR1mse", "policyVersionId": "FtDujAvF5nQ3wF2P"}, {"isAccepted": false, "localizedPolicyVersionId": "jEyzaC38346UfBXz", "policyId": "PuvMlwXn3fNWajFV", "policyVersionId": "fEvwT85ZJuvauKrJ"}], "authType": "EMAILPASSWD", "country": "iEqi7baul1f3kzAV", "dateOfBirth": "BIg8pkuBTe0xKsvT", "displayName": "bKYgcDLidY8Jgtgl", "password": "hvWKfb0c15A23DGw", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "FmMjKQJ83Vxjj3nm", "country": "xvm8deznbua64CHQ", "dateOfBirth": "sCkkjTzUNM8vOrRP", "displayName": "c63oyCcke9zJq1ez", "languageTag": "r6Bgvr3UiKF6oZzr", "userName": "mLG5Lo4B9E6Urpyv"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "jqG6isEQEvkeyymw", "country": "THKpTlhgisoipCnW", "dateOfBirth": "KhH0Ihm6SZeXkrpE", "displayName": "3zTg0FlJ1wShwhyp", "languageTag": "9mMQ10PGbuzlc95P", "userName": "bZNdsUfeCHVbgycb"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "NpptBSx8cx8BW2Xv", "emailAddress": "ZoY1Uvs5inbsHRvc", "languageTag": "8MSrG4oMObZlWOOV"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6yvwMLmdZsokQnTT", "contactType": "gOedteYWQTUdfoaZ", "languageTag": "etdpsj1L607KwxEz", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0lQhssj1c1HC24Bq", "country": "Ta85LMV2mIoerRxU", "dateOfBirth": "HYZ61hMQHAvmkYXN", "displayName": "0JzSiLjJdEDOk0Rq", "emailAddress": "zAwjPlCwgyrXoNbg", "password": "eflm54gkzaAew00Z", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "awULJ1zKqLSQBcus", "password": "2TcPvaKIrhQYKaRz"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "zxVOuJYwqpHcw53T", "newPassword": "UyLsuGV45fnhaSqQ", "oldPassword": "iiEqz7eS4Mfo5iS1"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '7KSTrYD7rkFho8vc' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HdFjz4jc4OGLdgg5' \
    --redirectUri 'lxAmEOVEShVMS24X' \
    --ticket 'Z2EBN8RcjhfgWxVD' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZxK1B7VBTFD6WLAE' \
    --body '{"platformNamespace": "USnEG7Khd1MO3jVd"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NqXJCU2CtPqq49jp' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xu2OJBUp7k3YTlCe' \
    --ticket 'G7nPhh4tuIwWx7U6' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'wFrjFcCKSnC9HQRv' \
    --clientId 'MlusmtOneUGxt6u8' \
    --redirectUri 'jqEMAdxoFzCEgXkZ' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'fx1ECPHc0zaNMFyP' \
    --state 'k9PhAePU01DLVhNm' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "OIDFTJDzcY5rgMDo", "emailAddress": "I1a7W7pPG9YUiior", "newPassword": "EV6e5O2m0C8iJOda"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cZIGuGVyRZbtvJ6t' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TLS9fOVuAUlkrKjw' \
    --activeOnly 'false' \
    --after '5aJ9MLGQ7DO72569' \
    --before 'DYCF2YcR2JCzfWBv' \
    --limit '38' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'omqlUSDUVpM4Flbw' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UmQCdCrZT8v5ksZW' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'R4VlPYSOiGRtfdgX' \
    --after '0.22362964509676586' \
    --before '0.8654427664530662' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VoQy95IqRbufmoht' \
    --after 'aGEc4A6pdaOxw6Rt' \
    --before 'I6bhryX2ds4nH3om' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'InZ8Dp94EMUQ9VfP' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'gU8N6JlURRVy1BCg' \
    --body '{"platformId": "KcXm0RmShrFtVoqj", "platformUserId": "DrFJmEGRetcOy64A"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'CJqAWVNNKDfyhNJE' \
    --body '{"chosenNamespaces": ["gOFc1gMH8ql97gvq", "v2hx2lsizLrKPvBv", "nxCTBvlo1rtoSrpa"], "requestId": "uxA7XFQqCbeZ5fbb"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7XxMcAZOd16uelYM' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MrsfewJWDW3jRNIY' \
    --password '64n6R0shSU9b32TX' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'CyhJYe0cSOSV5ANX' \
    --before 'qIzZ4XeMTVFKlRUj' \
    --isWildcard 'false' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'CGv6GQtwCpW3coKA' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'rYJGpReTLIwHLM3E' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["tAWv0VHdH1xxfirX", "ujgTHzNxDWmnM3lF", "qeuadSrGwMrnNssW"], "oneTimeLinkCode": "ljQRhQB82rTf8vXt"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "hO80MNS7cvrfNmjD"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'oDLBO7Mtf0F7p8uH' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'D4J4xTBOEGUiIEZk' \
    --code 's49gOzedLlGZMrnK' \
    --error 'wAafqJF7yOScKNbI' \
    --state 'cekSvdcTb6uPrQgy' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'vkNXTmkgnrPbanT3' \
    --payload 'P7dHXtZNKhXWMi9z' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'hKAgTFxwJpewjIJb' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'EdqeWM4CJ19Vrsvr' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hXnTJqot8C21yY46' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'TAI2Hytn1yE0QpD6' \
    --endDate '1CwkxdxwNlQKGFsM' \
    --limit '10' \
    --offset '27' \
    --startDate 'tLIGOQfq0XLAb11Z' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ld9abdee5fxABkJc' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "g4DUdCYXFodS0d4p", "deviceId": "YErVM15bcSRvRzR8", "deviceType": "7iEEKTu7egjwbhZT", "enabled": false, "endDate": "PcE2c860cXyV3hd0", "ext": {"x7awdgn2C3aT3ECu": {}, "PnZECpbUyjAsWihR": {}, "85a38nZtnUteVbQy": {}}, "reason": "hSdMWeVlaOE1qkH6"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'm3tEBVowvbz0A9Yk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '4ktdAjkOYJt4j0g7' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '2en4rS26WypwVT0o' \
    --startDate 'FuKFbdPAezsLk4Ea' \
    --deviceType 'psXZquwBT0iBBL9h' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'cUXzO7qJQFEydL1o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'nFiGCz01dkqT8l7C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'Vd2hEI8F06IJfyjB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'ZVqne2VjWsmLqqMZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 4}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["fdY2X029qjygqHzV", "9vcEgYLYI9KaOEdL", "C0sVtjJJkXGULO6E"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tj0sCZmUPbweMwM2' \
    --body '{"avatarUrl": "emOabzIiSKJ992ss", "country": "AR1zBHFuTlT9S2fm", "dateOfBirth": "o3bfEsz5JTpCVWCH", "displayName": "aDLvlHxBlk0UvxBj", "languageTag": "Eb3TX96YaYCQpEZ7", "userName": "GKDWlLK90PKnD0Xe"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ctf16WMydSypj9zW' \
    --body '{"code": "Kzjdme2tpMcgj7ti", "emailAddress": "nhH1rFaqcPUcrKxz"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'K9XfXUFQtUxiP1wd' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'd66hj0GzqmBbwGYP' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bekwpEWpTM8No8i7' \
    --body '{"assignedNamespaces": ["YIz2Z9BlAZVBLzQE", "RyYLESmUG8CDUjse", "CmMUaPAnpNRaacxl"], "roleId": "gTpSrtdry31Kserc"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'aFuRsyFkUblIQKqn' \
    --body '{"assignedNamespaces": ["03y7QSTpsDdTJUZ8", "oyGd88MpIukNarpQ", "KHtsiOnTJewD33H0"], "roleId": "rg7vwus7ZN2xPa8A"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'w3ZX6CaRVDtJBcLD' \
    --body '{"assignedNamespaces": ["5edQLTKyX46KlvZW", "P4NmKWP7hb6EOrQT", "MtDYtgBYOJ5hSbD3"], "roleId": "YZCJtDct0GCgvtLZ"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '97' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "0Zn2rqee2RLdxj39"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'x7rmjKZV3wVmRAto' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '4NKFT7yPDZXci2GR' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'wHQo2HKsBQt6KKgX' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "MEKOEf4rdUYL6zNj"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'THhOPhcc5uYoQVER' \
    --body '{"permissions": [{"action": 88, "resource": "x4WajkvrDVvVoAHE", "schedAction": 30, "schedCron": "23yMwvCR8A2o13K8", "schedRange": ["g5ZtepF0g8vnpTdD", "5nAAUsolOfGzN0QM", "ykHAwJvKeQ4G58kJ"]}, {"action": 31, "resource": "Pw49yY8wjQkb79bp", "schedAction": 73, "schedCron": "7uv1qqeAby694d86", "schedRange": ["5FuxrpQwsvMnV26W", "PbbF1okkFqJKaFyO", "jVaSWjFR4U9Mqb65"]}, {"action": 1, "resource": "fRzcu2DAxo4hsiMw", "schedAction": 70, "schedCron": "Xh1rkDQdVRdSm7CE", "schedRange": ["FLxFGt7CPEbcMMYr", "fswNgr6wc1tLooTH", "UozPvsYohdXrByq6"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'VAPXoYXHt2cv14K8' \
    --body '{"permissions": [{"action": 81, "resource": "K09WFmhQtXNxHy1l", "schedAction": 70, "schedCron": "xTguPXVTgm2Yvfn4", "schedRange": ["hJFp6Xg8pVIGJvQ0", "s5oSukNZIkhtm8pO", "vxIH7tW86NAdsiWn"]}, {"action": 82, "resource": "uoPE4893YlN9cE1I", "schedAction": 4, "schedCron": "ReCjaPU4em3Fdadb", "schedRange": ["WU4u57TjSKJ2QRzX", "8qyHz7HOJNfpc7Bo", "OLmARyc2C7OFLvsk"]}, {"action": 88, "resource": "wAjOuPG2SxtuuOOT", "schedAction": 69, "schedCron": "TVHDFEhCweROwog4", "schedRange": ["eF7tVYt44im185ni", "WR0HJwqjFmCGpAtf", "HnRrDCjHlzvU3iOG"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'lHFgHxzAtN0LuP5F' \
    --body '["j37KcHIYk9eDn16D", "gDsMOputEckUNbp8", "Shq8Arq7VQuD1qS7"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'Mfuy7e5L6qvbbhV1' \
    --after 'L4m4gtb6dDx4u7Y3' \
    --before 'X5hikLsYnT95gyHe' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'wDn0NkVg6MJC4Paf' \
    --body '{"assignedNamespaces": ["IAbi8et8dhcae3YD", "vVpZcjnhG4rMnzIZ", "1aMHjsiGTaiFoW49"], "namespace": "PK1T3228FKgXybW6", "userId": "zKDRGh0dmiUJ5FgK"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'FWfyFkb0LSTp34HO' \
    --body '{"namespace": "hUICW3PkHlV5vYAz", "userId": "5OuhMErnFADF873T"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "2uxdIwNC5u8v2Isy", "country": "CXHIjoRY7st72rje", "dateOfBirth": "6Zw4lKHxc78HUJzD", "displayName": "OCkp0mBkRCN7VLIH", "languageTag": "Eh3I3QNAH1vR9led", "userName": "Rkjkwdv61ptFR1da"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '6woa8GqTx66DihO8' \
    > test.out 2>&1
eval_tap $? 314 'AdminEnableMyAuthenticatorV4' test.out

#- 315 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 315 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 316 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 316 'AdminGetMyBackupCodesV4' test.out

#- 317 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminGenerateMyBackupCodesV4' test.out

#- 318 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminDisableMyBackupCodesV4' test.out

#- 319 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminDownloadMyBackupCodesV4' test.out

#- 320 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminEnableMyBackupCodesV4' test.out

#- 321 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminSendMyMFAEmailCodeV4' test.out

#- 322 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminDisableMyEmailV4' test.out

#- 323 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '1DPRoReorxiipHQB' \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'duPZH8NY4EZ6tJFW' \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["PEtH9uDnlkoKaFgu", "fllhVxYRCYNnzYVX", "2ui1FId6BaCHIEpI"], "emailAddresses": ["dIl7yh81mwndQc4T", "rttei7NzCgIj81fs", "iqgMXcupiOiOBbgp"], "isAdmin": false, "namespace": "zExeqgtDdVQgoXoJ", "roleId": "xYmd9NAqEa6Fqzze"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ri76ul3mTPQ4xPa1", "policyId": "y74KQs9bQGePLnYn", "policyVersionId": "jXptQMGOruuWkvuc"}, {"isAccepted": true, "localizedPolicyVersionId": "P7tyKOSvzWIlOfB7", "policyId": "MLGDPJBobVIYrOpj", "policyVersionId": "BLnvcUVk8Kh2lAic"}, {"isAccepted": false, "localizedPolicyVersionId": "yXWqtw2d4tqYI63D", "policyId": "iSxEx9qRcR2bTaaQ", "policyVersionId": "IMBBBX14rcaKOkZ8"}], "authType": "EMAILPASSWD", "country": "uqFUvIh614e5WVvR", "dateOfBirth": "3gMe9gzabaqm7veH", "displayName": "7rnOCW0pzr2gf2wt", "emailAddress": "QyOuJorS4dTnCQ63", "password": "ikOsryKAECIE7uK9", "passwordMD5Sum": "lETVoM3oKotXa3q3", "username": "M9Jt8R5sJrKswTxQ", "verified": false}' \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "pVXqiTei7sHVp8AA", "policyId": "clDeCuZxI46rLEeL", "policyVersionId": "wjok8Nb1ayML66yr"}, {"isAccepted": false, "localizedPolicyVersionId": "gyeIIERzK7lFLuXl", "policyId": "IsrWW1RneMNECbTp", "policyVersionId": "iLtbuT3ssMoZ7871"}, {"isAccepted": true, "localizedPolicyVersionId": "YNRaCmapEjYutKxB", "policyId": "eN7299clzsGIEKfc", "policyVersionId": "Fz1iXpRTKvYHCtcH"}], "authType": "EMAILPASSWD", "code": "yXdrhGCpmOH9grlW", "country": "hYQrYhNhZTDHluJZ", "dateOfBirth": "IUr9E6jMW13cImIz", "displayName": "laCS7d1vCdoLEkxY", "emailAddress": "OrSfNDQE2PYQllBJ", "password": "OoiVTvSxrWRwJqXi", "passwordMD5Sum": "k3PvrsPQnhXqFUbq", "reachMinimumAge": true, "username": "34i6rHlfgpM6kfdY"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'tRTa1rzhSPbvzuPG' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "BsDWLxStHfSXJNGS", "policyId": "T5cDHxGO9jCUCqEG", "policyVersionId": "juGxUbD5WjWzwI3N"}, {"isAccepted": false, "localizedPolicyVersionId": "8rDucbJCKPMCvsb6", "policyId": "odbnbY8xn5QvmB3w", "policyVersionId": "HyLSEx6wov7Ga8gB"}, {"isAccepted": false, "localizedPolicyVersionId": "i3bsXzzTPbhRCIRV", "policyId": "KY2NoiCikG2uSH7W", "policyVersionId": "rFmyLSBjEPwChRxR"}], "authType": "EMAILPASSWD", "country": "a2vJwhV5cGYqGTOa", "dateOfBirth": "Na1QYzUVOwt5VUi6", "displayName": "CUNPjLJ72Lv11Yg7", "password": "IwFA32gnQx6nT3zA", "reachMinimumAge": true, "username": "p24EedMifN811Cbf"}' \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "KoViQCrS8UfjB25y", "country": "iKnVYxELptCGbsY7", "dateOfBirth": "GjFyvYB0PUOuKNWP", "displayName": "iUfAkJUDKAV9rp6q", "languageTag": "pJLVea3cwiP2NCjo", "userName": "yW0gY65NfqCpZu0s"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "wavKtshtWHrMIh8D", "emailAddress": "ZUMiZLqja9sEAiZd"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jtEretRLmvCYmgoe", "country": "xLMQAlmomMv5WXif", "dateOfBirth": "cMOegrGHsOn5lmzu", "displayName": "hrU9EcyUduYbhAw0", "emailAddress": "vHhF6Y9htyHksw3e", "password": "aR54QtoHsWEtXEwL", "reachMinimumAge": false, "username": "mmV9EMOknpKUKfhs", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "CLqy6plX6tCcEjRe", "password": "pjHoW27kEAqT85TJ", "username": "mR78BfQ1kkDOiGyA"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountV4' test.out

#- 334 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 334 'PublicDisableMyAuthenticatorV4' test.out

#- 335 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'OTsNi1KVH8Ze15VQ' \
    > test.out 2>&1
eval_tap $? 335 'PublicEnableMyAuthenticatorV4' test.out

#- 336 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 336 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 337 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyBackupCodesV4' test.out

#- 338 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicGenerateMyBackupCodesV4' test.out

#- 339 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicDisableMyBackupCodesV4' test.out

#- 340 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicDownloadMyBackupCodesV4' test.out

#- 341 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicEnableMyBackupCodesV4' test.out

#- 342 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 342 'PublicRemoveTrustedDeviceV4' test.out

#- 343 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'PublicSendMyMFAEmailCodeV4' test.out

#- 344 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicDisableMyEmailV4' test.out

#- 345 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '1qxah0pAOoh3DsJN' \
    > test.out 2>&1
eval_tap $? 345 'PublicEnableMyEmailV4' test.out

#- 346 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicGetMyEnabledFactorsV4' test.out

#- 347 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'RGvCODQNQ3cK9JpI' \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out

#- 348 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "q2J8z7ftQx4Q9N1F", "namespace": "49Y3KnFhVyqEwIaj", "namespaceDisplayName": "DLs5HU4Vk7wog5kR"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE