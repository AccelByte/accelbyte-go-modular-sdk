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
echo "1..349"

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
    --body '[{"field": "xpWk3IY5dqRjp8J5", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["ZWBQQKajGesFmSpv", "gBaIX1NigHO19uHC", "uLlEnE3oIdtNXY4j"], "description": [{"language": "w5P3RI00jHop7JnK", "message": ["LbffsienBKh6fP1p", "6Yyr2EbO2e7fQF5v", "XbvAKLOVmjaZJSIO"]}, {"language": "sQTx4FDMI408HVfR", "message": ["cYCln8NwUuc1IDIB", "41SBLEYdv7dinIbt", "F7ecfFDmBjxeGpR3"]}, {"language": "VVBNwCNoaDTyY7Mj", "message": ["13cMpwexU4pbFVRg", "hMkLQ1Eie0zswOgR", "p1PMf9TFXtlJIjh4"]}], "isCustomRegex": false, "letterCase": "845pmY6wXHsyEnly", "maxLength": 10, "maxRepeatingAlphaNum": 60, "maxRepeatingSpecialCharacter": 81, "minCharType": 40, "minLength": 78, "regex": "rMcBK1ZxEDetzryk", "specialCharacterLocation": "vnAUnhmGmrJqDcYM", "specialCharacters": ["GPaEogIb43Fyvu8A", "BWoVOvhnkuw4s2E2", "z3GpmxzLDbLCTSso"]}}, {"field": "NNLi2Nq3G6F0S0nA", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["FFKNujjPgmrge7oZ", "a5TfWt8tQmpmQXxP", "4nHPDvmGU4aW4jOE"], "description": [{"language": "Q65642mSNpddf5XM", "message": ["URBm3doc1A7RoQYD", "e4iwcEpnCWfQnQTS", "YPMrbvuEVL2UmDBl"]}, {"language": "HsY8URMtPt6jWohX", "message": ["aazvkHh8dCz2JPiE", "EoJvCPUbEJudExqk", "XQNGRuasdIC9GfZu"]}, {"language": "u8XOF9gFsS04Or2s", "message": ["JZ3zasRhp1Mwq2CL", "CQ9jiLQ357q8eKpB", "Sz0Xfj0zG4Y1JsLj"]}], "isCustomRegex": true, "letterCase": "bFM4cD3Rxa6p1ETz", "maxLength": 36, "maxRepeatingAlphaNum": 31, "maxRepeatingSpecialCharacter": 78, "minCharType": 82, "minLength": 88, "regex": "ZoWrtsZbhlHwM4Hs", "specialCharacterLocation": "svzZvbGUWPvK1SLI", "specialCharacters": ["T51PK2rT76xXSHiA", "5QoUq4J9EOs8u1pZ", "Jk7XXqSbmMpqa48F"]}}, {"field": "FEabBJzZ4r9Zm7xk", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["Fsagalv5s4VaLFfB", "Zwo0H8FiiPb9SnJG", "7rVPaZSyodPYl4gF"], "description": [{"language": "Xwpgqe7ZJTbZPIFn", "message": ["6MDi3fWuGuJjEfMs", "LOqQFhNlEXxdcHnE", "9lal58gdBgneJDXs"]}, {"language": "BG3e3RIay2PMSDkX", "message": ["sFKOMfuPyuhEzNZ4", "vuVL6zNIbMdHwRrW", "HMBS3JwpstiQ0lOw"]}, {"language": "zomYwNDk5OdFQpEq", "message": ["SfpgEzY21nQtORyl", "SBynvpO12LnmqiUZ", "tPJuP4Ro9ZzfsGy6"]}], "isCustomRegex": true, "letterCase": "hVlU1ymEd565T50V", "maxLength": 14, "maxRepeatingAlphaNum": 78, "maxRepeatingSpecialCharacter": 65, "minCharType": 76, "minLength": 25, "regex": "JozItwIppUtfGglT", "specialCharacterLocation": "D6NP6UMshmGBJgy1", "specialCharacters": ["cWreIREEn1sazDiC", "gCM0uct9VdSXZRHi", "DkIw17fKRgcs2kcG"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'afxfheQPX3Sd6J6K' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'ZcgOAOugQYg4iHEs' \
    --before 'dmFyjgaoHHo6equB' \
    --limit '50' \
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
    --body '{"ageRestriction": 24, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'gcmFVq7ISScEiRhR' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 53}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'AFCSyfE1CvbWC57y' \
    --limit '64' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "xU2jQBzuO4QCT4jh", "comment": "FYOguEDBwTeaUPnm", "endDate": "kEWfwGqoVSo9RNGO", "reason": "6TuaPgtcAn5hydNs", "skipNotif": false, "userIds": ["mGGSeUuUyqU1EOWv", "lbRSR33hGu0WXQhf", "tCzZld6ryBq6IYOU"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "zxuthHDUod3wdw8D", "userId": "1OAKGjS2G1TT37VE"}, {"banId": "YrwqJogqg1k8q9Wv", "userId": "qe66dBvFBmidzvus"}, {"banId": "CmE1iTQ1ubhispf9", "userId": "nYI6ReujAXqTsA2H"}]}' \
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
    --clientId 'In9GZEX5xZ88zwKi' \
    --clientName 'Wa2aqebArdP0xUgH' \
    --clientType 'SnVssOFbMBOszHNr' \
    --limit '90' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["HdEJTY024IUS8AjD", "A3EaXZRxQQTm6sGP", "KjFUNG8p5U3g6psl"], "baseUri": "zYYAA6BL78uccNDO", "clientId": "wmNJuoxSotwE6CDp", "clientName": "4qMKnICeFv3iN2hF", "clientPermissions": [{"action": 57, "resource": "Xer9rfF6YTTViJmL", "schedAction": 47, "schedCron": "iTuJEpAraX7flvPk", "schedRange": ["JCCbhi3Ae3GJqQJt", "28zWYNZaElLvW04W", "W9NihD59UFhK5VEf"]}, {"action": 90, "resource": "5JyQV61mDiQnaHzr", "schedAction": 47, "schedCron": "fBy4Cz6MsE1BHLak", "schedRange": ["aeaVJf0lV8ZOv1U5", "bLOE4UNgubz0uWpy", "VKUKOrlUP3QYlzKz"]}, {"action": 81, "resource": "r2S8lPbfvPJ847JC", "schedAction": 40, "schedCron": "PogXIJ28koTfzCe1", "schedRange": ["JNAnFzmLltfVUPrQ", "butym97kOjtpa1M9", "9EwNJm8Vddfh8kou"]}], "clientPlatform": "4LUdOFI03PId0pdo", "deletable": true, "description": "ohNh6Bep5ZjWoUZW", "namespace": "pEH3fwZVjnTNEzJK", "oauthAccessTokenExpiration": 0, "oauthAccessTokenExpirationTimeUnit": "UAtwaFfXbtaD9XRj", "oauthClientType": "DTZVChJdfWb8qmp5", "oauthRefreshTokenExpiration": 32, "oauthRefreshTokenExpirationTimeUnit": "bR0g3GHTjLSmlSmq", "parentNamespace": "g0ZjipApF03f1JHh", "redirectUri": "36OUaECWOiTgCZ20", "scopes": ["8EAIeggGVQd5CXz0", "ekkw1ZMAyf7qTqzY", "aSue5VuUUv4gIbVA"], "secret": "zkkOcZJQtYAtdPt0", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'NSz7Bf0hDbm9rp5h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '5ASS2h5k2UTUetJk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'oj9kHQ1u8DlEyLBx' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["T3m4zTup78GFsAD5", "JBCoeNqbQ7jGM72P", "aqCMmtIBEK1JU5Kc"], "baseUri": "FUnAQ7G0rdoRFbk4", "clientName": "HjlmNqz3C5FCwlSz", "clientPermissions": [{"action": 28, "resource": "bilvkk75GsiYkmkt", "schedAction": 61, "schedCron": "Rlrbrn8UqkwAIGdA", "schedRange": ["MHQXiw6diF0hOKZm", "yg6KZzLrHiv5qszL", "GmrTBGcgBEvmJmml"]}, {"action": 2, "resource": "oPxZJWrPrpKtxsOp", "schedAction": 95, "schedCron": "hJYTWlXyW4UetSOy", "schedRange": ["oDEWfACVZBX0XoSR", "S2ZHJWes3lXOq72S", "sFMAkF86BR905PrS"]}, {"action": 0, "resource": "mndLzg3NHFLLksLx", "schedAction": 65, "schedCron": "PYizu9yXq82y3fig", "schedRange": ["rCVwcsoLZF0NeZDH", "Hod4rdi4W9eYoYld", "PsDLeP0nC8Msc966"]}], "clientPlatform": "Z3B10emKP0tisfEp", "deletable": true, "description": "uR3t9ZzEo2NkOfGD", "namespace": "AEMwDj43WbxGlIjM", "oauthAccessTokenExpiration": 54, "oauthAccessTokenExpirationTimeUnit": "8ppHBkyyIClbUaYw", "oauthRefreshTokenExpiration": 44, "oauthRefreshTokenExpirationTimeUnit": "XzeKczgN9TJ7HMt2", "redirectUri": "s3XlZuC5dJrMrPDB", "scopes": ["6dX7ZtzV99Yo647O", "eq22tEoCDQLsevrG", "rY7QNS0C0H7CTyfs"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'bWpRLwa9KVbLuLdf' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 93, "resource": "YtNkNYQx1lfsCYz5"}, {"action": 24, "resource": "J3CH7iVvSwOguYgc"}, {"action": 29, "resource": "Obw7EzHhVauUoeaH"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'HJyBPeiRm3kaavIM' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 80, "resource": "WE2KRsF9hr4TfNzI"}, {"action": 59, "resource": "d6LEkSHIqG7Xv0Tj"}, {"action": 84, "resource": "APT1rDMghiub3t8h"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '70' \
    --clientId 'ZuFBEsXhVknvgtlE' \
    --namespace $AB_NAMESPACE \
    --resource 'suC2VjRpIitEkTDf' \
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
    --limit '97' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KvW2kdwAAN0IVZYR' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hImubMaxG9yCrhDJ' \
    --body '{"ACSURL": "SPmWSDXK4LX39GNT", "AWSCognitoRegion": "SuOwNWVTqN91M8Pl", "AWSCognitoUserPool": "lsyjz1e1mS9aUkb7", "AllowedClients": ["C5JXAzsnkDPkjtHk", "xXl3B1t1uy1v2raD", "eqzzzdhaoLN6ZGfK"], "AppId": "WBQEv2QrlG1JsAK0", "AuthorizationEndpoint": "UFCx9OA5eUNMtA58", "ClientId": "PTyK63I2oCB1X2mA", "Environment": "zIu1GXN76S1j2Hy2", "FederationMetadataURL": "TKW1hOZCFRmHGoEW", "GenericOauthFlow": false, "IsActive": true, "Issuer": "nvnqFgPgmkSOJjio", "JWKSEndpoint": "3XTiRU1ydt8rL13j", "KeyID": "lgUEg7JKLkdpVPjx", "NetflixCertificates": {"encryptedPrivateKey": "mleQTVzvfslEgFmm", "encryptedPrivateKeyName": "l6hZQIgCV37hWZc6", "publicCertificate": "cKl9gdHjzltGezOZ", "publicCertificateName": "wMNFbmXhn0dcCfmE", "rootCertificate": "zBIeUygkYKAed7IZ", "rootCertificateName": "0qapwYaOoraLMDxB"}, "OrganizationId": "ofyTuLirjRZhzzHj", "PlatformName": "qUGRdt6eK94cfMv5", "RedirectUri": "05vssh3tD3PKlATU", "RegisteredDomains": [{"affectedClientIDs": ["vCQbrYyRHxFuDN4L", "XJ82IKLnYRrsB0pm", "l4RgmKdaAPW9RTij"], "domain": "JNxXIwb45SC2tQx3", "namespaces": ["YmOmyEjvUzvMynMx", "1yy4lpnjB2pkHl5w", "aUrMp49pmQDb9Kqg"], "roleId": "llu52SqvtRyPnWXQ"}, {"affectedClientIDs": ["5R0OmfjIEEJ19Qv8", "NWcjuBV8LpN4QqGP", "lJSMYhhKGJrQawQ5"], "domain": "z06KYunLrPw12sdv", "namespaces": ["wixl8QPTcLWk1pH6", "dqA80GGxYhugASWf", "x29G901VVkXJ4E4B"], "roleId": "uTQqAbNie8PoILZt"}, {"affectedClientIDs": ["oWSQP2rJ0PyW6Rak", "fX9XiyrRbuvn6NgO", "wVnPyTIAf3AmjCED"], "domain": "03lFqcBXuGBG1bZQ", "namespaces": ["aSNhB93LBS6pC87f", "la3AhAYPVTTIyqJC", "F4PeQtLYCmnXB21f"], "roleId": "tqGe9AjX00i4oD1V"}], "Secret": "OsKrUjEadOY3M0MU", "TeamID": "iJCXxZkhjgEz9lGF", "TokenAuthenticationType": "HaIrhlWIz4gT5Sqk", "TokenClaimsMapping": {"ACNas4IHaqh4jtQB": "BrHqXoAqePA878vF", "9sQPapsmM1csXQGz": "JSyvReOeQZPNo40f", "jPreNwCu9vipYXRu": "WM4KuYGDxdSES9cp"}, "TokenEndpoint": "LShaj0vXf3jiDRZ1", "UserInfoEndpoint": "F9kDeE8TGz33wIFG", "UserInfoHTTPMethod": "WEMgzmxmy4fEzZkk", "scopes": ["NBTvV69pmrGoQYbv", "pcgnollrVWWh87rk", "M0Nowy1xD2BnDTjh"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'f8XvTOOVP4sHED0b' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YEZZj1pw3oMD8Fne' \
    --body '{"ACSURL": "9GbXRKkwf5jxjtZF", "AWSCognitoRegion": "SUy1C2ZbFKcos7rW", "AWSCognitoUserPool": "7r4ETPnemq0SsXeW", "AllowedClients": ["cehQAxWxOT5tub8Y", "0083GqQ62CZ4lPjn", "qLoEz5h1hwn3xvYf"], "AppId": "Z1tD401IM0A33fVk", "AuthorizationEndpoint": "CmpnqmmB7a6SvDW1", "ClientId": "1xxP6qbL9KPZGLMm", "Environment": "6DpLA1LTlxYfeG2H", "FederationMetadataURL": "Ml2umMh82jV3FStC", "GenericOauthFlow": false, "IsActive": false, "Issuer": "AZoi8P3ulrQL6y8t", "JWKSEndpoint": "FYb3htHbDqzwzU4o", "KeyID": "MFZ5ykPir2Oee1mm", "NetflixCertificates": {"encryptedPrivateKey": "eYyxYwgQFRx6ih7T", "encryptedPrivateKeyName": "nn09qSEARXPcGlhA", "publicCertificate": "sgBNBcvcCujyIjnM", "publicCertificateName": "nDREOL1Xp3kr1DIJ", "rootCertificate": "h8iFlYSlghKFjrUa", "rootCertificateName": "irq4lsP3Cbg9h57T"}, "OrganizationId": "ewssgVMdMh66BRFW", "PlatformName": "QMzSSU19dReBzB2j", "RedirectUri": "baZJcqY5No4V7azk", "RegisteredDomains": [{"affectedClientIDs": ["3HI0Yu7n9eORwStt", "NyPoD8pUZayBBKT0", "tV99XXqm4DzdN6Zk"], "domain": "bVClMEmHxcwZcZeM", "namespaces": ["L1VxbDcIMn1S3v2a", "hajCcQQ7yVvdZSAZ", "ErYwBco0vSJwifC7"], "roleId": "c9GODxRbP3SUfP2I"}, {"affectedClientIDs": ["qDF1IsCC3iMyyFix", "bzEczydJF6xewlr1", "fLtAsT26YjOX9XYZ"], "domain": "twowHJCspgjCC3Au", "namespaces": ["HWDgmTW3f3IrVf1z", "g4y725rUVxaGBRZX", "thnqHsEIYNSuXmZR"], "roleId": "GPiE63qdlqhITdFY"}, {"affectedClientIDs": ["taDMkJmJbBnUnoQL", "91LgrBRMKFBu5qJT", "yd5endo0RvVMQWa4"], "domain": "vzZL0ggkf7XZk4XT", "namespaces": ["cqREzMLqdXff9ebx", "6gQVhj1ZAvW1386c", "5ZpX5BDj0fYuzuhe"], "roleId": "tsQZlDHQOUhWkjUd"}], "Secret": "zCDo51Dqz7iWawmk", "TeamID": "41ZV0EzpDv9tQI2r", "TokenAuthenticationType": "c7XtnMpXtBtZHlSv", "TokenClaimsMapping": {"cy0NjWT9KBucPgjI": "dFFkSP1SywOEHka5", "zy8kWddt1MXPz2IR": "AcSiWw04HNK6JrSa", "XU8WMzBQCJHGgBQD": "7mRUMMyYd4vRSpEc"}, "TokenEndpoint": "NYbrEqkK56ss229t", "UserInfoEndpoint": "gK7VuBQsLaucSEGX", "UserInfoHTTPMethod": "SzLaQUZdU5GgKEVc", "scopes": ["PQVLT20jXYw9lkXU", "OvXKCColhvJwRn2m", "49YeGR9tWytyBsCA"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XV7KqKHsnxEHaRBs' \
    --body '{"affectedClientIDs": ["h2K1Z0AJbhKlMYoZ", "FqQaGNv7aDoRJUez", "MwyYrrHbO1CXK7Kn"], "assignedNamespaces": ["Y0JCMMWC6Lu0Dsyr", "pdIj39a0JID7Qwda", "DNv6DWTiQwLsJr5P"], "domain": "jt4PGbTu4a7Hu5a1", "roleId": "EaEx4xThqFhlQo1H"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'v275wjUwiygq3h8g' \
    --body '{"domain": "pcKwA94Aw4Q6Q2wf"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '3V3DmzbTqmuTmbL7' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '4impbcqunR7j5v0H' \
    --body '{"acsUrl": "NXannynr2EFMnAEm", "apiKey": "Y9jYZkvur93mqT5u", "appId": "bZxaWguD72F4d7jj", "federationMetadataUrl": "uXTriw0XtlwMkD4l", "isActive": false, "redirectUri": "yycU4Fu3BbxXdoab", "secret": "9PM1FwxmzmIEH2N6", "ssoUrl": "vk6zgC5yLDRADcu0"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fJKhv3XOc84KUg83' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'B2OtocZVYkk3zUGA' \
    --body '{"acsUrl": "6OvGOpsXN2VKG8YO", "apiKey": "Yck1ZdZKEYpcHGX0", "appId": "cG7klucE6w9yOizP", "federationMetadataUrl": "RJGuOqOOEcQUmS9X", "isActive": false, "redirectUri": "Tyta2BvLmO6S9StU", "secret": "EoRMbHm0rdb9AOGY", "ssoUrl": "s2dkxrm4REXdmeVm"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3Vk4OvBGbNLxaP3s' \
    --platformUserId 'cYP1tay4zR8SyoeM' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '8vvyYYAQ7R66YGiq' \
    --after '14' \
    --before '30' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'g49f4xUbzFklGE0i' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["4irDPGi4eqFvUSLi", "oq5HVauBnVI62pYT", "5syyGrdNsJQWNGt2"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["FU5SO0MtFBmfGDVb", "neAbN9yOMw7X1Lhe", "LVrGbnbQ2W8LX57y"], "isAdmin": true, "namespace": "cLmehmW1fgOUyG3c", "roles": ["Pj3myoH3QisrxEJA", "A3mwAuTVbqFkH50i", "5uJjNUULmQwt4fop"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '11' \
    --platformUserId 'MIII572Ciz49UPOQ' \
    --platformId 'bdOzIQ60LTd1Diae' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'cR12YBKszGxv50G2' \
    --endDate '1stZ7Mo1IJo1iLu9' \
    --limit '74' \
    --offset '7' \
    --platformBy 'unQyXR6rLru5EoAB' \
    --platformId 'VowbFXpCk56uAx6A' \
    --query 'jqEv8644VVVMGLq1' \
    --startDate 'W85Aiee8SPlnUyZa' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["sTv2U4XOX4jc9qJC", "Elhjzz87roM8OTXs", "2LRpOZmisBge3RGc"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '8WqMb5WZncY3LHag' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AWpKTPZ5LvGiXpEO' \
    --body '{"avatarUrl": "f6oes03FNqtQgcyr", "country": "St2j31HWLRzzx15g", "dateOfBirth": "u7fxFpjOsCY6vlTY", "displayName": "HSlJWnJUEGl7gX0G", "languageTag": "fzEoeKjL5gEcsBLs", "userName": "nTjQk57G1aHurBcw"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nz2cHRa24XP44G0Z' \
    --activeOnly 'true' \
    --after 'sfiJJUPXeY5ei8Cn' \
    --before 'kckI1mxkgZecPlJD' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hOCKJe9up25isWcr' \
    --body '{"ban": "WPXK8ez8IO78AlZn", "comment": "JVcAmE2084h4R6J5", "endDate": "l5Mu9lEXDncWUPKp", "reason": "kgGJlroVmx5FWr9w", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'EGQJxpmw7URuhh9y' \
    --namespace $AB_NAMESPACE \
    --userId 'NPEravzSyZsVu9zo' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RPMRdxoChIPiTEoC' \
    --body '{"context": "sQeGNqaUtfLr6gcg", "emailAddress": "vmbyrR79zWBqW1FP", "languageTag": "wLzgPQ7AmucVlE05"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Z3SrarcAU1ExzDR5' \
    --body '{"Code": "zcq35RGmNUJE8Idp", "ContactType": "j80G0mKQHDMxF0Wy", "LanguageTag": "cpnvaQOlrVSLKPCZ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'kh2KV8ArFndVy7yv' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tPKd5CQCV3k4B8r0' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NHSltQM74lEKpCv0' \
    --body '{"deletionDate": 64, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KTOqi24Fnrso6aXT' \
    --body '{"code": "EBOkN3pgGkKmZ0ou", "country": "p667Y2AwOKVPvUlg", "dateOfBirth": "tE6xPgbdSguMmKg9", "displayName": "S8hIN8MSOUKH2lXK", "emailAddress": "iBXcbyAwgsH5lAoS", "password": "vmRMFMGXGYbzbpPH", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Mzur8NHWXxA5lumu' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Fd1LKOOaekZA3eud' \
    --after '0.4301531349449762' \
    --before '0.7599334706542028' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RzlzbcDgDAwTw6o0' \
    --body '{"languageTag": "vqA8SaL1gVBKrROL", "newPassword": "f7jqxzTWXdihvnzD", "oldPassword": "Tr1VvNpHs5BRkmI3"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '3NkZG891BOJRK8qD' \
    --body '{"Permissions": [{"Action": 65, "Resource": "TBpCgH5qUbrJoH6K", "SchedAction": 4, "SchedCron": "bsNrm2w5GqDiiohR", "SchedRange": ["hDf24AV1JZoSLmz8", "BDz2KhQIuTxyU9Aw", "8opvaUjJZKTqW9M4"]}, {"Action": 90, "Resource": "xSJqHj4lOS55Nv6f", "SchedAction": 49, "SchedCron": "cQbfNon5kAufOnvt", "SchedRange": ["gVhKbUqBEpiaIgMR", "aLqzPvwApzUFwGer", "dPRKHPcA2Lj6B6Qa"]}, {"Action": 5, "Resource": "o77PW3FEedK24ZxL", "SchedAction": 18, "SchedCron": "MwNubTc16eHffzcF", "SchedRange": ["GLNkYdh7MvqtVhO3", "evPd7h9Ptp3KY29j", "Fbq1rCXaNkRGKo15"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nJ1xf3MNQhrG67gg' \
    --body '{"Permissions": [{"Action": 15, "Resource": "FdPojSePUxlMFocl", "SchedAction": 62, "SchedCron": "PHxmlISt1ftRSkgQ", "SchedRange": ["PdCLkag2QZu5KVpM", "0tELV2JQ5LCoa5qU", "TfDaMrj2G9MIupVi"]}, {"Action": 74, "Resource": "H76LbKtSyhMcP7LZ", "SchedAction": 79, "SchedCron": "KQvHOqfc8qV5XCSk", "SchedRange": ["XqL8qZ21wjz8hErL", "ppkUXJUJP8Zuw2yk", "LZE2kHEu5ugWODNx"]}, {"Action": 72, "Resource": "82C7KvXPtDJYg8aG", "SchedAction": 33, "SchedCron": "Hsz4zZeocUGauA0M", "SchedRange": ["lrOGDYX61qE1tAge", "1cxcBymCxn4D7pGq", "ipOMrCIfxFBV1ODd"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bTLfjqTGuiAcBx4U' \
    --body '[{"Action": 56, "Resource": "WytbW8wItPZpT5f1"}, {"Action": 100, "Resource": "ILmeaRTbghq7SMHU"}, {"Action": 96, "Resource": "jkHWPYHZHcr2q41o"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '50' \
    --namespace $AB_NAMESPACE \
    --resource '6BHnEyvP1RsTBZzl' \
    --userId 'byMs9Sg0pVMqdhGu' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 't7Kx6lupGAE4A3KP' \
    --after 'CON0gzCXr82Sbyi4' \
    --before 'KSjQMNA3C6YPzKPD' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'LNgnret5lIYFgxOV' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'V0IGybs7oZU4b6iq' \
    --userId 'z4OcavMdoTG1vAQY' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'vxjOJLXvEsygraA6' \
    --userId 'BrTwtIvgvHQ52rJd' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 't02TBifUjykroJRC' \
    --body '{"platformId": "OxBkYgUDTZ9Dmpte", "platformUserId": "qUw0EkLrRxdPf4KY"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FCAvVOf6C92qcXal' \
    --userId 'pAUihUEv9H9dZY8W' \
    --body '{"platformNamespace": "kt552GitUSzy45o2"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VdjXBolEK1avfcef' \
    --userId 'FSWJZDy5ug53HQDn' \
    --ticket 'UjuY0QP774xoJFca' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eS8eJpiywScmDdr0' \
    --userId '2csHHi8ERLH7Mjsq' \
    --platformToken 'wKvDMaVhcWzjvNeF' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kLzs0c19abkKQoP3' \
    --body '["TVVj1CCjeiXuh3VO", "9dIXEBDl6Fd5zgnw", "0Ry0Xl6Usth6pJaH"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aiI0k7NoPfMFLYba' \
    --body '[{"namespace": "79ggRrsmqGL5DPkX", "roleId": "jZVZjwCXPk127f22"}, {"namespace": "r7WJhkIJ9W9Q10yn", "roleId": "YpRpiYXxaNd1ikcu"}, {"namespace": "U9cY6EIB645qTMqC", "roleId": "PzolVniIhM6XXeaN"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'kyYvtO7yELv0HtMU' \
    --userId 'Yyven4Go4iK5f2iT' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '8umecRwJliXVtZkJ' \
    --userId 'raM6Xw7o1O1fphgH' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '5QEFAjWvpt9oWD49' \
    --body '{"enabled": false, "reason": "LQ2rUkDSMisAjg7U"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PSH89z6jVMA37hXf' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'FHb2lzAVHqb5aFt0' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "idh3Z1ON7VZ2dTZJ"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'xkMf1sNPeXtEMH7C' \
    --before 'wM8EIooCpxKLlhAQ' \
    --isWildcard 'true' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "BsHL5BvBDpL6UGdd", "namespace": "Qtr2TC1TdcwqpXnK", "userId": "bPodOvqV5s9D5N4y"}, {"displayName": "3hZamQljpJRct8qp", "namespace": "EWmWzNzkZsb9wwQr", "userId": "PG33PJIOuy7zX0eG"}, {"displayName": "Dqr2nS4Owv3rWLXc", "namespace": "zfRqP1HBiqvZYDTW", "userId": "tOQ9vixmgLfsqtl2"}], "members": [{"displayName": "9VzNb2QuZCDnS5Qk", "namespace": "n8qpHnOkz6ULjIyu", "userId": "XKuaztLQGqmHG4fG"}, {"displayName": "0rBjX66JYGyG0g3q", "namespace": "KGvaxcUuE96Jm1by", "userId": "NEZmk0bjjzYFXexy"}, {"displayName": "8b4JNCqSB7Lcbr2D", "namespace": "EVddsyeoZmBnpDpr", "userId": "DW7djJjsDIrPlt2V"}], "permissions": [{"action": 34, "resource": "5GNR0CEsGGEgqx4c", "schedAction": 58, "schedCron": "EU7dMZTU3HcrJMvo", "schedRange": ["xk1cxgqM2OEoNyEV", "z1cAElQ3PAWbS8kJ", "PwiQ54rM2qEZS2mT"]}, {"action": 62, "resource": "MioIFvILC4EFK1ZU", "schedAction": 27, "schedCron": "mnOajw5b4HfWg0yx", "schedRange": ["icKi3NqiVVjOho4w", "uOAwyjfOBi8g6oDy", "hKt1kIQHUpDFwRA5"]}, {"action": 94, "resource": "jSt4hp2EEa6L4hWI", "schedAction": 69, "schedCron": "UoiQAPd03Ig4GF4p", "schedRange": ["p3nrnDYMqQGe3cOd", "uub75D0MPZKpHDGD", "2BMQe0Hiz5KGHgmD"]}], "roleName": "4n1UAUZmoCvrKZ7J"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'OQNijHd0LnUaYhaP' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'FgK4BWXB1ZbA5k3m' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'hIThzyP8IKxHLDtB' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "v6pdYA0V0tWJxLqT"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 't0Up9aR7jt95WEpX' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'ctsZCr1Na2OTnoVk' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'e4pTldqivEp5TiND' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'EsaZcgm73JHQ8yF4' \
    --after 'fD1cn6DdOXYFVzgI' \
    --before 'VwJlX3PrhJTp8uET' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'qi01qIRrz4Oqakdg' \
    --body '{"managers": [{"displayName": "t31Pvv1XCUWNO7ts", "namespace": "Vr4jbSk6R47Km9Kl", "userId": "rt6Z7dtH8qdg24pN"}, {"displayName": "5jQVXZbM8AJklvgn", "namespace": "cNbVotHX9ikYqyaN", "userId": "k25ItfubSXIr1MD6"}, {"displayName": "NM2AiGtq0LginbOq", "namespace": "eRWWLJIcTsSr9zum", "userId": "wFC7pGkwSNYOokc7"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'xdnDBHtg0K7aAxiI' \
    --body '{"managers": [{"displayName": "6V9YcDG1Ggi2o0f6", "namespace": "frSEFUt7FjZl98gl", "userId": "dOl4XL6hkRUoO6s9"}, {"displayName": "Z0yxhme3Jau8rRfY", "namespace": "j0QXpbfjbIFLxIi9", "userId": "jsYw977qbfXJHYE9"}, {"displayName": "VnPnVI9TiaFmt8oL", "namespace": "TuiuOloDjKceiNNT", "userId": "9UL2yBkzwtNMJuNm"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '6TwzjOLhUWp2CJqw' \
    --after 'tIrwLxI8sazvf5xo' \
    --before '9lnJCHc8Aq3ZEA2A' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'VeSNbkWVsoj0KkED' \
    --body '{"members": [{"displayName": "n8n42pizd0qxJOSd", "namespace": "LuqpXZJvhgQL5zMo", "userId": "8bDWEAXfroI3s7Qc"}, {"displayName": "G6FtHzb5AomOyRHq", "namespace": "ZQc9GNSsxtQ5s6y3", "userId": "CrQaw4UrvKxciP5L"}, {"displayName": "McRN1PsbEoTsrN8U", "namespace": "rhsHgzDiZmXEyhbe", "userId": "K2MJPtZwEAfSwOlX"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'hf1t3pGU13SXOH7E' \
    --body '{"members": [{"displayName": "40GbCgmE8GZtqoFL", "namespace": "wkCKvfYyRcH4JMAM", "userId": "yEykANU6e30TM4a1"}, {"displayName": "ogX07oGEh3VRRAWL", "namespace": "WIqeziSVf0kLDJRx", "userId": "4ZcHVBQNswUa074m"}, {"displayName": "4jShAgnmQ4rrWwRB", "namespace": "TZfa0HGvZIXoweGQ", "userId": "3oHDo19cWAtipka8"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'JdrcWgskVAlnsFal' \
    --body '{"permissions": [{"action": 92, "resource": "Ew4sVCQYCOGs5yKH", "schedAction": 22, "schedCron": "fzhhq42Crrjr0hUJ", "schedRange": ["VpI5Van2Mmnt4LEG", "K4tluGdQeTPgDZp5", "lIw1ur8Td4ytHEej"]}, {"action": 21, "resource": "4LMc72H9UA5j50aI", "schedAction": 12, "schedCron": "hb29P8lEASO7oJ0A", "schedRange": ["GtaAkT7I984v3X6t", "Lcfesi6rzToAQx2K", "5IMnMeQGoUAcxaFh"]}, {"action": 51, "resource": "jow86ot5O31hzvOj", "schedAction": 68, "schedCron": "q2MhrWtajIP0hHPk", "schedRange": ["bQS0eCqhIxnrlCAt", "LCBJSaoQFC4Jrnry", "VE2BG5i1iEjRg2tY"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'rZR4NFT1VSuhTUh9' \
    --body '{"permissions": [{"action": 58, "resource": "2wKoddfFpLT0Hc6C", "schedAction": 79, "schedCron": "z7Ws2LsjgdTbocUS", "schedRange": ["H1s93uuei1PaxfxL", "bdayyVmquwpSzQYq", "RYlCLHa0zxgzNjCL"]}, {"action": 28, "resource": "T7V01P6xeofaTAjM", "schedAction": 39, "schedCron": "qunUJwkfd4Q6jr2p", "schedRange": ["s1yopzEkeA33Bjbg", "tQi2u7fhPJboodiU", "uOpF57o41QjJTU3Z"]}, {"action": 14, "resource": "EdjrKl5t7TbjS1ui", "schedAction": 100, "schedCron": "tz1jwyYN6t7bfndd", "schedRange": ["eWOHI4YAjaqPQW4z", "D7OAWMrEh9pa24aY", "7S6zEmgdofT7GEnr"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '2fxutnBy02xF1iR8' \
    --body '["cHrP7wV2NtMXRnpe", "nM65RtVKEGVyYdQr", "WQUUfDuD5HieJcOx"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '78' \
    --resource 'XL4683Qbsm6seBhi' \
    --roleId '8UTvwY82vnoUl8Na' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'MM0wjBTQu3BoY6R7' \
    --extendExp 'false' \
    --redirectUri '0FQnq2qMJuOElgZy' \
    --password 'WzTuaZRklqLH7b7J' \
    --requestId 'dcGtueFIXDvEWNkZ' \
    --userName '1dvkm9SPBU7fZlOF' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'ay8ajc4NQVRvBr4O' \
    --linkingToken 'HB4nMShNxSP86sS7' \
    --password '8mj8zJuV5Xc727do' \
    --username 'JajsFT5YVnN6WT8t' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'b8VlJumMliwKiw5s' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'nN3OKX5ULVE3MvXm' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'b0ABE7YMG5c8PoY7' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --isTransient 'false' \
    --clientId '5y9tVwC3FoY23bfn' \
    --oneTimeLinkCode 'RYv6yQVkDyO2O7Ht' \
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
    --clientId 'wfIERichWkSCTZhM' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tI9491eddrT2laig' \
    --userId '6AH4QobwMRMQSIaY' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BBFTo0XZcxH79MEW' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'S0Iwh1WOx2uYcCYp' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'xZAuXodeuXbNDxWX' \
    --redirectUri 'e5TSiaZxCjaev6rk' \
    --scope 'd9xgTu8QOIdgGfvA' \
    --state 'UdawBqZOq8EUmfyY' \
    --targetAuthPage 'GgsVq2saqyPvDQqy' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId '5BFVrv12GWandyoG' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'laMbg9EALU0yYlFg' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'mIwP9BUgmaiFBWrw' \
    --factor 'sEL0DHYIV9a7IE7g' \
    --mfaToken 'a9iPf0b6IGyvwbYa' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'xxWRzNStNVVbiVM1' \
    --mfaToken 'S75quN4auS1Jl7hH' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'Rj49H9tjLrcEOjgg' \
    --factor 'HYFsLH5ZpNok5Qw6' \
    --mfaToken 'qqaDkoNMdQsSbpzo' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ifN5yrg1mLXsSLaA' \
    --userId '46d8qK5rpWnbQGwC' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'jXzg5yGLlYhhJ3L3' \
    --clientId 'OtRPNi3OBaqcVZF9' \
    --redirectUri '1oxDZ4DZdLhNyTxq' \
    --requestId 'vo1KIKwYPgZkiZvc' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'wJKGofXbZstZkG6e' \
    --clientId 'Ju251MokDSb8chLG' \
    --createHeadless 'false' \
    --deviceId 'FsZvqsylXZeNV1CL' \
    --macAddress 'Q4h82MA5zGoygGDl' \
    --platformToken 'XNd497u0ITxBjzIH' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'ZGbZqSao38zYFjAA' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'Sha0Iiifq4l05TLx' \
    --code 'aNEBXIEGeeW9aBuv' \
    --codeVerifier 'sXhbUPyCBjGGg7WK' \
    --extendExp 'true' \
    --password 'XkABnICojcEGcgvv' \
    --redirectUri 'YRb78jjqhYpZJvNw' \
    --refreshToken 'Pcb5GMFwQrTCPM7e' \
    --username '6QEGpbwqrbAJM37a' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'DQnC2I48ZgGqMQ1t' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '6zOCW3MbBcnBY8q1' \
    --code 'KkY75kqeSBpXZ1Lc' \
    --error 'uq37nGcjCGphZLN1' \
    --openidAssocHandle 'OihnIKbdJkPAMmJ4' \
    --openidClaimedId 'TISBP1HX9B3S56bS' \
    --openidIdentity 'S9hD89IeWFuIYd7v' \
    --openidMode 's1ecJBx7VxA34POf' \
    --openidNs 'oSQmEgbEp5111DCB' \
    --openidOpEndpoint 'ZubnDT6397EZWngu' \
    --openidResponseNonce 'o3aOzfaGGCbP6516' \
    --openidReturnTo 'F3zfu3EtEIcQtOzD' \
    --openidSig 'zYSOyifeoKufCxSM' \
    --openidSigned 'JF8HmZXznuI2be5o' \
    --state 'blwL1SfeC8xSJO7f' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'E8p5reblWJS06Kxk' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'QWFNNiLKQsDu3Tro' \
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
    --clientId '5tU4bgwFL1Wz32iL' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'e4BcqbwocyKH36oy' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["x2T2X7CZ1MKHrbZr", "6EWOVyyyOM47K3rs", "AHusJoADQd2F15tQ"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '87wnp2wOLh645gPR' \
    --platformUserId 'mN6YzxMlLGvLt3Lz' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'S5JcVAUVXwBKRwJb' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'kxvKcwScWsqFfIZF' \
    --limit '48' \
    --offset '99' \
    --query 'cOouHoTomh7A23JY' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "SH9Gh8IUhFgsFBuX", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "t01s4Viw9LM4Xcod", "policyId": "o0nzURHJtxtnfeOK", "policyVersionId": "rCUduUjr0FVH4QvP"}, {"isAccepted": false, "localizedPolicyVersionId": "k8oU8swW6eAn2uZg", "policyId": "bsUJJU2jEc3nvVkX", "policyVersionId": "B8JUG6wD8QteWYLz"}, {"isAccepted": true, "localizedPolicyVersionId": "4d5Gx93Me4mR174q", "policyId": "rpRicPXFU2xhcXGK", "policyVersionId": "AwZezCROlVJsp9O2"}], "authType": "j63ofxsmmsk5eq5M", "code": "jnN387MxmVMGbDoE", "country": "VqwlZv6OQmLxO7Ta", "dateOfBirth": "OmLPiUlzdtzE9FOO", "displayName": "TwyibrdXrzpNNttH", "emailAddress": "TbsUBE9RsytmFzxS", "password": "0WNDLgNKhjWJpUN1", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'bQggDg7h2Qa8DdIw' \
    --query 'snXhDMeqB3okcbyv' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PGMVmWa0OmzY8cAW", "Wq5nIwoxcrZpIc60", "7lJaXzyDctTROeYR"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "RtjPUDrWQuuU2eCz", "languageTag": "t6CdlvwMlZo9FCKR"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "4n9wAWV7wKI1usUM", "emailAddress": "8q1TWF329RDlwxpQ"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "e7r0KBPDnVCMUMRI", "languageTag": "YYyZmEWAyDB90juZ"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '6R6Y9V8EOm7HiUwK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'P8YKEi5YVUF7wzSa' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vNQcX9qmzofvW6NL", "policyId": "YEplw8nTeNJKd698", "policyVersionId": "Dmjs6nrErGJPDm2p"}, {"isAccepted": false, "localizedPolicyVersionId": "LzKHOGUmu2bPAsaL", "policyId": "K8So3dZqwt0MZ6tp", "policyVersionId": "tsDEE8SSdIEM9ixs"}, {"isAccepted": true, "localizedPolicyVersionId": "7MNOXtWQpWE0M0Sc", "policyId": "AkIzcoyFo40h8IoB", "policyVersionId": "vRbncoPH0uH42liZ"}], "authType": "EMAILPASSWD", "country": "PySUnasjBS8idWom", "dateOfBirth": "KPiDlPtSnCt1lJIb", "displayName": "szwPJDWe7S8SbCZF", "password": "HmEqYued7cfikeTn", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "5PiDYo63W9Hr8znh", "country": "2f65hdHqKN9szRUb", "dateOfBirth": "Fq73204g52BrBMnJ", "displayName": "DnrDmfRGEPLeMJhn", "languageTag": "CK9BVq3x3jo41AiW", "userName": "JcNnHh6UXjE4wrdv"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "T3ORffb8nF9wcu14", "country": "CU2W8tXJimQiglVd", "dateOfBirth": "ZL9TuOhq5WcJDpy4", "displayName": "dKVXM6wa6lukwkhj", "languageTag": "NtT06LBqflilHZTR", "userName": "HmWCrpsTwXzwjNSn"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "9rr6PP5kOuDvuwCF", "emailAddress": "ecZxtcziQ145QchF", "languageTag": "HFy9tVk2utTHDu5H"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IvTBs5kR27RnS4cP", "contactType": "uqGBybDo8nW2tsL9", "languageTag": "ZmHEcK4Ypwn5Ohh9", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WMJtTr6P0DZFXBWV", "country": "DX73mcEin4UK45Qs", "dateOfBirth": "l7aMBgLsgd3Cc8fs", "displayName": "BNHFuO84yzU8bB00", "emailAddress": "Jmx06DePLeE4ocQP", "password": "VoE19WP6gvf5ur86", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "KqcpDHlw8lwD9DK8", "password": "mw8aN8e1Mjgtqa9J"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "Dp6BiQdskGQ7U94O", "newPassword": "tlVNDKw5lghvzzuC", "oldPassword": "vI4QkijSvkovJJTD"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'FVe1q9xh9dPx0T8L' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eF4Jgt4jqfMVeAGP' \
    --redirectUri 'lbB94aQIRoVrCEHc' \
    --ticket 'PSvWgA7TIIZ07KC5' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'L5kpyf2vsTBSTc3u' \
    --body '{"platformNamespace": "qXEYQ8kiDt1TRZbB"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yabI2PknqZKa2TaM' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UtDxmh979fc0NrW3' \
    --ticket '5jvjoHo75el62gyi' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '4YAablNyPcbZwhMW' \
    --clientId 'Ol2SMlAQKu4QxrI1' \
    --redirectUri '6FHDngfSzpJt5YxJ' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'jNjZTiGXIyESY7pB' \
    --state '0AmW0TonuPFSLM7l' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "gnCvkRbpboArEgDP", "emailAddress": "Fy3ZTEqajSu9bBWo", "newPassword": "qd9tuJaW7NuxbVa1"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
eval_tap 0 258 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'R08YA9jeSOrbw77j' \
    --activeOnly 'true' \
    --after 'lawcsuo9WGA52wk6' \
    --before 'vD9zKrIyp2W6rkrR' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '7qL5C8ZRWJG84Mrp' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DRCCqLkNJ7VIFrcv' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WmXd4Xmckap0JCGJ' \
    --after '0.16529158194619353' \
    --before '0.011775350380061944' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tHJLZgdtKtTd0lsg' \
    --after 'Ah2XSXL38ql34g0r' \
    --before 'L6mERGPvKr4lFTUE' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jpnw9ABGqdIyOqPG' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'bp0SC7zliIjAoe8p' \
    --body '{"platformId": "06u2fhOT2OlHcYdM", "platformUserId": "TbfVRltB5X4QSajJ"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '0y8dtrL2Hev64Pe9' \
    --body '{"chosenNamespaces": ["jPd2V7b8DownAoXC", "baFXnwc3BtQTCBQT", "GOOYi9j2smXtCSc2"], "requestId": "MLybxj1phzI1IvHK"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bcdlBMICZgckn0Ks' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'U3pRHDcDKeFamhFV' \
    --password 'JX5IGqxdMo1MlOQG' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '94hHQn2etgP59gHG' \
    --before 'KxScLDhXK7V5L3yH' \
    --isWildcard 'true' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'PHIeJ0QSWETEZCxQ' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '4lVU15Fz0ZADmDSQ' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["M7E4aAzx6L2f8L6Q", "EnVFWjMMr0DhK0FQ", "lDiuwmF9SfHGQqgF"], "oneTimeLinkCode": "ZnjAyrAP8Z840Gh6"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "j3C3v65vgbNZ624V"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'CxGBA5tiYZWSpM3k' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'VkvDFMz3nP3c72FZ' \
    --code 'ob6Z05vbStZUly6j' \
    --error '5xBS691AAbqOCjq0' \
    --state 'NX7dwFgISw0E8ES2' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'oNlzxSlQCS5LsuAq' \
    --payload 'TTsIhag3QPYuhQOB' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'gitJUMY1ZNa2yghu' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'jiZ4ch1QYiZ0hiHa' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '338T8NiQ8Nrp8HGX' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'lOztprZG0OOQrWnp' \
    --endDate '34dZHjgCsp0tqUnR' \
    --limit '27' \
    --offset '8' \
    --startDate 'BcPHvxv6DeYzomdm' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HPSrCpOV7nvWjHYX' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "64A53timfmdBlPIb", "deviceId": "qRMYFXAVrmwACivW", "deviceType": "vc4gmLrJ1xbgNODz", "enabled": true, "endDate": "zvKoC1q7bsBJJ5q3", "ext": {"TWLVA0pvGoYLTzDS": {}, "vVxnFijReUFeVVBt": {}, "pIL2l8JwV4Q750Jz": {}}, "reason": "eXNPmdJjTShDUine"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'JIbUpx4WLRRb0FQi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'kxSK1Jb0SDqyYOPF' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'MIbQe0Mu3LhAumOw' \
    --startDate 'eXt0n0Wcqc2Bm8xy' \
    --deviceType '0VaXIPjit453ut32' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '4qrHZFXEpNDwY5iK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'fi2EYDQUd2UuRdaj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'o56EJBuvBWzMfTxV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'jurKnRKfD4xVdIpW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 79}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["W8RahuPKkKGQUI4Z", "xCLc6StL8tNc8K23", "42osMhJbD7ES6qLN"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'll99Qt3cG4ODalgn' \
    --body '{"avatarUrl": "0P2Cy67wPALJhG0S", "country": "0RNsZZahHs0uLJp1", "dateOfBirth": "tWiWUZFkF7dP9Vxp", "displayName": "G0HPvpdbNeVQuZNy", "languageTag": "jm1rrmBdOVVIO5MK", "userName": "rAphCrSb4qz0jrGx"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JWXhriOg6LHuVSrM' \
    --body '{"code": "ORO1KfO14yktf0KJ", "emailAddress": "uhckuIBrm8irJj3u"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sBi1nKGF1X2ZnlOU' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Y7dYB0wPFfvVaPoB' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '2k0cwUrItlGUP74U' \
    --body '{"assignedNamespaces": ["jlzIURAAWgNLgzLH", "68fS2Q1ovGn0r8Cs", "TnaCU3o8HvGRKKAG"], "roleId": "aNma17laJQ1MeCaN"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Xbu1IgmSxHVt4fcr' \
    --body '{"assignedNamespaces": ["iiPMeDZRR6eoIvzc", "C0Mdsm6PXMeDy8ZE", "SKqlCXTXPh9fUKPZ"], "roleId": "iBL2phGCHdlRVBwi"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Pz2dkHcIIwJlyWzh' \
    --body '{"assignedNamespaces": ["ggDAG3H2RXGXn2TS", "29sGAX9ZJBUSO90A", "ILhzhtYrNOEJK2SN"], "roleId": "jvTPETuNvzBaOsmu"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '80' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "m6JDEloETbix1PFb"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'W24pL68oEKpHFtqb' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'U6zA99thvGHXhITN' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '1Wly26OerlzmVHLT' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "nqWhAUMZK7UmoigV"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'KMtos24GH7QCZHZD' \
    --body '{"permissions": [{"action": 49, "resource": "E79RFxQQU9iRHphQ", "schedAction": 13, "schedCron": "DRHtZPQh2HzZZIgZ", "schedRange": ["fNsvjjwN6AR5ce4J", "mZosXKCjRq9q8enW", "o5KRlrCqpybIngjb"]}, {"action": 83, "resource": "Aw92hvaG4LjW3r2f", "schedAction": 80, "schedCron": "R2QBjT2EkEiZaLGU", "schedRange": ["RbV3LKqidGGfTMGQ", "NgPvyv9kt3A5SKGn", "U3QCnc37YXXnMJSQ"]}, {"action": 72, "resource": "Ij5YKFqB6NXpjOXH", "schedAction": 73, "schedCron": "oDGIVEX3UsFchWai", "schedRange": ["xuiqe49pCYsIdoOq", "JgKbAsnUzTRfcObV", "ws5CnXbWBSDFHIL2"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'OWNP6Z1m3lK2aUJK' \
    --body '{"permissions": [{"action": 8, "resource": "8iaUfFv5r6vF2Rnr", "schedAction": 12, "schedCron": "4HKQCj9664Ozv4I6", "schedRange": ["uhdDYaWWFUmDwdPc", "iuvegFmNYROrHUYQ", "3eABLzD2IosejwZH"]}, {"action": 75, "resource": "XYQbYqXECvrDrOl3", "schedAction": 33, "schedCron": "j1vbNi5tasJlaZkV", "schedRange": ["QXevQPTB90zFp8Fu", "yX3VCQVgr3lobT3X", "opC5smqYhevYh8d0"]}, {"action": 21, "resource": "uEGySs5SQLPh0C2O", "schedAction": 64, "schedCron": "JZ6o2WdTrxug48UU", "schedRange": ["53IUGDTZJUlX70RP", "CjgHuLvEdsmHqZHw", "g7GldQz5DhSRGYxj"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'keTbTW2aInbnSp0t' \
    --body '["VVRFTMDRSsrmxlhr", "eZYy6QArFIo8juEP", "ygPjT2vSNfQRalm1"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'HTuzOz0OGSpGoxis' \
    --after 'PVfMmxKlnbeN2pnC' \
    --before 'GL9YVxLT9T521pKz' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'ozQqz3GXFgHkDlfm' \
    --body '{"assignedNamespaces": ["gdDJGRjWhwK1rhHi", "ayEMCkCvIEobg00D", "SG9lalvYuvnH2n5X"], "namespace": "vDNXaCA7WYrscwuU", "userId": "vn0UtxhiYOPS9suZ"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'FBGjyJBelI4fy4LU' \
    --body '{"namespace": "Jf37d5IMWI5XIZgW", "userId": "gLuQCOrvKIPWKKWe"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["2p2e6Qiewi6sAkiR", "p0UsIMTFeGLTVcQO", "nSrynkryI6VVhXSL"], "emailAddresses": ["tA6SomiGH3kJUzo4", "LDMjZAYSduKDmZoR", "O4Awxra07MYciCRM"], "isAdmin": false, "namespace": "sTYSj17RKNLmH3D0", "roleId": "WBZafO4eWMFQSSGa"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminInviteUserNewV4' test.out

#- 313 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "6Bsq6hGfsuWpW542", "country": "np5kaqdMbjbZnhS9", "dateOfBirth": "Hii9LXy8XFsLhV2u", "displayName": "8Wn8lt7em7ivytla", "languageTag": "84PssKgzMV8iEd32", "userName": "mRKM0aQHatPkDgOV"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateMyUserV4' test.out

#- 314 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 314 'AdminDisableMyAuthenticatorV4' test.out

#- 315 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'R2WzQpl5dAcoZxu6' \
    > test.out 2>&1
eval_tap $? 315 'AdminEnableMyAuthenticatorV4' test.out

#- 316 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 316 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 317 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminGetMyBackupCodesV4' test.out

#- 318 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminGenerateMyBackupCodesV4' test.out

#- 319 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminDisableMyBackupCodesV4' test.out

#- 320 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminDownloadMyBackupCodesV4' test.out

#- 321 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminEnableMyBackupCodesV4' test.out

#- 322 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminSendMyMFAEmailCodeV4' test.out

#- 323 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminDisableMyEmailV4' test.out

#- 324 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '6l2Pp3Vj5TxErsDy' \
    > test.out 2>&1
eval_tap $? 324 'AdminEnableMyEmailV4' test.out

#- 325 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminGetMyEnabledFactorsV4' test.out

#- 326 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'wdaoLNPUeZjRMj9F' \
    > test.out 2>&1
eval_tap $? 326 'AdminMakeFactorMyDefaultV4' test.out

#- 327 AdminInviteUserV4
eval_tap 0 327 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 328 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "WieKzctgSDewSXIF", "policyId": "QunWgjMLAqBXg290", "policyVersionId": "ZqO370OuDor2loY0"}, {"isAccepted": false, "localizedPolicyVersionId": "Lbkp6qZGfrwRHED2", "policyId": "Fe2txrRiFUGAAGAL", "policyVersionId": "CKc68CAwbfwFgRji"}, {"isAccepted": true, "localizedPolicyVersionId": "DnDskGDP3r6K7x7S", "policyId": "6DjAAI6ZP0L6ZybY", "policyVersionId": "ArkTXiTrCDoqRTNC"}], "authType": "EMAILPASSWD", "country": "yCCBJZm8Zb0VU8lK", "dateOfBirth": "KUWBlDj1rpDSs3Se", "displayName": "AoltAOcQguCPPpFo", "emailAddress": "iBRTwPwF647PL9Ej", "password": "SYmTm639GygXz0dP", "passwordMD5Sum": "AAI4dJNEnvAoY3fJ", "username": "UPNovS5cujtY84uY", "verified": true}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateTestUserV4' test.out

#- 329 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "pF9wHDJmS3L6pxSz", "policyId": "drHKpYinjCX9Gsb8", "policyVersionId": "rcMFxhmBJp43VKOx"}, {"isAccepted": true, "localizedPolicyVersionId": "EpZoypnXQS95b5N3", "policyId": "PguJNDhCazEXysKe", "policyVersionId": "J8V90KfAzrmaEFrs"}, {"isAccepted": false, "localizedPolicyVersionId": "43xM5qNXe9qjsfTc", "policyId": "cNgYfG7MNtrbEgII", "policyVersionId": "D0vAsBivciGtZCkI"}], "authType": "EMAILPASSWD", "code": "Nb0Gd2UFMOunFI0H", "country": "m2XjBJR1ZRtlXXBu", "dateOfBirth": "UEDZi0dXGgSdc5oy", "displayName": "O8dWXWZAI3mIDrHQ", "emailAddress": "pYFcqPM8jDTR4fzk", "password": "zHAmIiVk31X5RIpq", "passwordMD5Sum": "zeZ4EnGXftOnMHQE", "reachMinimumAge": true, "username": "jAzjCQLsBt6azx1z"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicCreateUserV4' test.out

#- 330 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'zUlHya0xtb9OaEVd' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "yqhI5qP8XQbfyJzY", "policyId": "rttBXKXqnzZp8V3w", "policyVersionId": "VxGcHnuZpxrkOZgD"}, {"isAccepted": false, "localizedPolicyVersionId": "Rw7O7BoaT8onvJ8v", "policyId": "QBdKF49E96HL3LeH", "policyVersionId": "5BrwnlvomqUGgUHn"}, {"isAccepted": false, "localizedPolicyVersionId": "DUOjfWjYKGXWC93P", "policyId": "QjC0dgaWOfWecId2", "policyVersionId": "igHJMue5KAsXXYRY"}], "authType": "EMAILPASSWD", "country": "9pIw4TS8auNEsrZr", "dateOfBirth": "EEWz6WNNG2tMoawy", "displayName": "omM3mVpt2Ajp0WYb", "password": "Rrhyd6FptAylL6tS", "reachMinimumAge": false, "username": "SbMYTsMFXWs4OAuy"}' \
    > test.out 2>&1
eval_tap $? 330 'CreateUserFromInvitationV4' test.out

#- 331 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "379Borrw6FEp8opu", "country": "w0nmsBI5qwTLBj9n", "dateOfBirth": "MG9BLg5GwgJq9kX5", "displayName": "N8KLoGPSzSuAgChU", "languageTag": "3ZCFCj7TWqLtM18l", "userName": "WxHNZctVnPmJgdQX"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserV4' test.out

#- 332 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Up3YmVH4hDd66Lh3", "emailAddress": "EIlo1oNncDU6hva7"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpdateUserEmailAddressV4' test.out

#- 333 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TruybQJtnVUlKsAp", "country": "LlgKiz8OPhahybKE", "dateOfBirth": "UNRA9HoTCT4I6wDI", "displayName": "jeVQ67lC5quHUNkp", "emailAddress": "drDqt8q61E6RT9Vl", "password": "dfLVxTL3OBN5yEGu", "reachMinimumAge": true, "username": "SFnteE9EtfdSUCmq", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 334 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "ubOsuHQGTshrbIY7", "password": "HcVzj1uyiLqXkaB5", "username": "rIXERM3CXuq9C49q"}' \
    > test.out 2>&1
eval_tap $? 334 'PublicUpgradeHeadlessAccountV4' test.out

#- 335 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'PublicDisableMyAuthenticatorV4' test.out

#- 336 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'bkDJOEio6yRdGfU6' \
    > test.out 2>&1
eval_tap $? 336 'PublicEnableMyAuthenticatorV4' test.out

#- 337 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 338 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicGetMyBackupCodesV4' test.out

#- 339 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicGenerateMyBackupCodesV4' test.out

#- 340 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicDisableMyBackupCodesV4' test.out

#- 341 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicDownloadMyBackupCodesV4' test.out

#- 342 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicEnableMyBackupCodesV4' test.out

#- 343 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 343 'PublicRemoveTrustedDeviceV4' test.out

#- 344 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicSendMyMFAEmailCodeV4' test.out

#- 345 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicDisableMyEmailV4' test.out

#- 346 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'mW6yZ3cZpWWMigqt' \
    > test.out 2>&1
eval_tap $? 346 'PublicEnableMyEmailV4' test.out

#- 347 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'PublicGetMyEnabledFactorsV4' test.out

#- 348 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'VkbADmefd8UHOYuk' \
    > test.out 2>&1
eval_tap $? 348 'PublicMakeFactorMyDefaultV4' test.out

#- 349 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "zKfi3xIlkSQ7cAlQ", "namespace": "xjOPJNu2J2IWGXaI", "namespaceDisplayName": "Qgx9nV7434f68VFK"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE