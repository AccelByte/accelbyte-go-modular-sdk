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
    --body '[{"field": "OhLgPkpJ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["zJzacIKx", "ljrq6veS", "hAAMKt9S"], "preferRegex": true, "regex": "HcUFx9he"}, "blockedWord": ["2sqGjfhm", "YlNcNl2c", "NlqsJajH"], "description": [{"language": "zgA4ietR", "message": ["OOjW48bG", "EZtpugeH", "iMFoqX5Z"]}, {"language": "uhN70iXk", "message": ["rJS4tSkA", "18U5Uf28", "G6rBJD0U"]}, {"language": "2ly70qja", "message": ["8TtwJQHQ", "kpIt5ICC", "soATeq0I"]}], "isCustomRegex": false, "letterCase": "4YNCs4lc", "maxLength": 2, "maxRepeatingAlphaNum": 13, "maxRepeatingSpecialCharacter": 41, "minCharType": 82, "minLength": 19, "regex": "2CSkirMK", "specialCharacterLocation": "nnguogyf", "specialCharacters": ["Mrajz7rs", "x1b9enal", "PnQKnKtA"]}}, {"field": "3y6kJTEB", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["SW77PB1Q", "tZkzm12l", "QJEvPRvm"], "preferRegex": true, "regex": "KjT9Dfwq"}, "blockedWord": ["Kmzbb6iP", "OVdWgEz9", "esS2bo4E"], "description": [{"language": "LcIoKwJv", "message": ["k4CP66OL", "LRCJpBDR", "QiRU9s4l"]}, {"language": "caEe2bIa", "message": ["NKtni9e2", "mxHS8cLM", "5pNfjkMQ"]}, {"language": "p2ZfkwqP", "message": ["vaum1dHZ", "s4ewmDhm", "x1BDphx5"]}], "isCustomRegex": false, "letterCase": "R9RpQYCQ", "maxLength": 50, "maxRepeatingAlphaNum": 70, "maxRepeatingSpecialCharacter": 57, "minCharType": 18, "minLength": 28, "regex": "2Ie8sIGm", "specialCharacterLocation": "LWRiHenj", "specialCharacters": ["weyzwY56", "NOB3iNtg", "jj216rf4"]}}, {"field": "qm3KaflZ", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["QnfZhnx3", "pnag7hjM", "ShLVYGuz"], "preferRegex": true, "regex": "9qTt1cGs"}, "blockedWord": ["0u8PKLXg", "8w7Ekgus", "zBqimgIE"], "description": [{"language": "vLJ4JFTC", "message": ["DB2jlOFs", "K2V82soj", "5fyA8QMa"]}, {"language": "0SUPQjv7", "message": ["zSF1N78u", "zr6Ay6jG", "CzbGQsDK"]}, {"language": "0sOyFIDe", "message": ["eHYqtKUA", "OJy0Yf9a", "PzkGSXHO"]}], "isCustomRegex": true, "letterCase": "dfs7eZHr", "maxLength": 78, "maxRepeatingAlphaNum": 11, "maxRepeatingSpecialCharacter": 45, "minCharType": 61, "minLength": 22, "regex": "FJQiaEqR", "specialCharacterLocation": "0UH8WqSL", "specialCharacters": ["m6URliSL", "8k3RmYQf", "HeAF4uDW"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field '4d4fgTj4' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'B2PfatWB' \
    --before 'xdLO6vIO' \
    --limit '56' \
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
    --body '{"ageRestriction": 29, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '1b9UpZmv' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 46}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'ABRMEPT7' \
    --limit '50' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "7sMQZmC0", "comment": "sb6taPv0", "endDate": "DSKY5uFA", "reason": "HO0GyvOy", "skipNotif": false, "userIds": ["tIjNW8xu", "nnpxtDFx", "HIBO11GI"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "6Xcd6VEQ", "userId": "E97Ev5s6"}, {"banId": "73HyBoqm", "userId": "uOS0CBoL"}, {"banId": "42StUu69", "userId": "rHjFNSou"}]}' \
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
    --clientId 'VDNKaWwn' \
    --clientName '7pe6yeyD' \
    --clientType '6flYyHSs' \
    --limit '70' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["U71g1x6G", "Dp0tb16Z", "OooxBg59"], "baseUri": "nDMnzWpW", "clientId": "st0GSN0w", "clientName": "cvUGIFVi", "clientPermissions": [{"action": 60, "resource": "jvG4PBBW", "schedAction": 87, "schedCron": "pUrILn4M", "schedRange": ["ACTpuRJI", "QLscKuP9", "DFZk3P9s"]}, {"action": 30, "resource": "h5MTgqM7", "schedAction": 100, "schedCron": "nT3CSp1m", "schedRange": ["Y1B6bgq2", "3f8AByaT", "47hcjZlG"]}, {"action": 6, "resource": "aHJWeK7C", "schedAction": 39, "schedCron": "HZJRnrlO", "schedRange": ["tGt2HZ2d", "xdUNCsan", "ce8sBY78"]}], "clientPlatform": "0YgE86Oo", "deletable": false, "description": "T14Nl9BR", "namespace": "oCuQXjJ8", "oauthAccessTokenExpiration": 6, "oauthAccessTokenExpirationTimeUnit": "uXEMMGcg", "oauthClientType": "wwFsd84r", "oauthRefreshTokenExpiration": 81, "oauthRefreshTokenExpirationTimeUnit": "bMvbQVdO", "parentNamespace": "uWprrzbY", "redirectUri": "A3IDn7D0", "scopes": ["WzV9bS2I", "I4wwXslJ", "djFHWRtM"], "secret": "ohwWD7yT", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'DNItRVlv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'FKbiSA6c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '6QkZCQHk' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["RifPBvoP", "HBdnOnWI", "Pcrc74qL"], "baseUri": "c46Wm6L1", "clientName": "i2JkTWHh", "clientPermissions": [{"action": 93, "resource": "CI6kY2JM", "schedAction": 47, "schedCron": "Gc9I4ruL", "schedRange": ["lnOHymtl", "RtfNH2a8", "d9favDFE"]}, {"action": 79, "resource": "g6RztrYZ", "schedAction": 18, "schedCron": "vQhFQiaH", "schedRange": ["j0O8YvrT", "9ycowYcj", "8acrrYSm"]}, {"action": 70, "resource": "Gf6lHwkr", "schedAction": 65, "schedCron": "qtfkKQHq", "schedRange": ["uPWtRrK4", "bRw69PVR", "izg1cFrT"]}], "clientPlatform": "kCcwNBO4", "deletable": false, "description": "ltq68i6g", "namespace": "wllnxBDT", "oauthAccessTokenExpiration": 47, "oauthAccessTokenExpirationTimeUnit": "iboXg45q", "oauthRefreshTokenExpiration": 6, "oauthRefreshTokenExpirationTimeUnit": "ZHi0HA6g", "redirectUri": "1fv0M7jE", "scopes": ["GRRCXcFj", "rF9YnKMo", "GKDTCITQ"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'TT7IiibY' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 5, "resource": "NaexwuXs"}, {"action": 13, "resource": "k39iG5Ft"}, {"action": 30, "resource": "xhWkeCgP"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'tC1ZfcXu' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 65, "resource": "208EzYHf"}, {"action": 91, "resource": "kANiVrPF"}, {"action": 72, "resource": "deLDggkg"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '45' \
    --clientId 'YfANlwVe' \
    --namespace $AB_NAMESPACE \
    --resource 'okMl1EqG' \
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
    --body '{"blacklist": ["MmNUkT5k", "QXziALst", "4ZugHWNb"]}' \
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
    --limit '8' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xiPNbhSR' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'K8EVyadY' \
    --body '{"ACSURL": "jA4PZKyn", "AWSCognitoRegion": "RHV1Llc2", "AWSCognitoUserPool": "cIuPuwUt", "AllowedClients": ["vXF3C40x", "XRt96dY1", "igQfCSpI"], "AppId": "uKE3yIvm", "AuthorizationEndpoint": "Flggnx8O", "ClientId": "26mXTLDm", "Environment": "f6dSnFoa", "FederationMetadataURL": "vlzWe8TL", "GenericOauthFlow": false, "IsActive": true, "Issuer": "G9749Wsf", "JWKSEndpoint": "kqryl5bY", "KeyID": "TCF4FWrv", "NetflixCertificates": {"encryptedPrivateKey": "mbYFwWWw", "encryptedPrivateKeyName": "pbvKu4H8", "publicCertificate": "x9uRdohd", "publicCertificateName": "39AESmFy", "rootCertificate": "hQ6zNIgP", "rootCertificateName": "uNzOOBM8"}, "OrganizationId": "dz6XRQrf", "PlatformName": "mPMLhTcB", "RedirectUri": "4IbrADdr", "RegisteredDomains": [{"affectedClientIDs": ["ijR657ns", "alEKtny9", "St6wHkj6"], "domain": "RuT2G9O1", "namespaces": ["qYv9tRvs", "0FJtwgvx", "K5KJ1ge7"], "roleId": "Y3RcqfDz"}, {"affectedClientIDs": ["SBhIMPX3", "TCLJMaFP", "X74qdAs6"], "domain": "oEMKbgWe", "namespaces": ["Wx6R1Snd", "2vqYOUtS", "hx7rDKgE"], "roleId": "jSNBrWLY"}, {"affectedClientIDs": ["7bdFCtfX", "biYu8yho", "80LGke52"], "domain": "byt8veDG", "namespaces": ["9ceihFMs", "Fd89c09o", "wZm4DSft"], "roleId": "ajiQxlrn"}], "Secret": "jTWz9yIf", "TeamID": "m7gjEa9H", "TokenAuthenticationType": "IpIo3WWY", "TokenClaimsMapping": {"l4UU5OOg": "kXqMYrv5", "21dbSoI5": "XdFRm4r0", "RISAM1nr": "Y4RNoTuf"}, "TokenEndpoint": "7DmRD9kv", "UserInfoEndpoint": "VL3ryRwV", "UserInfoHTTPMethod": "Qm01s51u", "scopes": ["ybo67Y3M", "OZ3lwmIH", "hdvdW4ua"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Rcwsg4bv' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YyeJGNQK' \
    --body '{"ACSURL": "iCeuLyn3", "AWSCognitoRegion": "rnoMowKy", "AWSCognitoUserPool": "5mmxj4eX", "AllowedClients": ["5qY6ehOh", "2J7fidfB", "8hoKyrII"], "AppId": "1ZkogLYA", "AuthorizationEndpoint": "JDwHvRlc", "ClientId": "4EoEBjl4", "Environment": "Pb8G3oIa", "FederationMetadataURL": "KVMEsPpG", "GenericOauthFlow": true, "IsActive": true, "Issuer": "MKBF8yGv", "JWKSEndpoint": "7bK9Y2D5", "KeyID": "HvnllA7z", "NetflixCertificates": {"encryptedPrivateKey": "dxX7pFE8", "encryptedPrivateKeyName": "7Ec2K0oG", "publicCertificate": "rG7WTzET", "publicCertificateName": "kPZyRrFv", "rootCertificate": "seQkZyLE", "rootCertificateName": "Qe0VaTAR"}, "OrganizationId": "sv8oZeJJ", "PlatformName": "1uEofKBP", "RedirectUri": "uqb6HK3f", "RegisteredDomains": [{"affectedClientIDs": ["Whb4LkGP", "oU1Z6coq", "e5Jr7txr"], "domain": "h0nfOuKN", "namespaces": ["GX4PSVA8", "nKKrBpy9", "HtGqDmRJ"], "roleId": "hoJGy9sk"}, {"affectedClientIDs": ["Y36pxlNZ", "EfrvVRZ6", "NUfox0mH"], "domain": "mXzIMCbg", "namespaces": ["7it3lpcK", "ktSU3yot", "OE7ydWZS"], "roleId": "UyT9pnCi"}, {"affectedClientIDs": ["HryY5zRw", "RDEWWXV2", "LbHnuRY7"], "domain": "KoZXo3OE", "namespaces": ["0OmKwW5o", "lOKfabsl", "xkjyO0xF"], "roleId": "4x6bUo6W"}], "Secret": "Zg5jh3wo", "TeamID": "iJZWmrT4", "TokenAuthenticationType": "mCQeR3ZF", "TokenClaimsMapping": {"8Xk3lZ55": "NTufMZhn", "5jFCgUuF": "Gcb0R4rO", "T7X3DVKx": "P4qDB7j7"}, "TokenEndpoint": "PcsxXfOZ", "UserInfoEndpoint": "7mxZvV3S", "UserInfoHTTPMethod": "b8LUMmXm", "scopes": ["fN7iku6Z", "ck0wEaWm", "4RICVBjB"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XOTc1UUF' \
    --body '{"affectedClientIDs": ["Cbgi13AE", "flvJmewG", "GvXoKlk1"], "assignedNamespaces": ["oQxF59fg", "HUleB38k", "nKkfEwb0"], "domain": "MfSaDlf2", "roleId": "BC76PB4V"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8pbmDr6j' \
    --body '{"domain": "mr1dn7D3"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'mPZ5yMwk' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'cI8Py9lK' \
    --body '{"acsUrl": "3lYXVuci", "apiKey": "fT5Ojlt1", "appId": "M2FrBJ6y", "federationMetadataUrl": "g3yw3D2O", "isActive": false, "redirectUri": "yckPDLZj", "secret": "HAF53ZmX", "ssoUrl": "pB1aIxui"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1arjaHT7' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'tuRDeHbL' \
    --body '{"acsUrl": "nsL5gfH8", "apiKey": "6x1iS43M", "appId": "RJvSvNky", "federationMetadataUrl": "MQ3SAyl1", "isActive": true, "redirectUri": "TazWMFJQ", "secret": "wi0MTnzE", "ssoUrl": "e0WGSwue"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GekIovXO' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["ICeOQ2Qu", "09gtFpmr", "XWO8h9Sm"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eTG9cLrM' \
    --platformUserId 'mK1n8R9w' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Ip3Fn9k7' \
    --after '11' \
    --before '33' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '4U2bqY8m' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'tKMnl8Q1' \
    --body '{"bulkUserId": ["vkxgsPEA", "hwHB8Xa8", "kLclCmY1"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lQL3IhdY", "D1nniMGP", "kzEwXfqC"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["T7Px0evY", "T1WGmAmC", "qSXdFPlF"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["Zdn3EQXA", "HayTmXr7", "dkItzKjp"], "isAdmin": false, "namespace": "BGVnlj5W", "roles": ["h9uncRMK", "QNf8jjEN", "aIftWrhW"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '79' \
    --platformUserId 'kx0HfuE0' \
    --platformId '8fgfd0lt' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '9V2Akqmc' \
    --endDate 'Hx9VH3PQ' \
    --limit '74' \
    --offset '76' \
    --platformBy '8AXM6KOq' \
    --platformId 'JMDGTfT1' \
    --query 'YFdKNzzQ' \
    --startDate '5WNiZUZC' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["8ELnoDaz", "RluFuxg8", "QIHegpWP"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lzRsrMfk' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '3veG4MfU' \
    --body '{"avatarUrl": "3x6yLy2e", "country": "AeSDljGS", "dateOfBirth": "kFFpr91k", "displayName": "ryXGkEoJ", "languageTag": "DqQMGNtK", "userName": "mUTEFqx8"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IFUSAwLt' \
    --activeOnly 'true' \
    --after 'wlbMlgI2' \
    --before 'qDTiWa4s' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uPadjw7Q' \
    --body '{"ban": "6IOjx1dX", "comment": "xSKUJIID", "endDate": "NiuT03iO", "reason": "K0bGPsC9", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '5pcD4mDz' \
    --namespace $AB_NAMESPACE \
    --userId 'pDFEhtIG' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '8D8edemT' \
    --body '{"context": "TfoArwRi", "emailAddress": "kYvpqZCM", "languageTag": "5bh4S5c3"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '73ujkDuL' \
    --body '{"Code": "kFE198QV", "ContactType": "n12bjI16", "LanguageTag": "kD9DMrh3", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '4qkY5kV5' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NpW7YByV' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fLjBMOp7' \
    --body '{"deletionDate": 27, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Sa6AzywO' \
    --body '{"code": "4NOG5R4t", "country": "ZXIRqPVV", "dateOfBirth": "3mSQOgZs", "displayName": "APQyFoCI", "emailAddress": "CHu7TbVW", "password": "eaBovMKE", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gBYorhgE' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'S4nE0Qe1' \
    --after '0.9344937584897249' \
    --before '0.2636797246678547' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '6UPV5SWz' \
    --body '{"languageTag": "sjgb0qsV", "newPassword": "xOBY06xt", "oldPassword": "6OwIDJxA"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '2cAX0UAk' \
    --body '{"Permissions": [{"Action": 97, "Resource": "w207j2m8", "SchedAction": 23, "SchedCron": "xEpKcrT8", "SchedRange": ["jIJ4H4gE", "iBv6T9CK", "UjaKofd6"]}, {"Action": 8, "Resource": "81KQtdoG", "SchedAction": 14, "SchedCron": "fx0t0rvx", "SchedRange": ["YuebOnT6", "Q8joCYmc", "mC9E232p"]}, {"Action": 4, "Resource": "4H65Le8l", "SchedAction": 86, "SchedCron": "e7I75wII", "SchedRange": ["vBq3YZSW", "EJRaD7TL", "f20ZasDH"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KLMbhbCh' \
    --body '{"Permissions": [{"Action": 84, "Resource": "J27Jddjn", "SchedAction": 89, "SchedCron": "9gY0p0yF", "SchedRange": ["O2E4z9rQ", "PqsiT9He", "tYTK73xv"]}, {"Action": 33, "Resource": "3ub18R91", "SchedAction": 90, "SchedCron": "AHx2vvWR", "SchedRange": ["4VpaUnVD", "8tdaFjEd", "pj8wukJb"]}, {"Action": 75, "Resource": "4zIrUxVV", "SchedAction": 2, "SchedCron": "92h3dFE7", "SchedRange": ["AVkGJix9", "xJcJN9hJ", "pgPjybtW"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '28J6p3Wd' \
    --body '[{"Action": 88, "Resource": "SV6WerZm"}, {"Action": 99, "Resource": "cDr2swRO"}, {"Action": 36, "Resource": "OwuRnnyt"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '24' \
    --namespace $AB_NAMESPACE \
    --resource 'qdMdcwX3' \
    --userId 'EoegF0OY' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y0WfR99r' \
    --after 'U82R7AF6' \
    --before 'd5a5LfWF' \
    --limit '72' \
    --platformId 'ItFn5U1I' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'aXwYLLjN' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'reDHZRPy' \
    --userId 'xMEXShEX' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'WZYQ6Ix1' \
    --userId 'pZuX2Th4' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'lK5NC47L' \
    --skipConflict 'true' \
    --body '{"platformId": "cNoi6XyW", "platformUserId": "2EYT40Lx"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'noiwSKhZ' \
    --userId 'iTvdMrKZ' \
    --body '{"platformNamespace": "HBKVnhTY"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'drbhr4PN' \
    --userId 'Jd64Ov7q' \
    --ticket '0Er2kOIc' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yEb7B7Oc' \
    --userId 'HH8ie5fH' \
    --platformToken 'MyuptVes' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId '5yrJCMLW' \
    --userId 'Ag7LAB1s' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kB19rana' \
    --body '["MT4ieKTP", "qciXcsY0", "MLwFlZMm"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mxZ7gZew' \
    --body '[{"namespace": "RpP6XqX8", "roleId": "hS9fvKIx"}, {"namespace": "jjOpNNif", "roleId": "1Nhit0dr"}, {"namespace": "TySfiHF6", "roleId": "R3genZbP"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'iwAdtOZE' \
    --userId 'Yli3FWtI' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'nUx7X6ru' \
    --userId 'SNHejDS2' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'phb3Xb0I' \
    --body '{"enabled": true, "reason": "KKO9fhYs"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'OOQ5QZOv' \
    --body '{"emailAddress": "J8P36kjL", "password": "nMA6NM4S"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'E4dakTCV' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'I71t9WHE' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "jQ7LBiie"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'M9kPwEbV' \
    --before 'DVnAOzRI' \
    --isWildcard 'true' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "9YfA3utq", "namespace": "wYZyVIEx", "userId": "WeLzUAkO"}, {"displayName": "U3GulxF2", "namespace": "xrjGwCov", "userId": "UxsPtJSS"}, {"displayName": "j3RNo04B", "namespace": "JVsNQADP", "userId": "yDuB8t7V"}], "members": [{"displayName": "BVdV79Ic", "namespace": "SHlMwNNG", "userId": "FS5JA8qI"}, {"displayName": "iy4fjtoS", "namespace": "l4bdeTvT", "userId": "kQmqbuHe"}, {"displayName": "WLHXEZOK", "namespace": "gYyAFD8q", "userId": "LlW9MJKe"}], "permissions": [{"action": 74, "resource": "f91FszyA", "schedAction": 7, "schedCron": "HGYxgLQo", "schedRange": ["OHpiOP0U", "VX9o0d2J", "dpaKwTwI"]}, {"action": 22, "resource": "PXgrIcfp", "schedAction": 73, "schedCron": "l08werQc", "schedRange": ["qmz2hpXC", "T4pcLfqc", "Vl87GK0D"]}, {"action": 69, "resource": "1ppVhmxW", "schedAction": 2, "schedCron": "UJQYbf8o", "schedRange": ["MzjpB4PQ", "PWMEhqA5", "s7GxcsBn"]}], "roleName": "wVdOp3T7"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'O66XNpaD' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'OgA58o8a' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '2TSJxuss' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "Ry5V2Ey5"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '0tPjaRkZ' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'z8Df5rUB' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'xR0ifVJq' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'JTrCxWFd' \
    --after 'g15yrvWG' \
    --before 'vFPUDlsK' \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '7dHVlWUr' \
    --body '{"managers": [{"displayName": "A1JmcSCl", "namespace": "a7AhHP55", "userId": "Wr2Qw4tM"}, {"displayName": "Scq8Ro7j", "namespace": "hVhiXbvE", "userId": "sdDaCCVM"}, {"displayName": "oBvu0Krt", "namespace": "50UdKMrn", "userId": "rBAnxfA8"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'YvAZSqnN' \
    --body '{"managers": [{"displayName": "bNAjBfZT", "namespace": "7UDERePE", "userId": "UHxydrZP"}, {"displayName": "z10GnAD2", "namespace": "Bb9VY1Te", "userId": "2VrNJIem"}, {"displayName": "siuovgpK", "namespace": "OqiCeLfM", "userId": "lMjazLJh"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '81uXjQsa' \
    --after 'lRVT6W2a' \
    --before 'IqkVPKEv' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'L3NBcjfa' \
    --body '{"members": [{"displayName": "7zi05gSv", "namespace": "BUMgjTZQ", "userId": "9kvJ973h"}, {"displayName": "yaK0IbkS", "namespace": "vZ2diae4", "userId": "e1TWNXxh"}, {"displayName": "nRxpM8gf", "namespace": "M7fWWqzz", "userId": "mCvTqmtu"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'DD5kGJgG' \
    --body '{"members": [{"displayName": "e03MxE2y", "namespace": "jfsq9sSx", "userId": "msFuvhgx"}, {"displayName": "zQct84Q8", "namespace": "Ed70KLPz", "userId": "iGhPQInD"}, {"displayName": "8xJtcR0e", "namespace": "ELtcntvU", "userId": "9Ag7Lrd8"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'LMC6zWMx' \
    --body '{"permissions": [{"action": 11, "resource": "iWyqh6Bj", "schedAction": 18, "schedCron": "r2E6gH5P", "schedRange": ["1fUIjb4Q", "vZ0mr2I5", "ogr6P3aF"]}, {"action": 62, "resource": "n1sTj7u1", "schedAction": 96, "schedCron": "W3stgYcK", "schedRange": ["U7JWLFTq", "3dbvS7id", "kz7aUv5z"]}, {"action": 19, "resource": "TTDNq0bx", "schedAction": 5, "schedCron": "OQGuYY8P", "schedRange": ["gJ7pubLS", "VwF4cP3q", "vQDZYBVz"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'jFpuqqwN' \
    --body '{"permissions": [{"action": 29, "resource": "ygkKsO18", "schedAction": 62, "schedCron": "3CAgsKBe", "schedRange": ["ikhOgbsE", "geuUxX25", "grP2oSNA"]}, {"action": 6, "resource": "UPahczIw", "schedAction": 6, "schedCron": "XtcWrHyY", "schedRange": ["5CaDfkSN", "BESueghq", "xbx0Pbat"]}, {"action": 63, "resource": "rfMEGl9o", "schedAction": 35, "schedCron": "FMS1dZuT", "schedRange": ["Tq0DOqgO", "gPeWDO8C", "CENUpgXM"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'SSZagZHY' \
    --body '["sXxrhLQg", "XC9QPnZs", "QtGWnTUY"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '23' \
    --resource 'iznfjJGr' \
    --roleId 'F2rXZwvF' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'jdZvp5EN' \
    --extendExp 'false' \
    --redirectUri 'TibnMgmR' \
    --password 'c1hXPujL' \
    --requestId 'vvBTDirT' \
    --userName '70PThVoW' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'mkzI1ifs' \
    --linkingToken 'Iq61k6Kn' \
    --password 'R0j7lUMJ' \
    --username '2bF7ZDHV' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'T1ilw1sP' \
    --extendExp 'false' \
    --linkingToken '82xYAJWz' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '2A58gkeh' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'WcfS0s4N' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData '6zNDIjar' \
    --isTransient 'false' \
    --clientId '2mHle8VW' \
    --oneTimeLinkCode 'YH8SQd13' \
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
    --clientId 'HsBGk0YJ' \
    > test.out 2>&1
eval_tap $? 218 'RequestTokenExchangeCodeV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vNfl5Lo4' \
    --userId 'QmvbBJXO' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b40IMHY6' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'JH4CGzBr' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'KpkPorHe' \
    --redirectUri 'G2fzU8nZ' \
    --scope 'EJ2q1em9' \
    --state 'JU4hbpgx' \
    --targetAuthPage 'JC4aUqpf' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 's67WSuS1' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'xQe5CfUo' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '1Q8zsQPe' \
    --factor '1St5Cwd0' \
    --mfaToken 'UWbs5ejA' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '2I5Vwjz7' \
    --mfaToken 'qU8gnCOo' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'v0sFOkoo' \
    --factor 'kIniudrW' \
    --mfaToken 'mAAXh7aR' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kle3dBRG' \
    --userId 'U42mxhkB' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'Xz3Dj35a' \
    --clientId 'vUPMlGKx' \
    --redirectUri 'c2vA1cXs' \
    --requestId '8H1Dyso7' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'TNlsoxUJ' \
    --additionalData 'lDfte67s' \
    --clientId 'J9ioK37L' \
    --createHeadless 'true' \
    --deviceId 'Ez5qSoHu' \
    --macAddress 'N5agh536' \
    --platformToken 'IczIiyIS' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'DJlmyFYb' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'oLenfrkd' \
    --clientId 'kRPIuOCn' \
    --code 'ribpcNLJ' \
    --codeVerifier 'Ax7ICUAq' \
    --extendExp 'true' \
    --password 'd5G6nst1' \
    --redirectUri 'FcX4W28T' \
    --refreshToken 'dGMW9irI' \
    --username 'BKk2Ac4z' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'wiljGYYH' \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'xQuspAGS' \
    --code 'hL4eAm6o' \
    --error '2FU8BztV' \
    --openidAssocHandle 'pMJ3ByJj' \
    --openidClaimedId 'JXDEdGeW' \
    --openidIdentity 'TlAOnYPH' \
    --openidMode 'QuL2pm8d' \
    --openidNs 'MBgW6XP9' \
    --openidOpEndpoint '7qIrTgVm' \
    --openidResponseNonce '7mIdsTGe' \
    --openidReturnTo '2uMtOwkR' \
    --openidSig 'QmV9Jl3M' \
    --openidSigned 'MLT9fGmY' \
    --state 'oszmcdAG' \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'QvciKQoK' \
    --platformToken 'T0rlx4ZB' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'P1U6MJqG' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'U9zKTpQY' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '0CO46e3V' \
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
    --clientId 'Vw6ZMeZt' \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lgI36jle' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["ldYjRfGo", "NJahdM5x", "Sj8gLnUz"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mM8GZWkq' \
    --platformUserId 'ukYsPwnd' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '7ULk32n2' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'z2lSOAYB' \
    --limit '84' \
    --offset '33' \
    --query 'qvBtUIzX' \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "vq2ToEj3", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "FnksTtvD", "policyId": "q8LIBqIX", "policyVersionId": "zMDRd8po"}, {"isAccepted": true, "localizedPolicyVersionId": "r7qSNHj0", "policyId": "34EQkq5t", "policyVersionId": "0SIxT2sQ"}, {"isAccepted": false, "localizedPolicyVersionId": "YdgkcVQo", "policyId": "6hB0tCda", "policyVersionId": "FumnOZLy"}], "authType": "idIFxKUk", "code": "nsxtDIcL", "country": "zQMRbb22", "dateOfBirth": "tXKLbBU5", "displayName": "y62kh1Zg", "emailAddress": "xpW1XDPh", "password": "sxWKhcud", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'JDE4m18m' \
    --query 'WaSww14X' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["JnH2iNjH", "OEilYCe4", "W8KBRPM5"]}' \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "RJ7tkSuS", "languageTag": "Ni90YqN4"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CnuOFbkV", "emailAddress": "HAoU7PDc"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "QKs25ePQ", "languageTag": "jRVtCdlP"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'niFU0hbB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'a5uXG7PB' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "33JrDPsm", "policyId": "UVGRabJa", "policyVersionId": "DvPReopz"}, {"isAccepted": false, "localizedPolicyVersionId": "RtIEcNPT", "policyId": "FNKuokJ4", "policyVersionId": "qEtWOEWJ"}, {"isAccepted": true, "localizedPolicyVersionId": "wUbMCoLq", "policyId": "6c3CTqY6", "policyVersionId": "EiZ9oKuJ"}], "authType": "EMAILPASSWD", "country": "m7vAT5qm", "dateOfBirth": "7irjR7pe", "displayName": "KIcEKT7T", "password": "kLQbOzbB", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "XKYf1age", "country": "6m66PVCG", "dateOfBirth": "CNTMgyc0", "displayName": "9wcaceFK", "languageTag": "R34tnCxb", "userName": "rcuePgOu"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "0m9Mk5c9", "country": "lXebr8Km", "dateOfBirth": "VsiaWiX4", "displayName": "mRKsTLSX", "languageTag": "4imIZmRG", "userName": "8jbuWaBQ"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "5EwOcGX3", "emailAddress": "Ggt2zIT2", "languageTag": "JamV8UaJ"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "iGkHxi9A", "contactType": "leDIiqDK", "languageTag": "ZDOReGNZ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TObdSFaN", "country": "55Qczhfg", "dateOfBirth": "qI3w2gGs", "displayName": "ru40IBKN", "emailAddress": "CxKgd7cR", "password": "zJBSjNzT", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "ZRHfy5Mk", "password": "dhNrLxdS"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "1nyoQAjK", "newPassword": "qRAnv18w", "oldPassword": "WuyAol87"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'bZOU9TrK' \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'o8D54YoP' \
    --redirectUri 'Bd3ESwnL' \
    --ticket 'TvaE2LBa' \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 't7BjEeGS' \
    --body '{"platformNamespace": "jEleP3eq"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1FDF2WZ2' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fXjMhfvO' \
    --ticket 'fvxduCbs' \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'MG2kgm0p' \
    --clientId 'WOO0IiYO' \
    --redirectUri 'TAT71R3X' \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'Ft84xMiI' \
    --code 'gDmoTL4A' \
    --state '7YNRhzn9' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'E4Z9Vgjb' \
    --code 'AvMtWun0' \
    --state 'AYGG0Tdn' \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0L2QawZV", "emailAddress": "LMFPXYJL", "newPassword": "BNNR5jlG"}' \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WPlxfuB8' \
    --activeOnly 'false' \
    --after 'qFCpcb3a' \
    --before 'WnnNARwZ' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'B6byZYLE' \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qGulvra4' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mLozE4j7' \
    --after '0.7100980422491785' \
    --before '0.8883366949556329' \
    --limit '22' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'C4V4mMme' \
    --after 'ynkfLsWu' \
    --before 'fjTGOjZy' \
    --limit '6' \
    --platformId 'DpgFFsvm' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aCnYnYLx' \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '4u08nHco' \
    --body '{"platformId": "QgFhTWjQ", "platformUserId": "9fU1dIA4"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'KueD2Jbt' \
    --body '{"chosenNamespaces": ["TJCuvj5F", "ztN9h19q", "JPRwwUpT"], "requestId": "nnkcaH7u"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JL624xVe' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YSgHbmyd' \
    --password 'lVnigOGv' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'E9CemgoQ' \
    --before 'Ug02tR6Z' \
    --isWildcard 'false' \
    --limit '22' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'H5Wjg0be' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'xVFgVCtU' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["m32m031f", "icfDQxL2", "4T4PEaN5"], "oneTimeLinkCode": "l4Vlhy0q"}' \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "9TR3Tm69"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'pDN1d1jn' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'MTxlzoNn' \
    --code 'qpKkUHL7' \
    --error 'u4u23ffW' \
    --state 'kTbMHgeL' \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'Md5vrCza' \
    --payload '8rjzCO8z' \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'cfR1A4Wk' \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'uwaHcuPF' \
    --code 'ZMLLKObv' \
    > test.out 2>&1
eval_tap $? 291 'RequestTargetTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'BM3wKUvf' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'Z1QskTZE' \
    --endDate 'KkRyyjWi' \
    --limit '99' \
    --offset '42' \
    --startDate 'EVuv8nZ5' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'scopg8jW' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "JBleXMtw", "deviceId": "LJ7VnnKU", "deviceType": "25BuD7ja", "enabled": false, "endDate": "udRG1mNM", "ext": {"13DCwRrK": {}, "zq3KcmP6": {}, "JoilHvQb": {}}, "reason": "ejRzlEU3"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'vLTTJjif' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'LMWr0e8o' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'WOaRcuzg' \
    --startDate 'MIMTB1Of' \
    --deviceType '13u6gMLc' \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'mjxyX9sg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'yGktHn0F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'VaBa90bo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'hjwU4epp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 79}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jLEf4nuU", "tTLJ8ll8", "QJB1XwdD"]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '3Q4PAZPf' \
    --body '{"avatarUrl": "roxMb7Fy", "country": "q9ybgKya", "dateOfBirth": "o8YboNdV", "displayName": "j7lw199g", "languageTag": "s7OMyvaR", "userName": "YCkUQkrF"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Ip9kaUrf' \
    --body '{"code": "1sQlIjJj", "emailAddress": "xy6r2nu5"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'e0FMtWVJ' \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RlYZCQvI' \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yCnkzfJW' \
    --body '{"assignedNamespaces": ["1Si7lAfh", "W1vnFLDK", "tv4QPQUf"], "roleId": "8USVympR"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'LpYjReAG' \
    --body '{"assignedNamespaces": ["4dK9kU2o", "iSDNAKIK", "phDaZurK"], "roleId": "bVFh8UZs"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'uqTMHZS4' \
    --body '{"assignedNamespaces": ["7foH7eIp", "te2FwMi0", "KRwkPUOZ"], "roleId": "yVjTDDfE"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '4' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "7bwlTP1m"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'sxJo5QaA' \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '8GZ9qwHs' \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'ykW1Gi6N' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "g5lWsh3F"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'eICdm9OE' \
    --body '{"permissions": [{"action": 27, "resource": "io6VXJFo", "schedAction": 50, "schedCron": "YtmhBoCH", "schedRange": ["pRjB9KIr", "jlKhYK0e", "QURUT7zi"]}, {"action": 28, "resource": "EOeZSous", "schedAction": 58, "schedCron": "NpMLXaCI", "schedRange": ["eZM2rDjk", "53OvOV4c", "1eEKOllt"]}, {"action": 76, "resource": "6uREMHve", "schedAction": 11, "schedCron": "KWrlMXnw", "schedRange": ["veQrUNwn", "KQ6LO16w", "cUvtp81w"]}]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '06MPIJCw' \
    --body '{"permissions": [{"action": 2, "resource": "ESZpyccD", "schedAction": 36, "schedCron": "vTWnuI1k", "schedRange": ["30ojbLm8", "e6oeyN4m", "KMlzsqoT"]}, {"action": 1, "resource": "X0mVXnzL", "schedAction": 15, "schedCron": "Rdk1oqaR", "schedRange": ["knAsL1gw", "36d5HuQl", "aMvxCtHR"]}, {"action": 65, "resource": "vfpoPe7u", "schedAction": 22, "schedCron": "DVwf7l75", "schedRange": ["JfdZ4Cyo", "x1sSJlyu", "8Njh3r3o"]}]}' \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'cWbbgbER' \
    --body '["SiURPxIQ", "L4KehQnv", "WmWwdXg7"]' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'NblIYxS5' \
    --after 'w48enxri' \
    --before 'B0Nj0rPK' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'lJxCsWCQ' \
    --body '{"assignedNamespaces": ["7006qt8z", "BUI6Y9xK", "lygPz8v9"], "namespace": "ZHRbchCw", "userId": "Z9pF0d48"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'fY0Klc8T' \
    --body '{"namespace": "QP9opvax", "userId": "KesFUsmw"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["BCVgMjZP", "jjbk3iFb", "Wl2Ovr7P"], "emailAddresses": ["5e3HWqyO", "4koSD4DD", "6keRaeic"], "isAdmin": false, "namespace": "hsMgO7m7", "roleId": "t34G0kLE"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "RflNpc75", "country": "NMRtUxHJ", "dateOfBirth": "ZsGHSRRo", "displayName": "EJFlaahq", "languageTag": "CsnhcV5i", "userName": "rGbZd2wN"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'LkIcEoGS' \
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
    --code 'BzAGoteN' \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '3OncVHeU' \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "t36GStRg", "policyId": "8NLlYZKN", "policyVersionId": "FgE1PiRh"}, {"isAccepted": false, "localizedPolicyVersionId": "gwr2WLXw", "policyId": "XPQVazDq", "policyVersionId": "gC7ojZTj"}, {"isAccepted": false, "localizedPolicyVersionId": "G97LOhbq", "policyId": "lkglYERT", "policyVersionId": "KStjcWGj"}], "authType": "EMAILPASSWD", "country": "qCuPapdJ", "dateOfBirth": "BjNZSzcl", "displayName": "QgH7V1Nz", "emailAddress": "AUCVyCUF", "password": "kAukOXBz", "passwordMD5Sum": "uz9bOIKP", "username": "JvM9S2In", "verified": false}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "fdIUhB4L", "policyId": "qzs9jSt1", "policyVersionId": "Y4WIawDl"}, {"isAccepted": true, "localizedPolicyVersionId": "KZHFEFLM", "policyId": "GveDkj3Z", "policyVersionId": "cP8Ut2Gn"}, {"isAccepted": false, "localizedPolicyVersionId": "wnhsNxOi", "policyId": "7Qrb6B1W", "policyVersionId": "tYuFuiiI"}], "authType": "EMAILPASSWD", "code": "WchLtaZ8", "country": "2KAkVENy", "dateOfBirth": "u9kUbig0", "displayName": "KM45y0RE", "emailAddress": "tryjTQWy", "password": "JAmKj46E", "passwordMD5Sum": "onSYnV8u", "reachMinimumAge": true, "username": "8E9Lpelu"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'un1RfDv0' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "KyzgNdeT", "policyId": "AnLvKhUR", "policyVersionId": "ts87NfF6"}, {"isAccepted": false, "localizedPolicyVersionId": "M8py8qvA", "policyId": "MkleP0tf", "policyVersionId": "EsYtmG77"}, {"isAccepted": true, "localizedPolicyVersionId": "IDyF8tQS", "policyId": "eAONgtQk", "policyVersionId": "2BXs1O1J"}], "authType": "EMAILPASSWD", "country": "EnbP1epX", "dateOfBirth": "iIjHq4ci", "displayName": "hiiLU0rZ", "password": "9DlUEh1s", "reachMinimumAge": true, "username": "PQAd6eLv"}' \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "J35lnvBU", "country": "13wgYggl", "dateOfBirth": "joGDyli6", "displayName": "WIPykXjh", "languageTag": "6sFwWVnJ", "userName": "KijqRyNu"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "nkCrixu2", "emailAddress": "VxP6Goew"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dO3O1hVe", "country": "FP8stHZR", "dateOfBirth": "9Df6Ot0Y", "displayName": "0E0HzoO9", "emailAddress": "xpxlPkme", "password": "LCBd6xgq", "reachMinimumAge": true, "username": "YJgzFgSP", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "3tCUPXki", "password": "VWroScnQ", "username": "SRcLrkxG"}' \
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
    --code '4PrpCqHW' \
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
    --code '2B3CV9kZ' \
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
    --factor '3xFpMnE1' \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId '1Y4rcuBf' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "hN0nJhpE", "emailAddress": "GxVrFKjf", "namespace": "mvaXSEMH", "namespaceDisplayName": "965x9h6o"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE