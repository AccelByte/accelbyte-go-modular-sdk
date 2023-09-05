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
echo "1..357"

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
    --body '[{"field": "IVJFDbax", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["QYLucsmj", "EIU1nJAs", "dKb31LTx"], "preferRegex": false, "regex": "KywoveLx"}, "blockedWord": ["mboP42oM", "f2CNDuJI", "eYyDh32Z"], "description": [{"language": "J9hII6RV", "message": ["39cnrUL3", "MbQupwHk", "3wd5JDij"]}, {"language": "KKwVv0zT", "message": ["OLfN5Rdk", "Za80MX09", "8XwiHury"]}, {"language": "GNOEht51", "message": ["HbxBxG4x", "gCFGaSb4", "8MUkb3HI"]}], "isCustomRegex": true, "letterCase": "e78q3lv5", "maxLength": 27, "maxRepeatingAlphaNum": 99, "maxRepeatingSpecialCharacter": 89, "minCharType": 30, "minLength": 17, "regex": "2e0wbb6s", "specialCharacterLocation": "wXQrmvD6", "specialCharacters": ["5DNgRuGy", "a7Xs2Tm4", "to5mQsgl"]}}, {"field": "MVGg0mEw", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Uhdow9Ag", "ZeSsTJHw", "3bP5j9di"], "preferRegex": false, "regex": "PDeYfVlN"}, "blockedWord": ["b3AWxdNG", "9P5nk6ST", "nnmlTj8l"], "description": [{"language": "Dms5WBuy", "message": ["tQxyH2cM", "IX6ltJbE", "DTk8hnlI"]}, {"language": "AN9nG0lC", "message": ["dhL0LrFG", "mdRAMDn0", "AExxURC3"]}, {"language": "oY9V5Y0K", "message": ["ZI1LvMJA", "LLYJbkwb", "JhWkQT6O"]}], "isCustomRegex": false, "letterCase": "6L7StCOJ", "maxLength": 73, "maxRepeatingAlphaNum": 38, "maxRepeatingSpecialCharacter": 54, "minCharType": 7, "minLength": 60, "regex": "vdbl33Dw", "specialCharacterLocation": "LgF14CxQ", "specialCharacters": ["Jg2qbBaa", "nOIAJa5L", "3IyQjFJM"]}}, {"field": "PhUVbJSh", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["JtXOV4jY", "T87JqGV7", "pc8pYWTM"], "preferRegex": false, "regex": "FdYtN0MX"}, "blockedWord": ["kyw9BH8x", "NFGeg1mv", "E7iaa1ga"], "description": [{"language": "iOzogOY0", "message": ["cMwfRrOT", "2zQflYiE", "ml6lEeWl"]}, {"language": "pKeNJmrR", "message": ["g29x5xo6", "VFQRRlEh", "5EG9WNn0"]}, {"language": "XRldsHYn", "message": ["sVEuuFKf", "oVQBYuBX", "sOqslgpX"]}], "isCustomRegex": true, "letterCase": "IyoxwFe2", "maxLength": 67, "maxRepeatingAlphaNum": 44, "maxRepeatingSpecialCharacter": 19, "minCharType": 94, "minLength": 69, "regex": "2PAQqfQl", "specialCharacterLocation": "JuhisI3O", "specialCharacters": ["CVw2LLui", "mfR0bVFz", "ZNQln1uc"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'lHCJIMus' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'mm0L9EMU' \
    --before 'K0yHrEBO' \
    --limit '29' \
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
    --body '{"ageRestriction": 54, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'Yt6znlQt' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 42}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'qavntzPD' \
    --limit '23' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "ZDs9nuTp", "comment": "H2Kqa0vR", "endDate": "lJvP0oC9", "reason": "Z6bmlVmL", "skipNotif": true, "userIds": ["6Mh2p2pL", "CbrD9JZj", "13t6hgXe"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "C1LClCeq", "userId": "JjDswLSt"}, {"banId": "XNl1LDUd", "userId": "olmdwpk9"}, {"banId": "IEOTbIgv", "userId": "RgGoBqW1"}]}' \
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
    --clientId '8goWlFeV' \
    --clientName 'KZHdZFnK' \
    --clientType 'XVNPYW78' \
    --limit '40' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["xg9saRt9", "1Aus6OvJ", "IC1jPBz3"], "baseUri": "8gSBd2Oz", "clientId": "3WTkNbBa", "clientName": "pULa2vMn", "clientPermissions": [{"action": 81, "resource": "15NRlhyT", "schedAction": 24, "schedCron": "JvfTRCnI", "schedRange": ["ILhyjf01", "2ulvljpT", "JvYHc7v7"]}, {"action": 91, "resource": "otsTRLiq", "schedAction": 34, "schedCron": "Zi2hZMjn", "schedRange": ["4jgCpDFL", "LSNMjgYr", "34zqMijz"]}, {"action": 20, "resource": "x7LS5JtH", "schedAction": 60, "schedCron": "dL8ywwW5", "schedRange": ["PXzyehxI", "tq9c5D9y", "dUjPMZQR"]}], "clientPlatform": "72cplaI4", "deletable": true, "description": "A9wQTAk7", "namespace": "wcFLcTW2", "oauthAccessTokenExpiration": 12, "oauthAccessTokenExpirationTimeUnit": "A2TSiLHo", "oauthClientType": "lN5K6ZYM", "oauthRefreshTokenExpiration": 32, "oauthRefreshTokenExpirationTimeUnit": "6aWhsBDh", "parentNamespace": "ooGd80Xk", "redirectUri": "gjpMLeNa", "scopes": ["ZmSop1yW", "sIkSPFDv", "wXkLNvcG"], "secret": "IRUhDtid", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'JBRWw2AM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'QwssKzXY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '08WzcxAf' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["aJJeienh", "f5VlxrYE", "CrEr5fW5"], "baseUri": "2pUlOqFF", "clientName": "i3K9TJM7", "clientPermissions": [{"action": 55, "resource": "3ewTb8Iw", "schedAction": 53, "schedCron": "CjF6XB1e", "schedRange": ["o8G2pMQ2", "otpiXSFP", "bPOxCwj3"]}, {"action": 21, "resource": "55rHM7Nr", "schedAction": 8, "schedCron": "gMUO0Ibd", "schedRange": ["d1TKIn8K", "FB0d5Pyb", "pRr4Md6c"]}, {"action": 25, "resource": "ZJFXEgwx", "schedAction": 87, "schedCron": "hynDeIWX", "schedRange": ["mXhCKWlw", "Qf8tA0Oc", "LxY4B9v7"]}], "clientPlatform": "GjVL9vlG", "deletable": true, "description": "CX4cV5dP", "namespace": "uhd4X9SF", "oauthAccessTokenExpiration": 20, "oauthAccessTokenExpirationTimeUnit": "29jK3hvp", "oauthRefreshTokenExpiration": 53, "oauthRefreshTokenExpirationTimeUnit": "5obuHQFE", "redirectUri": "EGHNlAdK", "scopes": ["bmmbc8vc", "HJR0vjK4", "5QOOM0tb"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'EdkADKdr' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 68, "resource": "36RNdvyA"}, {"action": 95, "resource": "0P8fiedW"}, {"action": 80, "resource": "SXjoC3EK"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '1DGVpmMP' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 32, "resource": "q8797JqJ"}, {"action": 10, "resource": "SkUQj1sv"}, {"action": 68, "resource": "DU2keZ5C"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '73' \
    --clientId 'RvVduxwc' \
    --namespace $AB_NAMESPACE \
    --resource '3tPypV86' \
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
    --limit '2' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vHm2Rwt3' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ieXZDDdV' \
    --body '{"ACSURL": "e7KOw6t7", "AWSCognitoRegion": "27cPjsbZ", "AWSCognitoUserPool": "poAoEXzg", "AllowedClients": ["mS61SFV1", "w7l2wfQ1", "cZsLtWEt"], "AppId": "zqB7f30s", "AuthorizationEndpoint": "4inEHpxZ", "ClientId": "geealmC2", "Environment": "ok169gUO", "FederationMetadataURL": "dPZkkV8F", "GenericOauthFlow": true, "IsActive": false, "Issuer": "qHmaLkKI", "JWKSEndpoint": "bVbpQOYp", "KeyID": "yPNy8YsS", "NetflixCertificates": {"encryptedPrivateKey": "5yCCb9fT", "encryptedPrivateKeyName": "DHW1qScA", "publicCertificate": "BnJBekhz", "publicCertificateName": "o7GSRhT9", "rootCertificate": "47qQd4ON", "rootCertificateName": "Uk7tUdA1"}, "OrganizationId": "mKjkR1sU", "PlatformName": "fO1z1heE", "RedirectUri": "n08Hrsk2", "RegisteredDomains": [{"affectedClientIDs": ["PbS8i2mr", "CXRKvRiS", "ZQ56mN9u"], "domain": "GIX2Lj8R", "namespaces": ["pTe867Ea", "VNKma8EF", "SmIs9iH4"], "roleId": "plRkp74R"}, {"affectedClientIDs": ["y9SzzRbZ", "emqF8u8Y", "xRpV7ay6"], "domain": "3kIUZivh", "namespaces": ["4tT5KYFh", "HA3IFlG4", "bJ4lwzs2"], "roleId": "V1fWF2mG"}, {"affectedClientIDs": ["G6p21Ua8", "laDJnZg4", "q2x6odK3"], "domain": "L70hbDlZ", "namespaces": ["m6TOVa3W", "ad1gyqMT", "SSjlOgpH"], "roleId": "ZUwJEh3o"}], "Secret": "8xigfgnU", "TeamID": "nLjCBE37", "TokenAuthenticationType": "ED1tcHpC", "TokenClaimsMapping": {"LsjK10NA": "rNsWF41W", "fGrUFwgl": "QwA4D7Mc", "SHBekzG2": "2ppjaoBg"}, "TokenEndpoint": "rxqinzd2", "UserInfoEndpoint": "iKXON66L", "UserInfoHTTPMethod": "DZ8mh32Q", "scopes": ["2ZP8a4Fh", "XElb6bkk", "bYWQIRMw"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UqFIRpg6' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kgF2x5IX' \
    --body '{"ACSURL": "MVZxRVgD", "AWSCognitoRegion": "LDdWSbNU", "AWSCognitoUserPool": "V83aXGpu", "AllowedClients": ["CVwll9GN", "ZtnqDKtA", "yHV6Sfr4"], "AppId": "tKgUTzt8", "AuthorizationEndpoint": "hSMx1mbt", "ClientId": "sI4A1XpG", "Environment": "bNi9z6qd", "FederationMetadataURL": "dK2Yoerb", "GenericOauthFlow": true, "IsActive": true, "Issuer": "JA8h2JiD", "JWKSEndpoint": "Lwv1atUP", "KeyID": "OQEETnNI", "NetflixCertificates": {"encryptedPrivateKey": "McKjgTxE", "encryptedPrivateKeyName": "1L2ZfzrV", "publicCertificate": "IZcxuPgy", "publicCertificateName": "PzbSs249", "rootCertificate": "qN5H20qy", "rootCertificateName": "gYeO6QBC"}, "OrganizationId": "zUKh9fjw", "PlatformName": "Mv9wMH6d", "RedirectUri": "dDQwoqXA", "RegisteredDomains": [{"affectedClientIDs": ["j6ibK8I5", "VizO41p3", "zLqjVaws"], "domain": "sDNQF4P4", "namespaces": ["4Uq39CZR", "lwHwmkce", "IpLm5nd5"], "roleId": "skcBZujz"}, {"affectedClientIDs": ["qeBmB7gw", "aZp1gT4R", "gMhePTEG"], "domain": "DoC5FPTW", "namespaces": ["JklBlFjX", "XCVEi2ef", "BUsbasPg"], "roleId": "IRotqXwz"}, {"affectedClientIDs": ["OxuEIHa6", "evq89Tzc", "b2Y7IEpQ"], "domain": "yzd8a5zR", "namespaces": ["3yTcePgu", "oTPjp8Iy", "bH9FG8qr"], "roleId": "XExPPt6c"}], "Secret": "1sRDAwkl", "TeamID": "2IKIvLdr", "TokenAuthenticationType": "7uuobjQr", "TokenClaimsMapping": {"p5aS3xyB": "yIqGjbDL", "bllGcvnk": "OVYHfJMq", "I6nbfgnV": "iEX9PKqJ"}, "TokenEndpoint": "wHb9FvWA", "UserInfoEndpoint": "HECTSDxE", "UserInfoHTTPMethod": "83QTiC5M", "scopes": ["9Jse73B3", "t64X0H4p", "sCT6yB4D"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PVQXecTR' \
    --body '{"affectedClientIDs": ["FFJtpYmK", "x3KS4spj", "mSIbJcU5"], "assignedNamespaces": ["Xxl5Q6tl", "ODTjsC0W", "3i6MwCd7"], "domain": "xFb7hXD8", "roleId": "AlX0NX2C"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QnfYubqS' \
    --body '{"domain": "NAQNxrOT"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'bzsLMUCR' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'FPZKFklS' \
    --body '{"acsUrl": "9qQZHTpA", "apiKey": "9yYy7UdN", "appId": "ncZyWszl", "federationMetadataUrl": "KaIhP31I", "isActive": false, "redirectUri": "WGWTIzF3", "secret": "AzKo54bo", "ssoUrl": "dzf7eax2"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'japllgjp' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'zm8Sxt2N' \
    --body '{"acsUrl": "lKhpmGrf", "apiKey": "JnSuxtOo", "appId": "jY1iBkMY", "federationMetadataUrl": "hoEZ3dsf", "isActive": true, "redirectUri": "A6bISf73", "secret": "V8ZhHZet", "ssoUrl": "L1B1AZAG"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xQi6uXW7' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["6mXSZcvx", "yRRyDe00", "lP3tFwdg"]}' \
    > test.out 2>&1
eval_tap $? 141 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 142 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VcKvbS6j' \
    --platformUserId '1r2be0Sw' \
    > test.out 2>&1
eval_tap $? 142 'AdminGetUserByPlatformUserIDV3' test.out

#- 143 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'grcl8UTx' \
    --after '80' \
    --before '34' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 143 'GetAdminUsersByRoleIdV3' test.out

#- 144 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'Kg1YSSnG' \
    > test.out 2>&1
eval_tap $? 144 'AdminGetUserByEmailAddressV3' test.out

#- 145 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'qbUcs6Ea' \
    --body '{"bulkUserId": ["POkk8A15", "4btRfdDD", "JL987xYt"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetBulkUserBanV3' test.out

#- 146 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["agsHutAR", "Nqqt8c8n", "aCYF6wsZ"]}' \
    > test.out 2>&1
eval_tap $? 146 'AdminListUserIDByUserIDsV3' test.out

#- 147 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["UV54bIzF", "EWCyOxXk", "PEp3xWEF"]}' \
    > test.out 2>&1
eval_tap $? 147 'AdminBulkGetUsersPlatform' test.out

#- 148 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["f0UbQBqf", "ZDJMrG8a", "SqTFexKK"], "isAdmin": false, "namespace": "aSRdh3j9", "roles": ["HaZoM76b", "ShkqoLB9", "q42GDb5E"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminInviteUserV3' test.out

#- 149 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '79' \
    --platformUserId 'EjfmVXqp' \
    --platformId 'xBl6oce8' \
    > test.out 2>&1
eval_tap $? 149 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 150 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUsersV3' test.out

#- 151 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '6oX8XPmS' \
    --endDate '02q3T79d' \
    --limit '54' \
    --offset '71' \
    --platformBy 'OSDy8eoD' \
    --platformId 'mNfXs3mt' \
    --query 'CQ6WUsvT' \
    --startDate 'jEVsvmHW' \
    > test.out 2>&1
eval_tap $? 151 'AdminSearchUserV3' test.out

#- 152 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["IorFEgOL", "0iKOGua2", "CytiT9Hc"]}' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetBulkUserByEmailAddressV3' test.out

#- 153 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G6jUsxmE' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByUserIdV3' test.out

#- 154 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NWvAdFto' \
    --body '{"avatarUrl": "SXl3lxDl", "country": "uxuwFCtM", "dateOfBirth": "A6lkodOi", "displayName": "GeNih7td", "languageTag": "AGlJeHvm", "userName": "4AUNgN8N"}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserV3' test.out

#- 155 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId '7saK6aHi' \
    --activeOnly 'false' \
    --after 'NYnrXUu2' \
    --before 'CTTvYOgP' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserBanV3' test.out

#- 156 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gpVky3A6' \
    --body '{"ban": "ZdpwbkNC", "comment": "RqhOZFph", "endDate": "Dca4RD91", "reason": "ilNifaCx", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminBanUserV3' test.out

#- 157 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '25udJQEo' \
    --namespace $AB_NAMESPACE \
    --userId 'gaw7ShmE' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserBanV3' test.out

#- 158 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oHknLrbh' \
    --body '{"context": "0n6sPjrK", "emailAddress": "7zlKp9uo", "languageTag": "jNRQBIQS"}' \
    > test.out 2>&1
eval_tap $? 158 'AdminSendVerificationCodeV3' test.out

#- 159 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '0TMfIvhP' \
    --body '{"Code": "P42T7UGw", "ContactType": "QhGomzS5", "LanguageTag": "96Hhsrlm", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminVerifyAccountV3' test.out

#- 160 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'kuEeE9sW' \
    > test.out 2>&1
eval_tap $? 160 'GetUserVerificationCode' test.out

#- 161 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SDRm79Q2' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserDeletionStatusV3' test.out

#- 162 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lpzMagNm' \
    --body '{"deletionDate": 76, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 162 'AdminUpdateUserDeletionStatusV3' test.out

#- 163 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'a5ncS1pC' \
    --body '{"code": "daTYhmsR", "country": "nVfKMWKX", "dateOfBirth": "VbIEBMRs", "displayName": "irtvr3ZG", "emailAddress": "49T76pgz", "password": "5X0prPnX", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 163 'AdminUpgradeHeadlessAccountV3' test.out

#- 164 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Qk7Aa5zN' \
    > test.out 2>&1
eval_tap $? 164 'AdminDeleteUserInformationV3' test.out

#- 165 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'g5I2s10K' \
    --after '0.9129911633568216' \
    --before '0.9365030197572606' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserLoginHistoriesV3' test.out

#- 166 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VeDSXOsa' \
    --body '{"languageTag": "cLrB7fvq", "newPassword": "JVwEvxAj", "oldPassword": "dbia1bzy"}' \
    > test.out 2>&1
eval_tap $? 166 'AdminResetPasswordV3' test.out

#- 167 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hrU1LKJq' \
    --body '{"Permissions": [{"Action": 97, "Resource": "g9mme599", "SchedAction": 81, "SchedCron": "AYdX8lf5", "SchedRange": ["Re4j4rL4", "DYI0bwuD", "W1tBm1wP"]}, {"Action": 80, "Resource": "IX4nkj3k", "SchedAction": 87, "SchedCron": "qAOm3zCz", "SchedRange": ["eqF5sTh0", "JRXdB7BR", "ETI90h4G"]}, {"Action": 93, "Resource": "i6ZthWvk", "SchedAction": 72, "SchedCron": "tXW1jOyS", "SchedRange": ["nqkJiPVm", "KkJjYEqR", "IHt4SMPu"]}]}' \
    > test.out 2>&1
eval_tap $? 167 'AdminUpdateUserPermissionV3' test.out

#- 168 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wxfvwIfj' \
    --body '{"Permissions": [{"Action": 100, "Resource": "Od1UxMfK", "SchedAction": 82, "SchedCron": "cjZbVMbt", "SchedRange": ["CIWtdERH", "pgHSoCoP", "xT8gHSqV"]}, {"Action": 32, "Resource": "z6d82O2O", "SchedAction": 43, "SchedCron": "Kz3UR36Z", "SchedRange": ["1zETOqAH", "aS6Zvg3D", "zGx7DQF8"]}, {"Action": 16, "Resource": "xjcoFR2z", "SchedAction": 39, "SchedCron": "XUBbSKiU", "SchedRange": ["SZF7p2WE", "ASAeMC2g", "eMHI2jEs"]}]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminAddUserPermissionsV3' test.out

#- 169 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iFVVHQJE' \
    --body '[{"Action": 11, "Resource": "Vlj6mH95"}, {"Action": 89, "Resource": "DpyBvu6i"}, {"Action": 4, "Resource": "AjctMraP"}]' \
    > test.out 2>&1
eval_tap $? 169 'AdminDeleteUserPermissionBulkV3' test.out

#- 170 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '31' \
    --namespace $AB_NAMESPACE \
    --resource 'hjI2V68z' \
    --userId 'aTXDtnAZ' \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserPermissionV3' test.out

#- 171 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b0hUECaQ' \
    --after 'Mu8fizAA' \
    --before 'kGcdyIfz' \
    --limit '45' \
    --platformId '33B3am9n' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserPlatformAccountsV3' test.out

#- 172 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'how9jcG6' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetListJusticePlatformAccounts' test.out

#- 173 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'd1fWIF3W' \
    --userId 'SGp5Z0cN' \
    > test.out 2>&1
eval_tap $? 173 'AdminGetUserMapping' test.out

#- 174 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'm6lNKZJm' \
    --userId 'KKg6swc8' \
    > test.out 2>&1
eval_tap $? 174 'AdminCreateJusticeUser' test.out

#- 175 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'UKnhbnWX' \
    --skipConflict 'true' \
    --body '{"platformId": "s0ftvGga", "platformUserId": "0Y8DVH2A"}' \
    > test.out 2>&1
eval_tap $? 175 'AdminLinkPlatformAccount' test.out

#- 176 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HQeIuYQH' \
    --userId 'NA5r4VfP' \
    --body '{"platformNamespace": "RSohr6V7"}' \
    > test.out 2>&1
eval_tap $? 176 'AdminPlatformUnlinkV3' test.out

#- 177 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'b0E95j5A' \
    --userId 'rgoES1b7' \
    --ticket '3oscjOoF' \
    > test.out 2>&1
eval_tap $? 177 'AdminPlatformLinkV3' test.out

#- 178 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3H8rBUYT' \
    --userId 'EYIffG5F' \
    --platformToken 'gROYNf9k' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 179 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'SYLit2El' \
    --userId 'k1Wav2vf' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetUserSinglePlatformAccount' test.out

#- 180 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sA8il7wI' \
    --body '["aE7rz3ux", "rOMasTWm", "oPGUlRr4"]' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteUserRolesV3' test.out

#- 181 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hpLHGo7Q' \
    --body '[{"namespace": "YMVfujuR", "roleId": "x8vHEXWD"}, {"namespace": "0tgMk5OL", "roleId": "pv6voLJ9"}, {"namespace": "hGa7EZ3n", "roleId": "KIdiUVuo"}]' \
    > test.out 2>&1
eval_tap $? 181 'AdminSaveUserRoleV3' test.out

#- 182 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '4Ebsdfke' \
    --userId 'kmFDIfBU' \
    > test.out 2>&1
eval_tap $? 182 'AdminAddUserRoleV3' test.out

#- 183 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'gouZMjNn' \
    --userId 'mWp3gUcG' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRoleV3' test.out

#- 184 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oLhYoD0m' \
    --body '{"enabled": false, "reason": "UG1Fsus0"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateUserStatusV3' test.out

#- 185 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uZmSppV0' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 186 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'dxECfQL7' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "rUsx0WmW"}' \
    > test.out 2>&1
eval_tap $? 186 'AdminUpdateClientSecretV3' test.out

#- 187 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'y2kxIDNU' \
    --before 'A5js0x4o' \
    --isWildcard 'false' \
    --limit '66' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRolesV3' test.out

#- 188 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "qW6pDNqv", "namespace": "NlbWfqE9", "userId": "N2zeaU9q"}, {"displayName": "VXhFa0yy", "namespace": "HmSqR3XT", "userId": "mI39C4or"}, {"displayName": "bjFp9lod", "namespace": "ORwjvkG4", "userId": "XzkNUWxA"}], "members": [{"displayName": "1PJh6UOL", "namespace": "zg587OSk", "userId": "dNnrVDX6"}, {"displayName": "rJbuYUDj", "namespace": "AzMZYMI9", "userId": "G4mlCZwg"}, {"displayName": "IQKMiIH3", "namespace": "TT0ERYVl", "userId": "wbLa1uja"}], "permissions": [{"action": 54, "resource": "khk27FtX", "schedAction": 59, "schedCron": "nUVNG3dX", "schedRange": ["dxZc2Dmt", "6aHbjTfe", "PuTzgbTC"]}, {"action": 92, "resource": "i8PxyuRM", "schedAction": 99, "schedCron": "kFCeYXAE", "schedRange": ["RA5YMcac", "X1ThqXaL", "JOGAWqeP"]}, {"action": 35, "resource": "zAL6jHr2", "schedAction": 12, "schedCron": "jY2nUhbH", "schedRange": ["jVB0oRq5", "FQyJvsNY", "dGw2uoVH"]}], "roleName": "k1V6WzGE"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminCreateRoleV3' test.out

#- 189 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '3y9sJpmY' \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleV3' test.out

#- 190 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'KGp0K5im' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteRoleV3' test.out

#- 191 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'hBWPhBdt' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "DJRyg64B"}' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateRoleV3' test.out

#- 192 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'GLhuSpEE' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleAdminStatusV3' test.out

#- 193 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '59311Dxy' \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateAdminRoleStatusV3' test.out

#- 194 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'gx3OqSQH' \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleAdminV3' test.out

#- 195 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'mEfLUO7Z' \
    --after '1YfyOFFv' \
    --before 'G3EIFJEz' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetRoleManagersV3' test.out

#- 196 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'nLZHwWEG' \
    --body '{"managers": [{"displayName": "Yfr5ZD5H", "namespace": "3mkhLNgK", "userId": "XhD14re7"}, {"displayName": "2cr0c5Eu", "namespace": "26cDv4Ac", "userId": "6N1cNlxC"}, {"displayName": "35IKofQL", "namespace": "lEb4arGE", "userId": "PODbGi6H"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRoleManagersV3' test.out

#- 197 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'CzkaKksm' \
    --body '{"managers": [{"displayName": "SrJKTgFo", "namespace": "RTyVWreN", "userId": "NyMlFYRC"}, {"displayName": "7Al7Gj6y", "namespace": "7BD2t08W", "userId": "FaZQU1hQ"}, {"displayName": "0CHUT8CE", "namespace": "buxP5aiO", "userId": "XSGBfnU4"}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminRemoveRoleManagersV3' test.out

#- 198 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'nsxhtGAz' \
    --after 'kOmL6IRX' \
    --before 'cGXys5Yw' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetRoleMembersV3' test.out

#- 199 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'RTQ90Atq' \
    --body '{"members": [{"displayName": "yomC2Tgi", "namespace": "5mhOITMC", "userId": "QM6ZykGS"}, {"displayName": "YtcD7T8z", "namespace": "DQV7KjqB", "userId": "iCQRoEJY"}, {"displayName": "rRDMWDA3", "namespace": "q7US4TFN", "userId": "nhiJhHoO"}]}' \
    > test.out 2>&1
eval_tap $? 199 'AdminAddRoleMembersV3' test.out

#- 200 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '649LhuKu' \
    --body '{"members": [{"displayName": "luvbBzvf", "namespace": "UrEi7jOI", "userId": "ta4q4paD"}, {"displayName": "886EaSge", "namespace": "GbXNF4q9", "userId": "uWzYwULL"}, {"displayName": "WeLPrpyy", "namespace": "b4m9kD52", "userId": "fgVg7j9d"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminRemoveRoleMembersV3' test.out

#- 201 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'JDBCVG6r' \
    --body '{"permissions": [{"action": 81, "resource": "QCOMETGP", "schedAction": 68, "schedCron": "PWRS5Wmo", "schedRange": ["3HkRcIpK", "V8BE3ne4", "c991aAjD"]}, {"action": 32, "resource": "RLIR3tlF", "schedAction": 33, "schedCron": "d2KoYk78", "schedRange": ["SeTTQJJh", "BJ25OvqU", "rNlw7YKf"]}, {"action": 33, "resource": "sJHMQ8Zz", "schedAction": 98, "schedCron": "h6B3qgdf", "schedRange": ["xvILeZrb", "A6Xq9RzC", "CS3oCPzP"]}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateRolePermissionsV3' test.out

#- 202 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '8HrhZtRW' \
    --body '{"permissions": [{"action": 52, "resource": "tKpot89P", "schedAction": 20, "schedCron": "S2ZC6Tkp", "schedRange": ["TduorzZM", "SU07bsIX", "fo87Yr7H"]}, {"action": 15, "resource": "sVSu0zws", "schedAction": 77, "schedCron": "VNItDpZe", "schedRange": ["IC1I8ZgX", "M4Z45It6", "YyI0J1an"]}, {"action": 95, "resource": "UFzfa9E4", "schedAction": 0, "schedCron": "wIfPUoiU", "schedRange": ["PsyiGB1p", "HHE3cRD4", "F0zu63Kt"]}]}' \
    > test.out 2>&1
eval_tap $? 202 'AdminAddRolePermissionsV3' test.out

#- 203 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'vIySJaOP' \
    --body '["mu6LC8Zc", "nH7hqneO", "KgUJ42Gu"]' \
    > test.out 2>&1
eval_tap $? 203 'AdminDeleteRolePermissionsV3' test.out

#- 204 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '80' \
    --resource 'V6NVBV5M' \
    --roleId 'rPSUPnIr' \
    > test.out 2>&1
eval_tap $? 204 'AdminDeleteRolePermissionV3' test.out

#- 205 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 205 'AdminGetMyUserV3' test.out

#- 206 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'ZBIjgT7Q' \
    --extendExp 'true' \
    --redirectUri 'w1M9A234' \
    --password '9o3cwl6s' \
    --requestId 'OWuxD7xk' \
    --userName 'I1TbhQZI' \
    > test.out 2>&1
eval_tap $? 206 'UserAuthenticationV3' test.out

#- 207 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'Rr5UQxia' \
    --linkingToken '8jwnCJjk' \
    --password 'afKGF1UJ' \
    --username 'C2O3lFxF' \
    > test.out 2>&1
eval_tap $? 207 'AuthenticationWithPlatformLinkV3' test.out

#- 208 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'sEl8lL9g' \
    --extendExp 'false' \
    --linkingToken 'MZpKE0yS' \
    > test.out 2>&1
eval_tap $? 208 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 209 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'U7FYLfCd' \
    > test.out 2>&1
eval_tap $? 209 'RequestOneTimeLinkingCodeV3' test.out

#- 210 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'NZm9FNBR' \
    > test.out 2>&1
eval_tap $? 210 'ValidateOneTimeLinkingCodeV3' test.out

#- 211 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData '63F9mWHV' \
    --isTransient 'false' \
    --clientId 'rcDuTYpM' \
    --oneTimeLinkCode 'GWqKNdRF' \
    > test.out 2>&1
eval_tap $? 211 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 212 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 212 'GetCountryLocationV3' test.out

#- 213 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 213 'Logout' test.out

#- 214 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'JmxC9gnX' \
    > test.out 2>&1
eval_tap $? 214 'RequestGameTokenCodeResponseV3' test.out

#- 215 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OkWjstF5' \
    --userId 'G12Owi0B' \
    > test.out 2>&1
eval_tap $? 215 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 216 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iUlQ1vw2' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 216 'RevokeUserV3' test.out

#- 217 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'SNz6YSwK' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode '6UDRw5Vm' \
    --redirectUri '4Y7jjIYL' \
    --scope 'WY4m9gKE' \
    --state 'p9N6bbEm' \
    --targetAuthPage 'AJw9jvSy' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'uBFCARKY' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 217 'AuthorizeV3' test.out

#- 218 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '1GBAYb5G' \
    > test.out 2>&1
eval_tap $? 218 'TokenIntrospectionV3' test.out

#- 219 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 219 'GetJWKSV3' test.out

#- 220 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '7sA5kxec' \
    --factor 'otXMV7qq' \
    --mfaToken 'HP8TkffO' \
    > test.out 2>&1
eval_tap $? 220 'SendMFAAuthenticationCode' test.out

#- 221 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '0h4EBfIZ' \
    --mfaToken 'YTjwMx8r' \
    > test.out 2>&1
eval_tap $? 221 'Change2faMethod' test.out

#- 222 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'EEKl85Rt' \
    --factor 'W2EI4z5g' \
    --mfaToken 'HEkGtMJy' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 222 'Verify2faCode' test.out

#- 223 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A30Th6eq' \
    --userId 'hncRmoO4' \
    > test.out 2>&1
eval_tap $? 223 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 224 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'dT973ZQQ' \
    --clientId 'CGQkDu16' \
    --redirectUri 'AkvXK9LA' \
    --requestId 'z69fufvN' \
    > test.out 2>&1
eval_tap $? 224 'AuthCodeRequestV3' test.out

#- 225 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '53Ly2DhB' \
    --additionalData 'ZNBwYLHj' \
    --clientId 'cyjuo0Tm' \
    --createHeadless 'true' \
    --deviceId 'qjumakZe' \
    --macAddress 'QwFzS4IP' \
    --platformToken 'E1Igu0lc' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 225 'PlatformTokenGrantV3' test.out

#- 226 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 226 'GetRevocationListV3' test.out

#- 227 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'PaZib6Fm' \
    > test.out 2>&1
eval_tap $? 227 'TokenRevocationV3' test.out

#- 228 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData '2sN4sPsr' \
    --clientId 'RhOUbTHW' \
    --code 'J2mJKH7g' \
    --codeVerifier '8OLbsaRB' \
    --extendExp 'true' \
    --password 'j3GzcRoC' \
    --redirectUri 'Xh6rmgbM' \
    --refreshToken 'LjPkFWX7' \
    --username 'VTB0TIF9' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 228 'TokenGrantV3' test.out

#- 229 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '2G2W3iZf' \
    > test.out 2>&1
eval_tap $? 229 'VerifyTokenV3' test.out

#- 230 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'm6lWrFtY' \
    --code '5jOlTR7D' \
    --error 'uyu8lpkb' \
    --openidAssocHandle 'dRJn8cwt' \
    --openidClaimedId 'TVCOreDD' \
    --openidIdentity 'dXrS6E2W' \
    --openidMode 'qMfdtqi4' \
    --openidNs 'LN1XTHxx' \
    --openidOpEndpoint 'o2tRiNVo' \
    --openidResponseNonce 'ENz5LG61' \
    --openidReturnTo 'EHOmZRci' \
    --openidSig 'xzXpXwXr' \
    --openidSigned 'st86oDcv' \
    --state '7TzpxViH' \
    > test.out 2>&1
eval_tap $? 230 'PlatformAuthenticationV3' test.out

#- 231 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode '9H163frb' \
    > test.out 2>&1
eval_tap $? 231 'PublicGetInputValidations' test.out

#- 232 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'KrEVc80w' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetInputValidationByField' test.out

#- 233 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'j9yMQSyW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'PublicGetCountryAgeRestrictionV3' test.out

#- 234 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 234 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 235 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'IJ8euHDI' \
    > test.out 2>&1
eval_tap $? 235 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 236 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1cyxPBJ6' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["5cYXZ7Of", "obAOtgEw", "2HvLLq8m"]}' \
    > test.out 2>&1
eval_tap $? 236 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 237 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ct05CVZo' \
    --platformUserId 'mJZ49o3y' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetUserByPlatformUserIDV3' test.out

#- 238 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'Xf6EQTpN' \
    > test.out 2>&1
eval_tap $? 238 'PublicGetAsyncStatus' test.out

#- 239 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '4dXBNqpg' \
    --limit '57' \
    --offset '28' \
    --query 'a4GmiPis' \
    > test.out 2>&1
eval_tap $? 239 'PublicSearchUserV3' test.out

#- 240 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "qXDsCofk", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "cTzzM34B", "policyId": "D28HCVIP", "policyVersionId": "1MH0kWIX"}, {"isAccepted": false, "localizedPolicyVersionId": "R4wKeRBl", "policyId": "R308GLaq", "policyVersionId": "EA0EinEE"}, {"isAccepted": false, "localizedPolicyVersionId": "OhCkiza8", "policyId": "NDy7XgcB", "policyVersionId": "ORkojpkY"}], "authType": "dcUJutAI", "code": "aulS2Qwu", "country": "8TNVP69e", "dateOfBirth": "KgsHDB98", "displayName": "Sbh79v6Y", "emailAddress": "4q5dmWQ3", "password": "6baES16n", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 240 'PublicCreateUserV3' test.out

#- 241 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'FEMJF3w0' \
    --query 'KDrW5KjL' \
    > test.out 2>&1
eval_tap $? 241 'CheckUserAvailability' test.out

#- 242 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["fmoKouV3", "FiHZk7Xs", "twnTGArL"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicBulkGetUsers' test.out

#- 243 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "kUXJhR9z", "languageTag": "BmREIZVL"}' \
    > test.out 2>&1
eval_tap $? 243 'PublicSendRegistrationCode' test.out

#- 244 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "3wcGiWnt", "emailAddress": "P5JxhGB7"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicVerifyRegistrationCode' test.out

#- 245 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "AHfFTJVN", "languageTag": "NVqykT9y"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicForgotPasswordV3' test.out

#- 246 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'Gn8hAkss' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 246 'GetAdminInvitationV3' test.out

#- 247 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'SVBl32hN' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Y36awy90", "policyId": "eTEarfz5", "policyVersionId": "8p6s8kpb"}, {"isAccepted": false, "localizedPolicyVersionId": "C7CTdRGk", "policyId": "E6Bgapk2", "policyVersionId": "64aVMXiJ"}, {"isAccepted": false, "localizedPolicyVersionId": "4DKBEI0t", "policyId": "PNkPPU2i", "policyVersionId": "P1Thhjdg"}], "authType": "EMAILPASSWD", "country": "r9LlHIpg", "dateOfBirth": "uBQfK8NQ", "displayName": "UURgmqpc", "password": "FNiJKVac", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 247 'CreateUserFromInvitationV3' test.out

#- 248 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "Wp0WcPwR", "country": "YS5kPs4C", "dateOfBirth": "S0iQc1rX", "displayName": "pVX33jVi", "languageTag": "hUClhUyu", "userName": "LjWoLE4C"}' \
    > test.out 2>&1
eval_tap $? 248 'UpdateUserV3' test.out

#- 249 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "DQQiZvdE", "country": "0PuiZi3N", "dateOfBirth": "h61nTPD6", "displayName": "ggSFwSC9", "languageTag": "8CBF0SAD", "userName": "xXGa2ugE"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicPartialUpdateUserV3' test.out

#- 250 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "rxOMOAcr", "emailAddress": "rfDBWBpi", "languageTag": "pyf1lZJw"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicSendVerificationCodeV3' test.out

#- 251 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dj61rF9p", "contactType": "GOp9fbTQ", "languageTag": "1ZPKxD9g", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 251 'PublicUserVerificationV3' test.out

#- 252 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "VE4hjgvq", "country": "kjdNQQA1", "dateOfBirth": "Ynuge72L", "displayName": "lbQxOaxk", "emailAddress": "rqdeDXQt", "password": "8hIIs49H", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 252 'PublicUpgradeHeadlessAccountV3' test.out

#- 253 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "9lmBeUs9", "password": "rwi8NLbZ"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicVerifyHeadlessAccountV3' test.out

#- 254 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "qSUtxgA3", "newPassword": "7H7WTdiX", "oldPassword": "IGQBy93L"}' \
    > test.out 2>&1
eval_tap $? 254 'PublicUpdatePasswordV3' test.out

#- 255 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'KbPLsngT' \
    > test.out 2>&1
eval_tap $? 255 'PublicCreateJusticeUser' test.out

#- 256 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5dcg8C9u' \
    --redirectUri '2ZET36Yo' \
    --ticket 'FwxwFxIi' \
    > test.out 2>&1
eval_tap $? 256 'PublicPlatformLinkV3' test.out

#- 257 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'X1OOt0mQ' \
    --body '{"platformNamespace": "6HraKykU"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicPlatformUnlinkV3' test.out

#- 258 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3r6M0ISY' \
    > test.out 2>&1
eval_tap $? 258 'PublicPlatformUnlinkAllV3' test.out

#- 259 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dq38Qyyl' \
    --ticket 'JkG2M9tT' \
    > test.out 2>&1
eval_tap $? 259 'PublicForcePlatformLinkV3' test.out

#- 260 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'bGt2EN83' \
    --clientId '96IRcpM7' \
    --redirectUri '9K2WhH1G' \
    > test.out 2>&1
eval_tap $? 260 'PublicWebLinkPlatform' test.out

#- 261 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'oCA7vGiu' \
    --code 'rwMkyutZ' \
    --state 'kW2IB62P' \
    > test.out 2>&1
eval_tap $? 261 'PublicWebLinkPlatformEstablish' test.out

#- 262 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wLmvB63t' \
    --code 'YIw0xhr5' \
    --state '4AunnR1M' \
    > test.out 2>&1
eval_tap $? 262 'PublicProcessWebLinkPlatformV3' test.out

#- 263 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UwreBKpE", "emailAddress": "TL03Mvhh", "newPassword": "8tmTXXBa"}' \
    > test.out 2>&1
eval_tap $? 263 'ResetPasswordV3' test.out

#- 264 PublicGetUserByUserIdV3
eval_tap 0 264 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 265 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nJCOwznS' \
    --activeOnly 'false' \
    --after '7QfvpNvE' \
    --before 'vjnlY65G' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserBanHistoryV3' test.out

#- 266 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'opPcWON6' \
    > test.out 2>&1
eval_tap $? 266 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 267 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F64DACJw' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetUserInformationV3' test.out

#- 268 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DMM2x8jW' \
    --after '0.8275764706987354' \
    --before '0.25758891904367553' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 268 'PublicGetUserLoginHistoriesV3' test.out

#- 269 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '8Mka7W6K' \
    --after 'qPBBnmXO' \
    --before 'Ha13TKIL' \
    --limit '46' \
    --platformId '0rvk2yTg' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetUserPlatformAccountsV3' test.out

#- 270 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'REWSVkyQ' \
    > test.out 2>&1
eval_tap $? 270 'PublicListJusticePlatformAccountsV3' test.out

#- 271 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '07xGQk5A' \
    --body '{"platformId": "htnHETZb", "platformUserId": "v7funCAH"}' \
    > test.out 2>&1
eval_tap $? 271 'PublicLinkPlatformAccount' test.out

#- 272 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'qERddwuy' \
    --body '{"chosenNamespaces": ["GGLY0I6o", "00S48RNs", "ktefByq1"], "requestId": "4bnUELcJ"}' \
    > test.out 2>&1
eval_tap $? 272 'PublicForceLinkPlatformWithProgression' test.out

#- 273 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RSKEoMor' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetPublisherUserV3' test.out

#- 274 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '5Z6yfhkm' \
    --password 's1NxFHrH' \
    > test.out 2>&1
eval_tap $? 274 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 275 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'xQvM2GwV' \
    --before '33UXQJkV' \
    --isWildcard 'true' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetRolesV3' test.out

#- 276 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'rsvZBCi0' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetRoleV3' test.out

#- 277 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 277 'PublicGetMyUserV3' test.out

#- 278 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'Dn3Yposv' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 279 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["D6Nav3Pq", "qxg83XRX", "rA2cTg1P"], "oneTimeLinkCode": "rbLc0npb"}' \
    > test.out 2>&1
eval_tap $? 279 'LinkHeadlessAccountToMyAccountV3' test.out

#- 280 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "QLxgmA7f"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicSendVerificationLinkV3' test.out

#- 281 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'K4zbl95X' \
    > test.out 2>&1
eval_tap $? 281 'PublicVerifyUserByLinkV3' test.out

#- 282 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'hqPfp5t6' \
    --code 'ORpVBZuo' \
    --error 'WtVBIXkX' \
    --state 'Dzgia1mi' \
    > test.out 2>&1
eval_tap $? 282 'PlatformAuthenticateSAMLV3Handler' test.out

#- 283 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'xvnJt24j' \
    --payload 'guYTYIin' \
    > test.out 2>&1
eval_tap $? 283 'LoginSSOClient' test.out

#- 284 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '7yGksoUV' \
    > test.out 2>&1
eval_tap $? 284 'LogoutSSOClient' test.out

#- 285 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData 'SzHWs9q3' \
    --code 'MOBS9ODD' \
    > test.out 2>&1
eval_tap $? 285 'RequestGameTokenResponseV3' test.out

#- 286 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'UZt2G5hQ' \
    --platformToken 'kyYuSIoS' \
    > test.out 2>&1
eval_tap $? 286 'PlatformTokenRefreshV3' test.out

#- 287 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'gdu60yTC' \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDevicesByUserV4' test.out

#- 288 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'PT2OxnxT' \
    --endDate 'T4ZvjrbW' \
    --limit '15' \
    --offset '66' \
    --startDate 'ZtkvrfqV' \
    > test.out 2>&1
eval_tap $? 288 'AdminGetBannedDevicesV4' test.out

#- 289 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZaSAeqR0' \
    > test.out 2>&1
eval_tap $? 289 'AdminGetUserDeviceBansV4' test.out

#- 290 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "2wHZQDg4", "deviceId": "qxzYCa17", "deviceType": "UPPibY62", "enabled": false, "endDate": "xCSXLmYl", "ext": {"YGiE7nKV": {}, "JQeJ8eJr": {}, "SLmoJuAH": {}}, "reason": "4ZjtiYsW"}' \
    > test.out 2>&1
eval_tap $? 290 'AdminBanDeviceV4' test.out

#- 291 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'rhvnEnzE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetDeviceBanV4' test.out

#- 292 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '0SIJfaft' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 292 'AdminUpdateDeviceBanV4' test.out

#- 293 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '6Cfx0UIY' \
    --startDate 'wWFkFfi9' \
    --deviceType 'UG0H84HX' \
    > test.out 2>&1
eval_tap $? 293 'AdminGenerateReportV4' test.out

#- 294 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 294 'AdminGetDeviceTypesV4' test.out

#- 295 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'Ly21JlMT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 295 'AdminGetDeviceBansV4' test.out

#- 296 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'c9SDeGUq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 296 'AdminDecryptDeviceV4' test.out

#- 297 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'COvmR33q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminUnbanDeviceV4' test.out

#- 298 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'MIT3JWmM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 298 'AdminGetUsersByDeviceV4' test.out

#- 299 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 6}' \
    > test.out 2>&1
eval_tap $? 299 'AdminCreateTestUsersV4' test.out

#- 300 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PRnj4PZs", "LGaPhT42", "ZdqmcY8B"]}' \
    > test.out 2>&1
eval_tap $? 300 'AdminBulkCheckValidUserIDV4' test.out

#- 301 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sjuahwzu' \
    --body '{"avatarUrl": "Jm713XxQ", "country": "Zj6an94Q", "dateOfBirth": "pU7XS0ug", "displayName": "yVcY2qlI", "languageTag": "j4u5KyVy", "userName": "tejHAGil"}' \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateUserV4' test.out

#- 302 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Kb8v3eQC' \
    --body '{"code": "X4pyB5Kj", "emailAddress": "iNfXeptA"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminUpdateUserEmailAddressV4' test.out

#- 303 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'QWv1mS98' \
    > test.out 2>&1
eval_tap $? 303 'AdminDisableUserMFAV4' test.out

#- 304 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '67FUz0JE' \
    > test.out 2>&1
eval_tap $? 304 'AdminListUserRolesV4' test.out

#- 305 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NFN1T1wm' \
    --body '{"assignedNamespaces": ["3xAfDmS6", "HHxDKxZt", "L2UpAvxJ"], "roleId": "LvQK02v9"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateUserRoleV4' test.out

#- 306 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kgrVwqdl' \
    --body '{"assignedNamespaces": ["etJv4a7Q", "2WpB8h0A", "Wg2WSHfG"], "roleId": "CivGYWli"}' \
    > test.out 2>&1
eval_tap $? 306 'AdminAddUserRoleV4' test.out

#- 307 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RFeuqfRM' \
    --body '{"assignedNamespaces": ["HBAuK8it", "w780Yyno", "HNgJQASt"], "roleId": "NhLfqC1m"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminRemoveUserRoleV4' test.out

#- 308 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '27' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 308 'AdminGetRolesV4' test.out

#- 309 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "smp3Ye41"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateRoleV4' test.out

#- 310 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'CuX5Eu61' \
    > test.out 2>&1
eval_tap $? 310 'AdminGetRoleV4' test.out

#- 311 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'vtH2D4Vr' \
    > test.out 2>&1
eval_tap $? 311 'AdminDeleteRoleV4' test.out

#- 312 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '9eyQ4lrQ' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "IVyXQ7iZ"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateRoleV4' test.out

#- 313 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'RU5WZkuw' \
    --body '{"permissions": [{"action": 60, "resource": "Mb5zN94z", "schedAction": 10, "schedCron": "0GhH1xRM", "schedRange": ["iSGIA3Yi", "Mw4pXulW", "pInpdk3j"]}, {"action": 71, "resource": "1r54DxCt", "schedAction": 23, "schedCron": "UPXVeoWG", "schedRange": ["QFfo8fMY", "sPbsFqq2", "n2cJyNRp"]}, {"action": 95, "resource": "dabUUgPR", "schedAction": 71, "schedCron": "lHWYB9g4", "schedRange": ["Wyqbmib5", "syHstDxs", "BGfv9Ib7"]}]}' \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateRolePermissionsV4' test.out

#- 314 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'Ar7gJgjc' \
    --body '{"permissions": [{"action": 97, "resource": "Sr95hjOu", "schedAction": 24, "schedCron": "yWxiLNHN", "schedRange": ["SXT0CTmL", "QRkmoAyV", "XeJ0DEnG"]}, {"action": 21, "resource": "THPjkjVN", "schedAction": 95, "schedCron": "RzyQimYj", "schedRange": ["doqXsoQV", "potD4IQK", "DVwO3B6s"]}, {"action": 28, "resource": "hQsV672M", "schedAction": 25, "schedCron": "N810R9gO", "schedRange": ["9IKdaX9l", "8J0t7MMr", "JwSu29hI"]}]}' \
    > test.out 2>&1
eval_tap $? 314 'AdminAddRolePermissionsV4' test.out

#- 315 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'BAu6Qg0v' \
    --body '["8hJZBjiz", "IRkEspWu", "O2CXSzXI"]' \
    > test.out 2>&1
eval_tap $? 315 'AdminDeleteRolePermissionsV4' test.out

#- 316 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '9NhEeJUM' \
    --after 'E2HLsder' \
    --before 'wzg1EOV5' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 316 'AdminListAssignedUsersV4' test.out

#- 317 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'YU06v6tf' \
    --body '{"assignedNamespaces": ["UoA99AzJ", "fhoJ2vNI", "m92iPA0a"], "namespace": "iypO51HY", "userId": "SmIrVkmR"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminAssignUserToRoleV4' test.out

#- 318 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'kalZjUZU' \
    --body '{"namespace": "eTPf1Mdj", "userId": "M9EeXB7e"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminRevokeUserFromRoleV4' test.out

#- 319 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["mEKTv9GQ", "5gQqrrti", "1ps1C1To"], "emailAddresses": ["9JD3c757", "8hqEXo3C", "jq6QCTrb"], "isAdmin": false, "namespace": "YxHyQp08", "roleId": "UzfmGUOa"}' \
    > test.out 2>&1
eval_tap $? 319 'AdminInviteUserNewV4' test.out

#- 320 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "yPnVHS2a", "country": "HqAFJymR", "dateOfBirth": "Hm8vdM9P", "displayName": "VmRuXZJu", "languageTag": "lyILgNHQ", "userName": "8WPOriF6"}' \
    > test.out 2>&1
eval_tap $? 320 'AdminUpdateMyUserV4' test.out

#- 321 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminDisableMyAuthenticatorV4' test.out

#- 322 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'nxgVksUK' \
    > test.out 2>&1
eval_tap $? 322 'AdminEnableMyAuthenticatorV4' test.out

#- 323 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 324 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyBackupCodesV4' test.out

#- 325 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminGenerateMyBackupCodesV4' test.out

#- 326 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 326 'AdminDisableMyBackupCodesV4' test.out

#- 327 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDownloadMyBackupCodesV4' test.out

#- 328 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 328 'AdminEnableMyBackupCodesV4' test.out

#- 329 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 329 'AdminSendMyMFAEmailCodeV4' test.out

#- 330 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 330 'AdminDisableMyEmailV4' test.out

#- 331 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'tXLnkrd8' \
    > test.out 2>&1
eval_tap $? 331 'AdminEnableMyEmailV4' test.out

#- 332 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 332 'AdminGetMyEnabledFactorsV4' test.out

#- 333 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'usojyolU' \
    > test.out 2>&1
eval_tap $? 333 'AdminMakeFactorMyDefaultV4' test.out

#- 334 AdminInviteUserV4
eval_tap 0 334 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 335 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "xyuU8t2g", "policyId": "aUnVSyTL", "policyVersionId": "9jvTDJzU"}, {"isAccepted": false, "localizedPolicyVersionId": "XCDM0Lm5", "policyId": "4RdkQksC", "policyVersionId": "oZwgmByQ"}, {"isAccepted": true, "localizedPolicyVersionId": "78bd8YR2", "policyId": "mYEcJbh2", "policyVersionId": "zFgP3Qeg"}], "authType": "EMAILPASSWD", "country": "qbN44i9z", "dateOfBirth": "Ohptzsto", "displayName": "Ma08If10", "emailAddress": "pN6B2jHr", "password": "MNF8GDel", "passwordMD5Sum": "3eWBc9Xn", "username": "eCrF2yXp", "verified": false}' \
    > test.out 2>&1
eval_tap $? 335 'PublicCreateTestUserV4' test.out

#- 336 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "IkSq4SMw", "policyId": "p515XHIT", "policyVersionId": "sG3HjJj0"}, {"isAccepted": false, "localizedPolicyVersionId": "0rrDP3GD", "policyId": "2HxK1Xxl", "policyVersionId": "P6BWojUT"}, {"isAccepted": false, "localizedPolicyVersionId": "2cvNoCqR", "policyId": "ES0cKCXU", "policyVersionId": "56el1D5Q"}], "authType": "EMAILPASSWD", "code": "R7HBDxrI", "country": "SM2CdZvF", "dateOfBirth": "HRCE7Uzi", "displayName": "znRtv9MC", "emailAddress": "HBH646nj", "password": "4tf3LY6G", "passwordMD5Sum": "gCOUtR6c", "reachMinimumAge": true, "username": "uYAxoNBp"}' \
    > test.out 2>&1
eval_tap $? 336 'PublicCreateUserV4' test.out

#- 337 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'EAgALodP' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "s7crsdAi", "policyId": "9dj7xHQM", "policyVersionId": "edemaszS"}, {"isAccepted": false, "localizedPolicyVersionId": "Zr74NWaS", "policyId": "HAC3apVq", "policyVersionId": "l7747Tkz"}, {"isAccepted": true, "localizedPolicyVersionId": "Z9SQR4BT", "policyId": "C372TveK", "policyVersionId": "STcc2SN3"}], "authType": "EMAILPASSWD", "country": "rdCyQN3g", "dateOfBirth": "MrRMHxTk", "displayName": "kJ9LXx1g", "password": "puT8Bs5a", "reachMinimumAge": false, "username": "5RzNGoR5"}' \
    > test.out 2>&1
eval_tap $? 337 'CreateUserFromInvitationV4' test.out

#- 338 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "6jkN0q5O", "country": "28saH8Sc", "dateOfBirth": "Y1DvPSg8", "displayName": "Go5ZfEnR", "languageTag": "Z7FbCTMD", "userName": "gmEJnlAN"}' \
    > test.out 2>&1
eval_tap $? 338 'PublicUpdateUserV4' test.out

#- 339 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vL3xsxT5", "emailAddress": "iyb5uD41"}' \
    > test.out 2>&1
eval_tap $? 339 'PublicUpdateUserEmailAddressV4' test.out

#- 340 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "pNsNQ3q8", "country": "JCM0fsYt", "dateOfBirth": "qiosaM9T", "displayName": "SAkhIQk0", "emailAddress": "KuAr9udb", "password": "XU75yZ3L", "reachMinimumAge": true, "username": "OR7aM73F", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 340 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 341 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "zvCKadvN", "password": "67XtDxxP", "username": "VarFQo47"}' \
    > test.out 2>&1
eval_tap $? 341 'PublicUpgradeHeadlessAccountV4' test.out

#- 342 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicDisableMyAuthenticatorV4' test.out

#- 343 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'vW6ZgFON' \
    > test.out 2>&1
eval_tap $? 343 'PublicEnableMyAuthenticatorV4' test.out

#- 344 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 345 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicGetMyBackupCodesV4' test.out

#- 346 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicGenerateMyBackupCodesV4' test.out

#- 347 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'PublicDisableMyBackupCodesV4' test.out

#- 348 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicDownloadMyBackupCodesV4' test.out

#- 349 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 349 'PublicEnableMyBackupCodesV4' test.out

#- 350 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 350 'PublicRemoveTrustedDeviceV4' test.out

#- 351 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 351 'PublicSendMyMFAEmailCodeV4' test.out

#- 352 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 352 'PublicDisableMyEmailV4' test.out

#- 353 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'Gqycv969' \
    > test.out 2>&1
eval_tap $? 353 'PublicEnableMyEmailV4' test.out

#- 354 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicGetMyEnabledFactorsV4' test.out

#- 355 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'IGp9kSSu' \
    > test.out 2>&1
eval_tap $? 355 'PublicMakeFactorMyDefaultV4' test.out

#- 356 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'rWhtaj3H' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 357 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "lWWO6y0O", "namespace": "wIHlNjLy", "namespaceDisplayName": "lre7PyQE"}' \
    > test.out 2>&1
eval_tap $? 357 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE