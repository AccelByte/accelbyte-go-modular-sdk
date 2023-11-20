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
    --body '[{"field": "ZH8qh9EJ", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["dF7lT4hy", "QTtDuWcM", "ZqzQQSbh"], "preferRegex": false, "regex": "Ey1iWOh8"}, "blockedWord": ["hq08Gwah", "odRCHCxS", "3WpuiP41"], "description": [{"language": "A18JpC9u", "message": ["hxUbQfT2", "yAmWSMXG", "lw9UN8G5"]}, {"language": "k9yBIoNf", "message": ["W9cBRUuf", "v8GkrtFS", "WnVFOuKI"]}, {"language": "o8hVGGEo", "message": ["Xm6uljHs", "RNwxDWh3", "QhLi5JSo"]}], "isCustomRegex": false, "letterCase": "CHdyTYYg", "maxLength": 61, "maxRepeatingAlphaNum": 22, "maxRepeatingSpecialCharacter": 47, "minCharType": 88, "minLength": 99, "regex": "h2xsDJvv", "specialCharacterLocation": "6MBKFIel", "specialCharacters": ["eHq7aykb", "2JxlZC2Y", "ne2VGeis"]}}, {"field": "z3qdG6bT", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["lXkUZpon", "j0IMqy2p", "tcocjHr8"], "preferRegex": false, "regex": "YegCmfNE"}, "blockedWord": ["x2mP8NWN", "OFrmERxY", "qEuCUQis"], "description": [{"language": "hy2i6uNh", "message": ["i4V2853P", "MnBr5xYr", "qatOpeOb"]}, {"language": "eGYlXu5R", "message": ["CqNksIvY", "Pm1CG7YO", "WR8S3nD6"]}, {"language": "7hrun9Rv", "message": ["zAnEU1sP", "p0fGGRyQ", "akMXce0l"]}], "isCustomRegex": false, "letterCase": "PIvtmrOG", "maxLength": 42, "maxRepeatingAlphaNum": 57, "maxRepeatingSpecialCharacter": 97, "minCharType": 11, "minLength": 81, "regex": "qb9vzQxL", "specialCharacterLocation": "XkUXSNON", "specialCharacters": ["RcfXVcIS", "nmimRDqv", "CM10ufMG"]}}, {"field": "hahJIbpY", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["t71dGEhs", "dFaIFkBp", "OORPv4c8"], "preferRegex": true, "regex": "UnKa1Pnn"}, "blockedWord": ["99a5LgNo", "SLGUXRX8", "hyXtq9cl"], "description": [{"language": "9sRVBlQX", "message": ["rsHTQH0R", "RyYahqtM", "hlhnIShe"]}, {"language": "nFk5awWT", "message": ["ddE8CQju", "Kfn1qzsq", "9DPL6tST"]}, {"language": "nBMypihI", "message": ["OPaKipXu", "ku7tdrPw", "Nl2DPQqk"]}], "isCustomRegex": false, "letterCase": "5nBRd9cA", "maxLength": 43, "maxRepeatingAlphaNum": 57, "maxRepeatingSpecialCharacter": 50, "minCharType": 23, "minLength": 43, "regex": "SYZMtozC", "specialCharacterLocation": "39qce20i", "specialCharacters": ["fzZBUHlg", "gkRIHhfx", "BswVp2Lm"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'bQGCAkY7' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'w7cv714Q' \
    --before '55PQo6S5' \
    --limit '78' \
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
    --body '{"ageRestriction": 74, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'MORNYpEV' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 92}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '4gyjnwuE' \
    --limit '4' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "N399qa9U", "comment": "H3b1HC9y", "endDate": "8aLkjI4f", "reason": "HowYjH8v", "skipNotif": true, "userIds": ["M7SoJtJQ", "kHZ07Yov", "i8JuxKgH"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "QxSNeZJz", "userId": "0WsgjRzh"}, {"banId": "beRz3oaX", "userId": "oO5dMuMc"}, {"banId": "tPbsU3Cu", "userId": "bn58d9qL"}]}' \
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
    --clientId '1kqD1wSH' \
    --clientName 'HT0ckY3L' \
    --clientType '2Yo6GVJR' \
    --limit '42' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["NP1b6yN2", "RNulseEi", "rMMvSKUr"], "baseUri": "QrJ0if4T", "clientId": "m1t7GFpt", "clientName": "YE7qwc38", "clientPermissions": [{"action": 77, "resource": "uMYAZDc5", "schedAction": 99, "schedCron": "vCrCaVa8", "schedRange": ["ZUJwLfI4", "3BENaSGv", "bO40za3U"]}, {"action": 57, "resource": "PZyaTnoY", "schedAction": 37, "schedCron": "RRM2XTLs", "schedRange": ["Yyd7rq83", "tu2MJNwG", "KA0ud4Le"]}, {"action": 87, "resource": "WkIncr1z", "schedAction": 60, "schedCron": "zcskq0GK", "schedRange": ["GiQAZGFg", "RLjjKx76", "UCBniMY2"]}], "clientPlatform": "bAwNKfsl", "deletable": true, "description": "NMimxLst", "namespace": "AZdR9VUc", "oauthAccessTokenExpiration": 64, "oauthAccessTokenExpirationTimeUnit": "rP38gxVt", "oauthClientType": "5XunGtZR", "oauthRefreshTokenExpiration": 23, "oauthRefreshTokenExpirationTimeUnit": "wkoCJZuZ", "parentNamespace": "Ag3JNmSM", "redirectUri": "gOMfZLrk", "scopes": ["UWUEl6t8", "DKv1yq5r", "mTP3luUi"], "secret": "pnxema4w", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'up4kP9b4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'oEwe16pn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '7NOg93Wf' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["RRp59akm", "hx4eCk3F", "Sq1Wnew9"], "baseUri": "AsQVpVG3", "clientName": "7hGxKONG", "clientPermissions": [{"action": 79, "resource": "yHSUe0OS", "schedAction": 17, "schedCron": "D0GXWp3y", "schedRange": ["AGEFaDUh", "7sCXK0hF", "uFEB2uPK"]}, {"action": 86, "resource": "QoaXD1Nz", "schedAction": 77, "schedCron": "A8OfFCwT", "schedRange": ["zaigxd7X", "xinOzvrz", "B5THRCKv"]}, {"action": 4, "resource": "Rlz3ycrU", "schedAction": 46, "schedCron": "7RUWH2Yq", "schedRange": ["pBth8Vze", "L2aG2SdB", "ZLEdnFI2"]}], "clientPlatform": "UronCfe4", "deletable": false, "description": "7Sz0OoT1", "namespace": "wQDx0DwW", "oauthAccessTokenExpiration": 89, "oauthAccessTokenExpirationTimeUnit": "42Rtr9mD", "oauthRefreshTokenExpiration": 8, "oauthRefreshTokenExpirationTimeUnit": "i9StXZXZ", "redirectUri": "u4OMTOL1", "scopes": ["kL7n7NW8", "h3r5CtCn", "6mCCraTD"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'hEs6R9fb' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 54, "resource": "azmq8F8s"}, {"action": 82, "resource": "f9qYQvwG"}, {"action": 70, "resource": "TXSCNjMv"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'SBweMpZv' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 18, "resource": "RXAaAkh3"}, {"action": 82, "resource": "RPcELWBu"}, {"action": 90, "resource": "4GrNr0u3"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '57' \
    --clientId '9AOay5oj' \
    --namespace $AB_NAMESPACE \
    --resource 'AR1gYlSz' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
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
    --body '{"blacklist": ["Up6BvQUZ", "gv8JmowN", "x8l23TLQ"]}' \
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
    --limit '94' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '19GpvkWH' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'p04dMK5Z' \
    --body '{"ACSURL": "NTlF9vl5", "AWSCognitoRegion": "8aissSVf", "AWSCognitoUserPool": "9jqGPnt4", "AllowedClients": ["bLK33VT3", "svTj0PjN", "VlDvkuAq"], "AppId": "DRGZ8usw", "AuthorizationEndpoint": "9rFa3CzQ", "ClientId": "HJvtnytl", "Environment": "FOjgAsnb", "FederationMetadataURL": "LQF0n5h6", "GenericOauthFlow": false, "IsActive": true, "Issuer": "FUiDZNuo", "JWKSEndpoint": "SZJDmkp0", "KeyID": "2Ja760rh", "NetflixCertificates": {"encryptedPrivateKey": "61F8lsSv", "encryptedPrivateKeyName": "TDNjnkEJ", "publicCertificate": "Uh4gx4x6", "publicCertificateName": "vCpL38pb", "rootCertificate": "73Dr9rPL", "rootCertificateName": "c1vzWDB4"}, "OrganizationId": "pxCztPl6", "PlatformName": "4AEbvpD9", "RedirectUri": "cJQCg6i4", "RegisteredDomains": [{"affectedClientIDs": ["ouSRzj6k", "UWqhM7Mh", "4QCugcKy"], "domain": "PJ7F8qfP", "namespaces": ["dsboED4A", "yU1s0oUO", "IZz32xpd"], "roleId": "ENN61ac7"}, {"affectedClientIDs": ["Syss7aYS", "pRFrN2HX", "eWNwzSWP"], "domain": "Dpt0k72y", "namespaces": ["0tbIrmcu", "vaPmArn5", "SexwY9Lk"], "roleId": "P6Fg1EC5"}, {"affectedClientIDs": ["4lkIM77h", "D91iuD9l", "Z3irhwVC"], "domain": "34jCHVfP", "namespaces": ["AOH74lUB", "nevPcxlK", "Ldr5M1UA"], "roleId": "ngWjiNCg"}], "Secret": "nJSk7y6F", "TeamID": "A3XcmynP", "TokenAuthenticationType": "EVbfObDT", "TokenClaimsMapping": {"ah9XYBel": "Ek17KN3u", "dP5iRAFB": "9OuKPxWQ", "Z7jdcaxv": "1lRap4X0"}, "TokenEndpoint": "Mk5LPrMs", "UserInfoEndpoint": "37VgDf6w", "UserInfoHTTPMethod": "JBocOuGl", "scopes": ["GwfjLqNI", "24YlMXC5", "RrCfSioB"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iP1j2SvU' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rQi5iPYZ' \
    --body '{"ACSURL": "MS8GSrn2", "AWSCognitoRegion": "zsvPd2TI", "AWSCognitoUserPool": "S0bq3GJF", "AllowedClients": ["QcD53BEA", "Zl2YGGXa", "N6AyjmP1"], "AppId": "kIU2yNG9", "AuthorizationEndpoint": "kMf60kBd", "ClientId": "hlsepOyt", "Environment": "6kxe8g69", "FederationMetadataURL": "pXB8x6Kn", "GenericOauthFlow": true, "IsActive": true, "Issuer": "87pMbAQ9", "JWKSEndpoint": "BIPSqdc9", "KeyID": "qkZ3w5Iy", "NetflixCertificates": {"encryptedPrivateKey": "ftgEsQ8u", "encryptedPrivateKeyName": "zMPekmVn", "publicCertificate": "uqQoAxlR", "publicCertificateName": "fExX2CDe", "rootCertificate": "zEJA76ww", "rootCertificateName": "XjxPR7PP"}, "OrganizationId": "5MlptRea", "PlatformName": "Ulr1CnxP", "RedirectUri": "bTpk1vZl", "RegisteredDomains": [{"affectedClientIDs": ["a2OJXBCP", "cgGq0UOg", "MlRazK4B"], "domain": "FQBOTUFN", "namespaces": ["x2CqRyDe", "AkZ5QHGh", "43W6cCj5"], "roleId": "H3b2sHTv"}, {"affectedClientIDs": ["lx0MGuyq", "lfYEkJwB", "Uy3mnWBj"], "domain": "JI10sute", "namespaces": ["b3J2nAxq", "1fPUOTwG", "P5SLw8ti"], "roleId": "qu0iJBDU"}, {"affectedClientIDs": ["LBZH2D3t", "aSAsQ5uh", "V7EwwSto"], "domain": "MsxRV7li", "namespaces": ["ZFRLFQG2", "4sorAm9g", "B90JX77W"], "roleId": "NLkLyY96"}], "Secret": "e6lmEMP5", "TeamID": "5lHg8i4E", "TokenAuthenticationType": "4eh9vOIJ", "TokenClaimsMapping": {"JiSjzzcj": "E2Zsz265", "mcqsoTk4": "Uk4XvvdI", "mHKAQWJn": "XWb6anv5"}, "TokenEndpoint": "JTjkumNc", "UserInfoEndpoint": "U5KQPLIl", "UserInfoHTTPMethod": "xVtDLWFx", "scopes": ["q65q7HgB", "VsLIaZze", "d0Yh0hp7"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AigGsdX3' \
    --body '{"affectedClientIDs": ["camTJO8h", "GavUFViH", "HrejJy0a"], "assignedNamespaces": ["obASJcNS", "o5fIQSUd", "sI9s018w"], "domain": "Qpwfv3CH", "roleId": "cwuWrR2u"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Tn8fxCoJ' \
    --body '{"domain": "2z7kdAX5"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'SknwhEBL' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'UOctvBGp' \
    --body '{"acsUrl": "qKupbvxb", "apiKey": "XRXMK0Qp", "appId": "aiV0cME6", "federationMetadataUrl": "pg28V6AB", "isActive": false, "redirectUri": "OfRykpon", "secret": "0PYGNOGI", "ssoUrl": "pjmvVLvV"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7RvxWNyT' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'tdBqwp2w' \
    --body '{"acsUrl": "tE9tOzOU", "apiKey": "dhXIfNGz", "appId": "WaVen5xK", "federationMetadataUrl": "JZ8YqFEE", "isActive": false, "redirectUri": "ZdebGI8G", "secret": "PKIxivvr", "ssoUrl": "YaLhSnSk"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0320wL0Z' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["kge77YNu", "zUatIwYi", "neqco4v1"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zbRfXdcs' \
    --platformUserId 'WyoI1nzN' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'imBNAGZR' \
    --after '81' \
    --before '39' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'M37K24A6' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'vcSvymwU' \
    --body '{"bulkUserId": ["SGMxc0Ta", "TxPkSoHH", "iVfO3yrw"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Zld3Nl6Z", "EXLJ0fZo", "CcopDjTM"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["4Fm3YI2Q", "ilAXUqJr", "wqScEtLM"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["9X9Ry24t", "SGXbPu5G", "rI0NRWeY"], "isAdmin": true, "namespace": "GLu8HbdM", "roles": ["YB445Ypi", "dqgdo7T3", "gm1Z2r7M"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '52' \
    --platformUserId 'Vddrrdfk' \
    --platformId 'PanlOayx' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'vgKIhsCC' \
    --endDate 'BzZ0Zrta' \
    --includeTotal 'true' \
    --limit '3' \
    --offset '5' \
    --platformBy 'HxfKJREH' \
    --platformId 'uDvM8yJ1' \
    --query 'fFCcFoOw' \
    --startDate 'YeBwUvzN' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["k6El1zss", "y12Ibzga", "WY1QUYTe"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xEuUDEOF' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '5MadjGkK' \
    --body '{"avatarUrl": "KriK0tLx", "country": "Uk7uZaOK", "dateOfBirth": "QsU79J43", "displayName": "0km57mgQ", "languageTag": "9Pro8yOv", "userName": "Tzk9rllY"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PVwdevYE' \
    --activeOnly 'true' \
    --after 'TWvJRyr9' \
    --before 'lfrnwpQB' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jXStduIu' \
    --body '{"ban": "S5ODVGUT", "comment": "kLwMRa6w", "endDate": "V6hhJFoW", "reason": "RYTLmAGU", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'qr5RCxNx' \
    --namespace $AB_NAMESPACE \
    --userId 'D2wkREah' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Lp9XOzkz' \
    --body '{"context": "hPaWyjjV", "emailAddress": "rQTm6s2W", "languageTag": "I3GvdIDi"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SjsHWZay' \
    --body '{"Code": "A6KS0MsN", "ContactType": "QeGicfWD", "LanguageTag": "a4td4IW8", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'v6Brnix9' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Nt8TcJxL' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 's6V2pVBS' \
    --body '{"deletionDate": 53, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zTN6mnK0' \
    --body '{"code": "kLMa6BHM", "country": "GUuJ3fXp", "dateOfBirth": "kjOweyk3", "displayName": "GRRIgg9n", "emailAddress": "OW17gZFh", "password": "cZwNcPYi", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gXO0AZWO' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'C0Hmhtg5' \
    --after '0.3713693141229182' \
    --before '0.64691384538354' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GOtR2G4H' \
    --body '{"languageTag": "cvWRnB64", "newPassword": "QuJlpptY", "oldPassword": "xEDeISko"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xh9aYwOD' \
    --body '{"Permissions": [{"Action": 79, "Resource": "k9ypVdLR", "SchedAction": 72, "SchedCron": "INoQvBkQ", "SchedRange": ["aAGJb9w8", "tmEqWaBi", "si7wGHaB"]}, {"Action": 8, "Resource": "UTWBaWPH", "SchedAction": 19, "SchedCron": "paE5oLqm", "SchedRange": ["9qcMR8PL", "0kFOB0h5", "8DYap9NM"]}, {"Action": 75, "Resource": "YNKK8nWy", "SchedAction": 48, "SchedCron": "SlV7bmnj", "SchedRange": ["V38AmxRL", "HrOI63rh", "gYVcKKvC"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'euQ5ypT5' \
    --body '{"Permissions": [{"Action": 4, "Resource": "4NpJ24JT", "SchedAction": 11, "SchedCron": "vYot3PUZ", "SchedRange": ["5aaMH2lx", "iCtwYgu6", "u6RyFpgW"]}, {"Action": 82, "Resource": "jPDsxy02", "SchedAction": 48, "SchedCron": "L2nljCuv", "SchedRange": ["Hx3TyIlB", "3jkwQ5yK", "jl74U4i9"]}, {"Action": 100, "Resource": "nRFeCsCE", "SchedAction": 28, "SchedCron": "b8GqVBvb", "SchedRange": ["VvjQDJTj", "701Q6VSC", "jNiU6ld0"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'V6aRoJOo' \
    --body '[{"Action": 63, "Resource": "RdY9374H"}, {"Action": 26, "Resource": "Xp2TRTjo"}, {"Action": 99, "Resource": "z54FHWdJ"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '40' \
    --namespace $AB_NAMESPACE \
    --resource 'TkoOYOZ3' \
    --userId 'laxO5IIv' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LGhXsnyV' \
    --after 'NYihsqRm' \
    --before 'mCbgkqdI' \
    --limit '30' \
    --platformId 'aTLYrTLq' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'In2yi16P' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'trglRrXl' \
    --userId 'HuGkTp4o' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'vN7Raij8' \
    --userId 'z44cKi7i' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'IXm9ySjJ' \
    --skipConflict 'false' \
    --body '{"platformId": "THOI8yz5", "platformUserId": "UG7Z1a7O"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QnhROPzF' \
    --userId 'YSzym0cB' \
    --body '{"platformNamespace": "mRqfmhYp"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BydQK7BJ' \
    --userId 'C3aXBfD4' \
    --ticket 'X1dT2JmV' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nOX2NCSg' \
    --userId 'irhcCrkJ' \
    --platformToken '3XvWqNrg' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId '7ncuxwSV' \
    --userId 'eQtVjf7P' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'f4e8QEKO' \
    --body '["nc9IqzVY", "GTq3YMiu", "gCOEkIky"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'v6lNHSDK' \
    --body '[{"namespace": "oA0Fy1FP", "roleId": "GTflouc1"}, {"namespace": "lTaSlXWI", "roleId": "SRxX4o8S"}, {"namespace": "CR8ZRuxH", "roleId": "1LdvE6FL"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'VN0ju2QC' \
    --userId 'YtdM7gmw' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '06u3XSaB' \
    --userId 'BjfT8FYS' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oOA8BJ60' \
    --body '{"enabled": true, "reason": "vzyGmdrf"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'K5dnAOnb' \
    --body '{"emailAddress": "jX9kbduX", "password": "K0cokTjb"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZiF0R8sk' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'F3TfbuVI' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "4gdFHxKS"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'Tmxqx8bz' \
    --before 'TZ0b2iQR' \
    --isWildcard 'true' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "afu5Bt8t", "namespace": "ATGIdcVz", "userId": "Cpnurhg3"}, {"displayName": "zKmFvCoX", "namespace": "vhvGlIrB", "userId": "cQxtzkod"}, {"displayName": "MHVOEMhj", "namespace": "TPr5dCKp", "userId": "xyArDXFo"}], "members": [{"displayName": "MARBPSDc", "namespace": "HFR5EXMH", "userId": "sjviziwZ"}, {"displayName": "My6RJsQd", "namespace": "I3PxohgI", "userId": "dDBngcv5"}, {"displayName": "0LvUiB74", "namespace": "usCbS7mm", "userId": "nbpwQVRd"}], "permissions": [{"action": 29, "resource": "w2C4jeHF", "schedAction": 65, "schedCron": "EMvVCNzu", "schedRange": ["dVNDvD0v", "QfZ7xfzO", "idfZodRS"]}, {"action": 89, "resource": "e0jf9kwK", "schedAction": 5, "schedCron": "v9iTwWqk", "schedRange": ["iM6fffqr", "T7aaMnxd", "Bn1BNm9D"]}, {"action": 70, "resource": "mYTLjI6d", "schedAction": 26, "schedCron": "vQB179dz", "schedRange": ["A7L008xI", "TqcRXg9m", "t0Xo0RwT"]}], "roleName": "Ww5LSKQJ"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'QPmMo7Yg' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'FzQcx8T0' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'z7mXiW01' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "rKT7bMIV"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'TYa85DFY' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '4qPpCSYk' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'Mu7U8b7h' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'KZbbcZe5' \
    --after 'OGfyy5sJ' \
    --before 'qlJsF5B6' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'KJtzP6sI' \
    --body '{"managers": [{"displayName": "KS4sib6m", "namespace": "gf5vEDs2", "userId": "dRhfvjuY"}, {"displayName": "UimA4U39", "namespace": "TJCWfCSv", "userId": "IPZYJRou"}, {"displayName": "kjO1fZEc", "namespace": "niKTjWlz", "userId": "Paa9jWXU"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '9gVy7Fmn' \
    --body '{"managers": [{"displayName": "GbP3B5rC", "namespace": "srqTr7wV", "userId": "GkkuNkke"}, {"displayName": "cc6IXOIc", "namespace": "EvPy0gf0", "userId": "ILBcnrIs"}, {"displayName": "BrAyKEPN", "namespace": "F0MIO9zS", "userId": "qK9bQaLn"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'jLi31PVp' \
    --after 'xEOWgB3r' \
    --before 'bbVpzwQ6' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'cAKDwt7C' \
    --body '{"members": [{"displayName": "S5Wgv0JU", "namespace": "KyUY6CTR", "userId": "wwl1gocm"}, {"displayName": "Y0VhDfaV", "namespace": "7NCSUHiF", "userId": "Y44dtUjZ"}, {"displayName": "dKQJSKT6", "namespace": "1vh2FHU8", "userId": "HuvAsJr1"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '7EYnlfBk' \
    --body '{"members": [{"displayName": "274L3yyP", "namespace": "KOs9kNmH", "userId": "hivp6EQ8"}, {"displayName": "rctQfW2A", "namespace": "IE1RMysV", "userId": "H6IdQsn6"}, {"displayName": "hla6tO7d", "namespace": "Kw1y53Lr", "userId": "JFzSO4Sc"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'MsisPKwA' \
    --body '{"permissions": [{"action": 90, "resource": "A9sKIrxL", "schedAction": 31, "schedCron": "2FUrNNV3", "schedRange": ["Y5rGNghm", "dwjw9F10", "yvlDgDy7"]}, {"action": 36, "resource": "GHu6wrWw", "schedAction": 77, "schedCron": "uLTcckGp", "schedRange": ["XnkfQ8qm", "5F3c2gq7", "mHjwNfTO"]}, {"action": 39, "resource": "OA8FZdcd", "schedAction": 38, "schedCron": "Ec835lYT", "schedRange": ["2id646ku", "EewJc1se", "plkGdtit"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '31TlBA29' \
    --body '{"permissions": [{"action": 79, "resource": "BWzE704I", "schedAction": 72, "schedCron": "NQl7XXFr", "schedRange": ["uM5D7Pn3", "jKrKu6Pi", "JsutDgQy"]}, {"action": 27, "resource": "7jvTY9fc", "schedAction": 55, "schedCron": "QNIHkxDg", "schedRange": ["S06ImkJa", "G5c1y5mY", "AIIyFAxE"]}, {"action": 68, "resource": "foltTKKa", "schedAction": 59, "schedCron": "hPlhsqmJ", "schedRange": ["I8qsuFaT", "4kPoNOba", "IWJecbjq"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'M7F2pPRI' \
    --body '["lw2FD8v3", "OpdpHWGr", "doGSFwsX"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '68' \
    --resource 'AcGWFmNT' \
    --roleId 'zGJCo7j1' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'DVFui4Zl' \
    --extendExp 'true' \
    --redirectUri '1pECZvSJ' \
    --password '7UGlQsZ8' \
    --requestId 'grqkZCfE' \
    --userName '8NJVJZ8W' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId '8fJqK8mk' \
    --linkingToken 'KBzOP405' \
    --password 'JzCEorH1' \
    --username 'wAYwulE6' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'mB4r4Mr4' \
    --extendExp 'true' \
    --linkingToken 'J9eTxE5t' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'pdoyad09' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'TSx62aSY' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'bkWiSHal' \
    --isTransient 'false' \
    --clientId 'sTrHenKI' \
    --oneTimeLinkCode 'eA8Xvbma' \
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
    --clientId 'xfSVs5ge' \
    > test.out 2>&1
eval_tap $? 218 'RequestTokenExchangeCodeV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'g8Cpn3Ce' \
    --userId 'NWSeMUfE' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mxnvTiev' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge '3uL0Lnxl' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode '3lx9cACO' \
    --redirectUri '9x6mCndu' \
    --scope 'PmU8Y1kV' \
    --state 'umBpuaJg' \
    --targetAuthPage 'BZCztz2F' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'XtH8YxZr' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'wgQbBUCy' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '4TFebLvW' \
    --factor 'qZVGHzpE' \
    --mfaToken 'kFxcEm75' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'cHKkGbwU' \
    --mfaToken 'eSIjflf5' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'izws9dbX' \
    --factor 'cBJSAZKy' \
    --mfaToken 'Q381DnrI' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BajN8Qq1' \
    --userId 'Mo4wiIfk' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'U8LeVMlI' \
    --clientId 'OZ3SDosR' \
    --redirectUri 'Q2TD8MHy' \
    --requestId 'IqUHWGRj' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'QzBj0c3w' \
    --additionalData 'FOmuWtgq' \
    --clientId 'NLX1Fsxh' \
    --createHeadless 'false' \
    --deviceId 'qLf57c9J' \
    --macAddress 'HDrE477C' \
    --platformToken 'u3FsBXEU' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'jkldjnTI' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData '7s9uG6FW' \
    --clientId '0CQjT6Hg' \
    --code 'ebVt3t6c' \
    --codeVerifier 'oHQDq9zV' \
    --extendExp 'true' \
    --password 'zU901GSg' \
    --redirectUri 'p7ZE20Is' \
    --refreshToken 'ou7SOTzJ' \
    --username 'PZ0NKupo' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '2Cwxqo4B' \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '5wP6fgdF' \
    --code 'K9TLsqyF' \
    --error '7l5x6aNW' \
    --openidAssocHandle '3zBatyd2' \
    --openidClaimedId 'Fyk9XFeh' \
    --openidIdentity 'AlykkfwJ' \
    --openidMode '80FPVbeh' \
    --openidNs 'ChCcHK7C' \
    --openidOpEndpoint 'SYnlLugw' \
    --openidResponseNonce 'UGLXKMyz' \
    --openidReturnTo 'nbi7E1Q3' \
    --openidSig '7vYvqRgM' \
    --openidSigned 'zw1gy1fS' \
    --state 'yT7F3xvq' \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '9GoUFsrd' \
    --platformToken 'VY9x3P9e' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode '5JpSiwDB' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'vRz2ZbD3' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '7v4Qmhvo' \
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
    --clientId 'dmp44tB8' \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SM0vAqMm' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["XNhG5CVn", "WRz40jqN", "m8pXeNkE"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IERasMbR' \
    --platformUserId 'VNJsCgzA' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'Yl2nxdAD' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'y540jF6C' \
    --limit '79' \
    --offset '71' \
    --query 'pv3W1fyC' \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "whEkJNAR", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3bZBnjhb", "policyId": "IBrkSGZj", "policyVersionId": "NlvRdLhO"}, {"isAccepted": true, "localizedPolicyVersionId": "a1roMvuh", "policyId": "RYgAD4cF", "policyVersionId": "IGEpnbAb"}, {"isAccepted": true, "localizedPolicyVersionId": "aH26P9Qf", "policyId": "lMO7v7Q0", "policyVersionId": "HWPW7hjg"}], "authType": "DEDERiXU", "code": "ZLS24xmn", "country": "DnxEEa52", "dateOfBirth": "cbv0EZqP", "displayName": "HWDZn6VR", "emailAddress": "ALfTWG69", "password": "jeDzMoFZ", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 't9yK3Zfn' \
    --query 'q9IkH5BN' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ykG8e71r", "bPOhHjiS", "mqjAP5pG"]}' \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Ypv9B8OY", "languageTag": "scVk821F"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "c8wWyNQD", "emailAddress": "z3suDhx9"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "fMnwuNwh", "languageTag": "obuDvz6K"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'NLk8fSvt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'X53iI5zQ' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "pZb3lgQJ", "policyId": "PJtnqBNi", "policyVersionId": "yAx0c8ki"}, {"isAccepted": false, "localizedPolicyVersionId": "3y3Z4dJO", "policyId": "gYfPpPf4", "policyVersionId": "2kTnG4fg"}, {"isAccepted": true, "localizedPolicyVersionId": "0wUuz2hy", "policyId": "pBpJfz8U", "policyVersionId": "A0tZ1nHn"}], "authType": "EMAILPASSWD", "country": "dga0JkVB", "dateOfBirth": "got3H1zU", "displayName": "m2f7s1uT", "password": "MEIAPTAJ", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "n9r6nK2N", "country": "GxtGRjZW", "dateOfBirth": "uCdVzgjH", "displayName": "V2eO9RHz", "languageTag": "q49kgp2U", "userName": "04MPwlJc"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "u1qzC33f", "country": "UTu6cy9K", "dateOfBirth": "okV0ehoZ", "displayName": "IW7MJev6", "languageTag": "CJ5yTARP", "userName": "SbTaKBAv"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "aPOhwa1B", "emailAddress": "fy4Mz4mJ", "languageTag": "Cfu5IrNH"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "2vWIchgh", "contactType": "yd3JS0DQ", "languageTag": "3J7uHfWT", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "3JLcVcxv", "country": "7rO24ZQm", "dateOfBirth": "t4OtgOFY", "displayName": "klpQ2WrY", "emailAddress": "nQeFd387", "password": "RU989HAg", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "nK5d9lgE", "password": "0zoKY4Lc"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "raIopK7z", "newPassword": "mPZ90PqE", "oldPassword": "I7MVXDfN"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '2duHCcy4' \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Y2NECOeB' \
    --redirectUri 'GfN4IBVa' \
    --ticket 'FLbA6z77' \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2YDkHLNZ' \
    --body '{"platformNamespace": "wHQEwkor"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tZ2iufvG' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PxCRT8OE' \
    --ticket 'Jp4mWAn2' \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'm4t3wPGz' \
    --clientId 'hxdQjN8N' \
    --redirectUri 'xeJmiZWw' \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'xfZWzlR0' \
    --code 'xhZOQAJO' \
    --state 'K7ZA9r5M' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MLBlhqbp' \
    --code '09WGXhsR' \
    --state 'tZVn0R71' \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "SUeiRjmI", "emailAddress": "aurIAHMg", "newPassword": "IXVNBHgZ"}' \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'a2zW63NB' \
    --activeOnly 'false' \
    --after 'XhX5WeQT' \
    --before '5P18zjyh' \
    --limit '77' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lnjCaLYK' \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HPXiO7Nk' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '7czIcmi2' \
    --after '0.7191234323799602' \
    --before '0.588858637783287' \
    --limit '69' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YcqUzb8s' \
    --after 'QMNgqtBK' \
    --before 'EU18Dod9' \
    --limit '89' \
    --platformId 'aH09AHOB' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'W3gv5UEo' \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'TVkhsHvk' \
    --body '{"platformId": "YHoSYl3i", "platformUserId": "DhzV9dRX"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '2LVj6SgU' \
    --body '{"chosenNamespaces": ["FFNzMsOZ", "nTMD9Pzt", "hHQyc43c"], "requestId": "yqnT4cLf"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7dKQSpmg' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oYkO2dTc' \
    --password 'myZ8lpPB' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '0ytFg6Ud' \
    --before 'anEHKMsJ' \
    --isWildcard 'true' \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'eB3aogQn' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '064gIEZc' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["qxeeLS1s", "vqsWyZuc", "Dyh0MILI"], "oneTimeLinkCode": "DrnwI6DI"}' \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "ubBs7J0p"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'jof8ETar' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'eF34K5hC' \
    --code 'NhO6wYog' \
    --error 'Gy4rzKwI' \
    --state 'KTWXP6nz' \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'k6U3L2fp' \
    --payload '5PKmW5ng' \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'era4y7D5' \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'nwCeMVyP' \
    --code 'qXIuMz0k' \
    > test.out 2>&1
eval_tap $? 291 'RequestTargetTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '8TUguOFC' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'BwtvR9Xg' \
    --endDate 'qj4Hu0DR' \
    --limit '27' \
    --offset '72' \
    --startDate 'fzZkDHkD' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'CSLhJzsY' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "Bwth9OMb", "deviceId": "6FmNN6Ff", "deviceType": "ctqKzqkJ", "enabled": true, "endDate": "5P9F59dY", "ext": {"JfjVCKeu": {}, "TRqMRAEO": {}, "iN6RopCX": {}}, "reason": "7hIuISqs"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '13FvYW7p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '6b8DeaVG' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'rQXbcGEJ' \
    --startDate 'h13AzOCG' \
    --deviceType 'TCfRJQ7j' \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'SgBgEZGG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'bUBiN7lf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'em9B5Ivs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'C0W7QhwD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 78}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["3nch2n7a", "k0JuSB8w", "M7xzml1k"]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'LyfIcaBK' \
    --body '{"avatarUrl": "muS0Y9Kp", "country": "8BHTwn8K", "dateOfBirth": "1uoSUQ49", "displayName": "B3urBroh", "languageTag": "2IzErnzp", "userName": "iYrLJqxF"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '6bIwopxB' \
    --body '{"code": "Neo5l8iQ", "emailAddress": "1lYzniVP"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 't9uGxOky' \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '7FzGSW5R' \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'nlv8V8LF' \
    --body '{"assignedNamespaces": ["0DClhu1l", "xKr53fiq", "xxMLciyG"], "roleId": "w84DmrDF"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '9XLJuwta' \
    --body '{"assignedNamespaces": ["CCBsDECO", "IUr2iGCP", "kgJhEjso"], "roleId": "pVUUetTW"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sqMnz9id' \
    --body '{"assignedNamespaces": ["1CCcOhYw", "bmnjsv2a", "AzyqoSpL"], "roleId": "zTcW6FSA"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '64' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "lw6DC1MJ"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'jAD3sd7G' \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'wmoNy4uv' \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '5KvXQEmd' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "ePdJHwAO"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'rNiOufAq' \
    --body '{"permissions": [{"action": 70, "resource": "bP1QZINk", "schedAction": 5, "schedCron": "li2VZvJs", "schedRange": ["GYdjARdM", "EppmNelv", "HO2Uc8fQ"]}, {"action": 97, "resource": "zINEms9D", "schedAction": 98, "schedCron": "f2NPrL6U", "schedRange": ["hQRRI5m2", "qpGKXwNS", "3PPkmyF5"]}, {"action": 70, "resource": "4wQNlYw3", "schedAction": 66, "schedCron": "xKvZlOTu", "schedRange": ["j44kpF6J", "N0zgWcvU", "eSbgZivo"]}]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'obpCpnqd' \
    --body '{"permissions": [{"action": 77, "resource": "Z6T6ygBZ", "schedAction": 84, "schedCron": "L1sG7Zke", "schedRange": ["oKf1YkFE", "us45VTuo", "rVaatkst"]}, {"action": 44, "resource": "0kaZuckV", "schedAction": 40, "schedCron": "QkEJU3lk", "schedRange": ["abBHGpgb", "8F09uPw6", "dyzP3rVg"]}, {"action": 22, "resource": "NgDKHc5x", "schedAction": 40, "schedCron": "hfWUSRJH", "schedRange": ["SA2w0k0j", "IEp66qKn", "obi6BU2I"]}]}' \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'ejKqIKnF' \
    --body '["05XY18oh", "fGztC4qf", "dDgipTsK"]' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'PpSrkkoc' \
    --after 'feOEFIA4' \
    --before 'xa5opHNX' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'c7eoxs45' \
    --body '{"assignedNamespaces": ["vE8et3Bj", "wtoeFLMZ", "SiJKO90S"], "namespace": "aiGS0OJz", "userId": "l8g5JS5x"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 's35slJPq' \
    --body '{"namespace": "QTpDeN4P", "userId": "BzeNu4TQ"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["nuoqbQBg", "a4AogIkR", "hPHT3MCo"], "emailAddresses": ["KCOHMtOO", "4SyKwwVw", "LCotDndV"], "isAdmin": false, "namespace": "fkCxzY2F", "roleId": "ocSuE7DT"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "NCi3xkVA", "country": "HGdDDiRT", "dateOfBirth": "BDJCNJSQ", "displayName": "Nd1nG7pY", "languageTag": "yv8Lk0iL", "userName": "IpLM7JHm"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'DLLLrz6u' \
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
    --code 'yfiQR3EO' \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'Dn7i01o6' \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Q8H2XoMr", "policyId": "Nq35WwVy", "policyVersionId": "V5orpg7g"}, {"isAccepted": false, "localizedPolicyVersionId": "oLMRevjI", "policyId": "zGBxDwkx", "policyVersionId": "9QMAaLcN"}, {"isAccepted": true, "localizedPolicyVersionId": "mWFbKp6K", "policyId": "HufOIhvd", "policyVersionId": "17tbXnC8"}], "authType": "EMAILPASSWD", "country": "rLrbXlSw", "dateOfBirth": "iYAvrbJ2", "displayName": "XHSDOO8K", "emailAddress": "5YCXWPSf", "password": "bpVewiPu", "passwordMD5Sum": "VorPFIsV", "username": "sMHbqpBC", "verified": true}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "iJKIhYFu", "policyId": "Po4b6rvB", "policyVersionId": "aR9HPOMK"}, {"isAccepted": false, "localizedPolicyVersionId": "Ni4dgiXj", "policyId": "xkioxfrn", "policyVersionId": "vcoRuByO"}, {"isAccepted": false, "localizedPolicyVersionId": "l7XcnqHN", "policyId": "8ZVcGz2t", "policyVersionId": "xJPDWiu1"}], "authType": "EMAILPASSWD", "code": "64YtADv0", "country": "RVsda05T", "dateOfBirth": "IxgYHBJ3", "displayName": "OgVv9NSg", "emailAddress": "nUpg7ZGV", "password": "Iwt7TjdJ", "passwordMD5Sum": "HjkWkbil", "reachMinimumAge": true, "username": "v4Xv1Beq"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'v2mBzw2O' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mWBtvgKG", "policyId": "LPeUhDTx", "policyVersionId": "5EMsX9yQ"}, {"isAccepted": true, "localizedPolicyVersionId": "tTsuGQd6", "policyId": "jglj08QT", "policyVersionId": "IMdBknw1"}, {"isAccepted": true, "localizedPolicyVersionId": "UGJMiEEV", "policyId": "u1QSpBMf", "policyVersionId": "pNEYCnhr"}], "authType": "EMAILPASSWD", "country": "rnPkbUOD", "dateOfBirth": "zan0ASPS", "displayName": "Zxz4bE7Z", "password": "lX0c6m8I", "reachMinimumAge": false, "username": "G34ovVS0"}' \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "kj7Bt1cR", "country": "eLzB5LcQ", "dateOfBirth": "0IxCfwR5", "displayName": "X1kP5jAC", "languageTag": "M8yUfunk", "userName": "wB60MMRg"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "PqWCaE6p", "emailAddress": "pYviTBWR"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "f7ttoMgx", "country": "OyHeYbiH", "dateOfBirth": "WfcfFqy8", "displayName": "TdGLSHfg", "emailAddress": "zoOMC6pF", "password": "PWTXqM7d", "reachMinimumAge": true, "username": "4l246JSH", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "01zSRqwE", "password": "UlMXcjPg", "username": "N8FkE4oZ"}' \
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
    --code '5jIp3EEE' \
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
    --code '6Md2hh8c' \
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
    --factor 'gId85WF9' \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jM9dwBZx' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "hsMD6JSe", "emailAddress": "VNh241l9", "namespace": "9n6CDnL7", "namespaceDisplayName": "l904U7QT"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE