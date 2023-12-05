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
    --body '[{"field": "BG4hm4LF", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["kKhjgJ70", "ofOCBHsn", "3ZKpbbKq"], "preferRegex": true, "regex": "fscwXGB0"}, "blockedWord": ["jxBbiZ8t", "tJXEtofv", "PZ6R2Xai"], "description": [{"language": "iDEYTtm4", "message": ["5QfuIhjG", "6ZV2903N", "QAtjXyYg"]}, {"language": "zxbeB4Xh", "message": ["TjSXZewi", "0ZFUGnry", "SDxfZYST"]}, {"language": "TCpRN5E3", "message": ["19h4yPIR", "EmYxnPXQ", "5dDMcC8L"]}], "isCustomRegex": true, "letterCase": "2BjgDzql", "maxLength": 38, "maxRepeatingAlphaNum": 24, "maxRepeatingSpecialCharacter": 54, "minCharType": 58, "minLength": 61, "regex": "1CVU2ORW", "specialCharacterLocation": "p1x1mvz6", "specialCharacters": ["PZmyfSWs", "tQ5clpbc", "5WCenHZo"]}}, {"field": "GNnNjNzv", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["Z97zt5WW", "0KxOYZst", "vXhzJUr4"], "preferRegex": false, "regex": "S0moE2bl"}, "blockedWord": ["RYahg9NI", "y60Hft9O", "Sd278v0U"], "description": [{"language": "pJ3xId14", "message": ["f195T4P3", "AoELP1Gq", "UKYRFhCP"]}, {"language": "cJCiQetB", "message": ["0oBHHmlx", "cM6b4cqi", "xKoXuQpi"]}, {"language": "k3XC5Yyu", "message": ["n4WunNOb", "IM0g9yff", "xrtukxnN"]}], "isCustomRegex": true, "letterCase": "XYabqOYv", "maxLength": 70, "maxRepeatingAlphaNum": 20, "maxRepeatingSpecialCharacter": 30, "minCharType": 7, "minLength": 22, "regex": "diWmt2I3", "specialCharacterLocation": "zxrQbYxh", "specialCharacters": ["1dZORJO8", "7QYx0M19", "FTttQw5o"]}}, {"field": "cFPXVIDc", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["XtNDJ2k4", "CW46ddTC", "bGD6bRI5"], "preferRegex": false, "regex": "84cbvwvN"}, "blockedWord": ["g2887n0A", "Eyzsckad", "L79oRYlL"], "description": [{"language": "s5EBrXF0", "message": ["zko7soec", "GwOtwhNQ", "qAwOWdsg"]}, {"language": "CYPyrMNz", "message": ["Aoy5WgKe", "PsJIGSTF", "DRaUv0cK"]}, {"language": "E0fbNpe5", "message": ["NGB16KYo", "ClelIB8X", "ZEkqSI6C"]}], "isCustomRegex": false, "letterCase": "1R5cxxE3", "maxLength": 36, "maxRepeatingAlphaNum": 25, "maxRepeatingSpecialCharacter": 77, "minCharType": 69, "minLength": 56, "regex": "lWz0clfg", "specialCharacterLocation": "nQ4thxYV", "specialCharacters": ["NYN87U7D", "K2Ucduh7", "vehZO3UD"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 't8Mpjl3W' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'Vn0CmDA4' \
    --before 'kdNsRN0Z' \
    --limit '46' \
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
    --body '{"ageRestriction": 71, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'M8mnwuF5' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 32}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'C6DmbyaT' \
    --limit '34' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "xtL3oMbr", "comment": "H5puXt6T", "endDate": "WyZbYIgD", "reason": "ZNNBnZ8X", "skipNotif": true, "userIds": ["WHxQ5Ugu", "9W7DtIgm", "dyCIwfdP"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "XFosnSTI", "userId": "mH0JnvSg"}, {"banId": "fyMDZKLs", "userId": "LHSYGJcO"}, {"banId": "3KtJM3C7", "userId": "mkh7esij"}]}' \
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
    --clientId 'ZJd99ZRy' \
    --clientName 'kryIOkC1' \
    --clientType 'bi8zFLA3' \
    --limit '93' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["7AdM61XR", "9x73nTeK", "iuDyw9tO"], "baseUri": "eV5NRADt", "clientId": "olv371Y0", "clientName": "8WzvnKto", "clientPermissions": [{"action": 99, "resource": "CorxIhJA", "schedAction": 33, "schedCron": "FmLX6g80", "schedRange": ["2G0ONQhi", "g3hjAu39", "6hdo63fy"]}, {"action": 23, "resource": "3Rbi8jg4", "schedAction": 95, "schedCron": "WdIyQOg8", "schedRange": ["DsHLa5DD", "dVnYktna", "US5CKJ82"]}, {"action": 22, "resource": "e2UCsjdr", "schedAction": 83, "schedCron": "BvnOR7vJ", "schedRange": ["iCPRka78", "qaEIY4Hr", "GOn2h2Cx"]}], "clientPlatform": "xQwmU95U", "deletable": false, "description": "edtaIU4F", "namespace": "DVhEypU3", "oauthAccessTokenExpiration": 67, "oauthAccessTokenExpirationTimeUnit": "1clEYFxV", "oauthClientType": "ST9ocUjh", "oauthRefreshTokenExpiration": 59, "oauthRefreshTokenExpirationTimeUnit": "aIHhVCyg", "parentNamespace": "dqK3vTUR", "redirectUri": "DXYR0Rum", "scopes": ["PoS7hviP", "TJmQtuu4", "3b7BHRTr"], "secret": "1VPum4UB", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'TiwqPGr7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '9kQhRj8a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'mob0Whlm' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["8tSZkC8V", "Bj1URcAT", "fVATWyQr"], "baseUri": "hiVZtVW2", "clientName": "lWXEOJ2U", "clientPermissions": [{"action": 87, "resource": "IZqV8ZTY", "schedAction": 32, "schedCron": "WHDJJsRD", "schedRange": ["1XauAk36", "kspJWPXn", "e9AVy1Qi"]}, {"action": 96, "resource": "ITXtiwLm", "schedAction": 31, "schedCron": "6axhxK98", "schedRange": ["Cm1H8iHh", "xhfQKyAV", "w6tcaYPs"]}, {"action": 30, "resource": "S5lFwxNB", "schedAction": 17, "schedCron": "LdeHFjqv", "schedRange": ["I6jZIgXT", "ZXQBt2Vf", "pdDMg9RO"]}], "clientPlatform": "XX4ywWXi", "deletable": true, "description": "nOZ9R9Uv", "namespace": "9GMmuXHi", "oauthAccessTokenExpiration": 66, "oauthAccessTokenExpirationTimeUnit": "waad6YE6", "oauthRefreshTokenExpiration": 16, "oauthRefreshTokenExpirationTimeUnit": "svDZJkOq", "redirectUri": "Bt9TKjgb", "scopes": ["I3ypUlbQ", "flG3kH8l", "CZCVifdt"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'useR3suy' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 89, "resource": "7StAJ0km"}, {"action": 94, "resource": "V04xJJa3"}, {"action": 2, "resource": "252J0EjA"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'Cb77rQRy' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 59, "resource": "V5n8TisR"}, {"action": 55, "resource": "zYaBMseL"}, {"action": 67, "resource": "Uru8DAui"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '10' \
    --clientId 'TwURLK4r' \
    --namespace $AB_NAMESPACE \
    --resource 'UjdG3vQT' \
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
    --body '{"blacklist": ["pMZ0zKP7", "NpRBKAdE", "bXMN8N8X"]}' \
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
    --limit '19' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LY0pPO1M' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9k22Trck' \
    --body '{"ACSURL": "2r0Y59Rb", "AWSCognitoRegion": "Ss3G8l0g", "AWSCognitoUserPool": "dNL87gre", "AllowedClients": ["2xAbD1mD", "kL1E2DiG", "WUPhwayE"], "AppId": "rvxPjImd", "AuthorizationEndpoint": "cfcmC7gp", "ClientId": "Ius4PDUq", "Environment": "Y117TytQ", "FederationMetadataURL": "CDy7gdhm", "GenericOauthFlow": false, "IsActive": false, "Issuer": "bMNu8QVk", "JWKSEndpoint": "g0KYrivU", "KeyID": "8mPvjCHU", "NetflixCertificates": {"encryptedPrivateKey": "7cs8Tu2t", "encryptedPrivateKeyName": "D0sPZBKB", "publicCertificate": "N28NUCiI", "publicCertificateName": "SGncJpNa", "rootCertificate": "sT0Xh7Ax", "rootCertificateName": "AglAm1LS"}, "OrganizationId": "XxG9PzwJ", "PlatformName": "fpkZ0Odx", "RedirectUri": "kDyvyOw7", "RegisteredDomains": [{"affectedClientIDs": ["US3VQqQB", "1q2U9vcO", "XiTYxaNA"], "domain": "1F57uDBn", "namespaces": ["qVKbY4SH", "PveiKCwL", "nvwhzNp5"], "roleId": "wbTmUkuw"}, {"affectedClientIDs": ["UJGFWEPg", "muB2nwj9", "WsYEJJd6"], "domain": "xkiwkPUF", "namespaces": ["9dcLPbVc", "8WeOCmGl", "qnxZyCkX"], "roleId": "YvUbDxOf"}, {"affectedClientIDs": ["Qh5dhr7C", "ZlBsd5YW", "SR4dWZ6F"], "domain": "AFHHBxCz", "namespaces": ["cyF0ST3C", "yFpd60Xt", "7vkFAkAX"], "roleId": "3GY69goA"}], "Secret": "7Ks1zHI3", "TeamID": "ENO9mbcf", "TokenAuthenticationType": "JMtEV3Ay", "TokenClaimsMapping": {"d8rLfZ7N": "BSVkuiRO", "RFO0JgPS": "vmWLxMyN", "7sOeabbp": "DaRjns8w"}, "TokenEndpoint": "4bSDejPX", "UserInfoEndpoint": "988RH2zr", "UserInfoHTTPMethod": "mMqNAufI", "scopes": ["hMspnwcd", "uNbeO5H4", "N3fHjVJW"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WKorerh4' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mvcVPNsL' \
    --body '{"ACSURL": "PTwXFxF3", "AWSCognitoRegion": "CfPcYu6F", "AWSCognitoUserPool": "5AiWnNLN", "AllowedClients": ["XQMgiNDr", "5D3iRR8N", "ae8WrUes"], "AppId": "GIKIO4gc", "AuthorizationEndpoint": "iEWZdkQh", "ClientId": "VAOX5tpe", "Environment": "q47mX3Zu", "FederationMetadataURL": "kEHn0gka", "GenericOauthFlow": false, "IsActive": false, "Issuer": "NDTB9b4T", "JWKSEndpoint": "9MBXsI3d", "KeyID": "Lhh8qwZL", "NetflixCertificates": {"encryptedPrivateKey": "Aa5I7Va8", "encryptedPrivateKeyName": "znWheEDj", "publicCertificate": "FRVur939", "publicCertificateName": "onRJG0MC", "rootCertificate": "auOhHsSG", "rootCertificateName": "8DSWyQDR"}, "OrganizationId": "WTRpR9UB", "PlatformName": "MR6QMvHR", "RedirectUri": "a1XMgLmM", "RegisteredDomains": [{"affectedClientIDs": ["f4oEB15v", "OCCV3g6R", "37EBFNWF"], "domain": "E9Neu6Sv", "namespaces": ["T5Ru9Tpv", "5b1pwrKS", "1jexBTXl"], "roleId": "f9CIwQ0I"}, {"affectedClientIDs": ["TbhZICuv", "zL48ZSam", "siIHhoxY"], "domain": "UD66IBBg", "namespaces": ["fTnSEZ5f", "tFtUEhaC", "1SWRh5Di"], "roleId": "TKWlx8Au"}, {"affectedClientIDs": ["o27HErBD", "Bkd8ry5I", "LnvVUGW0"], "domain": "szpoBY6S", "namespaces": ["PVCt9kWz", "9req8Urq", "hw2KEvdN"], "roleId": "NTXXZovx"}], "Secret": "VSDc8oaP", "TeamID": "rZvAIOlt", "TokenAuthenticationType": "T74jlEjU", "TokenClaimsMapping": {"fiLjIbc7": "iclJQLtc", "PNpH9REO": "2xhGVCHV", "EFjOs5jx": "USH9OZEb"}, "TokenEndpoint": "isxcElZc", "UserInfoEndpoint": "hPI44IEr", "UserInfoHTTPMethod": "9oa9EeLM", "scopes": ["1dW89oEG", "H7rFqt4A", "4NaPF9zz"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FIFNRulk' \
    --body '{"affectedClientIDs": ["v9Isc8vj", "oBO9xsuE", "CRBvdpJh"], "assignedNamespaces": ["7e0UI9SH", "Aqk3nEt0", "3QCFRc2u"], "domain": "Bns8ITPR", "roleId": "fKYuJgym"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'K1NVPGyc' \
    --body '{"domain": "aqzadeEq"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'iTh2KpRq' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'ZOCu9pMl' \
    --body '{"acsUrl": "yFYRXe22", "apiKey": "4au9t1Nf", "appId": "mQ0AkND9", "federationMetadataUrl": "4RCRdPrO", "isActive": true, "redirectUri": "Ud2On6Kp", "secret": "Kh7zjGWS", "ssoUrl": "5fUQoXuo"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IsvPuK4I' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'znVg75Ia' \
    --body '{"acsUrl": "wSlUrWnA", "apiKey": "QrmOvifN", "appId": "JdLXotaD", "federationMetadataUrl": "IWAkwIcc", "isActive": false, "redirectUri": "xb285Jy6", "secret": "uKRPqedX", "ssoUrl": "tcIiKWDV"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VhLlVKxL' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["RYRZiZmC", "vPoQPKOi", "MKNZmEqP"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hrjnZz96' \
    --platformUserId 'qzTDn3Yn' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'VgRGGdYQ' \
    --after '67' \
    --before '31' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'QFHwFnAe' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'MHzNh0j8' \
    --body '{"bulkUserId": ["oRQY9K9r", "sel0SYyM", "vcXReBVf"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BJXs5fkD", "aQHtQ0tb", "5utU2i6G"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["soq3YV1C", "KwWb1U94", "8GdOWlo6"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["ohegQppV", "Gk8ZSww3", "YSoQvGVg"], "isAdmin": true, "namespace": "2v5kcRQJ", "roles": ["6GvS4YUs", "OH6g5kjF", "Cj4LFECB"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '4' \
    --platformUserId '0EudnZUU' \
    --platformId 'JXOAU9PW' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'Klc3LauG' \
    --endDate 'ocwfktCF' \
    --includeTotal 'true' \
    --limit '100' \
    --offset '77' \
    --platformBy 'YgFq9BgB' \
    --platformId 'EO4JCjDo' \
    --query '6dxVrBTu' \
    --startDate '6yjeepgU' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["UmmPFTbM", "lv2jkij7", "gOqFceHd"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UVjdPd33' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zT71GjMY' \
    --body '{"avatarUrl": "xfaRqmhZ", "country": "18tuPiuk", "dateOfBirth": "roodlVID", "displayName": "XTwRldWf", "languageTag": "awGv5Nf6", "userName": "81tQjzQ9"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'atGQOChm' \
    --activeOnly 'false' \
    --after 'nkPmqzzN' \
    --before 'HVhLM07o' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xcOoNGYw' \
    --body '{"ban": "dYhxmPlI", "comment": "LDMrVTIU", "endDate": "vHIfE8OX", "reason": "OiMSQeoK", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'UCRz0Djs' \
    --namespace $AB_NAMESPACE \
    --userId '7dipT9g1' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LgveVcaP' \
    --body '{"context": "YFWqZ8Vz", "emailAddress": "DEop0bU8", "languageTag": "brQnQppf"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Jq0qUsiL' \
    --body '{"Code": "9LgSgZpz", "ContactType": "1ZavNv6j", "LanguageTag": "B62BZqXc", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'Hh62ioXy' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DX2RCPzy' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wS4DE9ed' \
    --body '{"deletionDate": 88, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NBTeXd5v' \
    --body '{"code": "3RzduZhw", "country": "zREhKsIA", "dateOfBirth": "6hFon8ea", "displayName": "aDnMjNUu", "emailAddress": "UPo5Nn5m", "password": "Lr4uO0FL", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hygtiuDt' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nLdwwGG2' \
    --after '0.4923925027119316' \
    --before '0.8075408693148867' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F3eH6iNh' \
    --body '{"languageTag": "2lDt99Av", "newPassword": "6WC08zOu", "oldPassword": "7mlGpqI9"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RSfBfMOw' \
    --body '{"Permissions": [{"Action": 94, "Resource": "eob9CwhY", "SchedAction": 25, "SchedCron": "GrsOuNcs", "SchedRange": ["yHVb92f7", "cHe9Tdry", "Rtoqgsfu"]}, {"Action": 48, "Resource": "AMFwnZyB", "SchedAction": 16, "SchedCron": "XGaRFLhQ", "SchedRange": ["QjgRKZ5B", "HDo5DlAU", "VVcDX0Fo"]}, {"Action": 70, "Resource": "xWhKYWx9", "SchedAction": 28, "SchedCron": "McmeCmc9", "SchedRange": ["QiJsjtFD", "DBEsNKru", "urRx8nl5"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'k72SpTe0' \
    --body '{"Permissions": [{"Action": 50, "Resource": "inxkrhSj", "SchedAction": 12, "SchedCron": "cpkL4zDW", "SchedRange": ["xS9rUYtY", "SqxAzLdY", "I8usdqV5"]}, {"Action": 44, "Resource": "X0pJbjJV", "SchedAction": 58, "SchedCron": "HeAumE70", "SchedRange": ["Rv1spg4Y", "yOVmRd7Q", "KjZCxyBC"]}, {"Action": 4, "Resource": "Sfij1QQC", "SchedAction": 11, "SchedCron": "hadBBM5Q", "SchedRange": ["ZyvATJZD", "Hx4fSvII", "aTUruPcU"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LMVrNXdr' \
    --body '[{"Action": 75, "Resource": "c5zPqQVg"}, {"Action": 13, "Resource": "04BxbEZe"}, {"Action": 76, "Resource": "ytNGSKbK"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '65' \
    --namespace $AB_NAMESPACE \
    --resource '1aUcpuyt' \
    --userId 'mcDXWfBs' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iw6VPixg' \
    --after 'uA16pGrs' \
    --before '1QetCLzJ' \
    --limit '71' \
    --platformId '4bIi6E6p' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'SxWhERUv' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'O1kMnw59' \
    --userId '7vADx1Za' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'CJR5SZR6' \
    --userId 'gJU9DwpL' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'ig222anW' \
    --skipConflict 'false' \
    --body '{"platformId": "jYCrBFgO", "platformUserId": "CnzmzYOK"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '78YAAbls' \
    --userId 'ideslhH5' \
    --body '{"platformNamespace": "bNBXTPAk"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rH9EXbrP' \
    --userId 'Hxf0meeY' \
    --ticket 's6c5wk10' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eEEqQh4g' \
    --userId 'MDPkLLgL' \
    --platformToken 'Ypj6tUeR' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'yPsOkVoE' \
    --userId 'qby82dbP' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yM4LMgcs' \
    --body '["ELniXVcM", "kBHoocTc", "EUpKNGNG"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ipILeqRd' \
    --body '[{"namespace": "ir58HxnM", "roleId": "XKQ3bqgM"}, {"namespace": "4HHA7Kjv", "roleId": "6UzgDoL1"}, {"namespace": "JWtn3bwD", "roleId": "6BMPJzAJ"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'qJGZehqM' \
    --userId '3SyQ92ce' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'VTDHR8Pf' \
    --userId 'SO2tcog8' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TJe7tB2K' \
    --body '{"enabled": false, "reason": "02xSbct8"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'HWN9BLNF' \
    --body '{"emailAddress": "BIGfvKnk", "password": "G395DBVs"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zvVhQx8q' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'OamWEzvj' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "gMcOiTxP"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'KMvQsj1J' \
    --before 'GkwLhRQz' \
    --isWildcard 'false' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "aY879CoY", "namespace": "jmskLlq4", "userId": "0D30IjB2"}, {"displayName": "EyvX6E7x", "namespace": "hUR5wgCf", "userId": "wISpNih3"}, {"displayName": "ziLohu2k", "namespace": "vz2MJJYt", "userId": "Y6tTAvlB"}], "members": [{"displayName": "fSztb2V8", "namespace": "5RNfJWvQ", "userId": "q8Zufhq0"}, {"displayName": "0A4zCRiJ", "namespace": "b5ZEeVdf", "userId": "Y3ThmChB"}, {"displayName": "va2Uge6y", "namespace": "FGWsRLGp", "userId": "o9Ds1yH9"}], "permissions": [{"action": 22, "resource": "BiwruGoU", "schedAction": 45, "schedCron": "mNwPifWm", "schedRange": ["Ns12yWuz", "AhdjzUNQ", "fDjGCEwx"]}, {"action": 37, "resource": "E02Jp9Ww", "schedAction": 75, "schedCron": "C9AmVqa9", "schedRange": ["3e1qotRJ", "ueWVxmT0", "vHubKTEm"]}, {"action": 95, "resource": "wb3a3luF", "schedAction": 53, "schedCron": "4GNu0h2d", "schedRange": ["7WgNcBQS", "XfOj113C", "a9xjp2gp"]}], "roleName": "y3LGwWz2"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '1WCaHF7F' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'CU2tSbBX' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'dkEtLf3s' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "r8aqQOTn"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'HkOw4a5u' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'n0YMtLbV' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'AM5k5Tzl' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'oaffJoQi' \
    --after 'HYdHzx3H' \
    --before 'sFMjpGI7' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'ChNvwk8Z' \
    --body '{"managers": [{"displayName": "yWOOTh40", "namespace": "aFaVDRBL", "userId": "DKndD6Mc"}, {"displayName": "PeFz7AlW", "namespace": "B2Bov47n", "userId": "UFzyonY3"}, {"displayName": "dcAgLI47", "namespace": "b2j7Gusd", "userId": "3THMMKsz"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'qqkNpf89' \
    --body '{"managers": [{"displayName": "OVivnRXV", "namespace": "b17cDQu9", "userId": "yJpIYvm5"}, {"displayName": "MdwdE7fi", "namespace": "FvtRbBSn", "userId": "QyxbwP8c"}, {"displayName": "tuzvz3I0", "namespace": "7VynAOrO", "userId": "DT358ddp"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'QnHKeqCe' \
    --after 'xg4GdJsU' \
    --before 'jZojN6q4' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '0aed5Ogv' \
    --body '{"members": [{"displayName": "FFDTW3Us", "namespace": "8EkCkzMi", "userId": "ht3TPdWn"}, {"displayName": "rVV39382", "namespace": "xKBmd6v7", "userId": "StodKMv1"}, {"displayName": "daszCDIA", "namespace": "926mz6rR", "userId": "BYPcGPmy"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 's4R1lO65' \
    --body '{"members": [{"displayName": "EJTB1GZu", "namespace": "gDdfmpdx", "userId": "DYfqJWDr"}, {"displayName": "aSQkg9pZ", "namespace": "qMzv9rts", "userId": "QufUX1ft"}, {"displayName": "8We1AMpJ", "namespace": "Be3ftp1C", "userId": "i3SIOt0W"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'K2SMo6cH' \
    --body '{"permissions": [{"action": 60, "resource": "ph2yGCb1", "schedAction": 55, "schedCron": "sTYm72v1", "schedRange": ["W3tHfXZC", "j54FJkz5", "JdWuSKr6"]}, {"action": 1, "resource": "cCyGlDNy", "schedAction": 1, "schedCron": "3lbFW5Sb", "schedRange": ["YrBkhLvb", "1pZOE6dq", "hXoTAwnp"]}, {"action": 98, "resource": "ODSxOMv1", "schedAction": 30, "schedCron": "QBMKLsEB", "schedRange": ["22wryCaw", "9UB3zfyy", "6SAraufk"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '95RqAcmN' \
    --body '{"permissions": [{"action": 18, "resource": "4U08yhG2", "schedAction": 52, "schedCron": "nAYtjns1", "schedRange": ["LfUwJHHj", "QCgj8goY", "2tVU09bE"]}, {"action": 58, "resource": "87xnjwYp", "schedAction": 38, "schedCron": "iP4UoO1m", "schedRange": ["yzEFW4j2", "i1pCugBc", "n57MrivF"]}, {"action": 3, "resource": "16L0VjDN", "schedAction": 91, "schedCron": "7bIH4BtL", "schedRange": ["RrzYFpqP", "IxDL1K5A", "nM6X1MAa"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'w7LEzzXV' \
    --body '["agvoxk7Y", "gHkti6rZ", "0NogX734"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '27' \
    --resource 'uOJ7ulxm' \
    --roleId 'YgMUqNN5' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'MnkacojA' \
    --extendExp 'false' \
    --redirectUri 'ch4rRoTp' \
    --password '6agFiSHc' \
    --requestId 'KvGwp0KI' \
    --userName '1mDO3qyZ' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId '3qKNzwYa' \
    --linkingToken 'L0nltSvr' \
    --password '7780Qi9b' \
    --username 'qJ1mIFEv' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'U6b5dNjj' \
    --extendExp 'true' \
    --linkingToken 'toLqdOQQ' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'O23M3sI1' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'iO1r5QD1' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'S75awWKW' \
    --isTransient 'true' \
    --clientId 'RoaPVDxN' \
    --oneTimeLinkCode 'J1Q26i7g' \
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
    --clientId 'S0m2BPaC' \
    > test.out 2>&1
eval_tap $? 218 'RequestTokenExchangeCodeV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QypFlNmx' \
    --userId 'j8XJuBjG' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y7scM1Kp' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'N3x9Is7j' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'ucnOTKHQ' \
    --redirectUri 'xqAQoHB4' \
    --scope 'i3NBdNXf' \
    --state 'TmP4HOzA' \
    --targetAuthPage 'mXbShWw0' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'yfHaYOPD' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'sF8IlCFP' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'yXMwMDp6' \
    --factor 'AABGFaYy' \
    --mfaToken '9Eblsaqe' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'wyhYHs38' \
    --mfaToken 'CPLe1yQR' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'j9w0UbW6' \
    --factor 'IYud2eEL' \
    --mfaToken 'l4kALCO3' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bOLNEIm7' \
    --userId 'm2ldKEFr' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'Q5KP6xiU' \
    --clientId 'wEwgfG0S' \
    --redirectUri 'DPrYxbhy' \
    --requestId '8LpjaQ3X' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'zwg3neJw' \
    --additionalData 'KhtkBcE8' \
    --clientId 'p1VQgiv5' \
    --createHeadless 'true' \
    --deviceId 'mKDGIVXl' \
    --macAddress '8sIDUyXr' \
    --platformToken 'tatMMBBO' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '9JSfDveC' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'k78Xg0s4' \
    --clientId 'RS3OtPZg' \
    --code 't7Qq9rtY' \
    --codeVerifier 'n3ULd0Q6' \
    --extendNamespace 'Nin7XLot' \
    --extendExp 'false' \
    --password 'sPo3eHNl' \
    --redirectUri 'yLDXAiUX' \
    --refreshToken 'zAX02mF4' \
    --username 'rtiF9cAs' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'vzc0aIVS' \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '8UV2Il5E' \
    --code 'jIlep0bp' \
    --error 'D7VaTwjM' \
    --openidAssocHandle 'umBFYlUS' \
    --openidClaimedId 'SwI6PVlm' \
    --openidIdentity 'O6rboq81' \
    --openidMode 'pameZhuR' \
    --openidNs 'nre9y4ti' \
    --openidOpEndpoint 'mwKIzme5' \
    --openidResponseNonce 'yrkjVHfH' \
    --openidReturnTo 'kb39mRDP' \
    --openidSig '6k3XpZPs' \
    --openidSigned 'Z3NYQs1V' \
    --state 'ge6vOTRs' \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'Saa6eH1A' \
    --platformToken 'Ybo4lZJf' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'aafsJy1f' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'BeesGooV' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'mJnUKabI' \
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
    --clientId 'NQgilnaU' \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pAEh1re0' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["zWhHaHDQ", "iN8jHiUi", "hXMgjQHN"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'D6qQrnrN' \
    --platformUserId 'chlZy16Z' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'UTYfLtj8' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'CHhRvgfc' \
    --limit '46' \
    --offset '62' \
    --query 'tTvZDd3I' \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "IeKDwKEK", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "BnCIcHBo", "policyId": "TPSyESbm", "policyVersionId": "xho1PmVd"}, {"isAccepted": true, "localizedPolicyVersionId": "clRYBBHi", "policyId": "GYdeKXRf", "policyVersionId": "WDRANZrV"}, {"isAccepted": false, "localizedPolicyVersionId": "yJGeeYzG", "policyId": "eCtvHCml", "policyVersionId": "aD5hVTjf"}], "authType": "ttUuKX71", "code": "oSwx0hKy", "country": "WAiNORGt", "dateOfBirth": "eGHiCJfK", "displayName": "VEYaej9r", "emailAddress": "Ztk35jjO", "password": "lu7p5ZCz", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'LgxpP1eZ' \
    --query 'aiey8DCb' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["SxvGZonc", "iJZnDxKN", "3XMSTR2H"]}' \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "NK1uz51U", "languageTag": "FD3f6qr7"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "97c2iDBe", "emailAddress": "vtVlwJgh"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "1u1wOuk0", "languageTag": "tupdm1jZ"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'mEVcLzHh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'zTv7mD2C' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "GHGyiqVN", "policyId": "SI02VPOs", "policyVersionId": "FyTZde8J"}, {"isAccepted": false, "localizedPolicyVersionId": "eIiJSpDv", "policyId": "ZAneft8f", "policyVersionId": "Yj7p2U5r"}, {"isAccepted": true, "localizedPolicyVersionId": "aFpuKAla", "policyId": "F8GiluGP", "policyVersionId": "AXllMb9l"}], "authType": "EMAILPASSWD", "country": "8e5Jb6QN", "dateOfBirth": "duEMTJPl", "displayName": "NUM5Qj0k", "password": "gj9Xo9G1", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "fFsbyHJX", "country": "AM8Jxx2m", "dateOfBirth": "cLSIhSAd", "displayName": "xg4zbCvq", "languageTag": "m2nSJ7xb", "userName": "jD7uRnYN"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "yHomnVxt", "country": "RJGkScBG", "dateOfBirth": "1GtTGc26", "displayName": "jdIyTV3f", "languageTag": "8bLiWr0o", "userName": "fI7hjmMs"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "5iwV6QcU", "emailAddress": "dJ8jH5jR", "languageTag": "9bLSN5Cc"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jzLBlO6Q", "contactType": "My3f0KDT", "languageTag": "QQUSbN4z", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "SRuB7sP4", "country": "WQ0cfsMx", "dateOfBirth": "fsaqimt9", "displayName": "ZobNgNeA", "emailAddress": "4TiCM9zI", "password": "jSna6RkM", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "BNrBshwU", "password": "foxtNUL9"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "421PTtrM", "newPassword": "XQx3YtZb", "oldPassword": "hXslSaxs"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'QZfeUUKT' \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yIaBl3ZD' \
    --redirectUri '5iHZk1zS' \
    --ticket 'KS9rdf4I' \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'guRLtVMp' \
    --body '{"platformNamespace": "s14HBcGC"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2cFr5KcD' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3Fgottg2' \
    --ticket 'XSXh9OTe' \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'Qj7ZSZD1' \
    --clientId 'uSXzVnme' \
    --redirectUri 'TS086tnG' \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'xlKjhybs' \
    --code 'NJEswOJo' \
    --state 'jK3casJK' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cIOKRfVh' \
    --code 'CAArmDot' \
    --state 'QGFypbsx' \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "aOqFiqs6", "emailAddress": "ZshvYe88", "newPassword": "rKCl841j"}' \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qS6JZPvB' \
    --activeOnly 'true' \
    --after 'mogFMD1F' \
    --before 'uuAq71ji' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IRXRZQwE' \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j2dMn7Iq' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lINDJqrM' \
    --after '0.397203888742253' \
    --before '0.6599088730923174' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'C438EMJ2' \
    --after 'FoYKw9bJ' \
    --before 'MFppE6n8' \
    --limit '50' \
    --platformId '9todhOLQ' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aZRqr0fE' \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'FKdSwxLd' \
    --body '{"platformId": "RaVyTdC0", "platformUserId": "QZJwmRuO"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'XMn4DA2I' \
    --body '{"chosenNamespaces": ["4PD3Pud5", "nN4j8XHP", "U2Yrr8nk"], "requestId": "SAY47P7G"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cSHiYZqM' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uUsGlqxq' \
    --password 'kuoj7mg9' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '6TcqRPZp' \
    --before 'G0L2TKTN' \
    --isWildcard 'false' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'fQwl7IT3' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'xgRWXQMl' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["DZyWLvye", "B7ppXD6E", "JumaccIE"], "oneTimeLinkCode": "liHgd5ER"}' \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "quUju0F9"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'YQqllxyq' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'fHADlFBZ' \
    --code 'WijjpcD0' \
    --error 'f9CmU7DN' \
    --state 'dQEyjRSF' \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'n4idUIdl' \
    --payload 'LX4VHiE2' \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'Mg887AxC' \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'oSfI9NFr' \
    --code 'fizpCisu' \
    > test.out 2>&1
eval_tap $? 291 'RequestTargetTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '4Ey2Z8Ig' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '0OHpWvkk' \
    --endDate 'X7zd4bgn' \
    --limit '13' \
    --offset '47' \
    --startDate 'zbfAFcUc' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'W4cMWyBs' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "gkxVoUOa", "deviceId": "47LSXwtm", "deviceType": "Gnftaheb", "enabled": true, "endDate": "SEyH1vt7", "ext": {"uSxAVIou": {}, "xfUsYl39": {}, "bG75sHDX": {}}, "reason": "qQqKOV0Y"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'j1pmyWE2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'T3UG2MNE' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'yH9MZ5VU' \
    --startDate 'p8ceZdHn' \
    --deviceType '2en4L2uq' \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '83hXxtGV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId '6uifVUZX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'j2N8G2Xc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'zaMm0zlM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 85}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["qzl2rujd", "wQjodtVn", "OPtCPDcB"]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'V5glR30P' \
    --body '{"avatarUrl": "wLEc3bIl", "country": "DlnHDH2i", "dateOfBirth": "wkKn0cTw", "displayName": "7dflOaGn", "languageTag": "2O31MHV2", "userName": "nqG9WVDY"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NBnfiR7T' \
    --body '{"code": "cOcKeANF", "emailAddress": "QQEaKBl0"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AClyaRsR' \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Pbj3jHrI' \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '4EcrfZsx' \
    --body '{"assignedNamespaces": ["7Vw7ZMwO", "QG7DDitC", "0ufTLO6c"], "roleId": "kkItNp3U"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bDk2Qp3p' \
    --body '{"assignedNamespaces": ["fA0RCqkU", "XsrHZkar", "lsPa3lMB"], "roleId": "4Bq2QBLW"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tFBv2XUJ' \
    --body '{"assignedNamespaces": ["KDmWRe83", "0eBOxGGh", "AZwP7sBM"], "roleId": "cRgV7o0Q"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '92' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "ncJVthgO"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'w11SiwDc' \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'JBogkyJl' \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '39hBRIs2' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "nth295kc"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'q9RGPp2J' \
    --body '{"permissions": [{"action": 49, "resource": "rUfpGIqH", "schedAction": 99, "schedCron": "YTAM7Xnb", "schedRange": ["QH6jIuRw", "EfpiIQL2", "aiEjfNnV"]}, {"action": 26, "resource": "wSmeby36", "schedAction": 59, "schedCron": "F9ouoWM8", "schedRange": ["82LOW54G", "3Dd0Q20r", "c3iB1poG"]}, {"action": 72, "resource": "MKAD3YfA", "schedAction": 84, "schedCron": "k9epn4Hy", "schedRange": ["VwkKxFMd", "HFo9cT4K", "7pJcP6yk"]}]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'aixJFLga' \
    --body '{"permissions": [{"action": 2, "resource": "kT3yRlIR", "schedAction": 75, "schedCron": "g2j72dlm", "schedRange": ["BGQbIUDw", "U27IPnv4", "dDUKACrk"]}, {"action": 61, "resource": "45f0sHo9", "schedAction": 75, "schedCron": "IWgcEPSr", "schedRange": ["GA5QIrLg", "RkLhnKNB", "Kp9w0OCL"]}, {"action": 30, "resource": "ev3LBUTx", "schedAction": 18, "schedCron": "sIpVILcW", "schedRange": ["yIsR8VWo", "hDIbDLxm", "vOsipdXf"]}]}' \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'tCSN74Fi' \
    --body '["OWx5CNEM", "vDJEJR0a", "rRHpxLDO"]' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'Hcw8ABKO' \
    --after 'fF19MG2r' \
    --before 'YQz185ef' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'mZjogMsI' \
    --body '{"assignedNamespaces": ["bimDKfro", "IAKCboNV", "HAfbpEnK"], "namespace": "0Lvm0aK1", "userId": "l2jnmCQG"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'vh2UpPR1' \
    --body '{"namespace": "qAwcLA4s", "userId": "M2yu4q9u"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["7GD39nYx", "lSqDPvA4", "uQHZCfCw"], "emailAddresses": ["DFmitTeV", "HjPkXzT8", "7BF4aO5z"], "isAdmin": true, "namespace": "cPq3L76p", "roleId": "LIsjOFIL"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "vJWrTNI5", "country": "6fAsofr5", "dateOfBirth": "iSaTlAVR", "displayName": "kMNHvPBK", "languageTag": "uC227Cpn", "userName": "3rSANuG4"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'KxHzmJjb' \
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
    --code 'hAzIkOYG' \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'uQbYp3g2' \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Dq81HI3q", "policyId": "EZQ9nYwC", "policyVersionId": "GT1BWOt3"}, {"isAccepted": false, "localizedPolicyVersionId": "ZeqMOlOs", "policyId": "XiMjPwkB", "policyVersionId": "SHVx9ISy"}, {"isAccepted": true, "localizedPolicyVersionId": "zXtcyA0I", "policyId": "8diIf6aM", "policyVersionId": "AlFIn3T7"}], "authType": "EMAILPASSWD", "country": "yWBDLoUK", "dateOfBirth": "CPMzcciF", "displayName": "f9tWEmNh", "emailAddress": "ICjJFau8", "password": "IkKh7hqV", "passwordMD5Sum": "2URshOIf", "username": "P3BYsaUD", "verified": true}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "tZ8cTmPr", "policyId": "g5mb9Edc", "policyVersionId": "uN9N5iPt"}, {"isAccepted": false, "localizedPolicyVersionId": "GtW4DGkF", "policyId": "znKYOMHc", "policyVersionId": "NLzYbKds"}, {"isAccepted": false, "localizedPolicyVersionId": "vZMsrVXe", "policyId": "zumTzZbt", "policyVersionId": "BCs03vJp"}], "authType": "EMAILPASSWD", "code": "KmFPUlEL", "country": "NCDN9CW7", "dateOfBirth": "NZRaBBtc", "displayName": "1sKFg8Op", "emailAddress": "vkqzzqOB", "password": "ldBfqG0W", "passwordMD5Sum": "rxSzWImn", "reachMinimumAge": true, "username": "4NLL4Pyb"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'fEO9u5y7' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "e5RKRAYK", "policyId": "W9ebTdi9", "policyVersionId": "VBtFBp3G"}, {"isAccepted": true, "localizedPolicyVersionId": "DQpsXhMl", "policyId": "N7krgZFs", "policyVersionId": "n1uePdrx"}, {"isAccepted": false, "localizedPolicyVersionId": "AyE8IB96", "policyId": "niRT2xTH", "policyVersionId": "efQsIlnB"}], "authType": "EMAILPASSWD", "country": "LaycgBxc", "dateOfBirth": "onOHHwt3", "displayName": "ZvWnYfZS", "password": "mh6OvQLc", "reachMinimumAge": false, "username": "I3PRpdsc"}' \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "LsSpZoXv", "country": "xj6td4za", "dateOfBirth": "cBZsugKy", "displayName": "DY7Yl5iv", "languageTag": "XoFI1AnC", "userName": "5j8NgmxL"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "H5TbsVQC", "emailAddress": "ldIMukHy"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mirwfk0U", "country": "GAiojT5o", "dateOfBirth": "T4SrieCK", "displayName": "Nrk8UoOi", "emailAddress": "OrmU8L9u", "password": "h8OePhC8", "reachMinimumAge": false, "username": "BtsfBVGO", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "hFovRXPe", "password": "7a7nFdoE", "username": "NNqxX7jN"}' \
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
    --code 'ol9fgTSn' \
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
    --code '6iJwHRbS' \
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
    --factor 'TWtBu0g3' \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Ba1lhHnL' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "0Qm07KIv", "emailAddress": "uB4exZAH", "namespace": "GhdoitTr", "namespaceDisplayName": "E8Hn9xJ7"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE