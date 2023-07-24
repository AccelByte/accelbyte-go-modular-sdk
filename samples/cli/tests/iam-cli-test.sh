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
echo "1..352"

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
    --body '[{"field": "0lpAPqRPS9MHhGau", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["FXz4V30UclqWUTMW", "zItBxDo4GgVVs0gy", "NiU0nFGJsrIGNWCk"], "preferRegex": false, "regex": "3YhDtc1VujDdsCJ4"}, "blockedWord": ["X03Ikbfr5hUZLerq", "OmIei7lTA0MrUfw4", "Km0P1XEPq28JhU3X"], "description": [{"language": "d1V8y1pZt5MxjQVF", "message": ["D8XXtWbpATGJthea", "jtQiNUfPThSi6DLa", "5nJsRAti2pxGtrMx"]}, {"language": "dr7qOvAq6oodHOTN", "message": ["d6ZgAnnCQogODgUn", "u2lsFnR4TMumaJqI", "NiXieX1cEtttbUly"]}, {"language": "5bHnSFUa0n1z7wZU", "message": ["8olSNyKCgLsVZsKR", "DmXphPVoO0qhJZ3l", "Tn0gI2gqok0I9suI"]}], "isCustomRegex": false, "letterCase": "p4cGRfeLDiRx8QX8", "maxLength": 12, "maxRepeatingAlphaNum": 35, "maxRepeatingSpecialCharacter": 58, "minCharType": 48, "minLength": 40, "regex": "0cG0o7aTjXdMjj80", "specialCharacterLocation": "iKrd1a4wsAKPF1cr", "specialCharacters": ["fdoTERONxrclhQNp", "HF8gieRtceIl0qth", "D35NMIVDfkJhjXyw"]}}, {"field": "gcfox2BAnwdtHt26", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["0biU4xiM3ITY8CzX", "t7YxABw7qUdEusmp", "rgTNSfn5bJLqVCPK"], "preferRegex": true, "regex": "32hdaSJSxuaBSbiX"}, "blockedWord": ["S1k80yd5HhCPese4", "aEf6GvcsF6y0GFtE", "RBRHsCbQIuHWoan2"], "description": [{"language": "yhxEL9R0Cu18xZli", "message": ["1gYYCPQm6C2x3wPC", "Un7jJAoJhhFRI94x", "KbKhpiQwl2e6AWqr"]}, {"language": "jCxk4fztaovEXbd5", "message": ["zFYorlWAxJ0TmLsn", "dk1j77tFzhnbPQ6u", "sdemBmdkKt99gV3Y"]}, {"language": "xtMFaiEBwGv349GC", "message": ["NgXwlVexrSNgBDgL", "IKxzNXiUX4fR0LdG", "ei6hMvOZ3Cx9LDu5"]}], "isCustomRegex": true, "letterCase": "kmeJBsWCPTEYzgAO", "maxLength": 61, "maxRepeatingAlphaNum": 59, "maxRepeatingSpecialCharacter": 37, "minCharType": 78, "minLength": 33, "regex": "q1mhyQ23WszdUqIO", "specialCharacterLocation": "VHXaoMMV1U7MQfHP", "specialCharacters": ["4Ux0kma4EdeuCRMK", "THv6wUWPhR6aEV5y", "frp0FXLyrlRQx2mh"]}}, {"field": "scoTNiBjyAVTJ5Hg", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["qRbSen6DV1VFga9L", "2teUDfzJD2TIPOF2", "80cDeWWSifMhiLxY"], "preferRegex": true, "regex": "Lv9pH1mjkroqutBd"}, "blockedWord": ["hYL0CgDZqDHsNv29", "wXCpTN6v8ivDPk3h", "lWQY2GpJHEuhB2la"], "description": [{"language": "JvCAvHUMTbQKOreq", "message": ["aFuXaHU4ayYaRIZt", "jjNPXPCeZ99NlBwh", "5Up1uLIfxOuynHjw"]}, {"language": "ma6rsd18qU5Sawjj", "message": ["8RfKVgRkiwBUdSyc", "43zr92CMgzilJlV3", "CsdsMHNf0HHejBBJ"]}, {"language": "B7on9JnAx0I6sUNi", "message": ["QytKjf0NKxadOP8U", "pGsVc5e37eVccKg5", "N0zZu4rs7DDW00fw"]}], "isCustomRegex": true, "letterCase": "MyBJOthELpj3QnT0", "maxLength": 25, "maxRepeatingAlphaNum": 56, "maxRepeatingSpecialCharacter": 37, "minCharType": 72, "minLength": 95, "regex": "Lz7LZU2KLCme8q7I", "specialCharacterLocation": "KBnGDgt2GBtdmfCS", "specialCharacters": ["Ktc2cT2UYUFO4D7a", "619hHfDRCgRIA8d8", "tRmSvLwIICh8QdI1"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'QkyMTcpVSseW5aIe' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'VpBrR84al3BXWDxq' \
    --before 'tb2DlhdEjDkJxyRb' \
    --limit '60' \
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
    --body '{"ageRestriction": 66, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'PyBg6fzQdgbDhpni' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 78}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '9x0DSc9yokskJXpy' \
    --limit '10' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "rwR9ZHmiug2yPBNz", "comment": "pS66zPZbutMc8Fnt", "endDate": "sa64McMyNvBNyJYP", "reason": "lwKsmQuXU7IPgFD4", "skipNotif": true, "userIds": ["uGjo1x73mxlLKu8D", "1i6mIazv84GxZfWY", "h1zePe2uMpWTD1KI"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "Bd515xOsVTDbJAvo", "userId": "rp6ZC7NHcNMZ9YKw"}, {"banId": "jnKlt6xuWFWYkiQx", "userId": "eprKw0VkwBFDR82W"}, {"banId": "xrgYaF1ZjayGcm2s", "userId": "6CF50R8iFqbkq2Bs"}]}' \
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
    --clientId 'L5blM4sMomDXkLY5' \
    --clientName 'tntgjjndzJGSjyZX' \
    --clientType 'Yn6orMk4SAADXE9q' \
    --limit '28' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["NAzUMdspcnvUhrYK", "Bsf818gGkvsv51zW", "vumI4JUoP4Kor4w9"], "baseUri": "QaSZLd6x7yhuUCFt", "clientId": "5sxXz5UasFSJEllY", "clientName": "2GK9K947QTZzsWhz", "clientPermissions": [{"action": 77, "resource": "y84iM7MluxRmJ4Oh", "schedAction": 72, "schedCron": "sc2q3mz7xf7M7BP5", "schedRange": ["UQsoTbDAB7l0qPKO", "VNOe6rqHp0K5iQQz", "1WTEoxDx5MLpumLC"]}, {"action": 3, "resource": "twgYdXmJhXTwlTJY", "schedAction": 6, "schedCron": "yui3nynpq5mfmFZv", "schedRange": ["k0JWKpqyOYIeflxb", "SD0q3JFHsrhtN9zC", "OBeYSwgPhv7C2r89"]}, {"action": 35, "resource": "J4vFhApcFDVBdoiU", "schedAction": 65, "schedCron": "8wePu8uKcp81dUZu", "schedRange": ["q1qEFVrX6Z6QKftf", "xwRnJj1oI9zrg0B8", "fEuj5gkZUJ3Jn1LB"]}], "clientPlatform": "sP8hMpNMJ9J8JoCs", "deletable": true, "description": "0P2lvWNCs1OBAZmo", "namespace": "oNBtfpf5fCtWSFGt", "oauthAccessTokenExpiration": 40, "oauthAccessTokenExpirationTimeUnit": "36nmnI9lQm3oaGUI", "oauthClientType": "d2lqCessL79f5t9P", "oauthRefreshTokenExpiration": 100, "oauthRefreshTokenExpirationTimeUnit": "KiqmrR8oju8cdXkY", "parentNamespace": "PvaQ196gjdrimyxO", "redirectUri": "IPfYaHXbcwFafscC", "scopes": ["urcnjPkrON2cvD3L", "sfiP9GsFfef87Jki", "9MhOhSTNRY56etia"], "secret": "6TqzqXs0M664TrTT", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '5rrRWrGxoF0pLN1S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '5ZtoUmo316kCxW1K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'eJ1QYp8VhnSI8wKg' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["p8TroRmBOI9i0C7v", "6ZP5UzbBSulMJpW5", "j81dBcTodrR2GBVN"], "baseUri": "OvOMtErdSUhf8C3G", "clientName": "10uddl3WIOjRjpRu", "clientPermissions": [{"action": 44, "resource": "1dhN5Mwma1xn9Z4J", "schedAction": 11, "schedCron": "sUt0LiH9vdVVcEyI", "schedRange": ["9YmWh6LtPiQ3uVqm", "I2W6gpOdJgUsWizv", "X55UZ0mvbkZlHwSB"]}, {"action": 59, "resource": "Iur4bop3jkzPGy3W", "schedAction": 65, "schedCron": "rmamXLTxHJbGd225", "schedRange": ["JnwJxZUnLli27RHv", "cZrJgsT0skqH51sk", "tgB26cB6jnwavOew"]}, {"action": 26, "resource": "MERhyKRMaQiuAI9m", "schedAction": 82, "schedCron": "lvB3py2i4idPnSpc", "schedRange": ["JJghii2Iw3kOuy85", "QSZSpPPDX1YbmUN1", "6WxjIp8dxg1JBUyw"]}], "clientPlatform": "hMBPjNLJqmfHcUou", "deletable": false, "description": "ojlgtTuFZEwGEp2x", "namespace": "qNCRaSuVUuwrIwHe", "oauthAccessTokenExpiration": 38, "oauthAccessTokenExpirationTimeUnit": "I4CLG8buOY89Dplm", "oauthRefreshTokenExpiration": 62, "oauthRefreshTokenExpirationTimeUnit": "I71nBUUucG3K7DG7", "redirectUri": "6jxq3B2FPj6q65Wb", "scopes": ["9DgPxkcdaRympBlG", "LP2itebBg8tr15Zj", "trEynD2xX8zqQ4kK"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'OHPgjI0vGvwhyRxk' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 51, "resource": "sFOPeZFTGjC3J55K"}, {"action": 16, "resource": "7esXTxTUGN7ada16"}, {"action": 97, "resource": "mBB8lm48Ki7xey5G"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'RicftoRgwe4tj89w' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 32, "resource": "WU0150nSNG9frlJP"}, {"action": 65, "resource": "njRIo9VvzSocyKTv"}, {"action": 38, "resource": "JltctZKwGYhr0Fgp"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '93' \
    --clientId 'g8quwvZGifhr3Vpg' \
    --namespace $AB_NAMESPACE \
    --resource '8u9AntUDGWiVuZq6' \
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
    --limit '3' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'W5hpYo4UecnkbV8z' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3hers5u3ksxZEEcw' \
    --body '{"ACSURL": "qgDXkYpvRrUVQ6c8", "AWSCognitoRegion": "GuLLQiUJNOdLSMkU", "AWSCognitoUserPool": "xpwzvfM9Ol3iSq0a", "AllowedClients": ["u4uNDf0pwgsG7t4f", "UiNHUG1KU1R245Sj", "HZwxwhpXTnoPO3Vw"], "AppId": "A5p2ikAOdQSnsoGH", "AuthorizationEndpoint": "rU2GQ9ihuj1jqu2Y", "ClientId": "9yTtpJAUUKzkG93f", "Environment": "HPbgrMeJ8kvMxyb6", "FederationMetadataURL": "qiqhXOcyvbtIEVCm", "GenericOauthFlow": true, "IsActive": true, "Issuer": "T9VkaU00BM2sQpny", "JWKSEndpoint": "taj0EMFNLmG1aYCl", "KeyID": "qFvGsnaG4iIZU9P0", "NetflixCertificates": {"encryptedPrivateKey": "liqRzgcEps7VgsNg", "encryptedPrivateKeyName": "tgz3X0tEDdKUwGbz", "publicCertificate": "j37NQ8R1Mqpxlkgk", "publicCertificateName": "qWAx3ZgfEnFU7OHh", "rootCertificate": "XdZy81wrFl18k69H", "rootCertificateName": "LVhlJZSqzRNlv2cP"}, "OrganizationId": "uCSbWi0GYIRzkixr", "PlatformName": "HNp24E3IxnVD8jw9", "RedirectUri": "70x0uaDFKNkT6XcE", "RegisteredDomains": [{"affectedClientIDs": ["MvpC5Eil82hyajQD", "pdXWyiZP8ovwR8kA", "ZrNuFxDDtAA4N5SM"], "domain": "Eun11pNZ9k0FFdcT", "namespaces": ["DEHFHDMvbvEHa4nF", "adcoFVvMMl75J5nT", "JongO0O7wXLtO93F"], "roleId": "7h1wEmF1c4RCULot"}, {"affectedClientIDs": ["Mit3eTmbzNIaNByx", "rnvRVmnvHIhCNuaz", "rvmH32SQ0VVRbdRS"], "domain": "xhXPcNdHnlDK73Gn", "namespaces": ["T4yKELPxXg5Pe4Z5", "Lh534cTJnCxgKw4v", "7sTHbIbMlkmdvXx2"], "roleId": "ybNDKUq8EAze3OiZ"}, {"affectedClientIDs": ["7wQCMPkesNEJ0PGq", "b2eHY6l67CkQMZA5", "QHJY8T8GTzx0SsNI"], "domain": "p1NTh4bAgfUJcs4N", "namespaces": ["wJQJhWujopA8LgA7", "wRtcme8I5DJvtmjy", "oSZun6rXYqHWJelU"], "roleId": "IyOHoxuif5lN49ED"}], "Secret": "4i1cPgh2E7dmK6dv", "TeamID": "rDC6xmJvV3SKx2eH", "TokenAuthenticationType": "45xDgLzjiw3XYbDU", "TokenClaimsMapping": {"JHfCDVeVThmS14VP": "M9uBQMKjGokz2Z86", "gmXqo8sKWwqX0zkv": "PfmhkpcNnw1m1SM9", "1f1pjGzCLskkfrhN": "VUS3fzlVDEkuSJVi"}, "TokenEndpoint": "4GX6fjQhMnzFUQOP", "UserInfoEndpoint": "oF80L8bYMdbvm3jP", "UserInfoHTTPMethod": "zfBj8U7CH5sIM7pI", "scopes": ["yHkr1vim8PeJZQY8", "6s3zy8OjflorC7xZ", "daqCKWoETGjjBSwP"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'U2t4LdMkeSieMECJ' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5LX30MN5tMU69Bqa' \
    --body '{"ACSURL": "YXwFsglIHeOm0oq1", "AWSCognitoRegion": "zbKzNFhJR6aVbDZG", "AWSCognitoUserPool": "gSnfPnsasLvIHWqN", "AllowedClients": ["07C1B7dgNOKgjBBo", "9xejC1DOP8SH6reE", "Jn6z8jQsLf6zSDKA"], "AppId": "2AhSHlLe6RKGRfhl", "AuthorizationEndpoint": "YB4Z527EEB2JaAvs", "ClientId": "siTXe3il0MxjXqR7", "Environment": "RdGYsjFR1Ok7eo7g", "FederationMetadataURL": "TcUpkBnDWnqelVXX", "GenericOauthFlow": true, "IsActive": false, "Issuer": "HYCacMeYpbgRok5q", "JWKSEndpoint": "fhJAnq06G2KC15ID", "KeyID": "elvLo9NfBNNvUNIV", "NetflixCertificates": {"encryptedPrivateKey": "FMl4BvmJ9QelBAs6", "encryptedPrivateKeyName": "GZLfH92ToIehH0W5", "publicCertificate": "nyz02eq51rxm8kJu", "publicCertificateName": "baYbnbZP2VzQkUV3", "rootCertificate": "ElK0LBu5alGvTh4x", "rootCertificateName": "ppRkJJE54WWjV2h2"}, "OrganizationId": "rCcy8lX0cjfYutZ3", "PlatformName": "Jf2KRMdEG3mh3GGU", "RedirectUri": "8jCLhnDMuy69Q9yw", "RegisteredDomains": [{"affectedClientIDs": ["LaLvzq1aaLIizt55", "6bkHNojmeXHs0snF", "jIgOf2xeG9Zhz90b"], "domain": "cfcafYCUi07vCP5O", "namespaces": ["iqddHFgFnRX4WubT", "o9W17635wwKSlIfg", "ierpa8aqsHBQxwHU"], "roleId": "Ef1KRoWuvEa5Tf5E"}, {"affectedClientIDs": ["ldko7crdo92NG4Mu", "HjGoUMmYrWlrg2gH", "cnAS544qqNpNLsj4"], "domain": "BFLpuM0tJzpMZo5m", "namespaces": ["LEUfdks5vhKiBax4", "2c4lpk9PgV01f8aS", "2nsILujbAe1XlWob"], "roleId": "qBgXedZ6ZbwtGmDJ"}, {"affectedClientIDs": ["0Ckm3LxHzrNcy2P7", "sj8wnDx4LulQIrEd", "7jJxkUfqkjpjn1li"], "domain": "TuBJE4MQ6n2v2X7H", "namespaces": ["QximqxbBwLWbSDEP", "EfyFrBaErjD06cRS", "4M3ClNPNYKiKbSpI"], "roleId": "V6pjq4MXhvEZc6iO"}], "Secret": "EehchJZPQvCFDsCJ", "TeamID": "F0iFENwntFsXF3Kp", "TokenAuthenticationType": "Jt4TYdbho5xwNfpA", "TokenClaimsMapping": {"mQDkQChMF2RgsHeT": "zJWCUvr3uqSZ79Xx", "7aPzfWqQAL0wjOb8": "LOpq7jizbll5amDh", "exw6k0wVPm5JOYu2": "kwe8EZmR6rSqwATN"}, "TokenEndpoint": "RoxR9LXH0nH1KOyW", "UserInfoEndpoint": "3K5rZjVTVbmsZMYK", "UserInfoHTTPMethod": "GiotNXhqJAZTBxTT", "scopes": ["bKYLv20DbX2CUCIz", "vuzAr6bfkb8B5zkt", "x82sOxhKPofKKAud"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jR8rofVSMKhO3LoG' \
    --body '{"affectedClientIDs": ["wbABlH2S3mg0DtxR", "dqH0BxO4zK7Kijyu", "9iQQpz31jAbY0tHL"], "assignedNamespaces": ["iumlN3Tn6O3lgha8", "UAyhDSPW0AuapliH", "i2Ki9jo9zKlPuQla"], "domain": "JPcoiJmWJXiaPKTq", "roleId": "cy3n8eiycDU7zUTQ"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DUhT2bhSj5LxvZ5G' \
    --body '{"domain": "rLj7L3O3KyvopU8d"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'uxEyDRxRYcceWEVJ' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'p8j6RIVsz5lcCoQ9' \
    --body '{"acsUrl": "aBnv5KMJHvQdTK3j", "apiKey": "K0nxj1GRATQUGpZo", "appId": "VhZ3qPSdHulSnBmk", "federationMetadataUrl": "mHC2B3ZUfDYCNLsX", "isActive": false, "redirectUri": "jW2kLZql9twN47QE", "secret": "QhoJm6vuMrhycEsH", "ssoUrl": "iJJhkg2P6h4gJH8m"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'i76vxMgVCTdRouqq' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Kh9f9273A6flNDqY' \
    --body '{"acsUrl": "zTAbheF3KEWIatSM", "apiKey": "xg7cKoza2wNrgfYq", "appId": "N4cxe4u1vOm9pc8c", "federationMetadataUrl": "NBrlIBf3X89YUajK", "isActive": false, "redirectUri": "af4rwfr9FNcGnND1", "secret": "63TgzAeU08XPprAz", "ssoUrl": "daE586IxRNTHSBVj"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vHtrhLImXvXHExo2' \
    --platformUserId '4qG7Z4sItLpyNKtG' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'T9l37v5Rhpr9i4no' \
    --after '2' \
    --before '41' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'pP0Bqrfy2qXiffD1' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'cJYFwU5u00GeOpQe' \
    --body '{"bulkUserId": ["N0aDYyvI4vLoKBbJ", "hSTrZE5IgrYrcrlW", "xy6XNcTZjqfd67vK"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminGetBulkUserBanV3' test.out

#- 145 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["s5QuiPpPvcRMNvHB", "6iqDW9lXqE8A9GR0", "viTIHfA7XARR2e5z"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminListUserIDByUserIDsV3' test.out

#- 146 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["KMerGt2UJ7CxzrcN", "eluCTgEATwF3hmEW", "2NQyrVFhF9ZeZh7m"], "isAdmin": true, "namespace": "TK0EGAJYaITuqNiw", "roles": ["S8bUq6X3yJjmlqAZ", "ivcp4ohgRal2QyVD", "av4UxgCOoAko3X4Z"]}' \
    > test.out 2>&1
eval_tap $? 146 'AdminInviteUserV3' test.out

#- 147 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '28' \
    --platformUserId 'XLEFgWdzVSpPkEGk' \
    --platformId 'MUk2JoIwwpQSG6FW' \
    > test.out 2>&1
eval_tap $? 147 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 148 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 148 'AdminListUsersV3' test.out

#- 149 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'fQpOo6Ie6qP8BBr7' \
    --endDate 'awij4dPfVwP30Z7V' \
    --limit '67' \
    --offset '50' \
    --platformBy 'Wk5QhSS7cYTZpMBS' \
    --platformId 'ecGiD9Sa5jCCibOP' \
    --query 'Rwv1FtQk9h1Sm1nJ' \
    --startDate 'jStjtWeTZUtrUBS3' \
    > test.out 2>&1
eval_tap $? 149 'AdminSearchUserV3' test.out

#- 150 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["yH5LvTdmICSH5HEQ", "JL13jN9ZzepsBKia", "bXbdIcqHLDq67RD9"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetBulkUserByEmailAddressV3' test.out

#- 151 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xU83ewHe8SAeBC1y' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByUserIdV3' test.out

#- 152 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uA4jNkawLSRRHdL9' \
    --body '{"avatarUrl": "BhPGHlpkMsDAsoxV", "country": "xLUzY9ZvZbh9BSzO", "dateOfBirth": "xeM05y2LKdMe80gm", "displayName": "TApB5CoRO5lzY0Jk", "languageTag": "mNaZi8VojK6eBU0c", "userName": "Oh96DiBE36xVVF3W"}' \
    > test.out 2>&1
eval_tap $? 152 'AdminUpdateUserV3' test.out

#- 153 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HNkJXSmn5SHQLISX' \
    --activeOnly 'true' \
    --after 'f6FnjlcGcancUZeP' \
    --before 'hAYBopfBEQ02S9ZH' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserBanV3' test.out

#- 154 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AAdJDFcIRNYzvjrE' \
    --body '{"ban": "cwVhagrw2jkyESCi", "comment": "iQNz3KOQmXyCc9wm", "endDate": "xGajABBSjLgXdx14", "reason": "YM6p847UxoTg1Jwy", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBanUserV3' test.out

#- 155 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'gdJliJIF31PoNePj' \
    --namespace $AB_NAMESPACE \
    --userId 'HuW0Xh5motHdIwnm' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateUserBanV3' test.out

#- 156 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tfF1QbF4G9UOV081' \
    --body '{"context": "HT3dXhLg8iUAz0CF", "emailAddress": "2kFfQvB63t01hUwo", "languageTag": "MJRxRQkBoQ5Egbej"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminSendVerificationCodeV3' test.out

#- 157 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '4YKJyiHL9DaU0mnF' \
    --body '{"Code": "9b8XkEJcBMYS6NF5", "ContactType": "agHjJ63D2PFxXLBW", "LanguageTag": "AGm2WKipjLml4ynL", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 157 'AdminVerifyAccountV3' test.out

#- 158 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'KatASIN1qwvqjwxl' \
    > test.out 2>&1
eval_tap $? 158 'GetUserVerificationCode' test.out

#- 159 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eIlN5TWzvoRh18R1' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserDeletionStatusV3' test.out

#- 160 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NSM4nOVxsY2rhGsv' \
    --body '{"deletionDate": 67, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserDeletionStatusV3' test.out

#- 161 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Pk8jL7jBQbBqg5LE' \
    --body '{"code": "efWQyUQVi1n4dz8d", "country": "4RzDxT2ED5XLZ6Y1", "dateOfBirth": "bpH7GsuI0GOkKu76", "displayName": "vOY4yqvH7F9zzo7H", "emailAddress": "qkX7Of4HZdWtTMAr", "password": "3YiKPGwq9a13067U", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 161 'AdminUpgradeHeadlessAccountV3' test.out

#- 162 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Gq96PUMJOgPtEVxH' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserInformationV3' test.out

#- 163 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'C0UQ6OoE4duvcDDH' \
    --after '0.6097398421933051' \
    --before '0.46963300226107696' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserLoginHistoriesV3' test.out

#- 164 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FwN6MdM4TgbhpnsQ' \
    --body '{"languageTag": "6pllIe24eIrusjDW", "newPassword": "7h0BYIDYVyYo6hhG", "oldPassword": "WZ9OV5ZWh2LTvihP"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminResetPasswordV3' test.out

#- 165 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cGZ2clhabQri0D4M' \
    --body '{"Permissions": [{"Action": 14, "Resource": "H02mcK6RX14Mtrq6", "SchedAction": 34, "SchedCron": "qdFDGoT6LJGq0ahi", "SchedRange": ["unEzDr64eROxjidD", "QsJWkX7QLv5870Ge", "f0oR1YZy8Duh4Vp2"]}, {"Action": 59, "Resource": "SCIHft2HexJPgxDb", "SchedAction": 30, "SchedCron": "Pn8ffcDKz7KOCMXt", "SchedRange": ["89ElSMWmX3KQVV95", "7qSvoa58OJMakwi8", "dER51Znf4ZMF4fO0"]}, {"Action": 82, "Resource": "ubvMeJdvU8FdOtmN", "SchedAction": 93, "SchedCron": "zKkkwbSkAY221e54", "SchedRange": ["e3xvtAwg1HcAohGZ", "Mn4UZ8N4Ry8eTb7m", "K45hzzf8vnY0CvHM"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserPermissionV3' test.out

#- 166 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '9vwAk2bohF828aGX' \
    --body '{"Permissions": [{"Action": 36, "Resource": "YXZBCx6hcElPO6cO", "SchedAction": 85, "SchedCron": "RKnbGFa4X3XESm5e", "SchedRange": ["81izV3Jy2ndMDu7X", "CPrv1vLk9cy7wKek", "lazeIXwtSw6qOCcR"]}, {"Action": 67, "Resource": "Sf77Rw0iTVRQ4uK6", "SchedAction": 85, "SchedCron": "O60MwuNySlWANo12", "SchedRange": ["U4eKBm7Q9cvh4v5u", "59jNk0c5ff5UoXOW", "KWaU4Kzsnji0Bk2s"]}, {"Action": 41, "Resource": "GUgaHbrVwMMzbI72", "SchedAction": 50, "SchedCron": "0vkH9rEz0UQ65Kso", "SchedRange": ["4fgHzv1FPd4sQWGn", "vrDwMfT9eCwFpyfw", "5CvTHrNUOCXmFCz9"]}]}' \
    > test.out 2>&1
eval_tap $? 166 'AdminAddUserPermissionsV3' test.out

#- 167 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iVORb7W3QYGjauiG' \
    --body '[{"Action": 63, "Resource": "YaZ2pArmp0XUQ80L"}, {"Action": 0, "Resource": "908s3dRWt09uie1A"}, {"Action": 18, "Resource": "WvhbAE8wX1pDQyGj"}]' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionBulkV3' test.out

#- 168 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '67' \
    --namespace $AB_NAMESPACE \
    --resource 'ic8CVZJLzv8paabj' \
    --userId 'Kd7UsRp46R5PjuZ5' \
    > test.out 2>&1
eval_tap $? 168 'AdminDeleteUserPermissionV3' test.out

#- 169 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UznDAOVAryJdU5Uc' \
    --after 'qetnFduxLjMPXAub' \
    --before '9RHwWA1fKNxDx5ff' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserPlatformAccountsV3' test.out

#- 170 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'LsqX1Umi8M4tP4qE' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetListJusticePlatformAccounts' test.out

#- 171 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'WYoT9pSNmoVwtMBQ' \
    --userId '4E7yESbZe8ReFP71' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserMapping' test.out

#- 172 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'ha2jiM2bJpQefP0g' \
    --userId 'qG2lt9wRfgbgUtCn' \
    > test.out 2>&1
eval_tap $? 172 'AdminCreateJusticeUser' test.out

#- 173 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'TYngJPaIDgj2NVZP' \
    --body '{"platformId": "JjcD3W7MkQLCfwz1", "platformUserId": "fvmxiBtKGxGderXA"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminLinkPlatformAccount' test.out

#- 174 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Ye0auvnhAIo1TjRW' \
    --userId 'wY2t6fxuakI06cD1' \
    --body '{"platformNamespace": "ZI60B2upe6YM0h1z"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformUnlinkV3' test.out

#- 175 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PDadezbvGpRmVQ3A' \
    --userId '6ybv6uG2GPDXvlNI' \
    --ticket 'wk473N4C3CZ7WFEu' \
    > test.out 2>&1
eval_tap $? 175 'AdminPlatformLinkV3' test.out

#- 176 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DK2OabCAhC8qUIzr' \
    --userId 'XUJJd9cSJvkupiMz' \
    --platformToken 'pSLHNVgduNwygxEc' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 177 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'nSwPItG2OaPxrJTB' \
    --userId '6qIz1iwNd32WU0a7' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserSinglePlatformAccount' test.out

#- 178 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DwFEELCS2fiLt4hx' \
    --body '["23tjTMzgmjupZWoL", "XirWUbh1cUWKBFSP", "wDBjiWaOKpigSUbk"]' \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserRolesV3' test.out

#- 179 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'laENCwAb62ICffXW' \
    --body '[{"namespace": "pRoc57ojzjLdLRgm", "roleId": "ioPpIkbcCvHlMzj5"}, {"namespace": "FqcaBDCoVDcUGuSi", "roleId": "38av1GI6LrPwQ4ZP"}, {"namespace": "AIjGg4tz1KwDspMw", "roleId": "xz2s4tHxO3LeSBPZ"}]' \
    > test.out 2>&1
eval_tap $? 179 'AdminSaveUserRoleV3' test.out

#- 180 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'QKxHrlKFClIZYyxu' \
    --userId 'm4jVGchsClxK1OI8' \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserRoleV3' test.out

#- 181 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '9w4GTakfMsLTsg9J' \
    --userId 'aDoCE2WqfYxFlogZ' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserRoleV3' test.out

#- 182 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CWr5UEWB4ZIJ3jTU' \
    --body '{"enabled": false, "reason": "SbR15w5my2OrXc85"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserStatusV3' test.out

#- 183 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mImMlh9qK5rFwjiX' \
    > test.out 2>&1
eval_tap $? 183 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 184 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'qBPyRXUci702sxLI' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "Hwo7HwNwMUelHOuZ"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateClientSecretV3' test.out

#- 185 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'w7ZrapYFvPyxhd5l' \
    --before 'xWKSlu7RfEoyWZXu' \
    --isWildcard 'true' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRolesV3' test.out

#- 186 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "F7HAsgzhmewrInB6", "namespace": "K7YYFtW3390Lpslv", "userId": "qmv59jvTfpKbqAss"}, {"displayName": "947UzzAGDTCcpLVH", "namespace": "iIvzvOeTpJFqe6xQ", "userId": "xHtni1pmeTJeITPN"}, {"displayName": "swgPvZypEjqdSRTS", "namespace": "9KUZLKi33Pfw45So", "userId": "z2qK462JAy4ML6dt"}], "members": [{"displayName": "4MOP0zGS3bb3SCS2", "namespace": "JnYgcANSyA8Q3D4N", "userId": "Y3kJEa7CfZFNoFYK"}, {"displayName": "lf4BCeXewQkpec2R", "namespace": "NUv6yDWWIj1dFgei", "userId": "Aff32OZLYpB6CRF2"}, {"displayName": "OhdwMkKejQPWR8sM", "namespace": "t0wFFhfGw3SFGGGP", "userId": "bfUVxTHtuGRkxPTN"}], "permissions": [{"action": 55, "resource": "RCEeMEMJbybnvI00", "schedAction": 22, "schedCron": "DVkQna3iqZoevYAT", "schedRange": ["ezpyZREOaNbmvNWR", "SIfqoS0xJL7F6vDg", "84jOF8U217lmT2TL"]}, {"action": 58, "resource": "H51ibS85vRxUsCva", "schedAction": 61, "schedCron": "gTrnojbIAmRN0lrb", "schedRange": ["yozM8FLO1nafSlO6", "WN1ezJ0gp9gAPvLh", "73HnKMO5RciyQlOp"]}, {"action": 66, "resource": "XRHf3Ellk8T3evn8", "schedAction": 8, "schedCron": "XskuZcKowhZuUn7H", "schedRange": ["T0d7aMU0H4sokkgD", "hxSQDVzD2IBR5r9Y", "O2iDLx3nBBWqaANX"]}], "roleName": "vDPVCAOTqAs49urv"}' \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateRoleV3' test.out

#- 187 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '7cZE1rh35vFe5BwG' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleV3' test.out

#- 188 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'qPnyoLrRCvNds6uC' \
    > test.out 2>&1
eval_tap $? 188 'AdminDeleteRoleV3' test.out

#- 189 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'WcOvVFyT8IuHxDGU' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "5djaELOORsAcdhBO"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateRoleV3' test.out

#- 190 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'AUt2NXZ80FJODPNl' \
    > test.out 2>&1
eval_tap $? 190 'AdminGetRoleAdminStatusV3' test.out

#- 191 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'xq8mnRVhJadOARq8' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateAdminRoleStatusV3' test.out

#- 192 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '7X4l0KOeozlBijRK' \
    > test.out 2>&1
eval_tap $? 192 'AdminRemoveRoleAdminV3' test.out

#- 193 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'IwMNrhbHxM7EaaGx' \
    --after '9B6rcaBXfTlMWubz' \
    --before 'qWXmhtoBlh1Ia4mM' \
    --limit '40' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleManagersV3' test.out

#- 194 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '2KdX1tfy7w8PWAyl' \
    --body '{"managers": [{"displayName": "vowNCfkT9J9SrZSi", "namespace": "VUZzCZBNfiOZOvm6", "userId": "qrSfSd1vuuZlavEI"}, {"displayName": "dJPqm3dhoPCjZsLU", "namespace": "9oatyiDqkHMqnDbZ", "userId": "8FAnefaKMX9xvfxM"}, {"displayName": "YWgqsGGSRduRLHHS", "namespace": "jS4zGpY8X1Mf2GqC", "userId": "OzMPSusum1FZk8Du"}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminAddRoleManagersV3' test.out

#- 195 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'h8SjVpeRyNEVNraX' \
    --body '{"managers": [{"displayName": "q24IMwdBRzFSkQsl", "namespace": "yNR0yzrWB4iyXDSI", "userId": "BhubhiqgGOcPWGDX"}, {"displayName": "L1GpuWRUOl4o44rP", "namespace": "vNhjoIHZZXB5mrqT", "userId": "y9Wj7PMspDXXmI66"}, {"displayName": "bR0uOVqekf91fHDU", "namespace": "wx9ppEBLGN9VfZ0N", "userId": "1ugMLMhoxFTZF5bo"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminRemoveRoleManagersV3' test.out

#- 196 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'zwvW2hAfoZX45jK7' \
    --after 'nzgjfOzBJJbbaLgx' \
    --before 'IVNJexRvYtLmu8mh' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleMembersV3' test.out

#- 197 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'HNIeAApc0x8mANLz' \
    --body '{"members": [{"displayName": "PFgBw52sbffkqyGD", "namespace": "qsLqiUxZB6Y3OLah", "userId": "3KyuT2XR5aswDqM6"}, {"displayName": "vqQ285KVB6DlWrRr", "namespace": "4VjRGWXbZtEFmVj7", "userId": "bqNDWq0dID2gz5Uz"}, {"displayName": "ScwUnhGauzNmGDg6", "namespace": "CL3s86C31E1ahXam", "userId": "NfFBst0H4YO2kzg7"}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminAddRoleMembersV3' test.out

#- 198 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'J6b1kcsBVWBIxIY5' \
    --body '{"members": [{"displayName": "zuWyoko7KKRj0gEk", "namespace": "CatAaptLiAvLAFDa", "userId": "bVkCM0srvduuSaUL"}, {"displayName": "x7ixC1cqj9bhr1hy", "namespace": "2RIFY5i6LDQUGtJ1", "userId": "7Zxb6O8EBfnpnzHx"}, {"displayName": "NQhnbFia95RxzVbf", "namespace": "X9w2SYBPOFv6Daet", "userId": "RhHQsYrnNSWmaaua"}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleMembersV3' test.out

#- 199 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'dcMulamfwk6CqSFH' \
    --body '{"permissions": [{"action": 28, "resource": "MxKimNqXWUz96U3c", "schedAction": 40, "schedCron": "ElIyWXAPLUnT8gJC", "schedRange": ["AxehDodf0FYodcUC", "KUy6yPXANwTj360n", "Xwwr5VFKM8gg9Cf2"]}, {"action": 41, "resource": "0vEkQfVWdvRXgkSZ", "schedAction": 89, "schedCron": "uawGZPvojyvnEL1C", "schedRange": ["ZdJ9AgTcRbayJxer", "qKgwIiN2OPbM7a7g", "UtrkWGrswuLxOCm2"]}, {"action": 58, "resource": "0cWHxLFgaWDb0q48", "schedAction": 92, "schedCron": "O1ArhTEWSb9AW1SH", "schedRange": ["Rcjrmu3g13eRkWMe", "n6hBuhDYtbceeO9p", "W05ho3ZFE7Zy20pN"]}]}' \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateRolePermissionsV3' test.out

#- 200 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'RaoKGnLzIs6Zgd8m' \
    --body '{"permissions": [{"action": 22, "resource": "ZSS2YGZ0RNrVHzdV", "schedAction": 56, "schedCron": "jhWzpYwCtvyFwyAv", "schedRange": ["yNve2MeRR8pR1AdW", "u7xPB8O6B0SW36Az", "zd1TIGDEHfzEpQfD"]}, {"action": 54, "resource": "YYVjdMTTgbaFCUJo", "schedAction": 77, "schedCron": "7oYnlsT9B5XrZwrq", "schedRange": ["K0ZXo6PsyNjKbl6z", "G9eQhegqRlxsaC96", "pH6ZIfaRe5d5IYRh"]}, {"action": 45, "resource": "5GlZR0181aelQzuh", "schedAction": 77, "schedCron": "bSaOaEzANZMVzEDB", "schedRange": ["MjlfvMjHq6KIMmc5", "SvhEIjTuDRtXaopE", "VSSBEyQV4PaWfEL8"]}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRolePermissionsV3' test.out

#- 201 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'mbLUCANwHHDnUBiu' \
    --body '["naR6ThFRwGXgp09x", "GoE67qIbqF5V6smt", "ypNWKDtPqebDPlg6"]' \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteRolePermissionsV3' test.out

#- 202 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '27' \
    --resource 'BbLf27k1WvE3XbZy' \
    --roleId 'izs9q1g77nc1NV6n' \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteRolePermissionV3' test.out

#- 203 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 203 'AdminGetMyUserV3' test.out

#- 204 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'GHg7xlU1KXMjAoAW' \
    --extendExp 'false' \
    --redirectUri 'qTuKra7qrhLg452P' \
    --password '04ZDutOUjo8P3hi5' \
    --requestId 'TAPy5wDjCMJl91eV' \
    --userName 'c54l2bb6uXTOyAf7' \
    > test.out 2>&1
eval_tap $? 204 'UserAuthenticationV3' test.out

#- 205 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'GNbT5it3i3YiQjTP' \
    --linkingToken 'sApogqVVYakw4aBo' \
    --password 'bq13SAPIRe5SPmG3' \
    --username 'HEE8x6909rzk8CwR' \
    > test.out 2>&1
eval_tap $? 205 'AuthenticationWithPlatformLinkV3' test.out

#- 206 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'KrrWwh6LU57yT7Tl' \
    --extendExp 'true' \
    --linkingToken 'bfpEOSOtXdgM22iu' \
    > test.out 2>&1
eval_tap $? 206 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 207 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '0TZWYGfUuNEggiIB' \
    > test.out 2>&1
eval_tap $? 207 'RequestOneTimeLinkingCodeV3' test.out

#- 208 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'S4z2WWPKwH7DEEn6' \
    > test.out 2>&1
eval_tap $? 208 'ValidateOneTimeLinkingCodeV3' test.out

#- 209 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'GcKabg11q2YqgMY7' \
    --isTransient 'true' \
    --clientId 'izNL6aVjquBOESV0' \
    --oneTimeLinkCode 'mpOFmcEbQmXshku1' \
    > test.out 2>&1
eval_tap $? 209 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 210 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 210 'GetCountryLocationV3' test.out

#- 211 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 211 'Logout' test.out

#- 212 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'JdiGForszrsVSSVg' \
    > test.out 2>&1
eval_tap $? 212 'RequestGameTokenCodeResponseV3' test.out

#- 213 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XQfXGA6m4WOLDzZD' \
    --userId 'xykTpyVahgEWdCcS' \
    > test.out 2>&1
eval_tap $? 213 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wz33K6jwYUyXiZyN' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserV3' test.out

#- 215 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge '7fi1dI8S8otvq2gy' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'D62L9xiH1zppKcKB' \
    --redirectUri 'jmsrhuisnTbMt3WI' \
    --scope 'XzAqysyVFTCvtNgX' \
    --state 'H3hfTSYiQ6m2VoYg' \
    --targetAuthPage '1Kk0UVOG26dxKgza' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'VkNOvZcITWQdZ3og' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 215 'AuthorizeV3' test.out

#- 216 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'Coma7TunnUKFBe05' \
    > test.out 2>&1
eval_tap $? 216 'TokenIntrospectionV3' test.out

#- 217 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 217 'GetJWKSV3' test.out

#- 218 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '7v3akws7lzZl7fZH' \
    --factor 'I4Tgf4dxYebhvdma' \
    --mfaToken 'pimQLsJbatgYTflF' \
    > test.out 2>&1
eval_tap $? 218 'SendMFAAuthenticationCode' test.out

#- 219 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '9ge01FtKngWIrRHd' \
    --mfaToken 'QQSk9Vt2yr2j5Gq6' \
    > test.out 2>&1
eval_tap $? 219 'Change2faMethod' test.out

#- 220 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'QBXf0V5HV5FKQKPl' \
    --factor 'e1oeWuaRjO7zmRi5' \
    --mfaToken 'dqqvJGNWbUosNvMn' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 220 'Verify2faCode' test.out

#- 221 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RTk1vutnMUsrNtUV' \
    --userId 'JbQrN51YIV17wJgK' \
    > test.out 2>&1
eval_tap $? 221 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 222 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'SA3gR7Ux3ESksjiN' \
    --clientId 'ArGz2LX5HLvHTSxg' \
    --redirectUri 'aGRQvrFAdljTuxE6' \
    --requestId 'EVm0ynSov9QXHJKI' \
    > test.out 2>&1
eval_tap $? 222 'AuthCodeRequestV3' test.out

#- 223 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'nqBCW0Zr5yzGa7hq' \
    --additionalData '1VwYVcTiNefEHKqd' \
    --clientId 'Y4FcshAW2bRgNRfa' \
    --createHeadless 'true' \
    --deviceId '5F89ILNOaKgRAUy6' \
    --macAddress 's52qRtWXT51J70E1' \
    --platformToken 'aBQDLW0dVFQ58ZBI' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 223 'PlatformTokenGrantV3' test.out

#- 224 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 224 'GetRevocationListV3' test.out

#- 225 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'XRp8DAxFttWh4URh' \
    > test.out 2>&1
eval_tap $? 225 'TokenRevocationV3' test.out

#- 226 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'Fw8KcUJbzCoM46l0' \
    --clientId 'yza7Ywo6B67H046Y' \
    --code 'iMMPo8ewGleEvZXe' \
    --codeVerifier 'mxL2QPKHTzEumxgm' \
    --extendExp 'true' \
    --password 'Mta4c6RqMJ5EY5eQ' \
    --redirectUri 'KQIXBl3GO4Io0pzQ' \
    --refreshToken 'Z9jUHKkDEr6keXQF' \
    --username 'hfRPIbNAoioRJIlu' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 226 'TokenGrantV3' test.out

#- 227 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'RW1GV6uXL9LPcG9x' \
    > test.out 2>&1
eval_tap $? 227 'VerifyTokenV3' test.out

#- 228 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'uj65WCaNcIPXmy65' \
    --code 'Qf4VdYdwFSv5F0dO' \
    --error 'gEyTr7xDqQt1xBzz' \
    --openidAssocHandle 'bWVdaNRQwpanPldU' \
    --openidClaimedId 'QWMZ5MMu7JcLydKo' \
    --openidIdentity 'lGP9JuY3qsc2JpzY' \
    --openidMode '90Qbf11FG0tsVNJG' \
    --openidNs 'LbnUj0OmsLnM9M8E' \
    --openidOpEndpoint '4xR3NEia9Y2HZCy8' \
    --openidResponseNonce 'Zg27AreDtdNGIFoI' \
    --openidReturnTo 'MbioNx2FOWMQACTA' \
    --openidSig 'a41ddhjlU37WRYif' \
    --openidSigned 'wrBEGFh118XN7saJ' \
    --state 'UmA7lrZyWXpZAzPM' \
    > test.out 2>&1
eval_tap $? 228 'PlatformAuthenticationV3' test.out

#- 229 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'bKgRCUviYRsVYaVW' \
    > test.out 2>&1
eval_tap $? 229 'PublicGetInputValidations' test.out

#- 230 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'bIwfGvgEN0XzoCeQ' \
    > test.out 2>&1
eval_tap $? 230 'PublicGetInputValidationByField' test.out

#- 231 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'uP8HggrqnZ6mi6os' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 231 'PublicGetCountryAgeRestrictionV3' test.out

#- 232 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 232 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 233 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId '7pGuLlOrIkSe9yop' \
    > test.out 2>&1
eval_tap $? 233 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 234 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7MAVKrQFI9nylciQ' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["ehnJuw6TTQwGxLOl", "PxboPVlvF3qFEMIj", "qeawyafozwKk7tnE"]}' \
    > test.out 2>&1
eval_tap $? 234 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 235 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YKTWSNx1IgbsVUcg' \
    --platformUserId 'ON56sX9lVZiBAAlF' \
    > test.out 2>&1
eval_tap $? 235 'PublicGetUserByPlatformUserIDV3' test.out

#- 236 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'l4KzUwjGTBisimoe' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetAsyncStatus' test.out

#- 237 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'aQXNYfQTVb28Ro2G' \
    --limit '23' \
    --offset '87' \
    --query 'xhQYh0RpZv85S5st' \
    > test.out 2>&1
eval_tap $? 237 'PublicSearchUserV3' test.out

#- 238 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "kmJBEtYPC0heNboW", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "d8zp0iwnyKZlVgBX", "policyId": "kLYNRe49BVjNqI9J", "policyVersionId": "mJ9fPNw4e24UpTsa"}, {"isAccepted": true, "localizedPolicyVersionId": "2iAgiSf4YkwHEtVI", "policyId": "oENFpEbtTdEYEVWs", "policyVersionId": "3G9yietCQDIv0pwf"}, {"isAccepted": true, "localizedPolicyVersionId": "aJMyGSs6OhJRaHyz", "policyId": "WxQ1xxFLiapkoK2p", "policyVersionId": "Xb5das167csDZZjJ"}], "authType": "kRRthbduExAlNXoZ", "code": "PJDeyOuotNm99vtT", "country": "bbt6D1OOSnXLBqRB", "dateOfBirth": "XKTAxnOoWT0cQEEQ", "displayName": "W2THY7aM2NsJJQv3", "emailAddress": "jcrWjPZcTqiDOmwk", "password": "iZtrFsoPyCFoiQuD", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateUserV3' test.out

#- 239 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'LuxZTGS1q2vvzJcW' \
    --query 'nWP1tZDauqqiylMI' \
    > test.out 2>&1
eval_tap $? 239 'CheckUserAvailability' test.out

#- 240 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ghtqc5rFBD4SMQTL", "bv9lclnvScemZ6p8", "rWl1Mno23WtZGxVq"]}' \
    > test.out 2>&1
eval_tap $? 240 'PublicBulkGetUsers' test.out

#- 241 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "JtqNIAuXMmv4eALZ", "languageTag": "ZWIiffwSPaO5WtoK"}' \
    > test.out 2>&1
eval_tap $? 241 'PublicSendRegistrationCode' test.out

#- 242 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "HgTRShN2Pj2O7dsm", "emailAddress": "SncHapbGrRA3PwQH"}' \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyRegistrationCode' test.out

#- 243 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "TBxYDLBDkb3VC2hL", "languageTag": "gabZORdHNdf6Fogx"}' \
    > test.out 2>&1
eval_tap $? 243 'PublicForgotPasswordV3' test.out

#- 244 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'YECDQfEm8xw39EFS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 244 'GetAdminInvitationV3' test.out

#- 245 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'EkNh5wMKrdJyc02Q' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "E8LBOQbFHhBFVqik", "policyId": "aD4Gb8l7HCGsRKIN", "policyVersionId": "eY7b5YRWgz9llZ1v"}, {"isAccepted": false, "localizedPolicyVersionId": "nfwqld01CyJhx6zU", "policyId": "BfEbI9RZj5QyhNY5", "policyVersionId": "TXu0gxGeFkDkMIrE"}, {"isAccepted": false, "localizedPolicyVersionId": "or68ttzOKcmC5N7Z", "policyId": "mDTALSg4BIK1GxmR", "policyVersionId": "RMVaggyeH0csG9H1"}], "authType": "EMAILPASSWD", "country": "dgmfYNerlpEYMsZo", "dateOfBirth": "lDjzQLGo79quwUhb", "displayName": "hHXJHJnNQdhVl1HG", "password": "1tbgkXMQLxq8zLH9", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 245 'CreateUserFromInvitationV3' test.out

#- 246 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "KgTDetwS6fWnvRVJ", "country": "R5bxsdSV7E3oRwFO", "dateOfBirth": "ErRiDM61KyJric4D", "displayName": "tU7OQMviVPoShkyW", "languageTag": "22st7LvjV5KFmQiC", "userName": "40GKfo3v1e6SzOFV"}' \
    > test.out 2>&1
eval_tap $? 246 'UpdateUserV3' test.out

#- 247 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "3Ygz03nQ0mgIPibo", "country": "617Xr0W3mykzVOrR", "dateOfBirth": "JntmhmMrsBGyQLaS", "displayName": "blUxEsfblkcxLd2K", "languageTag": "9PNQLzv424N7DI6V", "userName": "P4YxIVcCB2bYdMth"}' \
    > test.out 2>&1
eval_tap $? 247 'PublicPartialUpdateUserV3' test.out

#- 248 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "JhAIMrFWC0AVkKBD", "emailAddress": "y8BTFIsw9yOUvhLf", "languageTag": "dsUsPVg2V0ABE2Nm"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicSendVerificationCodeV3' test.out

#- 249 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "oLFhIDO8LEUBwdZq", "contactType": "H1fjzOPLEcLTIdRE", "languageTag": "ZHF9BDJpMI8oCDvL", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUserVerificationV3' test.out

#- 250 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "sVbYKUzfAkVCOkRL", "country": "CbqaeCXntgGrRjKN", "dateOfBirth": "aIbLh2k64OAHWDmb", "displayName": "ZYRMq1JWAraoagHw", "emailAddress": "v4xtYmBDwevdOhxO", "password": "Frjx8LE9sYr2OJae", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 250 'PublicUpgradeHeadlessAccountV3' test.out

#- 251 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "TVfvkkmeMOvik3Sb", "password": "iGACpsSlAlyW3LtH"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicVerifyHeadlessAccountV3' test.out

#- 252 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "lDyFKjUQmTybrc1k", "newPassword": "MkRB8zsW6ob8moju", "oldPassword": "h3d402sAYTzRWvIo"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicUpdatePasswordV3' test.out

#- 253 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'mHiUSmnOmDWry3ez' \
    > test.out 2>&1
eval_tap $? 253 'PublicCreateJusticeUser' test.out

#- 254 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mY6qi4P18XdnPTrI' \
    --redirectUri 'ZzNA954l5jrKLbUn' \
    --ticket 'Hfm11l2khVwZScnG' \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformLinkV3' test.out

#- 255 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2gCZ7ldx6whjdHmb' \
    --body '{"platformNamespace": "yXCHvhLl3LXU21ai"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPlatformUnlinkV3' test.out

#- 256 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '96HVUbz57RsERZED' \
    > test.out 2>&1
eval_tap $? 256 'PublicPlatformUnlinkAllV3' test.out

#- 257 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9cc9lHAJ2QuCQNNw' \
    --ticket 'MdQ5EiV3w1GZr58K' \
    > test.out 2>&1
eval_tap $? 257 'PublicForcePlatformLinkV3' test.out

#- 258 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'AnETq5Bt9HaEXqHh' \
    --clientId 'EiV3elLmycVoJnFU' \
    --redirectUri 'syvihbz9fljSMVqe' \
    > test.out 2>&1
eval_tap $? 258 'PublicWebLinkPlatform' test.out

#- 259 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '7TROx5k7excIg5Yu' \
    --code 'qnWI9hX2fnOjPEcr' \
    --state 'kJUF46dTzzck3O6T' \
    > test.out 2>&1
eval_tap $? 259 'PublicWebLinkPlatformEstablish' test.out

#- 260 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Bxnx3ZrTHHy3XT1W", "emailAddress": "6gxzT74m1OfyvJL0", "newPassword": "Kr7eR50xkUmw8dbr"}' \
    > test.out 2>&1
eval_tap $? 260 'ResetPasswordV3' test.out

#- 261 PublicGetUserByUserIdV3
eval_tap 0 261 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 262 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZCgef58lt5Pqqfd3' \
    --activeOnly 'true' \
    --after 'Cx42cQ4H75EIlDGx' \
    --before 'KquoNjRteAjwjA0z' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserBanHistoryV3' test.out

#- 263 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gw0Xv3dOhSixOwX6' \
    > test.out 2>&1
eval_tap $? 263 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 264 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '8k2MbQ3HoCOmk644' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetUserInformationV3' test.out

#- 265 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QtnQRRMCv7lNqJ01' \
    --after '0.5031213918039372' \
    --before '0.06779355997700809' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserLoginHistoriesV3' test.out

#- 266 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vfowmOZKdkktzlx3' \
    --after 'GAXVyYjwppMq7EnF' \
    --before 'GeK8lbgLCR5vA7YR' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 266 'PublicGetUserPlatformAccountsV3' test.out

#- 267 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '2lFwn5HrnuBnRIjE' \
    > test.out 2>&1
eval_tap $? 267 'PublicListJusticePlatformAccountsV3' test.out

#- 268 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '7rdT9o1eoeYZ3teH' \
    --body '{"platformId": "vC6febzMWJPjpiTm", "platformUserId": "C2akIX4WVzHwguyb"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicLinkPlatformAccount' test.out

#- 269 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Pty59UqJmbspwjFm' \
    --body '{"chosenNamespaces": ["NIjZ9fosoTvB09Pa", "FEpdZdLy8ZOwA34y", "QON6VOkqbqIARUyK"], "requestId": "6FFsGvmVE6N2mq4n"}' \
    > test.out 2>&1
eval_tap $? 269 'PublicForceLinkPlatformWithProgression' test.out

#- 270 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fShtvjJkQVmRa9j7' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetPublisherUserV3' test.out

#- 271 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EFsTw0Ib26NcEGpp' \
    --password 'UGrN3AfTH4DRfAlg' \
    > test.out 2>&1
eval_tap $? 271 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 272 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'wnabGBDwowyTc0hi' \
    --before 'X7UK3goYw5pZXgyP' \
    --isWildcard 'false' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetRolesV3' test.out

#- 273 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'Ulq9UEJP3lxKwKtq' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetRoleV3' test.out

#- 274 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 274 'PublicGetMyUserV3' test.out

#- 275 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'oEXmz1ZsLlXj5hNb' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 276 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["Uh37CWfrfRqQnWUv", "WAuzRciihQHmCXzB", "GARrUc6GeLJuQr4i"], "oneTimeLinkCode": "T2b3W8kMBVkERBmd"}' \
    > test.out 2>&1
eval_tap $? 276 'LinkHeadlessAccountToMyAccountV3' test.out

#- 277 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "T7gsKtbyDajYoyVK"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicSendVerificationLinkV3' test.out

#- 278 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'H8snlPCuBo45D1qe' \
    > test.out 2>&1
eval_tap $? 278 'PublicVerifyUserByLinkV3' test.out

#- 279 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'c4eCdvoSDH0rAugt' \
    --code '5n7KmLxCjIqaG5ez' \
    --error 'hFo4dudpyI0iE3TX' \
    --state 'wvokjvNmuvNZHey8' \
    > test.out 2>&1
eval_tap $? 279 'PlatformAuthenticateSAMLV3Handler' test.out

#- 280 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'CL9R0OISX7paa1AR' \
    --payload 'c2iZSMLTRwfi1ASV' \
    > test.out 2>&1
eval_tap $? 280 'LoginSSOClient' test.out

#- 281 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'UOHk637ZInPrNB1s' \
    > test.out 2>&1
eval_tap $? 281 'LogoutSSOClient' test.out

#- 282 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData 'wr94zy7YhW40cgI6' \
    --code 'PQqkrY4zV8GpWa7R' \
    > test.out 2>&1
eval_tap $? 282 'RequestGameTokenResponseV3' test.out

#- 283 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZVl55XtFO6SxcE81' \
    > test.out 2>&1
eval_tap $? 283 'AdminGetDevicesByUserV4' test.out

#- 284 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'Sy7KZcoqQG1vZUY9' \
    --endDate 'E9fm5suvcBAY3FOn' \
    --limit '32' \
    --offset '2' \
    --startDate 'Ta1Ty6XMPh8nl2rl' \
    > test.out 2>&1
eval_tap $? 284 'AdminGetBannedDevicesV4' test.out

#- 285 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oBufRmED4za7NSrp' \
    > test.out 2>&1
eval_tap $? 285 'AdminGetUserDeviceBansV4' test.out

#- 286 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "vJlrqTgBEZjycvce", "deviceId": "hrHzUQVfZPE9QsI3", "deviceType": "MCK231MPT5yId5A1", "enabled": true, "endDate": "aRTc53q3QYyigZg9", "ext": {"lovOXcKiHcLmEhro": {}, "rNhMg9K3wyOrFpKw": {}, "c5kwyB5uOdO7QenP": {}}, "reason": "DPNjxbtulL4aGwN2"}' \
    > test.out 2>&1
eval_tap $? 286 'AdminBanDeviceV4' test.out

#- 287 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'PV9pjKIMVrBn3kan' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceBanV4' test.out

#- 288 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'IT1U9XoFmIXBq809' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 288 'AdminUpdateDeviceBanV4' test.out

#- 289 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'XE0qInJyGhVjoOL0' \
    --startDate 'JOawmUJTMF1OttZT' \
    --deviceType '4MIWmFk9Dh41EIeC' \
    > test.out 2>&1
eval_tap $? 289 'AdminGenerateReportV4' test.out

#- 290 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminGetDeviceTypesV4' test.out

#- 291 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'jVGOKxNvWG3DySiU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetDeviceBansV4' test.out

#- 292 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId '0pEPTtrJQbUlceiC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 292 'AdminDecryptDeviceV4' test.out

#- 293 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'Yqa3CkS762ubBoPj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 293 'AdminUnbanDeviceV4' test.out

#- 294 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'HeLYLScFanEY3gXu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 294 'AdminGetUsersByDeviceV4' test.out

#- 295 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 56}' \
    > test.out 2>&1
eval_tap $? 295 'AdminCreateTestUsersV4' test.out

#- 296 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0PKAi9mTrRDjeVDj", "Y2FRiS52qaguqRou", "Ex7ed3iRm83i6kgF"]}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBulkCheckValidUserIDV4' test.out

#- 297 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'n06LBWZwrvsm41Oe' \
    --body '{"avatarUrl": "YOipaT3KOxI6I9cP", "country": "Uxzu9ljyCCaIT7v4", "dateOfBirth": "yyqDglAvAM5plI99", "displayName": "QtCQJaSerEZx6q38", "languageTag": "ltL8hic0Tm3KfgO9", "userName": "qUfEV4jlEATD1CsX"}' \
    > test.out 2>&1
eval_tap $? 297 'AdminUpdateUserV4' test.out

#- 298 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'xYDH5oVefe2zFMUc' \
    --body '{"code": "82ZKctpp5SVSHheY", "emailAddress": "hFQF0D6y973Yedl1"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserEmailAddressV4' test.out

#- 299 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '8oUf7aZlBGwJGugN' \
    > test.out 2>&1
eval_tap $? 299 'AdminDisableUserMFAV4' test.out

#- 300 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'szz5pipnuV0bmVaz' \
    > test.out 2>&1
eval_tap $? 300 'AdminListUserRolesV4' test.out

#- 301 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '8NDLk6UoQBtzNV1O' \
    --body '{"assignedNamespaces": ["HnNcuxp1I0cOLhpm", "vd7dYOimePuyBV8j", "DjlLo4Tm6VhAmthn"], "roleId": "8Xb7WJW4ZPdgSklO"}' \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateUserRoleV4' test.out

#- 302 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '26N6FCDFfGMnFEaC' \
    --body '{"assignedNamespaces": ["MREVjjLtf9IsStXj", "CuPvYbHK5TzA58W4", "V3xj0kDfqYX9RRWN"], "roleId": "UI1QMxfHqeZWL7an"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminAddUserRoleV4' test.out

#- 303 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Rt1WCJ0jvt65KqpG' \
    --body '{"assignedNamespaces": ["vfLcxQ9ay8jpTcQ0", "IzrtlgrmAXsRSoNX", "2sERlUevF0w3nXSV"], "roleId": "or8kD4Mt5Jk4JosK"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminRemoveUserRoleV4' test.out

#- 304 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '33' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 304 'AdminGetRolesV4' test.out

#- 305 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "Br8MYx2sNmdHgurK"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateRoleV4' test.out

#- 306 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'LCdF9t46pofZIDiD' \
    > test.out 2>&1
eval_tap $? 306 'AdminGetRoleV4' test.out

#- 307 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'VFfmLmpOkEWrbRRc' \
    > test.out 2>&1
eval_tap $? 307 'AdminDeleteRoleV4' test.out

#- 308 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'VlVGnwOGDdLIyMc5' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "EMgu6U1ZxdNX8Dii"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateRoleV4' test.out

#- 309 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'NaKUQKtKmlZMIVnm' \
    --body '{"permissions": [{"action": 86, "resource": "xcKYeDtqigq76vSx", "schedAction": 54, "schedCron": "A5HyqCWLPrQA6TJd", "schedRange": ["futXTbd6BJCsZj68", "jFtIaUKZwe5uCvee", "9hmpUHMMtFxkesEi"]}, {"action": 79, "resource": "qj2vl0R1H8TAZFT3", "schedAction": 94, "schedCron": "WNA821D5q6odtLWA", "schedRange": ["HdGWs8dN04FtcWip", "WZ5b1I5SCUTA1BZ9", "Y9byRqvYlIPPQnC8"]}, {"action": 51, "resource": "5GkXjCpEUeGqpvWM", "schedAction": 88, "schedCron": "OLReU1nSmqfE7RQn", "schedRange": ["uS0NgH7bi2LkxLW2", "XzF0VfSqEnFoAAY5", "Xplaz4fxFuYsrRU9"]}]}' \
    > test.out 2>&1
eval_tap $? 309 'AdminUpdateRolePermissionsV4' test.out

#- 310 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'AQSwx2r6gBWQfMuU' \
    --body '{"permissions": [{"action": 100, "resource": "xOkPpebU3CS0UZKP", "schedAction": 29, "schedCron": "9dvMCFo8hSLO2G53", "schedRange": ["u793lT5BU33ZhlMd", "GJynJo9GtQFv7Bpp", "tcjbZpWgneAen62I"]}, {"action": 33, "resource": "6FubyPVSDJazadVK", "schedAction": 54, "schedCron": "2031boMp9cxux6eQ", "schedRange": ["7l3wyqsK20o5k4WX", "ULUi3OExULcepRTs", "YdeSFcNB4dNMIk1p"]}, {"action": 52, "resource": "9MVc3itgCMotsJLT", "schedAction": 31, "schedCron": "DqfJRAlOaTMZWUCm", "schedRange": ["huKaAhdIWdU8Z7SY", "RRHRZir2zhCJ68PT", "5mPKca62UZbcZwIe"]}]}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAddRolePermissionsV4' test.out

#- 311 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'LWQgcxfixVlGgPXV' \
    --body '["mFYZckW7aKidNw0W", "sRwKuNV4pyBFGS8p", "iY6aUxlS2S6NCH5w"]' \
    > test.out 2>&1
eval_tap $? 311 'AdminDeleteRolePermissionsV4' test.out

#- 312 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'Q4zX0urJR21WjBgP' \
    --after '1SpDYio8OD7bKIFe' \
    --before 'EDdoH9ZTechaz2TR' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 312 'AdminListAssignedUsersV4' test.out

#- 313 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'eQr4vKmu7QLIOWPk' \
    --body '{"assignedNamespaces": ["03Xvp7KSJGwxF6xS", "QNqVJUNpsIjpL6NZ", "0QriBOZ2JCgqzdEi"], "namespace": "ELIgdndJBotFoIae", "userId": "h0j8YbxiAjELltIz"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminAssignUserToRoleV4' test.out

#- 314 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'Jez6qMvzhAX4DWJL' \
    --body '{"namespace": "gGPV08tWx3p0HTob", "userId": "NuVEkyKFP3cGV8Rf"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminRevokeUserFromRoleV4' test.out

#- 315 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["QhONd7G1qURgLrGk", "XSxAeMgwuCxRnMoR", "iELn4hy5K7RJ6F66"], "emailAddresses": ["ax4sr26l97bfvcNh", "jKZkMSROccU1tOLF", "Rz0Usl3W5VfaBnZJ"], "isAdmin": false, "namespace": "1cB3xLjhCfBO7MFa", "roleId": "yIz8G3EgEgs1uGmZ"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminInviteUserNewV4' test.out

#- 316 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "5p07mPOagnQHqQ4R", "country": "VEG9h5D42eXYCDI0", "dateOfBirth": "W1AkSRp4uQ9W6oZG", "displayName": "Ctk3HaToaRUOYh83", "languageTag": "UlCvxQjgcFiD0dRr", "userName": "fVX6LWykbEG1lRWq"}' \
    > test.out 2>&1
eval_tap $? 316 'AdminUpdateMyUserV4' test.out

#- 317 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminDisableMyAuthenticatorV4' test.out

#- 318 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'ZS9Te7RuEeNCpYbt' \
    > test.out 2>&1
eval_tap $? 318 'AdminEnableMyAuthenticatorV4' test.out

#- 319 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 320 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminGetMyBackupCodesV4' test.out

#- 321 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminGenerateMyBackupCodesV4' test.out

#- 322 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminDisableMyBackupCodesV4' test.out

#- 323 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminDownloadMyBackupCodesV4' test.out

#- 324 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminEnableMyBackupCodesV4' test.out

#- 325 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminSendMyMFAEmailCodeV4' test.out

#- 326 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 326 'AdminDisableMyEmailV4' test.out

#- 327 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'elcU2AQ7gIJ1FS3K' \
    > test.out 2>&1
eval_tap $? 327 'AdminEnableMyEmailV4' test.out

#- 328 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 328 'AdminGetMyEnabledFactorsV4' test.out

#- 329 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'EirnJXh6IOGMxvHQ' \
    > test.out 2>&1
eval_tap $? 329 'AdminMakeFactorMyDefaultV4' test.out

#- 330 AdminInviteUserV4
eval_tap 0 330 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 331 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "06wOtMeeLe71hNo8", "policyId": "3PIvv8h5FFnWHkwz", "policyVersionId": "HUzVQOrzteHh64Pr"}, {"isAccepted": true, "localizedPolicyVersionId": "hnaSCSwuuNamf3zg", "policyId": "tkVPpcosrJG0SgAk", "policyVersionId": "kR8lRxtdR9h0Cskw"}, {"isAccepted": true, "localizedPolicyVersionId": "0FExsLdfVCw44Qqq", "policyId": "aDkXm3SiyF57idUV", "policyVersionId": "pLMycGM6HzbYbKeb"}], "authType": "EMAILPASSWD", "country": "POvJbAaewInDQp17", "dateOfBirth": "wZbj71MD7hlGQqzp", "displayName": "VX1O011eCEDkU1dt", "emailAddress": "49Em4pttH5ktHxqQ", "password": "lcenuG43FXb8HXmH", "passwordMD5Sum": "Y97tvuxHgZ1QuPIc", "username": "pUycByyHaC4s3ikl", "verified": true}' \
    > test.out 2>&1
eval_tap $? 331 'PublicCreateTestUserV4' test.out

#- 332 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "YyWgZuKu2JYPMFQA", "policyId": "KZsrACMfQW4Qb9Bd", "policyVersionId": "Sp66BnAP00oH9dSH"}, {"isAccepted": false, "localizedPolicyVersionId": "YBxsrhwpS2HV1XVN", "policyId": "DWxaePmoTv7t7FHR", "policyVersionId": "cQbt8uZofsOgTfZh"}, {"isAccepted": true, "localizedPolicyVersionId": "9SuTG52iXdSMVVho", "policyId": "sv1dydSO28z06CVf", "policyVersionId": "N0ETADp7Rmz5fZFR"}], "authType": "EMAILPASSWD", "code": "OGmvbEJaLmKbPX5O", "country": "qV7ZkItcvrmhdpSX", "dateOfBirth": "zU1tEpBclAev6ihj", "displayName": "nuytezfr7EhJi4QR", "emailAddress": "dxQytEGpjExR2jbV", "password": "j5Sm3GGTbCHrufi6", "passwordMD5Sum": "vrzmnU41TtHDVyLg", "reachMinimumAge": true, "username": "Ge4JXs971HXis1Ko"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicCreateUserV4' test.out

#- 333 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'ygAtb7k24NoyKneW' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "7zRibPL6AmM4xaI0", "policyId": "B6GzPaSFKgSUCacM", "policyVersionId": "3YK1KpQ0kkkwcuMm"}, {"isAccepted": false, "localizedPolicyVersionId": "VFCNBc2CPFno1A8o", "policyId": "kjSLoi2ePxglBFDS", "policyVersionId": "hfhWLrBUSLRV47TM"}, {"isAccepted": false, "localizedPolicyVersionId": "IzEK6bSCKLIAYogl", "policyId": "ijH8ZMY5PSaV25j2", "policyVersionId": "SgT0TjQ6GcRjlswh"}], "authType": "EMAILPASSWD", "country": "9fJqTEoDiSeU16zG", "dateOfBirth": "UgRpqiCoWeaJl9a5", "displayName": "CIksbPMHMEjHYbL7", "password": "nwzJh0NUv65Vb7zy", "reachMinimumAge": true, "username": "87nBloLd45XblY8b"}' \
    > test.out 2>&1
eval_tap $? 333 'CreateUserFromInvitationV4' test.out

#- 334 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "DcBxOujIufwIJSsQ", "country": "5EO3ivtrgdBalMBV", "dateOfBirth": "ppDGydGkwzZXNIN2", "displayName": "pYXxMVeMJBNRPGNH", "languageTag": "KiMSOivspInSVUxo", "userName": "loMj4qwFUH7EGCDN"}' \
    > test.out 2>&1
eval_tap $? 334 'PublicUpdateUserV4' test.out

#- 335 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "KFu0P6Mwisb1k6FG", "emailAddress": "yT32zfPEDxihtVlf"}' \
    > test.out 2>&1
eval_tap $? 335 'PublicUpdateUserEmailAddressV4' test.out

#- 336 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Vsvwrxl6H5Cgag7H", "country": "OtIXILmw3maw54kc", "dateOfBirth": "qdN9jkJMPaXUqTpH", "displayName": "h3d6iNVtZ5j8DLRW", "emailAddress": "jabspJp9fchgz0mt", "password": "pNNAOhKqKh7xIMZi", "reachMinimumAge": false, "username": "IQ3puELjSdJMTHYP", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 336 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 337 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "lq0fwSbS7FO98RoJ", "password": "SVjRvBGuwtswLYjV", "username": "juMPvnFMRs74Ew7W"}' \
    > test.out 2>&1
eval_tap $? 337 'PublicUpgradeHeadlessAccountV4' test.out

#- 338 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicDisableMyAuthenticatorV4' test.out

#- 339 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'cArSerq6Gy5LLvas' \
    > test.out 2>&1
eval_tap $? 339 'PublicEnableMyAuthenticatorV4' test.out

#- 340 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 341 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicGetMyBackupCodesV4' test.out

#- 342 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicGenerateMyBackupCodesV4' test.out

#- 343 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'PublicDisableMyBackupCodesV4' test.out

#- 344 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicDownloadMyBackupCodesV4' test.out

#- 345 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicEnableMyBackupCodesV4' test.out

#- 346 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 346 'PublicRemoveTrustedDeviceV4' test.out

#- 347 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'PublicSendMyMFAEmailCodeV4' test.out

#- 348 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicDisableMyEmailV4' test.out

#- 349 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '2sE7lHsYzv05wTGA' \
    > test.out 2>&1
eval_tap $? 349 'PublicEnableMyEmailV4' test.out

#- 350 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'PublicGetMyEnabledFactorsV4' test.out

#- 351 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'awQRWZgGCVw8av8g' \
    > test.out 2>&1
eval_tap $? 351 'PublicMakeFactorMyDefaultV4' test.out

#- 352 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "iqHzENgYKNVQaDi0", "namespace": "0nHP0FAskTlcS3Co", "namespaceDisplayName": "lRW3K8wZhulnGTsL"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE