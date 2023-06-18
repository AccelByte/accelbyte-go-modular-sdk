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
echo "1..350"

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
    --body '[{"field": "AGweScoocPuayukp", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["RgEH6DGrFYtoFLj6", "NR4E7WfJesO47Bpl", "I0re1AEWSB2Rwv6l"], "preferRegex": true, "regex": "oqi9SfU2ehlmPKYd"}, "blockedWord": ["thROTYcB9wz14ixP", "xRjHAM8rLL7CJMmE", "XUbJbV6ZLRmqEGqZ"], "description": [{"language": "n176noDIjeUrACoQ", "message": ["YLad0RJ0bAgtaxlX", "fq0YZpvvOrK3BKsq", "s2PTQimlaHUK58lD"]}, {"language": "aNd35gfpX1sSIocP", "message": ["huRCaCFaBRdeMGgI", "AbU05vC5590vdL0l", "UnMq01B4K1EEu73m"]}, {"language": "NG83LyJmUwn6nsMh", "message": ["MEnl8pEO1Mily6vM", "EewIcao25HbVDUE6", "65q2LUPmjlchFFOm"]}], "isCustomRegex": true, "letterCase": "VshotImbu8lXeB4f", "maxLength": 21, "maxRepeatingAlphaNum": 25, "maxRepeatingSpecialCharacter": 5, "minCharType": 35, "minLength": 66, "regex": "McmmLz1RXVJXVanj", "specialCharacterLocation": "7FIdzhJzfg03O4LQ", "specialCharacters": ["TjjE5NTu1cl25Yj9", "wNksIL3A4Q92qLLL", "7Qfsvgujt6AIGLdm"]}}, {"field": "s4EYIltz8YW0lLK1", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["2swVzFS9miJslccp", "ueE3iVtKynBrQjms", "nfgziqoAqQFIzYLp"], "preferRegex": false, "regex": "r2HgzuScs69BLmi9"}, "blockedWord": ["xuT2z320XkANo50w", "hA1K1wnv7OzoDW5b", "OjHeM1Zw6VgLXCkp"], "description": [{"language": "3jzT7SMIitEqsVo8", "message": ["ULnG5BG0PH4QoR01", "OTqC1GN1xdx14uos", "c92WnahDCWV47rDz"]}, {"language": "QXxhuW7GtVVPccvq", "message": ["0Y9wxowHndtbf1uy", "G2nuIjEVnQq3NR27", "YQz4UZyQyCjXG8q8"]}, {"language": "31AlKUXzYPwXoSaz", "message": ["XidqP8fXkDfX9VYs", "R7vWNKEB44hpAQRl", "luUJqU9iBtt3GgdF"]}], "isCustomRegex": false, "letterCase": "rHvnWIin9Q3Lzvab", "maxLength": 90, "maxRepeatingAlphaNum": 94, "maxRepeatingSpecialCharacter": 61, "minCharType": 4, "minLength": 75, "regex": "TTC8DAW8xCM2RJSU", "specialCharacterLocation": "VHZT4AKK1AnM9rfP", "specialCharacters": ["wS30Jjvau0X5Qcqv", "7lCwqp65TFvLfJB6", "QYc3snjrsrHdCkdU"]}}, {"field": "ZTdJFy1GS2ykSHRs", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Nyd3Gyuq9OJ46fKb", "fWp0ww78307S4Yur", "zPE0F429wJJlk8f8"], "preferRegex": true, "regex": "IVjeSTlEfW33UG1q"}, "blockedWord": ["LKvloTx0OXTLl7AP", "aDLMIa0O12xXUEaM", "jIeGi2wocCZuLKf8"], "description": [{"language": "2fmvzKtj86CMwFnM", "message": ["1IKO5jpEeuIiu9pY", "eE7EmxpgeSg1pWu4", "vL26YwUXdydhUJdS"]}, {"language": "WRRSUrKr8jDP89UP", "message": ["sSAb1t1OvGptGwvi", "MPd5zX7U6dnoyCTY", "Pjr1gsQRDUZST1KY"]}, {"language": "F371OhXklcoueqAB", "message": ["2rwrYRVrJONTaYuy", "zSeBJ3iMvRlAC7t9", "vgR0k2bpfeDcz3ro"]}], "isCustomRegex": true, "letterCase": "gdl0SOZoAJBDNZF1", "maxLength": 30, "maxRepeatingAlphaNum": 17, "maxRepeatingSpecialCharacter": 58, "minCharType": 46, "minLength": 30, "regex": "wGuurOK7j4s9Ynjm", "specialCharacterLocation": "EEjZlM3VUOeyKpbO", "specialCharacters": ["4WY32j09iGTfP0zk", "NL5wdI78UWPwg5xz", "NAz4bYaxEKSwga5c"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'X6yiAzJsA6yt1iCH' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'i38Esmw5tuU0yH4V' \
    --before 'DMbjIItLrn21ggE9' \
    --limit '24' \
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
    --body '{"ageRestriction": 21, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'eysByhZ7ZUiIaeaB' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 94}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'pzok7L00ZgSJwpOI' \
    --limit '12' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "NzCF8vST0FLnTV0M", "comment": "gaRyiOD5q7jWmOan", "endDate": "xQ0n4ihoIYdLAKnK", "reason": "3JFktrqA4mcOvQ5N", "skipNotif": false, "userIds": ["Eb6293JL37t0crYd", "hWforQIexweyXpZf", "su59TDClN8O8hab4"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "6ZJ7iccYCnLQDEyU", "userId": "WZzVSLjjBKsceDcX"}, {"banId": "qoWUSqLshd9IAahw", "userId": "Spt8GKGMcnQeU5d5"}, {"banId": "ZL7oojGoizG8w1OW", "userId": "P9fXpSx4IdBuhWlD"}]}' \
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
    --clientId 'L0CbZwujOQobnfKM' \
    --clientName 'AodrwPzzE4yVMijM' \
    --clientType '0nbHuWArdo8lgff3' \
    --limit '0' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["WITCBVnFMRgwEPXl", "Vprkw4JM54RnkiuO", "eCS6bh5G2NMNbtjK"], "baseUri": "YQwXC7Vwy1VVjrha", "clientId": "Nb5lG3gqU2BimoLd", "clientName": "cb3tTa4o8BXgrPeq", "clientPermissions": [{"action": 21, "resource": "uMQYvGzujIYfLrgR", "schedAction": 46, "schedCron": "1gdreIpqE3catOrm", "schedRange": ["i4LOaOW5dcl4n9gR", "y782HlSUvIGvP7KX", "Ibvnw1OOColQ4ggy"]}, {"action": 90, "resource": "7mZ3oFmmEYcL5sSc", "schedAction": 23, "schedCron": "hu708JsrXWvRveDx", "schedRange": ["6Lqj77S2apoBMXvL", "JJMymkNjWac8XGU2", "O38QkpGsKAPgL3w5"]}, {"action": 66, "resource": "wLgD5cHMdUtFO6g3", "schedAction": 9, "schedCron": "gEkyC3FBzhHXI3SM", "schedRange": ["oE9oeVFG1bSHIv4l", "2l2VMCdgt8RT6s7S", "XROycPOw5IdjnQeO"]}], "clientPlatform": "r2aKDvmWcuOygKzn", "deletable": true, "description": "n0T764d8EzKcbg1X", "namespace": "DgDtbAMfKivBEqSY", "oauthAccessTokenExpiration": 9, "oauthAccessTokenExpirationTimeUnit": "Q9H2ELTEEsZGplPv", "oauthClientType": "azHKbi1s71LRP68N", "oauthRefreshTokenExpiration": 56, "oauthRefreshTokenExpirationTimeUnit": "OiodFtxjkmrKNVRz", "parentNamespace": "hQseGj1U3y7Ch1an", "redirectUri": "wgBga2e7IwE4MHmt", "scopes": ["S8GL8tL5n4sE6ift", "PATsvor1cGxVdGSG", "hzjt9UAnvFgeVpSM"], "secret": "ZbQ9sWmxMzVqO0A7", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'IgFBfIYDxgmRDLTV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'LBcnrYu8mifSlMsg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'L6NZXh82sk028BM9' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["iqoQaTQU7CY4yEhy", "xiD5WO77KOsUyV8r", "zSQQem4920y7R7xG"], "baseUri": "Ao3H4nRBdh79xCYQ", "clientName": "otMiOEK0OpSliyE8", "clientPermissions": [{"action": 86, "resource": "Jg7tjtN64Al9OJwR", "schedAction": 92, "schedCron": "W68Ks6weh8mAllwa", "schedRange": ["cfHh09IDe9Ev8mjA", "NYatrFNqoQfpmQzV", "KtwsxqJG6vLJhWlf"]}, {"action": 26, "resource": "vgTH5GH7ILBPMSZ0", "schedAction": 71, "schedCron": "1oCoUF3pUQzYGJJa", "schedRange": ["qfb9YDCH6JqQmKyn", "SQF5aEwmMvFXgmqq", "lvuVbI2xA2n0zjrt"]}, {"action": 92, "resource": "1EACH6Vfqs6H7zqr", "schedAction": 39, "schedCron": "ZS6UVmugGNcpVTaM", "schedRange": ["KRrVRwWqHMDnuMZY", "VQbxFxeIoLlgAybc", "YYXMG4B4CUEY8tz5"]}], "clientPlatform": "TxUTASLtUzy33Wnx", "deletable": false, "description": "9so36wzw0y2q9a63", "namespace": "Lch6rZD3ip1BB8a9", "oauthAccessTokenExpiration": 77, "oauthAccessTokenExpirationTimeUnit": "OPlDpSRhlgFSNPFD", "oauthRefreshTokenExpiration": 20, "oauthRefreshTokenExpirationTimeUnit": "jyj013dKo4GCEOTN", "redirectUri": "opZ4ERtsjHnB8I2E", "scopes": ["iRlByMwTtpeBa0G5", "te0ZFUPUUyx5se6D", "5R8g2dinZYu3jNYc"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'c5jabubalkOdFH83' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 4, "resource": "60i2KiTjW1eveHtn"}, {"action": 50, "resource": "FoMXnW4ct9O0K3bR"}, {"action": 10, "resource": "mQkOIlEfLyMhEcBx"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'toO0vvWX8LSuDOo7' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 65, "resource": "YhH6tE8W9zaQ4U6Z"}, {"action": 98, "resource": "WUUv4Yg6uBYPQJr8"}, {"action": 10, "resource": "WPweaJiFXhBa9xYV"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '72' \
    --clientId 'tYAhKwSUr7RUIKQ0' \
    --namespace $AB_NAMESPACE \
    --resource 'he434guxZfp8XDkX' \
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
    --limit '15' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'sadoEYL6lwRqAsY8' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xBicXh3y5HdBW0pz' \
    --body '{"ACSURL": "mXlCK6CEKgEVInO5", "AWSCognitoRegion": "hOnjHA6EJk9fqrjD", "AWSCognitoUserPool": "kEHBIDpnt7XKRxP2", "AllowedClients": ["ofdUeMrMIWL1d26c", "ZjpJTwOjHlAi3CMK", "E6QhodGclENYLcJl"], "AppId": "P4O0sizyQ6fiiR7g", "AuthorizationEndpoint": "X0sZNkvLwZjLBMjL", "ClientId": "bA1s7ngKcoYz4aNV", "Environment": "6LoAIoj08p0sJYdO", "FederationMetadataURL": "ArjFxtrTkAqViTQ8", "GenericOauthFlow": true, "IsActive": true, "Issuer": "swHv5yqymnpqpjL9", "JWKSEndpoint": "cC2Iup2IlvdHbjLQ", "KeyID": "UkPtlH4iyylyUoEY", "NetflixCertificates": {"encryptedPrivateKey": "3RsIAtiwPS7FNlO6", "encryptedPrivateKeyName": "9pgXaYPf1rHuNyqf", "publicCertificate": "0th0BTyEf1icifq4", "publicCertificateName": "kQ8aNlp40rZUFZx8", "rootCertificate": "soi9yhL2FS3OOa39", "rootCertificateName": "BfHuppsCuZOUY9Dq"}, "OrganizationId": "ZLNBEkVwfQXNbJzf", "PlatformName": "Ty0rAYD5quWlEvkH", "RedirectUri": "EhuLc6coKUGfgTne", "RegisteredDomains": [{"affectedClientIDs": ["vqWa6ODePU7d23te", "EpaI9yWks7OveFD5", "ttC0ZSGPh4YJEjJV"], "domain": "19lN8ixeNHxPXmd4", "namespaces": ["spqiAJpzZMNUc3RW", "VnOIkZm4emNvdRLt", "7AapmVjBqOSTuEMw"], "roleId": "GtxFeqvBJaKzp0Wg"}, {"affectedClientIDs": ["dd5ni8w8RnGMw8Xv", "lMzjX3Cl6pdfkNGi", "7SVXkG9iIi09CPuz"], "domain": "6cEoL6TPm5xTvSHj", "namespaces": ["PTYrDIwpDhIrXRXA", "acj1FO9F2kFYbxCn", "T3qQZ0URoOHZGVPT"], "roleId": "vF2AEGwRUAZ27AVW"}, {"affectedClientIDs": ["lCWFwwuTHICL6CqN", "ATtd11tibmaAvksH", "Rp40Gq8vNKhMie23"], "domain": "X88CG3JWrs9eDWWd", "namespaces": ["q7TW5mdbeWUTi6lI", "Wu3s9p9eVFnhG4pS", "B1iihlVuiuOGe88A"], "roleId": "35ckl8rAPklycv9q"}], "Secret": "FdqMbwfjBzovv5bc", "TeamID": "wY6SGk6OGoPeLmrH", "TokenAuthenticationType": "NWbqndPnwDRFRVD0", "TokenClaimsMapping": {"gxJRj3pzjSxQ1Swh": "BppGXvtoEzycmnPy", "lMOy8pLJ2UpdbUvr": "z19T2TuIjGNP0prc", "jQ6Z6VSqO76k8ORq": "71xSkoW6vHBZVSBG"}, "TokenEndpoint": "yXDAfOPMpNCACNgr", "UserInfoEndpoint": "YIIt6jk3Cog1Mtp5", "UserInfoHTTPMethod": "3Cf80QqM5BtNXGeI", "scopes": ["WuxDi4RcVvKvTMo0", "ulfcH0eqpgAg7WrW", "jclPG20qHvUTOTsl"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hIJrvX61w1Ah36wV' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'a3JzftwPLHbxEFmP' \
    --body '{"ACSURL": "QKdpTBuRShH9N61K", "AWSCognitoRegion": "kHHrG8Jtax5Fqali", "AWSCognitoUserPool": "sC9XhkePpHGrtmM2", "AllowedClients": ["g6uRToLoQv4v9SqA", "z8ZkiEJFqdzXnHFI", "WmYFiEcDfu3QyRS3"], "AppId": "Oh4pIPzf98x8CzM1", "AuthorizationEndpoint": "tdgVvAyd2HEXV9GP", "ClientId": "S0SYlB9IvM6DgQbF", "Environment": "Uea0dfxz0FNW3UTy", "FederationMetadataURL": "D7jcjd7DWVFqxPfd", "GenericOauthFlow": true, "IsActive": false, "Issuer": "ZvkksgW9r4AJHAL6", "JWKSEndpoint": "ks1IP4f1BEez3Ifv", "KeyID": "fzZ3SddEpOITqrzU", "NetflixCertificates": {"encryptedPrivateKey": "8bjmgaQTpKxUHGyk", "encryptedPrivateKeyName": "7SRR48c0RYPoQTWZ", "publicCertificate": "fdysSNiEC6MgE3LG", "publicCertificateName": "mlnjB5qCQaC3FS9N", "rootCertificate": "cBzdshG58Dau6Y4E", "rootCertificateName": "XD7S78MPirtbK1e5"}, "OrganizationId": "2n1ns8fqmciLPZPs", "PlatformName": "as8RRa7b3XU20qHo", "RedirectUri": "2TMlrBxSzjI2Uo6H", "RegisteredDomains": [{"affectedClientIDs": ["LpAZF2sYLzXDfsjZ", "CHDeuiqpOsxcm9q6", "FKiJEc7Wcvnc1Owy"], "domain": "D7Ig9t8In7BtWxlS", "namespaces": ["BBcp82WUYfyTOmxO", "3pglHAkwgbO63XRa", "nuWYI9T3yhO8XsS6"], "roleId": "UUEyWsrzsG9UUD4q"}, {"affectedClientIDs": ["d9Q4sdtHb6kjFNyh", "pQV73SBG7H1kVXPy", "QjNPxGbNCg2Eexms"], "domain": "2JmCKmAtwHu21j9V", "namespaces": ["xvboryBk2lc6qvHT", "YCF46EwjYl315Ltg", "igUpKaTnCfxfB4zj"], "roleId": "gthEUsaIh52Tzddv"}, {"affectedClientIDs": ["gumQZYouRmKkjk6r", "OfWofVWlwsmbBphK", "LjQiuaGJbnwMHynC"], "domain": "LhaP1tHoxHKIv0ge", "namespaces": ["iJ1mRe4eRlAUMQ4T", "HVTSm18s9d69vYWI", "Fo3VwVlkh310UYpI"], "roleId": "BGm0V6504xJ9DwnY"}], "Secret": "vUsZOZdH1vRbjdmQ", "TeamID": "bxawVpKF3OoMqY77", "TokenAuthenticationType": "oBg2mup57eNeLTXB", "TokenClaimsMapping": {"vgGiKoj7PStVPy8K": "EUYPy1yMxWzhgqd1", "J3CY3sVXIuPZcsPq": "VKq0bHVdfokwgj4w", "XAosml4hRQHh8Imr": "JQ9gP6LlyxiXDd6E"}, "TokenEndpoint": "TdsNTOeqnuI2dEaK", "UserInfoEndpoint": "jp8hlaLYgkw4aV5N", "UserInfoHTTPMethod": "FmrImOapA8Eswnvm", "scopes": ["XCpdE7nd9NkO6QfO", "KYYcGDnFaLePhWGZ", "tWNNAB1D7xeBTYnv"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WnF4GwraMscm3orF' \
    --body '{"affectedClientIDs": ["tUYFzpPVx9UMtBkc", "bYuaKH9hNEKucJOY", "7AiwLx7wzZmEWZFl"], "assignedNamespaces": ["SbIPpUgvnu8sj6im", "lB5XQUvc8hH9tthY", "x50bxNKBwPVBAO4Y"], "domain": "quIS0qkC0Ksmltdu", "roleId": "HJWLjYhjFc94EeHv"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qpzRswaagAPBbFEG' \
    --body '{"domain": "LATl3q2qxsmrPsLa"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '1qxDrvtkIZYDTIwT' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Q59UaJSomFvlJCD3' \
    --body '{"acsUrl": "pO2uUnykD56aEjHx", "apiKey": "y42IJpQhejf60ZVK", "appId": "cVZDgHd8bWBnVKIa", "federationMetadataUrl": "HHTRG52ph38thHuG", "isActive": false, "redirectUri": "Cvn0kjIRTZgPDQ57", "secret": "RjtQbIJaHAJmAsGO", "ssoUrl": "vE19OQqlcnmU24Nv"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fsrkucijtPks0JCy' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'D8qW8xT8BWMpZLDC' \
    --body '{"acsUrl": "0GghCYuq2KuiAkMC", "apiKey": "2DtkhaSoNZjg5zJI", "appId": "EDCyfpCupFpdA2r6", "federationMetadataUrl": "w6dxVl3vsHzopw0U", "isActive": true, "redirectUri": "WssjUrKIvVlzxpW9", "secret": "byak5f4qSrOjcbwv", "ssoUrl": "YQDyJec033IyWbzt"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FsYS6bOEZzI3paFA' \
    --platformUserId '7oQ537VxAJKD0wgS' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'y3EWBYehKd8jSOy2' \
    --after '55' \
    --before '82' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'vDWuGbTPpOqiXfOH' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ilAqkVRr2EtP3k3A", "PTLFYzm5tm5NW6lo", "Chneqtky2BJDBQda"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["3Ow3jvcxIdgIBMC0", "IXjMV6ythNqZZX9y", "wrLsI0sKkQteiqlL"], "isAdmin": true, "namespace": "OpSBCNjwdY8mzDIz", "roles": ["feQyBscDWGfiUqw2", "GTfWwOrNhkH6IGau", "7wIizOoYBOVeRzjM"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '20' \
    --platformUserId 'RkB8s4lTVMiBU34E' \
    --platformId 'bZ4AF9AGNXS3pGse' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '3R2IY4H2xHCMrt5F' \
    --endDate 'DKSl61xNOONV5cy4' \
    --limit '86' \
    --offset '58' \
    --platformBy '410WzX346LKXlOuv' \
    --platformId 'M8x1eFwpgJClVKxQ' \
    --query 'Djxw4nJgax5ntr6f' \
    --startDate 'zQw3zqshYkfiplEu' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["GnVY4U5TVbhNQ79D", "E6yysJ6bAKJ1Dkdx", "ycuCYu6jlA2d6osL"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'J1Di6qD8iOfXnsej' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G1uWsQq7xFqRFU4w' \
    --body '{"avatarUrl": "vX6dASTjBZHUA3rT", "country": "ikT46tH6uD3CnCR2", "dateOfBirth": "AmgExa07PjCMfyui", "displayName": "5vbWeyUdI34etDmU", "languageTag": "SaZ79iNxhNKHkJ6L", "userName": "oRU09ztSi3CpDwo8"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RxWev57iWT5RENsJ' \
    --activeOnly 'false' \
    --after '3XJimHZPD7ACc31a' \
    --before 'y4jpwQJ9YmewzQ7C' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xen8U475K5fstFQB' \
    --body '{"ban": "Npz0EwRi3A9LYCje", "comment": "PNCVMmJiy6Hikx7H", "endDate": "b6r7eSkR6tLkoyIC", "reason": "sUfG6wA4FeBeDqMI", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'mi9oUj3ddGVD3UmT' \
    --namespace $AB_NAMESPACE \
    --userId 'lOG8MxiwNsy7UxuH' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'g5YTWItoIDkzbIzp' \
    --body '{"context": "DwSEOGiGR5OaOaoQ", "emailAddress": "1zgQVQsnRNyfp2bQ", "languageTag": "YbRicUbBMl3I5pID"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Wch8JazdPdY7MyqS' \
    --body '{"Code": "VKagSpef8qvA1aH2", "ContactType": "m2QfRrO0zX0cA1Mx", "LanguageTag": "D5hDvrsKNanaJkP8", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'WKe2bt9ASMKKtUcM' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fGTs6aUPMcJzOVbJ' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MpZUadq3nO4Ntizm' \
    --body '{"deletionDate": 38, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iE8QnboXl03FX0Gf' \
    --body '{"code": "pqcYJI0tdh2jWdgt", "country": "ZjPDTScqvAig8iME", "dateOfBirth": "K6yAh3WMcBxUJNyl", "displayName": "ousuBk6gOlBL7UgZ", "emailAddress": "8DMxTGrFbhPUGmYw", "password": "YcNnWQ8zRdMYrIiu", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'R3Afkw7O7Ll9Ofl7' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XRdYbh110owAhuBC' \
    --after '0.18779053701262804' \
    --before '0.38614619521599347' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hYtuLTugQsZnHbCs' \
    --body '{"languageTag": "Eh2abbXV81a0aI8V", "newPassword": "I1fFmSkY2SGFXOXw", "oldPassword": "W4tJp7IM79XiYZDD"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'C0GBTymUm5n7zfNL' \
    --body '{"Permissions": [{"Action": 0, "Resource": "CeDdmZwQg568eOqC", "SchedAction": 11, "SchedCron": "c7IK0xUZt67nx3vl", "SchedRange": ["ooIbOv8beQuZYwF5", "nknDwnOWYr4WCwEA", "XCn4zK8AZJFCLWHF"]}, {"Action": 56, "Resource": "FeHGXbAyiZCjvX8v", "SchedAction": 18, "SchedCron": "WiTarQm8wknjATBW", "SchedRange": ["cT64loDwlyAwcFwH", "xdyu9YK6pxTDQsZf", "CE1vvx9Z1vC1W6Mp"]}, {"Action": 78, "Resource": "NyPH8DYC2W1upy9v", "SchedAction": 19, "SchedCron": "K3L6AxnQ8TYpuuDQ", "SchedRange": ["6dWundZMH8fKzvtr", "RLsZLemgTswzeYGP", "yL91KHwSul3ie8Rb"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '69EOpmGmiB89S8bd' \
    --body '{"Permissions": [{"Action": 80, "Resource": "JvIG0DMxW7GBtfUq", "SchedAction": 69, "SchedCron": "3mgq4DCdtJpHhW9h", "SchedRange": ["zkmZ3D9GqIcbAC7s", "mvOLEVd2fVBKBYwA", "JPFSfNB8p5bRoGiz"]}, {"Action": 73, "Resource": "DrYCC6sb0a35OGUc", "SchedAction": 50, "SchedCron": "Idybmczz42jPlyjR", "SchedRange": ["H4pX4lRqg8wGVncD", "5hUj0brFq2C1XDLr", "HjzRUtmNo1qA9XqY"]}, {"Action": 61, "Resource": "dW200eZg754OfbJu", "SchedAction": 63, "SchedCron": "Xaf3anGDHMC7FhIW", "SchedRange": ["w2N7spZFNzkdVddY", "bsCfkus6zvLA9FTj", "5nFwEr9pT01UyVtA"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ki8tGGorLwNWAST3' \
    --body '[{"Action": 49, "Resource": "Z9CqnBLyY03d8HYD"}, {"Action": 16, "Resource": "9BVEATOAy3Y63wUi"}, {"Action": 47, "Resource": "66XeIaURnK2PYGmS"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '28' \
    --namespace $AB_NAMESPACE \
    --resource '6QQqAJ9wPSDp0ZBs' \
    --userId 'O0nyYo6xDnEQnzOc' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QGM1KbXlY4rIqCG1' \
    --after 'g2P4V4VULhY0PrsZ' \
    --before '22mYLGfTRZEUqW6O' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'zLskXLXAAfhhrdaX' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'NNPWB8KvsRy78qQE' \
    --userId 'SEbuEjzK2nmZpIFw' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'uxwpuEnD8ktZsj4Q' \
    --userId 'N7eQBYCszanUpIvg' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '5luflsnFoJ6w0Rar' \
    --body '{"platformId": "m4e2mngfek56aPIc", "platformUserId": "sqQKDiVoLUszaWAd"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YhSzHLB5rNIL2qpS' \
    --userId 'JhKxVAJy4sU5uMjc' \
    --body '{"platformNamespace": "OlPQ8PBsXOS9jO82"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NNttMJL0ahiKtE6F' \
    --userId 'ufW9z5rZVK8nQPoF' \
    --ticket 'zptNGNZzFWM6mjza' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'q5wZ17FCkIlWgSm8' \
    --userId 'h3alrtf2pjn5UVh2' \
    --platformToken 'K5SGxQa7XHyAgABM' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IJh3wHLpTFjXr9FW' \
    --body '["jcyEW5u5Ar6tVIWo", "aIa5F5mJMt3xyxAa", "Ni4T5ETtIlQMCshM"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fpoHXSZACvQiOBeQ' \
    --body '[{"namespace": "NSc5QNDXdNjgdKRQ", "roleId": "LYyM85XagnXLdsam"}, {"namespace": "pl2FxkYLWrQTnqfz", "roleId": "2kmL8BLw4oh3VjRS"}, {"namespace": "NzGeIlZOAzdrZOqA", "roleId": "wGSEMhqReGWgVwko"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'fQnAZswUFo6VXKko' \
    --userId 'DpwvxKtB6aiCoZ68' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'vmqxkM6mYy908zGy' \
    --userId 'ai3jwAUFqEJvxgKK' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QzA88y4Y3gfq2bp4' \
    --body '{"enabled": false, "reason": "jvvR2lx127yj4Gbr"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '2FOsEHws1nhd9STN' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'PTsyQx9yMrrPSM4l' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "r7zKXHs7BIuzKjbH"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'NX7e8dlSEeChzqVc' \
    --before '8FZCR6qOj7hB5DPN' \
    --isWildcard 'true' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "yX0Xq3IE624b06nR", "namespace": "zs376fJoXEy21Pm1", "userId": "E63HmJMTsD9JGeC4"}, {"displayName": "qdXrokC4dUGmME5g", "namespace": "rEh1xsezr3U4oaKH", "userId": "5Q2mW84CNAS20yF0"}, {"displayName": "taxXFtjQHNd2rUc4", "namespace": "EVhiZOZPtyyiF80c", "userId": "AGbSwNsTBChvDmE7"}], "members": [{"displayName": "lbWWf85lrkrcybAP", "namespace": "lK1AnS9VrPBeKFx3", "userId": "fz8ibc0dIgXESDpp"}, {"displayName": "AA6lrvw79rIj5eIf", "namespace": "COOHPzDGvlWJQnba", "userId": "rGHKjYXlgdPXlz6T"}, {"displayName": "RkoATcwckDvQXFzw", "namespace": "1baL4307expoTrmc", "userId": "5Ng9NVVvvQjzcQGC"}], "permissions": [{"action": 43, "resource": "S7JBg6yH8JlX6wQ2", "schedAction": 88, "schedCron": "pYkmgCo4Nef2rzXo", "schedRange": ["p3i9Jj2ITGVBpyEl", "YIb6Y0UH2VT0yYbO", "W9ENHEEexJMyNeFf"]}, {"action": 76, "resource": "yGsCtl2MAtII3RnX", "schedAction": 9, "schedCron": "wk3FgHjq4eDMFEgQ", "schedRange": ["c9m5akTNozHJOsD0", "NuOxA24FTHCb4Gbs", "2iE9FKNwwbhu6LFd"]}, {"action": 42, "resource": "raf9nimTwwAMYwoQ", "schedAction": 45, "schedCron": "YZ1CWcWktTbAIv0g", "schedRange": ["10bPSZqoONJA11td", "4Xfcgu6yOwXAbnnG", "5ZUvydkq5yUyvKem"]}], "roleName": "v9b81GHS5W4PGLKo"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'om0zbEHC6zLBypA1' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '2a4iCFUVa5XYOgKn' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '5EZs1aSZqQa5oaz6' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "yLg9vblhPVHeZGjh"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'n6lYpBVOySRTfqQZ' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '60KJvfx5zJbL0HDV' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'kNrN04HNM3aQahK8' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'Me3XPCvvJQOSZGC4' \
    --after 'dqsm0p1OaDBSeshr' \
    --before 'bSnf5m8TuEXWspZo' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '6tlwKR4GzqJL0ETC' \
    --body '{"managers": [{"displayName": "gE2NnBrF0kjKNAqf", "namespace": "FHexFyVBBTONLMja", "userId": "48Zj8kARH4gZ63zT"}, {"displayName": "puJ6m0U15QaRT9UQ", "namespace": "dBZ9c5OdiPPS4FR9", "userId": "3Ugxxe1WDlRSauED"}, {"displayName": "C1eZkcBlPCtr3XoK", "namespace": "NTC4L3A800PPEnlV", "userId": "H41WKMyXNQeM36zU"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'jhrwDlO7c0oxPsGV' \
    --body '{"managers": [{"displayName": "k8JgAsqGVwIXyXdp", "namespace": "MFII2PuDfuc4Jqpg", "userId": "YEFUFyTuxdiPc3gO"}, {"displayName": "jGW0WNX6MM0HiRKe", "namespace": "Nm6Hu56TljFAuUjx", "userId": "zRDYMCUCHVFe7ftg"}, {"displayName": "thtKZudT4SFGfB11", "namespace": "u21JmsPH03NYzLW7", "userId": "KpZP1htExcHJsKi0"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'TNpfsMvzbp6xTS0n' \
    --after '17ADArTgPyfw8725' \
    --before 'F9QfkYAawH9C1lYW' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'CEPLEwnH5C7xJo4x' \
    --body '{"members": [{"displayName": "oGwd7DjWXJKQe8O0", "namespace": "3EnyrVGie8EVnWq1", "userId": "KpgEM41ocJoTSjv2"}, {"displayName": "4sh2NJhIJPMC7hIr", "namespace": "Y479yy008FhLWD28", "userId": "TPjkKSfM789x7m7T"}, {"displayName": "kqRB9CYNZLeFgEVT", "namespace": "QHShHJAq7iCuE1ew", "userId": "N4mSDE5N6IkvBitV"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'LajWkqEBsZsaXT8f' \
    --body '{"members": [{"displayName": "1LFHLdaf56TG4abF", "namespace": "TakRIU5H5JZMEmow", "userId": "kSizI4kfRTIBySN5"}, {"displayName": "5Xn5YpP0cb20axnJ", "namespace": "HFlf8caZCSmM7onH", "userId": "iPOVxLjuhTHfPgwp"}, {"displayName": "nH2GX5YX7mAouWkB", "namespace": "uQisl3Tuz3YwYIK3", "userId": "jtUJaxSSZ5ifno1m"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'RfyAocLk3BL472Vv' \
    --body '{"permissions": [{"action": 78, "resource": "0YYeAobQLyjqzCx2", "schedAction": 59, "schedCron": "abzRtG1pGuslmRze", "schedRange": ["JcBsEdktL0DwOUQH", "JNntqOjEXCFaU50N", "1LoYRwJZdqMQhbi4"]}, {"action": 12, "resource": "nrT32H0D2GsT3QwP", "schedAction": 44, "schedCron": "G1qwfStRYIXX9xy5", "schedRange": ["QqQehpXbmH5Yy1Tn", "w7Beh6bTamibguNO", "NykStNcpA1NjzNmR"]}, {"action": 43, "resource": "duH8vsIhezuSlhME", "schedAction": 1, "schedCron": "3YvqajMlt7OxJoZG", "schedRange": ["tNTYISkC2CU6bonc", "p1LLU6cRcPAs4fdV", "QG1E0AhWAQA0RCRZ"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'LntP9aeoLSPLOWbP' \
    --body '{"permissions": [{"action": 24, "resource": "spiPUoUCoWT2JqMX", "schedAction": 4, "schedCron": "iado3jOazWKeqBTK", "schedRange": ["N5MecnGVN6LFpc6l", "WoPTwdYDnclcllG8", "40h1BAKUmXusqV2w"]}, {"action": 73, "resource": "uqeIHbYMJ1LnDCox", "schedAction": 85, "schedCron": "bukyMnEeSzStmzhI", "schedRange": ["tZDMpJ37pdI7hwNO", "MTvgjezZ9cA9GdYR", "fV9r6ySZjWET8Ovl"]}, {"action": 16, "resource": "Zojv7VVT7QHjk7Bv", "schedAction": 13, "schedCron": "9prdomvEQMun1HNs", "schedRange": ["BTVMXWOagRulyBEF", "MUiHaLTq7DiSRDV9", "ncbYAsRej9pIvho5"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'ctEU4NIWHjAaaAPc' \
    --body '["0KcU5ZbJ31Qzt5UY", "3JFU6BxY9WVVFovY", "iSecvcH7RHM2hePf"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '96' \
    --resource 'ZMm0r2xL8DzSlZh0' \
    --roleId 'U4MgW5QX9uFAAKfn' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'rsXI8Ozz7QHFaOb3' \
    --extendExp 'false' \
    --redirectUri 'ZeEgC3oFZejoAzYh' \
    --password 'V6hc9cv5eKN6KYBv' \
    --requestId 'qfma2iH1t2nWNywO' \
    --userName 'qLXj5TL1JnQgQb1m' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'umJt1RWN6oYrn2sa' \
    --linkingToken '3uqJH9z3QzWXSnKj' \
    --password 'BbIAuOxDKin7nt6R' \
    --username 'tcmmfN1OgbmVB7nn' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken '8c356gP9wiJXTS0y' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'C8V4Tql8udMpcXyN' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'xHPN6ajYBz4kjQDF' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --isTransient 'true' \
    --clientId 'DTPNtGiIDv9tOwtk' \
    --oneTimeLinkCode 'suOwzpUnp69WrQXM' \
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
    --clientId '2f3qWTFAmNeQoaW7' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0SlDtitOOuaJdpVd' \
    --userId 'OlMHLLzW6idtu2Jb' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '2OMib7tZbw6HIsii' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'ZcHhL2gAEglsLCMF' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'WkcsEAF6GKmcoR76' \
    --redirectUri 'GeSzeGDCUea4vTOl' \
    --scope 'r2gnzuXMUX0SjSuM' \
    --state 'TIrAvTDMTRvRycSq' \
    --targetAuthPage 'VjeMO3AOFvRSc94b' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'zfI4vcL5Og3H4CWP' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'Qdv8ngt0Beut83Nh' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'H3BStFUZ7UN8GJM5' \
    --factor 'xq1uRF95EO8G62FR' \
    --mfaToken 'XTOo0TSaFFzUuhDw' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'vOB3gG7wWuPB9Om6' \
    --mfaToken 'PUL8Z9I5jc0x3sJW' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'Vv86GKTaJt36yLHo' \
    --factor 'Zyyr2SRFc1Jk82v4' \
    --mfaToken 'x6SSbMwuzPlH1B8c' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kAf8YEJRRKczPiDB' \
    --userId 'YJnzsDnghvP6WB4b' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'O0TtumWxC2kM5YI9' \
    --clientId 'ioObPfXLJRLfnTMv' \
    --redirectUri '8ZibHCWg8FleYAqM' \
    --requestId '8DPmK7BSANrTSQWw' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'xm3qR1vez8GlLIbY' \
    --clientId 'esvAmyhxj3GvBo1H' \
    --createHeadless 'true' \
    --deviceId 'knjKg8895J13j2LW' \
    --macAddress 'VPirXPxpPoK3eWvC' \
    --platformToken 'Ook7UABrI76E54LB' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'PgPsqXMzAnerY5yp' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'H3tYnMbOGvAe1IsU' \
    --code '2lnt8CqkvbNGJoAl' \
    --codeVerifier 'HOQi19ueNMl6NxPO' \
    --extendExp 'true' \
    --password 'kBcbkoZyFnxbxEC4' \
    --redirectUri 'XelXmHeMbxPIjZO0' \
    --refreshToken 'MjfuB5XGGEBIRyoD' \
    --username '6qWUTwvU9xzrxgAe' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'AxLt5e9u3z3FQUQ9' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'zriQledaeDxe3VGN' \
    --code '4cYFVZlUyRoVhQxH' \
    --error 'CABA2nOHvgi783sx' \
    --openidAssocHandle 'KjzqOQr8CaEVGG5v' \
    --openidClaimedId 'dNdpKFqJC9yYtWRa' \
    --openidIdentity 'PCHIuz7osol4BW1Z' \
    --openidMode 'xsbwcj9uy4AomvNM' \
    --openidNs 'vvKi1MYebsEpEYDN' \
    --openidOpEndpoint 'JCH0Zkik7cExHjST' \
    --openidResponseNonce 'i9MICVr6WKe0Huwr' \
    --openidReturnTo 'zYLVOQEKeqNChp0N' \
    --openidSig '2Lou92OyCJURzfy0' \
    --openidSigned 'tQyjSmQvNuMNleSr' \
    --state '5GDjOhMWMbb6YJB2' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'ki1dp0WGfyBvD4HD' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'HXAXKKjMUMS3316O' \
    > test.out 2>&1
eval_tap $? 228 'PublicGetInputValidationByField' test.out

#- 229 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'h93ESkaf7L01Rh3i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 229 'PublicGetCountryAgeRestrictionV3' test.out

#- 230 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 230 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 231 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'WxNIFWwbWIUZacDh' \
    > test.out 2>&1
eval_tap $? 231 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 232 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'D5rmMDyH96BCmNu7' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["aWS3UyGRMLBJLgBA", "LQm8MPb6EUE70wc3", "CzatmHmZO6IBOFBe"]}' \
    > test.out 2>&1
eval_tap $? 232 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 233 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BwuDZlCH3i7S9RfF' \
    --platformUserId '4NxN5FJcVJ9esLYK' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetUserByPlatformUserIDV3' test.out

#- 234 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'UxbrjCr9x8dDJExk' \
    > test.out 2>&1
eval_tap $? 234 'PublicGetAsyncStatus' test.out

#- 235 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'cB7w1S8Ng1JMjkUs' \
    --limit '95' \
    --offset '29' \
    --query 'PkXdruz7aHY8iv42' \
    > test.out 2>&1
eval_tap $? 235 'PublicSearchUserV3' test.out

#- 236 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "m7JBY8HkpyDfSgT0", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "I8cPfVarFlBLjolV", "policyId": "B2JFvxO8y71lUeXK", "policyVersionId": "NuxqiJc5L9MaorSs"}, {"isAccepted": false, "localizedPolicyVersionId": "en1WjVXAe2RMTgTh", "policyId": "ZL5RlDlkGQDnc9SW", "policyVersionId": "05wBz7dEEoShEaIX"}, {"isAccepted": true, "localizedPolicyVersionId": "DFkWRTKgKHgBKGoY", "policyId": "NKzrQsKyvaOV5VO7", "policyVersionId": "gxnKDSksqhuf9i3H"}], "authType": "8WiTStRDaSE7WboC", "code": "l203upCw0juzb3Rk", "country": "tiFPsYR4urxqfjzW", "dateOfBirth": "oFtkRPWLk1L9wVyA", "displayName": "RQicz3ISYHiCFCAB", "emailAddress": "qSxtWzsaVMdE1lDa", "password": "DJ57ZKk6R6xeO2Q2", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 236 'PublicCreateUserV3' test.out

#- 237 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'hIaztnBjW87HBELI' \
    --query 'nBv61vAVVAkPPGQh' \
    > test.out 2>&1
eval_tap $? 237 'CheckUserAvailability' test.out

#- 238 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["e2FFRvTJz5IEVyjw", "m4XoK0i0m0jI8KQL", "8843KQsNQic9zLVx"]}' \
    > test.out 2>&1
eval_tap $? 238 'PublicBulkGetUsers' test.out

#- 239 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "hSl3zaGJ4Xuq2Hm2", "languageTag": "6j03dV6LwdrbyVeu"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicSendRegistrationCode' test.out

#- 240 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "FxrwH6pEKFjQk2Rk", "emailAddress": "zMNmMSSgj1b9AowK"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicVerifyRegistrationCode' test.out

#- 241 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "RBJMIRFIVJceyvcB", "languageTag": "TqFBNb3NlvXCoGdP"}' \
    > test.out 2>&1
eval_tap $? 241 'PublicForgotPasswordV3' test.out

#- 242 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'XqOM8IaHH5tqb4tE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'GetAdminInvitationV3' test.out

#- 243 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'OvqZfW09emjcCWTo' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "RARxKFKiF0FnW2qa", "policyId": "hSal6LFFfMoBKLDC", "policyVersionId": "0y4YbM1I507i50MS"}, {"isAccepted": false, "localizedPolicyVersionId": "nnnXMxst6ZC7iFv3", "policyId": "8ZYqINoQsXLSubFI", "policyVersionId": "TFhDyO14q66MtkPv"}, {"isAccepted": false, "localizedPolicyVersionId": "RiYUZAjeNai2t3Ec", "policyId": "KM8WnmFEO64EQJYh", "policyVersionId": "7lyThBEboxwsW9lC"}], "authType": "EMAILPASSWD", "country": "B4EbATIcEih8nhRg", "dateOfBirth": "jXBpRs1fvvP53jYV", "displayName": "5bLCGo23aaiwMLdy", "password": "2YcH24cJQJMazGen", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 243 'CreateUserFromInvitationV3' test.out

#- 244 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "sVeFTc1CVqtOzdBn", "country": "qnhAllaA8XHdTYWk", "dateOfBirth": "C77CG7qCutaXQ6QP", "displayName": "XCiEWAeFCoYFUDwn", "languageTag": "KmqlubvnH0B8nSH5", "userName": "MnqYJlhC0xuIXflJ"}' \
    > test.out 2>&1
eval_tap $? 244 'UpdateUserV3' test.out

#- 245 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "0jWuCdEdQcjZtRGO", "country": "bYD34RbojXadTLTW", "dateOfBirth": "JdByi1gCt6jIcJ0j", "displayName": "svBIPO8BYKaYWhAk", "languageTag": "vUtYR1DITSR7Gs86", "userName": "VMzeLAUCTO9OGuB1"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicPartialUpdateUserV3' test.out

#- 246 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "kaqqL5xVnijACUmc", "emailAddress": "xr4AeFuFljrWUXtD", "languageTag": "Tl7b6WTM5aSNRHkd"}' \
    > test.out 2>&1
eval_tap $? 246 'PublicSendVerificationCodeV3' test.out

#- 247 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Z7ZdBNmYzCPBjXeM", "contactType": "kxHKzPULV1ClG2XB", "languageTag": "9Dr4BuDZaJ58EoYA", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUserVerificationV3' test.out

#- 248 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CfsTw9Rx2nnwP3Vh", "country": "oDnTWcYWOSQSUv6d", "dateOfBirth": "FYE5mDNsjce9dbXA", "displayName": "HjAlU8CELObqXnU9", "emailAddress": "JbBvJTVjI2PPy8BD", "password": "Glx0dVMVbtBSC5FE", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 248 'PublicUpgradeHeadlessAccountV3' test.out

#- 249 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "2irMviIWpH9NR642", "password": "3SHp2P7Imwzs7KVv"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicVerifyHeadlessAccountV3' test.out

#- 250 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "GWzslvJUuMIQ2RlI", "newPassword": "xl5hzr9D9UmY7ph3", "oldPassword": "0zkFtubTcEePz4Qw"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicUpdatePasswordV3' test.out

#- 251 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'IH5mfI528mmvWH9Q' \
    > test.out 2>&1
eval_tap $? 251 'PublicCreateJusticeUser' test.out

#- 252 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WkUWXcA0t6cbyU6e' \
    --redirectUri 'wMg98r025a0avLoj' \
    --ticket 'gL1uHasIhd7vv0WP' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformLinkV3' test.out

#- 253 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3eWF8oe4bHxg2E57' \
    --body '{"platformNamespace": "3xjSliebuyLlGvCC"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkV3' test.out

#- 254 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yOr8yWZgASMe9k18' \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformUnlinkAllV3' test.out

#- 255 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3J2TRvAMalt54i8t' \
    --ticket 'GOJrdKPd4zaYTsJh' \
    > test.out 2>&1
eval_tap $? 255 'PublicForcePlatformLinkV3' test.out

#- 256 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '2IfTjzoIr6K8CTyF' \
    --clientId 'm6tfUYJ4zfYL9Mi5' \
    --redirectUri 'VBjqYPtQGkV2rhYf' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatform' test.out

#- 257 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'oMv3LKsi4IPwCDMf' \
    --code 'lcoz3Tw1L3PW8XRZ' \
    --state 'zHhYx4FKdb8ReqjH' \
    > test.out 2>&1
eval_tap $? 257 'PublicWebLinkPlatformEstablish' test.out

#- 258 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "RmPw65FE1rOJh17n", "emailAddress": "NJas2sNwflytLE75", "newPassword": "AYbGW6lRYXz0h75y"}' \
    > test.out 2>&1
eval_tap $? 258 'ResetPasswordV3' test.out

#- 259 PublicGetUserByUserIdV3
eval_tap 0 259 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 260 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'icGwKXzrDxNxOFOT' \
    --activeOnly 'true' \
    --after 'gYDkSMJY6Ff3OfB7' \
    --before 'BUIkB3RHTDNEGk6W' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 260 'PublicGetUserBanHistoryV3' test.out

#- 261 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nzk1zcA3kZY41Hc6' \
    > test.out 2>&1
eval_tap $? 261 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 262 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'k9ch2UFh1ARbCrAO' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserInformationV3' test.out

#- 263 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '47xXCI4y1ZskNwH9' \
    --after '0.8455502131627043' \
    --before '0.9004586811957914' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserLoginHistoriesV3' test.out

#- 264 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'r8T2AenLgoBW8Qcn' \
    --after 'xJ6O7rIFMP0r6HsP' \
    --before '8Q4KdNHviVIUYA8b' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetUserPlatformAccountsV3' test.out

#- 265 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'A4pgOWxh8eUcz39Z' \
    > test.out 2>&1
eval_tap $? 265 'PublicListJusticePlatformAccountsV3' test.out

#- 266 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'YZbWuCjnP1kjmlcD' \
    --body '{"platformId": "ZusNgZ9co4cQRU3C", "platformUserId": "pPLMVv5ofd8OG85Q"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicLinkPlatformAccount' test.out

#- 267 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'tbTuwMn4BbYOAKAa' \
    --body '{"chosenNamespaces": ["1eFzHp8eoLfKi5pW", "b3tb8iAIbUkO2onu", "1ElxbANtU4f3lnOH"], "requestId": "G2iJfsRyKzkYmcDD"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicForceLinkPlatformWithProgression' test.out

#- 268 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CfzLysxxyUCdjLLX' \
    > test.out 2>&1
eval_tap $? 268 'PublicGetPublisherUserV3' test.out

#- 269 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '4BVLpiX3BEbWzOXc' \
    --password 'ISLnxGspr9TQY2Ue' \
    > test.out 2>&1
eval_tap $? 269 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 270 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'rkco62eSRpoMudFw' \
    --before 'Ml5hwaVNAOohEbSM' \
    --isWildcard 'true' \
    --limit '87' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRolesV3' test.out

#- 271 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'VywDHYN9v992zdh3' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetRoleV3' test.out

#- 272 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 272 'PublicGetMyUserV3' test.out

#- 273 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '4zbbXAoJjdVeOA5s' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 274 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["Bb3di7mtavEx6ewp", "gwtiG9BU2m3xtT47", "I3tQ6zVr1BMsR4Lq"], "oneTimeLinkCode": "E0uRhK4fDBFezsJH"}' \
    > test.out 2>&1
eval_tap $? 274 'LinkHeadlessAccountToMyAccountV3' test.out

#- 275 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "4wYywD1hjnvvppDs"}' \
    > test.out 2>&1
eval_tap $? 275 'PublicSendVerificationLinkV3' test.out

#- 276 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'MIAb14YLQp28acl2' \
    > test.out 2>&1
eval_tap $? 276 'PublicVerifyUserByLinkV3' test.out

#- 277 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '3WhzocVaVmQZjaob' \
    --code 'sHrBzQWqaqvd4em5' \
    --error 'zWKze6Xev60OzUHB' \
    --state 'DUM7b5CfWrQUh8H3' \
    > test.out 2>&1
eval_tap $? 277 'PlatformAuthenticateSAMLV3Handler' test.out

#- 278 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '1xMJhrWP19rlf76Y' \
    --payload 'vhwfJvdjGrQOjybI' \
    > test.out 2>&1
eval_tap $? 278 'LoginSSOClient' test.out

#- 279 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '5Zbu7iUwgUxcRUqN' \
    > test.out 2>&1
eval_tap $? 279 'LogoutSSOClient' test.out

#- 280 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'QY6G02Jbz9a2Wk5w' \
    > test.out 2>&1
eval_tap $? 280 'RequestGameTokenResponseV3' test.out

#- 281 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AslG4MfmMZnQI0u7' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetDevicesByUserV4' test.out

#- 282 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'WI2HX7QPCUdZGpGQ' \
    --endDate 'Pr1yN6WPbHnLDA3j' \
    --limit '77' \
    --offset '46' \
    --startDate 'Uog0XnEcyRgf0Q9O' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetBannedDevicesV4' test.out

#- 283 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bsYW1svwSWnfgI33' \
    > test.out 2>&1
eval_tap $? 283 'AdminGetUserDeviceBansV4' test.out

#- 284 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "bSieqPvfkjAp28Cg", "deviceId": "xQNEl0hesU62Zzn7", "deviceType": "782FZsulM9RhAY2Z", "enabled": false, "endDate": "E3JZObxc770fiUOZ", "ext": {"qzAgVTR6In5rlH9k": {}, "jfXM5w4pQAlujPyc": {}, "PA073AlW24o4MPqh": {}}, "reason": "Bnih0kHLupbAzEF2"}' \
    > test.out 2>&1
eval_tap $? 284 'AdminBanDeviceV4' test.out

#- 285 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'sxBxJwfO6OGuhkwM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 285 'AdminGetDeviceBanV4' test.out

#- 286 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'dlvXZtakY5MNNrHU' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateDeviceBanV4' test.out

#- 287 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '0EPoKSlHnKgaxGzm' \
    --startDate '7iTscHl1d7GxcLqG' \
    --deviceType 'RY43mSVD6cZWejt4' \
    > test.out 2>&1
eval_tap $? 287 'AdminGenerateReportV4' test.out

#- 288 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceTypesV4' test.out

#- 289 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'HEPXvqAvgDqVw6J3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminGetDeviceBansV4' test.out

#- 290 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'UrvwcfN86uSnbSxN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminDecryptDeviceV4' test.out

#- 291 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'IRaYgJsA0GK6vO0Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminUnbanDeviceV4' test.out

#- 292 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'rm4ogS5KlGMsVoWj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 292 'AdminGetUsersByDeviceV4' test.out

#- 293 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 57}' \
    > test.out 2>&1
eval_tap $? 293 'AdminCreateTestUsersV4' test.out

#- 294 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["VpNWcGThUv3vtnA3", "xbznBZkyvF2HpKc5", "XyoBybegaOZXMn83"]}' \
    > test.out 2>&1
eval_tap $? 294 'AdminBulkCheckValidUserIDV4' test.out

#- 295 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AA5mMlWmBEtVYc1m' \
    --body '{"avatarUrl": "vZG3TCTYJ0ojwL5l", "country": "rn2D0hHxz0FMcaYK", "dateOfBirth": "Y49G9s04sZdGXgzs", "displayName": "JgqdU8gZhnuvJCFI", "languageTag": "ZKZBO1GWzA3B9oY6", "userName": "WgmJkTDwcIHFn8op"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserV4' test.out

#- 296 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jtEfP8FmNLUMCWUX' \
    --body '{"code": "hwzBi2KN1cLcQD2o", "emailAddress": "BudccInmoM2lpxdO"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminUpdateUserEmailAddressV4' test.out

#- 297 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'up8jk4KjpsA6xYYp' \
    > test.out 2>&1
eval_tap $? 297 'AdminDisableUserMFAV4' test.out

#- 298 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '3Us539lfDoAMNK7G' \
    > test.out 2>&1
eval_tap $? 298 'AdminListUserRolesV4' test.out

#- 299 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'qmrubmyPdizj0v2Y' \
    --body '{"assignedNamespaces": ["QruYFZbGcwPVmdH6", "fL2mMxgVgjiAln66", "VnKV2n1TwzKUWJk3"], "roleId": "GseYqqE7hDC6JwT0"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateUserRoleV4' test.out

#- 300 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'SqNVBOQopSRZehyS' \
    --body '{"assignedNamespaces": ["b07c5iuAchM7K00b", "frw2WvjKih8Bn6Kr", "vZvum4qw9JyApGdx"], "roleId": "jQiRAjXNKg7ktv70"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminAddUserRoleV4' test.out

#- 301 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'dPwetv4jQP6OeRYh' \
    --body '{"assignedNamespaces": ["zoUHftQyLOL8xY1A", "GhHL5bNMN49xqYb0", "4GeiAuk5znoqBDMn"], "roleId": "DBHU523rZEBPsHrL"}' \
    > test.out 2>&1
eval_tap $? 301 'AdminRemoveUserRoleV4' test.out

#- 302 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '40' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 302 'AdminGetRolesV4' test.out

#- 303 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "wH6sAXl2kvHYZSII"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminCreateRoleV4' test.out

#- 304 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'B1R97pGZJGpPDAY2' \
    > test.out 2>&1
eval_tap $? 304 'AdminGetRoleV4' test.out

#- 305 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'qZKbAY49vZaU7BvS' \
    > test.out 2>&1
eval_tap $? 305 'AdminDeleteRoleV4' test.out

#- 306 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'f1vHzWEYn4l0moYy' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "G5huNKRPcWGeR63s"}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRoleV4' test.out

#- 307 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'ryYCl3ST30do6dCH' \
    --body '{"permissions": [{"action": 2, "resource": "DLYYj97kxuvCPKiI", "schedAction": 37, "schedCron": "0jyWiiH1UJW1nqsH", "schedRange": ["WFWwqWiIqzjTkzWk", "QfIaAvyuHlwx03DI", "hUVSiDtPHvop5yvG"]}, {"action": 59, "resource": "EwBZtUdW2b30YJGu", "schedAction": 80, "schedCron": "UZFepNDl8Mv5TgcC", "schedRange": ["5lxtKB9ei7fBtuOQ", "nZwuagn5c7oxdvUU", "xN3YePl5XTlJa6Vq"]}, {"action": 18, "resource": "rkg4gvOYSOFkLHla", "schedAction": 75, "schedCron": "jtHsJ57FKzR9gPWL", "schedRange": ["NI7MTOpV00ZZbHbH", "cxLpkj9Zk6wjM0hW", "PY8wVEBSlvUOpFX5"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateRolePermissionsV4' test.out

#- 308 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'lApOU5nzs7BfgFp5' \
    --body '{"permissions": [{"action": 43, "resource": "jB20EKrdiZH7bJcM", "schedAction": 60, "schedCron": "RXeKSF4rItIIrS7x", "schedRange": ["aXFVjExBNxPNXUcR", "dd1iPMHe2INjSUYE", "ELLgLautoM6qqzXo"]}, {"action": 53, "resource": "TSz5bvkTtUEDRiiO", "schedAction": 76, "schedCron": "nFrrj7xwOBVFo0Uv", "schedRange": ["oXS1w3CSvkwKDYZt", "UNpIHNVI0UWnyWFD", "hoXTTb8aoyusAjoE"]}, {"action": 39, "resource": "RDRwoRQnluKyx9mP", "schedAction": 52, "schedCron": "1R7aj6DRDocYiMRJ", "schedRange": ["LwDZudFRRM3iLVy5", "kAJHRIKnlO63pMc2", "nGgv26D9l6SBMdoN"]}]}' \
    > test.out 2>&1
eval_tap $? 308 'AdminAddRolePermissionsV4' test.out

#- 309 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'rLqyv7wDAFIXfp8m' \
    --body '["BlnaSVc3emldWROp", "VMCYs6Jwoz3Ls5Me", "H3NjkaIqlBM7Uwc6"]' \
    > test.out 2>&1
eval_tap $? 309 'AdminDeleteRolePermissionsV4' test.out

#- 310 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '8DhyaojDdw68Q95X' \
    --after 'bvyrHV9PBQMQhIv5' \
    --before 'C7BxoQqltEGTUkkx' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 310 'AdminListAssignedUsersV4' test.out

#- 311 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'BevhN0Nb3KawwOlQ' \
    --body '{"assignedNamespaces": ["RUiQcnO42o7s4nSX", "VtDq1ND9m2qPbMBM", "m1NihCexRYcisrEW"], "namespace": "6CHFpe5NUYoS9mYO", "userId": "v1iltmzYcrSsZPsT"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminAssignUserToRoleV4' test.out

#- 312 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'QKINIzNKQNc5PUeS' \
    --body '{"namespace": "LBm2DSQ5sbZ6qpKQ", "userId": "CHz4HHUg6tkiCA3K"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminRevokeUserFromRoleV4' test.out

#- 313 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["75NQjYQ8par34Dmh", "CsBdhfx0gM7u9eQu", "OUXVrZGOaDbNVTQ4"], "emailAddresses": ["hXYQmIxPfZTUhOcR", "aX2wO2IzP7I1M4wo", "t7NFR7wrlUH74teD"], "isAdmin": false, "namespace": "RJtUp28Huc6244pu", "roleId": "yjM2gaak2fFf0qMF"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminInviteUserNewV4' test.out

#- 314 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "HHHwhfNvVRnW074g", "country": "B3fkZuutt7S35kxq", "dateOfBirth": "2gsCT8P8AwO3HjYA", "displayName": "QlDdkb1U9dN7uCdC", "languageTag": "evUsY1l9t4AIKskO", "userName": "LL5u3TOiEGpokRAB"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminUpdateMyUserV4' test.out

#- 315 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 315 'AdminDisableMyAuthenticatorV4' test.out

#- 316 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'J6r2KSMcQFUHr1VN' \
    > test.out 2>&1
eval_tap $? 316 'AdminEnableMyAuthenticatorV4' test.out

#- 317 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 318 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminGetMyBackupCodesV4' test.out

#- 319 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminGenerateMyBackupCodesV4' test.out

#- 320 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminDisableMyBackupCodesV4' test.out

#- 321 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminDownloadMyBackupCodesV4' test.out

#- 322 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminEnableMyBackupCodesV4' test.out

#- 323 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminSendMyMFAEmailCodeV4' test.out

#- 324 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminDisableMyEmailV4' test.out

#- 325 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'osjbbCVsVpLn6Mqs' \
    > test.out 2>&1
eval_tap $? 325 'AdminEnableMyEmailV4' test.out

#- 326 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 326 'AdminGetMyEnabledFactorsV4' test.out

#- 327 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'PVn18eyNIxo9WLhl' \
    > test.out 2>&1
eval_tap $? 327 'AdminMakeFactorMyDefaultV4' test.out

#- 328 AdminInviteUserV4
eval_tap 0 328 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 329 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "aLq4tuGwHSYHGtxa", "policyId": "1bJ3lWixa8UPxZkh", "policyVersionId": "MfpzAbPk6aDvmgs9"}, {"isAccepted": true, "localizedPolicyVersionId": "ZRAPwptkZlxNT8S3", "policyId": "jlUf4u85VZ4imlu3", "policyVersionId": "1RWnavwgB42333Xs"}, {"isAccepted": false, "localizedPolicyVersionId": "NXA0h2sQBzRwqTJ5", "policyId": "rbFyO3ZLtIPS5YOR", "policyVersionId": "sg8byQkzhK02HqKV"}], "authType": "EMAILPASSWD", "country": "4nbipUmXS5xDcjHq", "dateOfBirth": "RKUz7L4ciOsjPv1T", "displayName": "9LjL6FdYxWp3Ejdy", "emailAddress": "qWST4HnfrUaFdlkw", "password": "PLwLz95HIv1KZKC1", "passwordMD5Sum": "kkp4wy1ecp3HcYGz", "username": "MNF7xC5Z3vpQ5X4A", "verified": false}' \
    > test.out 2>&1
eval_tap $? 329 'PublicCreateTestUserV4' test.out

#- 330 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "PKiSxS08Jt2Dnlo1", "policyId": "MicEBMbONULXgSkY", "policyVersionId": "1B3dfKat12tuDFSd"}, {"isAccepted": false, "localizedPolicyVersionId": "MaAFc1UteJ6OfbCa", "policyId": "0mG543eiqB7oxeU9", "policyVersionId": "mrQSpf8Fya9AnYEH"}, {"isAccepted": true, "localizedPolicyVersionId": "CuxmBsYew6SHr4Dy", "policyId": "3hZhZmnNYeWQ6PN0", "policyVersionId": "bMiAdMcRvRNlI3ld"}], "authType": "EMAILPASSWD", "code": "uSfIhTbA220Ryone", "country": "C1YX27WI1v0MEcSW", "dateOfBirth": "hnYXp9ondBXOvUzg", "displayName": "cxrQlwL0nhWkXeOq", "emailAddress": "tFitSCeusOBHhAiG", "password": "Uj4ktZyynCV4ce6C", "passwordMD5Sum": "erI9xda7lVYKezdT", "reachMinimumAge": false, "username": "uItTwPuM3MZ6jo5C"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicCreateUserV4' test.out

#- 331 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'LiGDUDz7F9Tsesbz' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "9VUN2N0elzkABAev", "policyId": "YqJGSiyK7NTqk4I0", "policyVersionId": "WJK1IyLFGMxxC9qL"}, {"isAccepted": true, "localizedPolicyVersionId": "yvZ4vqRZZ6U4diO3", "policyId": "8q0LFZybRR7C4UIu", "policyVersionId": "nqB1TNWdNOZNLAZo"}, {"isAccepted": false, "localizedPolicyVersionId": "R5kxfcmVe6jqkn9t", "policyId": "GjTadjZT0mJPed9y", "policyVersionId": "qunCkkq3FmJwxjog"}], "authType": "EMAILPASSWD", "country": "CXgLBx7NGz6EtuKi", "dateOfBirth": "mK4xH2v2QycBHKzd", "displayName": "FmnQVoxRWxgAGh2S", "password": "ZbdWg5txXYpFOI7u", "reachMinimumAge": false, "username": "0jcJAtkbB2bsi46P"}' \
    > test.out 2>&1
eval_tap $? 331 'CreateUserFromInvitationV4' test.out

#- 332 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "xlsH9M471vWXNPTQ", "country": "FNfmqWlbjsOkDFQB", "dateOfBirth": "Pv2BI6khQrrZwLRH", "displayName": "jtP1SxBlRwZgGmRX", "languageTag": "bNxLdmJChg2OfBj4", "userName": "1ccgALnhYZApVKzv"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpdateUserV4' test.out

#- 333 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uNAvgD9daKVUsXkT", "emailAddress": "esrN9N8WvizfukG6"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpdateUserEmailAddressV4' test.out

#- 334 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vsCOQwaK3LACmWQN", "country": "ZFxe3Yl1TfzlmpKH", "dateOfBirth": "AKZfGg4JP2N2akVB", "displayName": "XIvJzuy97uA7tH1Y", "emailAddress": "bPKKgLHQMZKkOV7Y", "password": "2vybuBZZJbtV829P", "reachMinimumAge": true, "username": "4WHAFfrtx9KRGpE1", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 334 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 335 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "MWxYm1coeMI1EHV5", "password": "JT76ZtdNMJoSWw7a", "username": "Et5y66BU9nglpLz8"}' \
    > test.out 2>&1
eval_tap $? 335 'PublicUpgradeHeadlessAccountV4' test.out

#- 336 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 336 'PublicDisableMyAuthenticatorV4' test.out

#- 337 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'dZ7xDF78iABYKbov' \
    > test.out 2>&1
eval_tap $? 337 'PublicEnableMyAuthenticatorV4' test.out

#- 338 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 339 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicGetMyBackupCodesV4' test.out

#- 340 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicGenerateMyBackupCodesV4' test.out

#- 341 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicDisableMyBackupCodesV4' test.out

#- 342 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicDownloadMyBackupCodesV4' test.out

#- 343 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'PublicEnableMyBackupCodesV4' test.out

#- 344 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 344 'PublicRemoveTrustedDeviceV4' test.out

#- 345 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicSendMyMFAEmailCodeV4' test.out

#- 346 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicDisableMyEmailV4' test.out

#- 347 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'SfhMNZ5yhpKjklWb' \
    > test.out 2>&1
eval_tap $? 347 'PublicEnableMyEmailV4' test.out

#- 348 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicGetMyEnabledFactorsV4' test.out

#- 349 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'e9Qb2EifkdUCyYcS' \
    > test.out 2>&1
eval_tap $? 349 'PublicMakeFactorMyDefaultV4' test.out

#- 350 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "rgbVtZBXSiLduKnk", "namespace": "ciqXS0MAQKcXXDhw", "namespaceDisplayName": "W1CZ8tgC3dauHA5k"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE