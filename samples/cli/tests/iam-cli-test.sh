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
    --body '[{"field": "rbzoTm21", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["5Is3sIeA", "R90G6YIV", "yOaGBsxy"], "preferRegex": true, "regex": "TIaks1wj"}, "blockedWord": ["uhCSZzdt", "eJ4qHPsR", "2ZF9orJf"], "description": [{"language": "PP0LWkya", "message": ["jYBkhYkt", "9v16n3JM", "KEhubNGA"]}, {"language": "Ik0IcKwK", "message": ["1nk6ivif", "SVoyHm6q", "xTKgoCEL"]}, {"language": "VJxr2pp4", "message": ["uK9EhaVe", "2dSXU5DE", "vuG3lZJS"]}], "isCustomRegex": true, "letterCase": "r7ZmEF4a", "maxLength": 72, "maxRepeatingAlphaNum": 43, "maxRepeatingSpecialCharacter": 54, "minCharType": 12, "minLength": 69, "regex": "E1952My3", "specialCharacterLocation": "AOr7zoT0", "specialCharacters": ["K8Dipfil", "DptTAY5C", "ZQUyFL9Y"]}}, {"field": "fcnc6snR", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["AwvOWptZ", "Fit7cm1G", "0KO8L8gW"], "preferRegex": true, "regex": "7oOSXlGf"}, "blockedWord": ["vO9f5Jcl", "ljpBP5Nr", "ThKhb5GZ"], "description": [{"language": "89qIde2b", "message": ["PSAByWHN", "GjnVIAkg", "PxWusb88"]}, {"language": "XZySFPhR", "message": ["1XJ482kg", "Qa3VMhFi", "RaKb1ZK5"]}, {"language": "uO4sAHNG", "message": ["PI8YCbB6", "qrwh4BxO", "B7HAVe8q"]}], "isCustomRegex": false, "letterCase": "VoBYjzhK", "maxLength": 87, "maxRepeatingAlphaNum": 67, "maxRepeatingSpecialCharacter": 73, "minCharType": 94, "minLength": 34, "regex": "lOcozmNY", "specialCharacterLocation": "s1AuUazM", "specialCharacters": ["bBBhPKQp", "rVbWJYeW", "UOYYtWdx"]}}, {"field": "GaJEvKXN", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["VZE85UKf", "tOSfGHa6", "ZWVk8CFX"], "preferRegex": false, "regex": "kZGVvJ34"}, "blockedWord": ["75byifW5", "K6XYuZmj", "2LaGpZMj"], "description": [{"language": "3RGIFTtS", "message": ["Xw2aGy11", "rszvk46D", "Uo95ox89"]}, {"language": "nffewVyZ", "message": ["r2VidfTI", "pgKtN8Ws", "yAy4j5xP"]}, {"language": "wQ6HUuAm", "message": ["0f4EQJah", "ZgkRsYtf", "09SbdtPb"]}], "isCustomRegex": true, "letterCase": "MnAnfe8K", "maxLength": 49, "maxRepeatingAlphaNum": 46, "maxRepeatingSpecialCharacter": 22, "minCharType": 54, "minLength": 31, "regex": "BvoZZ7xm", "specialCharacterLocation": "Dg68NJhS", "specialCharacters": ["epBLeaUO", "8zpkz2pL", "fZ0jjnuM"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'p2LxHjyC' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'nkz4JTS9' \
    --before 'kfuxcJFd' \
    --limit '16' \
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
    --body '{"ageRestriction": 9, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'DMCuiZ34' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 40}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'JefF79oO' \
    --limit '35' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "XRcQnhJV", "comment": "U06rxMy5", "endDate": "r7x1ubzq", "reason": "zNDsse78", "skipNotif": false, "userIds": ["4OfcDQrL", "v3jbk7T6", "jfhFZrzG"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "R4tdwVK3", "userId": "LAC6QuUA"}, {"banId": "ZShsPO78", "userId": "Sjcwqcrd"}, {"banId": "KBOGfIoa", "userId": "aFwEb1ii"}]}' \
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
    --clientId '2rYkWXHK' \
    --clientName 'uqm0OhNn' \
    --clientType 'gFzBQRnX' \
    --limit '3' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["XrgBMsR3", "RhQVWW6L", "7ZipK1Ak"], "baseUri": "GHYcQil3", "clientId": "xDcmTqdk", "clientName": "UtDBhp62", "clientPermissions": [{"action": 9, "resource": "7dgRHQwm", "schedAction": 70, "schedCron": "0ICdamhS", "schedRange": ["qSI6Zj53", "7SUKVyuj", "ZumSa0Wm"]}, {"action": 77, "resource": "zmAeC7wM", "schedAction": 25, "schedCron": "DeKk3K3w", "schedRange": ["5mh4XgAj", "pwcFHKzY", "krzVVRnl"]}, {"action": 95, "resource": "WkXJDqq1", "schedAction": 20, "schedCron": "KICNq6Tq", "schedRange": ["ZvZMFghu", "4JStThup", "nxYTuDCT"]}], "clientPlatform": "Qmnpyn1r", "deletable": false, "description": "n1DmEfoS", "namespace": "rRbFsbW3", "oauthAccessTokenExpiration": 32, "oauthAccessTokenExpirationTimeUnit": "6Sdbhal6", "oauthClientType": "yuSTIdvH", "oauthRefreshTokenExpiration": 65, "oauthRefreshTokenExpirationTimeUnit": "Nike2Omo", "parentNamespace": "rSwBAg92", "redirectUri": "w6oWCpf2", "scopes": ["NQDYGxTy", "DwecemCB", "VJ8E62mW"], "secret": "ePO3ivBL", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'AD9ZRKLL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '5MKrBUC3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'no46e0X7' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["enq0ICkc", "WPNaXPjx", "Qz40hGqQ"], "baseUri": "sHfrpgbY", "clientName": "sVegILiP", "clientPermissions": [{"action": 55, "resource": "Xr5nMK1y", "schedAction": 60, "schedCron": "sOgxNIhf", "schedRange": ["GZkpYKcC", "E7Jg7Kl0", "ZTz5OVDk"]}, {"action": 73, "resource": "zmHBt0AK", "schedAction": 65, "schedCron": "HJGWuMZM", "schedRange": ["4BZuwIAW", "MUYuYbVo", "suqE1UHB"]}, {"action": 7, "resource": "ysRRCgUo", "schedAction": 94, "schedCron": "UT6qG5Pi", "schedRange": ["UF45l56D", "GtvF0OFQ", "JRVIoVh4"]}], "clientPlatform": "ZBpCHZq6", "deletable": true, "description": "qViVvwsf", "namespace": "rsL57cgq", "oauthAccessTokenExpiration": 36, "oauthAccessTokenExpirationTimeUnit": "8RXA9G5b", "oauthRefreshTokenExpiration": 33, "oauthRefreshTokenExpirationTimeUnit": "fgjUfDN7", "redirectUri": "36gp1AdF", "scopes": ["ZX2iiuwJ", "91YHtQRh", "srF8XV0V"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'dfcZja5s' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 15, "resource": "mhJ5wjId"}, {"action": 2, "resource": "TgLTc9IX"}, {"action": 31, "resource": "2JXVB5RH"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'Z29HXtFp' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 62, "resource": "qp5E0ASE"}, {"action": 59, "resource": "cyZoihEW"}, {"action": 100, "resource": "25DBL1O5"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '76' \
    --clientId 'CBqUJBC8' \
    --namespace $AB_NAMESPACE \
    --resource 'NDq3ckkX' \
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
    --body '{"blacklist": ["ZG1e8HQT", "ovpg7pRR", "oyEg20FH"]}' \
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
    --limit '10' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bi0u3MjX' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VZc1Jyqs' \
    --body '{"ACSURL": "j67pr0P6", "AWSCognitoRegion": "AElzFD9z", "AWSCognitoUserPool": "kDgURvgr", "AllowedClients": ["tencdG8h", "NCnLuFEZ", "7hEZ0buN"], "AppId": "hxhNRY2f", "AuthorizationEndpoint": "cM4nerCY", "ClientId": "LQ5FQnXm", "Environment": "cNvfp7eh", "FederationMetadataURL": "mkkNgln1", "GenericOauthFlow": true, "IsActive": false, "Issuer": "d5k38cFI", "JWKSEndpoint": "FytbmgJb", "KeyID": "3vjfp9sZ", "NetflixCertificates": {"encryptedPrivateKey": "Q3j6seki", "encryptedPrivateKeyName": "rN7veDTW", "publicCertificate": "5e6HlVRy", "publicCertificateName": "ZwIpbjNd", "rootCertificate": "IJP1v8G9", "rootCertificateName": "BySq97ce"}, "OrganizationId": "crcugayB", "PlatformName": "ebmLfj22", "RedirectUri": "lLzlxL0W", "RegisteredDomains": [{"affectedClientIDs": ["uMsmaTib", "6XyNsimg", "JxkSEGK0"], "domain": "znlmBEM8", "namespaces": ["jbr6vhBg", "rOpUr73c", "Xj0bfvZv"], "roleId": "dfI5FQrp"}, {"affectedClientIDs": ["bxHxCKUj", "n3rBqJZc", "G0gQ8nrK"], "domain": "LRBwxIxd", "namespaces": ["QJUpSph4", "wU11v1pi", "jS8L43Ii"], "roleId": "ggygccSu"}, {"affectedClientIDs": ["MfapX2WW", "eZBVk0AX", "nXamz0iU"], "domain": "JvOeYNtt", "namespaces": ["GmefOiN7", "sbRJs04X", "MmVExPFM"], "roleId": "smwAWP8D"}], "Secret": "lQEvKo7D", "TeamID": "4MbIBepv", "TokenAuthenticationType": "7Eu6kfC4", "TokenClaimsMapping": {"ajdbDu5d": "snGuKZkU", "btKwJSVg": "o4MvnvRo", "k0h5rzqI": "FljDLAEm"}, "TokenEndpoint": "b5VwvQJl", "UserInfoEndpoint": "dyBOInoF", "UserInfoHTTPMethod": "Tpth90UV", "scopes": ["Z9X3IT2u", "tfuetw1t", "cdjtJOBu"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HzmuzH0M' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BCwkbLFY' \
    --body '{"ACSURL": "izWPbsl3", "AWSCognitoRegion": "NfVwaNnj", "AWSCognitoUserPool": "kTyMcU9Y", "AllowedClients": ["CMwE0sWx", "JMrbBFWh", "VePTEGqa"], "AppId": "ez9aWZiz", "AuthorizationEndpoint": "r92X8ViC", "ClientId": "5MEhimUf", "Environment": "mssKKNsK", "FederationMetadataURL": "qnKCOZfI", "GenericOauthFlow": true, "IsActive": false, "Issuer": "NmWYjtR0", "JWKSEndpoint": "7DPrwBfB", "KeyID": "gUYFFJpa", "NetflixCertificates": {"encryptedPrivateKey": "yukIbKv8", "encryptedPrivateKeyName": "IfKB4UXv", "publicCertificate": "KglBKKcB", "publicCertificateName": "Z6Bg6WWH", "rootCertificate": "DVNPM0lu", "rootCertificateName": "T4bksLiI"}, "OrganizationId": "zPKUBmMA", "PlatformName": "YNltE6VJ", "RedirectUri": "3iKQ240S", "RegisteredDomains": [{"affectedClientIDs": ["fnIKDHD7", "puLGHsqh", "sXGDJoHt"], "domain": "wQEC9u0t", "namespaces": ["Z27J6kWj", "q7suLezP", "EjqTBbJu"], "roleId": "DtnB4rND"}, {"affectedClientIDs": ["Wudqcyg6", "sfsVUyXX", "aiqS4w8S"], "domain": "6RASjvWh", "namespaces": ["P5iNHW81", "VVmfl8cA", "MnkLu7st"], "roleId": "UWyVdv6k"}, {"affectedClientIDs": ["SAkRXvs7", "oCu0suTp", "ARAc3oHU"], "domain": "6rhopnXE", "namespaces": ["IXp2ziEH", "H9iTWZN3", "Z1qKwOIU"], "roleId": "Klz0MTjL"}], "Secret": "hyJshI5s", "TeamID": "EED03h5o", "TokenAuthenticationType": "BIdz7VsB", "TokenClaimsMapping": {"dTCuM5J6": "l02GzAJY", "qewQwFXf": "xMxASf9W", "QgszIUXy": "SsvbWSMl"}, "TokenEndpoint": "k5kv6agW", "UserInfoEndpoint": "lgpxMwvG", "UserInfoHTTPMethod": "kZy0JSIb", "scopes": ["7DuGxLZf", "IvgOYpvx", "CgQsKXXs"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vgNWqi31' \
    --body '{"affectedClientIDs": ["6SoyltGR", "A3xO17Hf", "zwHR3LPL"], "assignedNamespaces": ["MkX21jBQ", "N2UOpFqH", "M9VmUx66"], "domain": "DtefuvVe", "roleId": "25Q4Cc7l"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BN6UVztP' \
    --body '{"domain": "DsQ6ifg4"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'XY3lvvbW' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'yQLMLVhq' \
    --body '{"acsUrl": "SgfsFmGW", "apiKey": "wMRP7Bt6", "appId": "2xKu4Yc9", "federationMetadataUrl": "OgGetavK", "isActive": false, "redirectUri": "RGjWh7Vq", "secret": "C1fDcDE9", "ssoUrl": "6l6Eaq6j"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YJxKCgm4' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'qAFZ7gYv' \
    --body '{"acsUrl": "VpYkTvsK", "apiKey": "B0qR2Cd4", "appId": "IdX2OijG", "federationMetadataUrl": "XxejJYed", "isActive": true, "redirectUri": "qVuWuwyk", "secret": "N7GQ0MeZ", "ssoUrl": "qeb4qovx"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LFpA8cWg' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["bIxWalyL", "12XGvlSl", "98qSVlC6"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kJgP5Kx6' \
    --platformUserId 'WlF5erBs' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'LY3hpM3M' \
    --after '99' \
    --before '15' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'p6dlvH6G' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'ZNMFk1FA' \
    --body '{"bulkUserId": ["73jimE5t", "7GDzcFgs", "u3cxXKjH"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["IGzdnYjS", "HNA4GnDt", "FkfDtHCf"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jIcni19q", "mEItSYOy", "ulwmN6Lc"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["1kJD2hla", "huq35c30", "Aho36zG2"], "isAdmin": false, "namespace": "UpCVSxeF", "roles": ["czUw8aCc", "itSAb0yT", "tk7Jyrpf"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '84' \
    --platformUserId 'DuSiYxwN' \
    --platformId 'jTom6R2f' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'r07EGon0' \
    --endDate 'OrHe5UAY' \
    --limit '51' \
    --offset '24' \
    --platformBy 'Kz28BCGt' \
    --platformId 'GiGQbJDH' \
    --query '0Ak8SS34' \
    --startDate 'ffy0XnWi' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["gpzrgvy4", "j12nxVNm", "GizFZ0c3"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'k6kNoA9X' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '8UMrrVun' \
    --body '{"avatarUrl": "qU87gkX5", "country": "pvPgmLKA", "dateOfBirth": "VhcppHdz", "displayName": "dBoriEFU", "languageTag": "wqGVsi53", "userName": "namVdteo"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aPA4TAhr' \
    --activeOnly 'true' \
    --after '4fMKWszU' \
    --before 'VRMXllUL' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WTJHEQgx' \
    --body '{"ban": "uwCQ8NSp", "comment": "M20xCK5f", "endDate": "vUkJ1h5j", "reason": "vfI1UIA2", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'SHPuopq1' \
    --namespace $AB_NAMESPACE \
    --userId 'yWqcgzEI' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '4uurCGDj' \
    --body '{"context": "1Z8DIJEd", "emailAddress": "k4sI7VKC", "languageTag": "bSaJ3cXs"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'v5MMCcAo' \
    --body '{"Code": "QxRxSfQu", "ContactType": "2mxam7Uf", "LanguageTag": "OzHPnYsb", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'LJOe61eJ' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wOV4UyLM' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JzLxPkJX' \
    --body '{"deletionDate": 77, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tYjVRqG9' \
    --body '{"code": "SZAdVZep", "country": "svDGKQPt", "dateOfBirth": "My0DTTJ9", "displayName": "HlOi1dA3", "emailAddress": "mIeWytdm", "password": "Zr09pRTE", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '94M2Xg5z' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '6jeEr0As' \
    --after '0.07317928288141162' \
    --before '0.6118837524678923' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IQgD8La4' \
    --body '{"languageTag": "18yckDMz", "newPassword": "FpqVkdNP", "oldPassword": "DC1Euium"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KBoTdLNF' \
    --body '{"Permissions": [{"Action": 29, "Resource": "t7PJPM4C", "SchedAction": 61, "SchedCron": "lmTmUY8x", "SchedRange": ["bqGxGg7z", "BwdGXpxt", "z6apOvhH"]}, {"Action": 64, "Resource": "Cf9BSMGr", "SchedAction": 76, "SchedCron": "arYTS4uB", "SchedRange": ["VSbsMuD6", "KRd7Lqzn", "yZIFPD8R"]}, {"Action": 73, "Resource": "9CQWz4p4", "SchedAction": 4, "SchedCron": "y4kCN3xp", "SchedRange": ["QlBMXWWa", "S9p4967D", "wZyTVSpZ"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MKppMFax' \
    --body '{"Permissions": [{"Action": 37, "Resource": "u1Uum2sv", "SchedAction": 3, "SchedCron": "nXfYE3km", "SchedRange": ["tRAww1GD", "iFRQOiMD", "wE14JadQ"]}, {"Action": 74, "Resource": "OiZZzl0j", "SchedAction": 36, "SchedCron": "hl77C3R6", "SchedRange": ["tQILwts3", "rqDYqk3N", "pAbySeCW"]}, {"Action": 32, "Resource": "qv53GeY7", "SchedAction": 95, "SchedCron": "anoBOk2V", "SchedRange": ["G3em0z9A", "lzqIZKjS", "lj5KcKRn"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kN1tL3Xq' \
    --body '[{"Action": 57, "Resource": "WFZDa1L2"}, {"Action": 20, "Resource": "saytZITZ"}, {"Action": 51, "Resource": "P0dDXxbz"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '62' \
    --namespace $AB_NAMESPACE \
    --resource 'c9D0zfni' \
    --userId 'kK0EKddC' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'br4EDzgr' \
    --after '90b1Fhws' \
    --before 'H2z3OZEU' \
    --limit '62' \
    --platformId 'w3zaFavf' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'X1W72p31' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'LzE4hZr5' \
    --userId 'WejiAGOP' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'GuEMa9wE' \
    --userId 'XLo60ZUc' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'UfwEB3Fa' \
    --skipConflict 'false' \
    --body '{"platformId": "fyAl32wz", "platformUserId": "0n27udGq"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xdNXYY0m' \
    --userId 'qR0bpBxz' \
    --body '{"platformNamespace": "pR84NYzL"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'u55WktI2' \
    --userId 'Q3BwQUr7' \
    --ticket 'mWPR2WNR' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rJne32VM' \
    --userId '5Hksstgp' \
    --platformToken 'jUV1hIbT' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId '2SQvK1Bg' \
    --userId '8AFY3y2v' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kGNigoZe' \
    --body '["MhHIvK87", "XivXkt9O", "5S5ZOrFs"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rQScgbRj' \
    --body '[{"namespace": "Pv1QbCys", "roleId": "QNMKsw7S"}, {"namespace": "DPZhx99C", "roleId": "wRo0kVGL"}, {"namespace": "EpxTpGhq", "roleId": "sTbuhZtg"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'GsvtB5yZ' \
    --userId '8MyYOfAY' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'fclFISUl' \
    --userId 'IpPoyENF' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xsBjNITS' \
    --body '{"enabled": true, "reason": "O3P4JXLP"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'ODavKazr' \
    --body '{"emailAddress": "djxeLOFt", "password": "WiNsB1oV"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cHWcwxRK' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'ZknGrf4s' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "dlS1e5Jg"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'SyGYyUQt' \
    --before 'f5XLwqod' \
    --isWildcard 'false' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "tFeCwhuJ", "namespace": "S0c9rF5f", "userId": "awqPm7zX"}, {"displayName": "9ydyjT2Y", "namespace": "VUSpsxwx", "userId": "25qRZS9U"}, {"displayName": "bM6jtTiL", "namespace": "sOb6F5H3", "userId": "DeOn9oS7"}], "members": [{"displayName": "Edy1YYrS", "namespace": "toyPYK9b", "userId": "eL0Xv0Wk"}, {"displayName": "OUgGUUwc", "namespace": "0SuW5n1A", "userId": "Ds3BTdLO"}, {"displayName": "Pnh2fWNP", "namespace": "vDUvrDES", "userId": "o7cP9nS6"}], "permissions": [{"action": 20, "resource": "4xF4D9vs", "schedAction": 87, "schedCron": "5ZNZLUB2", "schedRange": ["qHbDbnPq", "OeKlS9vT", "Cj18BMYq"]}, {"action": 63, "resource": "LXQDemYF", "schedAction": 39, "schedCron": "evl0fVa1", "schedRange": ["PmCQyTdH", "1BKVbo6y", "7pMXBAAg"]}, {"action": 51, "resource": "mKJPSbi1", "schedAction": 71, "schedCron": "Et1Z40Ny", "schedRange": ["1n0EogJk", "Uof8IUmX", "kBE0QVb7"]}], "roleName": "xHsj3eVT"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'IRwF1wmo' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'rYN4rwE6' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'r1chIFSY' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "jGoQbGBk"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '9crhraly' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '3kdLf2X9' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'cdt1pXFJ' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'UHoWTERz' \
    --after 'qzVwl8KU' \
    --before '0dImC1tT' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'ih4lyB1u' \
    --body '{"managers": [{"displayName": "Z8ar1NEh", "namespace": "kUksw8zP", "userId": "BJvh4ENW"}, {"displayName": "OqZjmPyg", "namespace": "IBASqw3M", "userId": "nqRAbkUG"}, {"displayName": "KmKMHR9d", "namespace": "yeFMVp20", "userId": "rzcaJFXk"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'bdUhbXpq' \
    --body '{"managers": [{"displayName": "mNFVFJhB", "namespace": "n7sn63Fz", "userId": "u4iAZSaf"}, {"displayName": "pI4QV1kd", "namespace": "gXXtz9kw", "userId": "TO1uujqL"}, {"displayName": "SFadw8UG", "namespace": "wiUfkMqn", "userId": "w5nl9ZAc"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'K5LcDPAr' \
    --after 'lEkaBMrs' \
    --before 'Z5azmoA2' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '9yQKs2M7' \
    --body '{"members": [{"displayName": "FRPdABfe", "namespace": "0uzB8Sv0", "userId": "66CX2xcL"}, {"displayName": "Wac5qB2N", "namespace": "weWNvGl8", "userId": "gxiHpLoS"}, {"displayName": "j7wbcZA5", "namespace": "nr4TZX6H", "userId": "4mS1a11F"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'pKkkhuOL' \
    --body '{"members": [{"displayName": "lsF9W9OQ", "namespace": "OdXfHU1d", "userId": "fBXump7M"}, {"displayName": "HB6V9Cts", "namespace": "WQbx3v29", "userId": "BIegSMle"}, {"displayName": "FVdnnkGY", "namespace": "7A4CEfhc", "userId": "QHXOrqkr"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '4gbuuN8W' \
    --body '{"permissions": [{"action": 8, "resource": "tlVFHsWL", "schedAction": 85, "schedCron": "mxoQnjav", "schedRange": ["XblHlyeT", "oTv2s0Dt", "Ms1ipIEF"]}, {"action": 34, "resource": "a35LFUPX", "schedAction": 11, "schedCron": "gRRX8JtV", "schedRange": ["ixIZ47C6", "zHPJWBFm", "M5sOErDX"]}, {"action": 89, "resource": "yt8j1XPF", "schedAction": 99, "schedCron": "hcECLyUd", "schedRange": ["IVFCboRy", "CvvC4yYN", "J5hy9SOJ"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'Eo75g2P1' \
    --body '{"permissions": [{"action": 54, "resource": "oYBKEFCc", "schedAction": 72, "schedCron": "QYVqGNBO", "schedRange": ["hfkKCXJR", "ksWtjgbm", "FI3H17Pm"]}, {"action": 34, "resource": "f1ctuP0s", "schedAction": 53, "schedCron": "ygFt7LPG", "schedRange": ["AWlEgTy8", "j61tkyUu", "6Eo3V4rl"]}, {"action": 34, "resource": "L0EN9HtV", "schedAction": 30, "schedCron": "TZnmSJII", "schedRange": ["Udal5kAQ", "7QKH6aXv", "2lfyvyWG"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'IkxgHNK5' \
    --body '["3tTUDJGq", "gpWAllrG", "jApRXCdD"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '77' \
    --resource 'GgNGlJAh' \
    --roleId 'Xc18e4n2' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'y3Wom6NW' \
    --extendExp 'true' \
    --redirectUri '49eyZzoj' \
    --password '1olxUMYI' \
    --requestId 'czmE2rSG' \
    --userName '9BjXV8qV' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId '9CoZhBkg' \
    --linkingToken 'jw0VU5yB' \
    --password '9OQhi3Mo' \
    --username 'IjRvdaKe' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'zhdXGNLr' \
    --extendExp 'true' \
    --linkingToken 'D4oMmIKN' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '672C2Ztx' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'WmUbdftL' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'lsnOOl2D' \
    --isTransient 'false' \
    --clientId 'rat34VvL' \
    --oneTimeLinkCode 'IkUwr8AE' \
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
    --clientId 'QdxT2XEa' \
    > test.out 2>&1
eval_tap $? 218 'RequestGameTokenCodeResponseV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TNt7hLfr' \
    --userId 'qpBoMagU' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UoSEWzlP' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'aqWRO4L8' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode '9vpP95tt' \
    --redirectUri '41WIvW11' \
    --scope 'dP4VzPKb' \
    --state 'zv7WgHZC' \
    --targetAuthPage 'rlthCZY9' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'MgZ7YxHZ' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'dZyVicTe' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '6bWmC433' \
    --factor 'uwGAbpBI' \
    --mfaToken 'kpEvqexh' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'kLefs4ai' \
    --mfaToken 'ZiGqlQwb' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'GuGkx9hL' \
    --factor 'sxZuVs0k' \
    --mfaToken '6k67ttVX' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Be5tK5OV' \
    --userId '3DwD5EAY' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '4a40FNJQ' \
    --clientId 'BtaeVH6s' \
    --redirectUri 'B3GWo4hE' \
    --requestId 'nasFCOaU' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '5m6obr8L' \
    --additionalData 'cxPY5qzi' \
    --clientId 'fEjUUcoo' \
    --createHeadless 'true' \
    --deviceId 'XuDI8N8p' \
    --macAddress 'A7PrB2Io' \
    --platformToken 'oFZ4XIRJ' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'yj5pZCzX' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'Fi7ZU7Jv' \
    --clientId 'fwIzIXBM' \
    --code 'RgEGRm2K' \
    --codeVerifier 'eNaX2u1B' \
    --extendExp 'false' \
    --password 'MTYJ0t5T' \
    --redirectUri 'oF2rbE1y' \
    --refreshToken '09wKACsL' \
    --username 'LRxFnSoo' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'TBSSwTt1' \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'RsC6lyei' \
    --code 'B6DqLA9d' \
    --error 'nxmhC9WL' \
    --openidAssocHandle 'KlgFfsKQ' \
    --openidClaimedId 'aXF6MAjh' \
    --openidIdentity 'f6u6bxlZ' \
    --openidMode '7nhxP62F' \
    --openidNs 'sOKTohjY' \
    --openidOpEndpoint 'DJyl1Euy' \
    --openidResponseNonce '9noiA5QD' \
    --openidReturnTo 'D4CdUCl9' \
    --openidSig 'xCeeEM7A' \
    --openidSigned 'KqSTKE3i' \
    --state 'MtEJbaDX' \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'ZvELxHsl' \
    --platformToken 'A2qaXj6Q' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'HhB7qxAf' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field '72a0Rrdd' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '5aBk5nmU' \
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
    --clientId 'RRzWlsap' \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AsgZ0mUJ' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["cqCJf92h", "BKhXAAZ6", "sAFDIOn1"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7F1aRlUM' \
    --platformUserId '5EuyjaLO' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'ospmZdtm' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'yqhYe6PA' \
    --limit '19' \
    --offset '34' \
    --query '45NN8Ds1' \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "btHHBXDi", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "K7H67UG4", "policyId": "6xI1inyd", "policyVersionId": "vToTQnsC"}, {"isAccepted": false, "localizedPolicyVersionId": "iO2Gd7f7", "policyId": "Nn3jHjJR", "policyVersionId": "8QpDyIiv"}, {"isAccepted": true, "localizedPolicyVersionId": "RGJy6RBb", "policyId": "ZWwL6fCm", "policyVersionId": "pbtqmerd"}], "authType": "PN4vxJmd", "code": "Tiy1DArb", "country": "6eQiwRfT", "dateOfBirth": "MxMhiQvA", "displayName": "F1oIs0iM", "emailAddress": "aLuCqXMu", "password": "YZOTb2qd", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'S3hgtI1D' \
    --query '9EES6ZAc' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Ow4STZjN", "9zjZ9o02", "Op8QtDSy"]}' \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "s8qmS1hn", "languageTag": "uYe02fyu"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "HTVGme4s", "emailAddress": "FEgWzPyJ"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "gUcx4e76", "languageTag": "dm6JItKP"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'pCH6yC6S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'G6na5Nu9' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vcmsVkms", "policyId": "byIpJPDg", "policyVersionId": "kmLhqMbS"}, {"isAccepted": false, "localizedPolicyVersionId": "Mo3uR7tC", "policyId": "ZmLTpTbk", "policyVersionId": "QfPZh76W"}, {"isAccepted": false, "localizedPolicyVersionId": "hGHoyOCJ", "policyId": "8E6C2Ixi", "policyVersionId": "q1iemyos"}], "authType": "EMAILPASSWD", "country": "YXJIAhch", "dateOfBirth": "1UU9vT6S", "displayName": "rNkdGRYM", "password": "QBOoYtnk", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "FKZGZBIV", "country": "rM1BjlG8", "dateOfBirth": "31Zy2fo1", "displayName": "VBH1xWhF", "languageTag": "eulEQxK2", "userName": "ezmTK8E0"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "s33ycnlv", "country": "8JV6ifr6", "dateOfBirth": "236977wk", "displayName": "LGGzBY2x", "languageTag": "16Oa483f", "userName": "A5FXlGO4"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "jeCPvrRt", "emailAddress": "hayZV8mT", "languageTag": "9Jw6iFtp"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ptTU6QWB", "contactType": "u3q2jDKS", "languageTag": "HYQuwXAI", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TbX9q0Kb", "country": "1mcFNtLo", "dateOfBirth": "tIi8DGqE", "displayName": "Ss9aoupl", "emailAddress": "8PkUiUtz", "password": "e0ij3Oig", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "z9D1klyQ", "password": "nZiSQWWF"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "LVamwrgY", "newPassword": "5nlUrZOR", "oldPassword": "ZNG7SSki"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'DXtiZ0mS' \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yDsYoJrB' \
    --redirectUri 'ny1GqHoM' \
    --ticket '5Ch9txcz' \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 's15Y6VGw' \
    --body '{"platformNamespace": "vMos8DGA"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dJmKSSVD' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'V1tpomZH' \
    --ticket 'vjmgIK9q' \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'P1s55ZtH' \
    --clientId 'XNIMor3T' \
    --redirectUri 'TSPoGKit' \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'nSNDmq0Z' \
    --code 'p8Bwb0ce' \
    --state 'QmyIBxXE' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Ioe9JW9c' \
    --code 'HGS22Pkr' \
    --state '4NXDlYsh' \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "hQRi2AtX", "emailAddress": "P03k5lBx", "newPassword": "au7txGox"}' \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RmnQsTI0' \
    --activeOnly 'true' \
    --after 'wNddeDVB' \
    --before 'EjEbhdjg' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wukHitSd' \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '1S59GEMI' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kyltqx1a' \
    --after '0.8498085743121969' \
    --before '0.3361957308998317' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EYc6fyMy' \
    --after '2dAXgxbq' \
    --before '1VOxZi3x' \
    --limit '2' \
    --platformId 'bE0NwYqO' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZevKJRMi' \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'G9p0xIVc' \
    --body '{"platformId": "D1NtEocA", "platformUserId": "hXjlHYCO"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'jYYFEA4w' \
    --body '{"chosenNamespaces": ["uHNsK7Uy", "pBVcNkh6", "Kg331oiK"], "requestId": "b4YVCCqR"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FvIDc8UP' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '3IUH7GoY' \
    --password 'infP4bQK' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'Mn7ffOmz' \
    --before 'aQxk2uY6' \
    --isWildcard 'true' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'y4RlWMXX' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'bry3ld0n' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["SBbY7hco", "hpqaMQFn", "LPHpAQYz"], "oneTimeLinkCode": "YUUcOFWY"}' \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "MYoi7Sux"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'cVM9RSuO' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'NOYhXb4t' \
    --code 'swLDFj1L' \
    --error '5JqVbGnG' \
    --state 'CT3TIGdD' \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'xH7oFdtn' \
    --payload '1IFHvpyh' \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'EcLesWBa' \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData '7p09dRRX' \
    --code 'iaQxWPlA' \
    > test.out 2>&1
eval_tap $? 291 'RequestGameTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'BLYCF8hu' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'RknXLj2c' \
    --endDate 'JjkA0ugE' \
    --limit '94' \
    --offset '82' \
    --startDate 'rMS9scW2' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bHj83fA2' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "iIJThuoA", "deviceId": "ufN0lZKP", "deviceType": "W4QGwoMk", "enabled": false, "endDate": "OCc6s6AJ", "ext": {"CMJs1wjd": {}, "b8DpinXK": {}, "eCFdmf53": {}}, "reason": "HZmKVzs8"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'OUXjS3rz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '7NSHGALU' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'WgQ9J2V8' \
    --startDate 'L1eCdjd2' \
    --deviceType 'BvVZdMkY' \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'tYha54Ly' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'HcoazsHl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'rzWowfDE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'P8w71cgB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 95}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["7KzvnNcp", "3KHb3BMB", "QUmvgpo7"]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'SkFYmJIH' \
    --body '{"avatarUrl": "Lbukj908", "country": "qwUQoKaT", "dateOfBirth": "WrkI0CX5", "displayName": "uYOASLzM", "languageTag": "ikHRRQny", "userName": "T5EmU1f3"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UtmB5GiE' \
    --body '{"code": "nFIfJX2j", "emailAddress": "4qLDa3e8"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HbeekcOI' \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kL2n0QZz' \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'u4d6iSgs' \
    --body '{"assignedNamespaces": ["oA1DlciL", "V2KX55AO", "Zxr1dyOf"], "roleId": "QctqsHXI"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'R4rWlAgQ' \
    --body '{"assignedNamespaces": ["Ht5fsnEz", "Awjd3wZ1", "NlDqx3zH"], "roleId": "xM8In8sh"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'T5mwi47Q' \
    --body '{"assignedNamespaces": ["PVzF023R", "rifMuUmA", "syK1KDSU"], "roleId": "Rj2EVKUQ"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '66' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "W7AbkhRa"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'sPumVbyW' \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'Oh2wt22f' \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'DLEhVGxC' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "jT96B94v"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'N2XGkEZu' \
    --body '{"permissions": [{"action": 33, "resource": "7RaWPFnC", "schedAction": 30, "schedCron": "XrsCAjlG", "schedRange": ["aw4PzmUs", "Z2eFe8XH", "jJ0D2FKs"]}, {"action": 97, "resource": "WIW9Qh17", "schedAction": 52, "schedCron": "UCBJJJZv", "schedRange": ["gcOD2uOk", "9tqOfH8a", "RFP54NDC"]}, {"action": 50, "resource": "Ntgx90Xf", "schedAction": 59, "schedCron": "GA5d1TDk", "schedRange": ["CYpwcMAe", "i12jhYoC", "TtXogl9l"]}]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'LJk1OgD3' \
    --body '{"permissions": [{"action": 81, "resource": "YsSuUFb5", "schedAction": 2, "schedCron": "U9tt4WYz", "schedRange": ["ETvnkUMw", "4lE54hoR", "AIGmSvwy"]}, {"action": 74, "resource": "PEf3NA2u", "schedAction": 5, "schedCron": "sylst8NU", "schedRange": ["om4csC9v", "shrvFZZn", "0rksZOqF"]}, {"action": 48, "resource": "vb7RbqKb", "schedAction": 12, "schedCron": "UI5VQkOC", "schedRange": ["yC8xgHhz", "iwq35lpA", "8qDMKmUb"]}]}' \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '7SqwjL0S' \
    --body '["k2xmeNTP", "KmvybZAl", "J8GfmPMD"]' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'gYwDitvc' \
    --after 'LgHRmOid' \
    --before 'Joq0hytL' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'ucy9QqJE' \
    --body '{"assignedNamespaces": ["SE8DFgcE", "VhWY0tjK", "3ERXyXxW"], "namespace": "y9aHjmhP", "userId": "dH2iQNCm"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'GtZ1cLbP' \
    --body '{"namespace": "j7jGQj6t", "userId": "gldIR9vU"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["LvNTv3Es", "8kI9rKrZ", "KeE559H3"], "emailAddresses": ["kZW6Mi6n", "TGQNH7Ax", "cNqn9QwM"], "isAdmin": false, "namespace": "fqmdWEcg", "roleId": "DqTMjeKR"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "rNJw6JAk", "country": "XhZHdXcj", "dateOfBirth": "QF7mDjZh", "displayName": "goWVmvea", "languageTag": "I6dfFDxw", "userName": "6SvCbpvv"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'jgcLhRHs' \
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
    --code 'LMXSGdSY' \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'JqWw6z1Y' \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "tmgfYtcr", "policyId": "wvmjb9HB", "policyVersionId": "p0I1B8d2"}, {"isAccepted": true, "localizedPolicyVersionId": "0y28Jad1", "policyId": "kmuQkTPm", "policyVersionId": "y0Fbae2y"}, {"isAccepted": true, "localizedPolicyVersionId": "ZwqNhVCP", "policyId": "oEAbG9JR", "policyVersionId": "tH9uhg2O"}], "authType": "EMAILPASSWD", "country": "8zx07um4", "dateOfBirth": "sfGonCGq", "displayName": "akHvbNFD", "emailAddress": "fpgcXQ88", "password": "3BN7xCp7", "passwordMD5Sum": "ikdieNGM", "username": "Yznpf0iM", "verified": false}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "TKpMpsu3", "policyId": "q5rBl6KL", "policyVersionId": "gD0Snnzf"}, {"isAccepted": false, "localizedPolicyVersionId": "KDPLzorI", "policyId": "FPRlFr2C", "policyVersionId": "UBJKVzA1"}, {"isAccepted": true, "localizedPolicyVersionId": "cCU7t86Y", "policyId": "MQ5FLZEv", "policyVersionId": "USH1ipOr"}], "authType": "EMAILPASSWD", "code": "bN5hEnkV", "country": "DMChdPKe", "dateOfBirth": "cKUEmEum", "displayName": "oSRko4oh", "emailAddress": "ZftYcKeV", "password": "T0kFGvJK", "passwordMD5Sum": "Nk6mmzjE", "reachMinimumAge": false, "username": "561eHQup"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'OsgBgbGo' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "c6zbSb7K", "policyId": "h9SgtSiY", "policyVersionId": "SRmlygoO"}, {"isAccepted": true, "localizedPolicyVersionId": "9gf9okGy", "policyId": "598XDS4N", "policyVersionId": "MPzFSr6K"}, {"isAccepted": false, "localizedPolicyVersionId": "J6GXGBWj", "policyId": "YNFCKAQb", "policyVersionId": "6QXI0WGj"}], "authType": "EMAILPASSWD", "country": "wsOOJfw7", "dateOfBirth": "4ht3ZW8X", "displayName": "kC7GP0vG", "password": "n5KvePz4", "reachMinimumAge": false, "username": "7GLjkqf5"}' \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "3jMGD4N6", "country": "Jcmw5yAl", "dateOfBirth": "WRRhceqI", "displayName": "ORDhD0su", "languageTag": "Mlo6Jeq4", "userName": "15oc93iI"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "2EfFy13c", "emailAddress": "Li4WDzOf"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "24CvlvAn", "country": "H7ALJDdp", "dateOfBirth": "ddPEvaNk", "displayName": "01pNxRRR", "emailAddress": "aJ4eSeQe", "password": "JseNjzRK", "reachMinimumAge": true, "username": "tukWm38G", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "oO46Z36V", "password": "3v8l2Yi2", "username": "nsoI6ehv"}' \
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
    --code 'ru5efFvP' \
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
    --code '7jnwm2WZ' \
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
    --factor 'hHlD1dWI' \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId '16qcYQNT' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "x16tgoxJ", "namespace": "4nuiEyZG", "namespaceDisplayName": "JZCFSg7y"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE