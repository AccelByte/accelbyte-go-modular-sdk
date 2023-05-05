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
    --body '[{"field": "7ISfShpR", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["9Ww6swuf", "9k6Nus6n", "1neoYJAC"], "description": [{"language": "wya0SCHT", "message": ["gKbRpwyv", "c7Lt8Kkf", "DqytJ7M6"]}, {"language": "rY8pLSil", "message": ["1Ga7iCGr", "77tS1GHV", "nOEpQ7YO"]}, {"language": "eExCT0wd", "message": ["T52xssdJ", "aHJ6P5L9", "er8EUzRn"]}], "isCustomRegex": true, "letterCase": "hCFAVgnu", "maxLength": 94, "maxRepeatingAlphaNum": 56, "maxRepeatingSpecialCharacter": 78, "minCharType": 21, "minLength": 81, "regex": "P57uh9yF", "specialCharacterLocation": "6HW926wA", "specialCharacters": ["H0RAM0lE", "r1dwaQK2", "6gkgg1Hz"]}}, {"field": "fy4qCR95", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["lh9ZKiCB", "OpB1AB0D", "UNo5Wmvt"], "description": [{"language": "ig68ADm9", "message": ["KJ8dBLsL", "OD18HjWu", "QiGuA9ev"]}, {"language": "LsPkoDaz", "message": ["2Oq8n6ip", "s5IzXKyW", "0xJVAzjv"]}, {"language": "LjRyaEfU", "message": ["uP84fbZD", "5uYQLDRS", "i5pcrIQY"]}], "isCustomRegex": false, "letterCase": "vwdz5EEe", "maxLength": 27, "maxRepeatingAlphaNum": 13, "maxRepeatingSpecialCharacter": 6, "minCharType": 94, "minLength": 40, "regex": "wsaYP31d", "specialCharacterLocation": "V6by7mpi", "specialCharacters": ["FCNuQ3TR", "5ogShpth", "cOxuvGFv"]}}, {"field": "35CYjhig", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["Z7vSOpXX", "ZTxav3YT", "0X6bALAD"], "description": [{"language": "ijDedvi4", "message": ["tIHbItPi", "0EV0rjn4", "De2uLM7C"]}, {"language": "un1MOcjz", "message": ["PXaM64ZC", "0xgLb4me", "gU68QgwH"]}, {"language": "MIdwGn2y", "message": ["ByDjcSqN", "w9ohlD4B", "tEpk2ig0"]}], "isCustomRegex": false, "letterCase": "AA0KB0S7", "maxLength": 62, "maxRepeatingAlphaNum": 71, "maxRepeatingSpecialCharacter": 46, "minCharType": 67, "minLength": 62, "regex": "XAqU9M7v", "specialCharacterLocation": "tu4gVHIA", "specialCharacters": ["uQ54vtQr", "cIzAjjJL", "Qw5MJGhT"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'Bfp8l6sZ' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'ope5zXwL' \
    --before 'UdoFJvDm' \
    --limit '89' \
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
    --body '{"ageRestriction": 41, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'Kpc703Re' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 11}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'W81IFF4Z' \
    --limit '18' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "kgZKH2X3", "comment": "I1CyL7jR", "endDate": "9IFzYiGI", "reason": "mEC9wyvA", "skipNotif": false, "userIds": ["WvgFZm6v", "Bkukb7v8", "cLPW8oLc"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "oa1vPcSB", "userId": "89mps98n"}, {"banId": "Lr4TyNej", "userId": "uDvtNFYL"}, {"banId": "20IsZQNk", "userId": "6swbQ5OS"}]}' \
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
    --clientId 'HyTIjt80' \
    --clientName 'qRjFlVzR' \
    --clientType 'tPxAH0KH' \
    --limit '88' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["AbutHrHE", "dGD2ukyE", "bwqirofS"], "baseUri": "4GeSbG0n", "clientId": "v54vMSsU", "clientName": "KWBtgfsi", "clientPermissions": [{"action": 33, "resource": "QBL5oEfk", "schedAction": 95, "schedCron": "MU42rtpT", "schedRange": ["qeWc0EhS", "wkvF77U4", "griBGTuJ"]}, {"action": 19, "resource": "f9SGyIQJ", "schedAction": 32, "schedCron": "aQiOVSQc", "schedRange": ["G16nBu4D", "K5dpHOL2", "E9WsDVs9"]}, {"action": 4, "resource": "Wvyd00a9", "schedAction": 79, "schedCron": "hf3yQ9aS", "schedRange": ["KD8E1DcC", "swmIBKt4", "ceEBpkLW"]}], "clientPlatform": "KoaAXZG9", "deletable": false, "description": "3MFThIR3", "namespace": "WSgJWsxe", "oauthAccessTokenExpiration": 63, "oauthAccessTokenExpirationTimeUnit": "kIZ7ENNX", "oauthClientType": "n72UyAx8", "oauthRefreshTokenExpiration": 24, "oauthRefreshTokenExpirationTimeUnit": "5O30gnso", "parentNamespace": "IMqWXeoj", "redirectUri": "ovj71Jzt", "scopes": ["IwGTqR02", "ieKaZEST", "ZErY3rBD"], "secret": "DoSz120A", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'ZpqOMVDu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'MChdjJd8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'la2PnhKe' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["8aUCh3cN", "p6E4Onnu", "tL1xkT9F"], "baseUri": "pxAv6pmW", "clientName": "AI4ZIOVh", "clientPermissions": [{"action": 25, "resource": "z8CE1QK2", "schedAction": 59, "schedCron": "fQizPKgE", "schedRange": ["zMTGYzhQ", "30CvpPis", "9S3NH82m"]}, {"action": 56, "resource": "CWHiFjzk", "schedAction": 60, "schedCron": "vRjwLrK1", "schedRange": ["6hDTmeGA", "E27cGint", "nfVG6vCI"]}, {"action": 40, "resource": "dHV7AG8P", "schedAction": 47, "schedCron": "rAJi1tta", "schedRange": ["DIiYx6Ea", "UW2DeugI", "cXwaUj0o"]}], "clientPlatform": "yXxLPeJd", "deletable": false, "description": "jhpRrXHt", "namespace": "7A4ObOHb", "oauthAccessTokenExpiration": 37, "oauthAccessTokenExpirationTimeUnit": "enx5lmIJ", "oauthRefreshTokenExpiration": 21, "oauthRefreshTokenExpirationTimeUnit": "PHfVxu7D", "redirectUri": "M8uMLvvN", "scopes": ["GGirp7ki", "2gWFjii8", "fyDjNixS"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'xf3I5d4i' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 61, "resource": "AUDGjmZ2"}, {"action": 58, "resource": "yDQIA0SV"}, {"action": 35, "resource": "ZniHt4De"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '21havtvr' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 17, "resource": "6h5g6LyE"}, {"action": 63, "resource": "EhJhgisc"}, {"action": 63, "resource": "4Hfne99L"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '74' \
    --clientId 'r30j2r0i' \
    --namespace $AB_NAMESPACE \
    --resource 'No2UkVrs' \
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
    --limit '5' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'STnfylVb' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'D2TGV744' \
    --body '{"ACSURL": "ad20Vlx0", "AWSCognitoRegion": "y8vBaWGm", "AWSCognitoUserPool": "6JcfHiFT", "AllowedClients": ["LqBSchCm", "1Y4pt3LW", "wDIUDrAy"], "AppId": "avTxhbiw", "AuthorizationEndpoint": "aVz19Koe", "ClientId": "4Z7s3Krx", "Environment": "DHvgCzSK", "FederationMetadataURL": "pfTpGsex", "GenericOauthFlow": false, "IsActive": true, "Issuer": "l8TG6yYE", "JWKSEndpoint": "PjzoaJSj", "KeyID": "gbe2pz7a", "NetflixCertificates": {"encryptedPrivateKey": "gp5Lc8vX", "encryptedPrivateKeyName": "0AMQqUVY", "publicCertificate": "5MfmY9aj", "publicCertificateName": "Xkzv2lpl", "rootCertificate": "r9EXH6go", "rootCertificateName": "w8oFFTwR"}, "OrganizationId": "3rFX269P", "PlatformName": "UiOOj6cg", "RedirectUri": "B0Ii2I1M", "RegisteredDomains": [{"affectedClientIDs": ["q2rvoWEd", "6XdcTVY0", "hILMftvw"], "domain": "hyLErmBO", "namespaces": ["XiF5VlsC", "57K4Xt0L", "UH9g7nBD"], "roleId": "AXIQlAJa"}, {"affectedClientIDs": ["m67iWSNR", "QC4RxSeQ", "OiWeaSe5"], "domain": "jlZGgu9I", "namespaces": ["EKkGn3pP", "wep4Wp9a", "Q4nlsjWE"], "roleId": "qOoe1dcR"}, {"affectedClientIDs": ["3o1cw9fN", "9MqLd09g", "twHUYX2y"], "domain": "uHOxTjYo", "namespaces": ["p4ptj8wX", "tfewnZPh", "WF4WBZYB"], "roleId": "KmPBCWIK"}], "Secret": "ITdOC3IU", "TeamID": "0lKkGwn0", "TokenAuthenticationType": "pTSLktE5", "TokenClaimsMapping": {"ZxOOfBag": "VtvFmf8f", "kpB1H933": "oa3memWC", "BZEq85mC": "oeCANEPb"}, "TokenEndpoint": "e2asp1Jq", "UserInfoEndpoint": "KSpIWx2v", "UserInfoHTTPMethod": "tecgAAnk", "scopes": ["77l6dlpL", "41cauu2X", "vCTo3QGP"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rnUBL5zv' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bLWg0t8D' \
    --body '{"ACSURL": "ZBf6B3zz", "AWSCognitoRegion": "a3NqIJ5w", "AWSCognitoUserPool": "3KhS4EJb", "AllowedClients": ["qIuCQcD6", "ZqTNXUpt", "Dg1W6chj"], "AppId": "txyMWprJ", "AuthorizationEndpoint": "YzXrc5sf", "ClientId": "AVUwaurX", "Environment": "qFrtuQls", "FederationMetadataURL": "a795a7uB", "GenericOauthFlow": false, "IsActive": true, "Issuer": "kkk4rVTm", "JWKSEndpoint": "a99xyAtI", "KeyID": "8pksef6b", "NetflixCertificates": {"encryptedPrivateKey": "srKqMFkb", "encryptedPrivateKeyName": "dpWcGX3q", "publicCertificate": "RfXYlk96", "publicCertificateName": "PRWugWUS", "rootCertificate": "BIDovnAe", "rootCertificateName": "bDUafuNy"}, "OrganizationId": "M1dVe8kK", "PlatformName": "3BR6ZVG7", "RedirectUri": "HN22ayDs", "RegisteredDomains": [{"affectedClientIDs": ["lzCQ8wRl", "2OuItqte", "PsM1sOb9"], "domain": "XZy1qLmu", "namespaces": ["jlL7NAWK", "7V4KQK3L", "df2ZXnuj"], "roleId": "Bse0iuS4"}, {"affectedClientIDs": ["m7dn9LPQ", "6m568Gza", "G2awRqA9"], "domain": "kA5HHfLB", "namespaces": ["9qmiFfnc", "4I8c3wdD", "0xF5rWR0"], "roleId": "PuUUg9B2"}, {"affectedClientIDs": ["5yKGIXZN", "B9eHM62D", "HlUofEFF"], "domain": "aHoVU3jN", "namespaces": ["PQWHwFcW", "gwKgiKlu", "rnhjInTg"], "roleId": "pFASttZH"}], "Secret": "OYHJlHn7", "TeamID": "MbfDyuVn", "TokenAuthenticationType": "9UPHvQGN", "TokenClaimsMapping": {"1T5QHmeE": "Ri8w1gGZ", "lRNWuGca": "umIsujfc", "WTMMeeB7": "iV7Z9jrS"}, "TokenEndpoint": "rV9VrNg0", "UserInfoEndpoint": "nwQzFG9e", "UserInfoHTTPMethod": "NB2LMPhB", "scopes": ["obHAMdi7", "cpee79hI", "p2nMUuOV"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XQVx0ulR' \
    --body '{"affectedClientIDs": ["xDXgrZAU", "dVkEm2CD", "XKUvpz74"], "assignedNamespaces": ["6H8Kr1V7", "fdxgWroB", "SiweNGrz"], "domain": "YAbKmSsp", "roleId": "y5k5v67X"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gcW2xLMe' \
    --body '{"domain": "m1D28etz"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'dnYZ3GS5' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'dK3e3GON' \
    --body '{"acsUrl": "dCngh01I", "apiKey": "WLAxjVU0", "appId": "ud6mCV9T", "federationMetadataUrl": "NvqHamRM", "isActive": true, "redirectUri": "ytnAcPbp", "secret": "0Jpod2Eg", "ssoUrl": "tD9cxqbx"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YMRU2EF7' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'L3Ic6SRB' \
    --body '{"acsUrl": "KKMZ16xG", "apiKey": "dluKg2JK", "appId": "dhOYjmnc", "federationMetadataUrl": "wFOAOjKN", "isActive": false, "redirectUri": "CGgPGUZE", "secret": "QcEHzoD6", "ssoUrl": "o6Y7I0xj"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mdzzQrjg' \
    --platformUserId 'pU7w2p05' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'WyGEo13l' \
    --after '68' \
    --before '34' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '2Rr3o6L5' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TWSRdTob", "oOYlpu9u", "XqKdWVst"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["W8RdSF3e", "2qd9R1jH", "witkorMg"], "isAdmin": true, "namespace": "Ld40FNdd", "roles": ["R19UtyJD", "vtBAMj89", "C6Ex1jpE"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '83' \
    --platformUserId '5F5VOxWc' \
    --platformId 'RFcBf5ri' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'ncwolV8I' \
    --endDate 'UohVzJXs' \
    --limit '59' \
    --offset '97' \
    --platformBy 't6HIvBwd' \
    --platformId 'qv4DyafX' \
    --query 'RT1ReFeV' \
    --startDate 'mBsTTa9H' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["NNfgfSMw", "VqVAqUmW", "lMbzEJJA"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PbzsUgie' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '4y9JVISo' \
    --body '{"avatarUrl": "wuCgvn8X", "country": "mwrsS0So", "dateOfBirth": "KLm3rovO", "displayName": "YTt4QYAf", "languageTag": "ihQnsYMX", "userName": "l9nsjfzv"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nUTqJWkV' \
    --activeOnly 'true' \
    --after 'SUvBPgQ0' \
    --before 'isHOf5H9' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'P2fhLabO' \
    --body '{"ban": "FnyIhxxS", "comment": "lQiRA5Iu", "endDate": "mPKYTUX2", "reason": "FXq1gOqA", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'x99L3lkz' \
    --namespace $AB_NAMESPACE \
    --userId 'LRuoO5zR' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RGRTH3qp' \
    --body '{"context": "NykwTviC", "emailAddress": "OTz7xhbU", "languageTag": "uul30ksb"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nm5vCs13' \
    --body '{"Code": "lhTivPu7", "ContactType": "G86Qomk5", "LanguageTag": "tGhSsuVC", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'qx1sjU6T' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F1o6Ivmt' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'etHhQY4l' \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '9r4YnXMX' \
    --body '{"code": "ITUQf9Oa", "country": "YMb64OyZ", "dateOfBirth": "aji7VZeD", "displayName": "IIC77gCV", "emailAddress": "q34g07xS", "password": "pgGHJJz5", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '1ArK5o7k' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rP1duWMy' \
    --after '0.5750230060921206' \
    --before '0.23722252619455242' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 't0nrxXcB' \
    --body '{"languageTag": "9QtWgafO", "newPassword": "3LicVzIe", "oldPassword": "Cqnb2Myh"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wBl33bYQ' \
    --body '{"Permissions": [{"Action": 60, "Resource": "RpHq85WI", "SchedAction": 33, "SchedCron": "S1oZ90sO", "SchedRange": ["8iSF0gJu", "I51UKllS", "SeWYbqMy"]}, {"Action": 3, "Resource": "BPM3zBRY", "SchedAction": 94, "SchedCron": "z4wScAW3", "SchedRange": ["P0I79ha6", "kZgWM1EX", "egO9Ahrc"]}, {"Action": 0, "Resource": "fObJfe1g", "SchedAction": 33, "SchedCron": "QhfR2Cqg", "SchedRange": ["0QtM09Wx", "JbUlr5ix", "MiZuC2ba"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ne6th7hf' \
    --body '{"Permissions": [{"Action": 11, "Resource": "46bNOhIk", "SchedAction": 64, "SchedCron": "k3FgbzxL", "SchedRange": ["K8lIDpfc", "JPMxjVzw", "Tvc6YwwV"]}, {"Action": 71, "Resource": "KQ2uTA3f", "SchedAction": 96, "SchedCron": "Y3jiRj8Y", "SchedRange": ["MUzeBd5v", "UQVRAMnN", "xNLUuAXA"]}, {"Action": 86, "Resource": "2ERSx9An", "SchedAction": 25, "SchedCron": "i5vrDtH9", "SchedRange": ["1yZafz3h", "REW1xsB8", "D24RETs7"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Lhz4WqIM' \
    --body '[{"Action": 29, "Resource": "6mqNxfVr"}, {"Action": 56, "Resource": "c7nNBiAe"}, {"Action": 67, "Resource": "tsA8HcFr"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '64' \
    --namespace $AB_NAMESPACE \
    --resource '54Ce4nkq' \
    --userId 'APIRgmol' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vQj2MEHm' \
    --after 'ceEIOXgj' \
    --before 'VOFMcmDq' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'FiY7OPiv' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'W8TXwkay' \
    --userId '43PindcK' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'qTTzdqQb' \
    --userId 'Y6XdGXqF' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'KT0Ltzuq' \
    --body '{"platformId": "GMZrdQXS", "platformUserId": "7mPJoFmg"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Wm3dIW40' \
    --userId 'uob0S4NO' \
    --body '{"platformNamespace": "QWLjOncV"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ryEHnywv' \
    --userId 'ou7Mcrfj' \
    --ticket 'b1CTSBLb' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OymJVbhL' \
    --userId 'zZ3YLB5W' \
    --platformToken 'M8PJISjO' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yn9Kqskk' \
    --body '["9GJkf5Cj", "Jt7Udgdy", "1IoZhNUg"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RKDJXJn0' \
    --body '[{"namespace": "pd0hjcvK", "roleId": "6CJGhNvd"}, {"namespace": "Xkp9tibA", "roleId": "H6yyrgOr"}, {"namespace": "1rZrxPa4", "roleId": "2hQeoi9K"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Uu79EtYb' \
    --userId 'L2IZBvtQ' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'r70lTDfR' \
    --userId 'wtZbO0L4' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j1AH2Y4Y' \
    --body '{"enabled": false, "reason": "dWwKiBfL"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MV7DKrAW' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'iH2khsC8' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "PQo4PA39"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'GkUoYoJR' \
    --before '3d3m2i9A' \
    --isWildcard 'false' \
    --limit '70' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "PkMsLSsF", "namespace": "ZENz8BfE", "userId": "Fkf9lMWt"}, {"displayName": "sivir39G", "namespace": "HL5Rt4v6", "userId": "V2Rg1gK7"}, {"displayName": "wS7kA3ZQ", "namespace": "KiZiiGlQ", "userId": "77FBuHbg"}], "members": [{"displayName": "ADSxxwkX", "namespace": "HrwleDTG", "userId": "edjwFv3W"}, {"displayName": "0IrANoPK", "namespace": "nEjRmQdp", "userId": "hWTVsQIs"}, {"displayName": "L8bswrH5", "namespace": "wfoGekuf", "userId": "soNNTrrg"}], "permissions": [{"action": 5, "resource": "HIn8WuGg", "schedAction": 29, "schedCron": "gJCQXhG1", "schedRange": ["c3AwMFC6", "2mKVgOaj", "3TbLB6UX"]}, {"action": 58, "resource": "rL8nKEak", "schedAction": 42, "schedCron": "wFi0cwXT", "schedRange": ["4nGq3AIM", "6LnYCtWB", "UAXfV6dY"]}, {"action": 1, "resource": "sAA4ykWT", "schedAction": 30, "schedCron": "rM9wlS7F", "schedRange": ["avafboad", "CGnoNhrk", "9tUB0fp8"]}], "roleName": "0RMJz9gD"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'lrYPeOA4' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'nUPSCIUo' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'V7AMWJCQ' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "RhJA5uUY"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'BUdBpGr1' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'fDkpOCju' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'TeHY4moq' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'BTq5uYpi' \
    --after 'rgyymL8L' \
    --before 'La8rCoAy' \
    --limit '91' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'Lr3MdtHF' \
    --body '{"managers": [{"displayName": "n10QH8HM", "namespace": "6ZBFHbeF", "userId": "RZZibmdA"}, {"displayName": "RKOQ76UG", "namespace": "6PULqa5z", "userId": "MRrgZNcf"}, {"displayName": "ES95UZxf", "namespace": "93CVcN9G", "userId": "4cNMV2if"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'xuZrfSjX' \
    --body '{"managers": [{"displayName": "8OIUamqJ", "namespace": "enYzvG6O", "userId": "SyPpzhHZ"}, {"displayName": "hzbYZf8E", "namespace": "eb8CT1XE", "userId": "9bz0EZ0M"}, {"displayName": "05BlRwdb", "namespace": "75E8XPCA", "userId": "8xvqpS9p"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'fkiiUDkx' \
    --after 'RH02VLZN' \
    --before 'fT8Xnvwd' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'Sv1ylyYe' \
    --body '{"members": [{"displayName": "KlYV2Mjc", "namespace": "UAiUYvFD", "userId": "z5YuE43O"}, {"displayName": "hYQoyQI6", "namespace": "3Ky9AJEt", "userId": "iXSFOAxH"}, {"displayName": "0wmAswrx", "namespace": "oz089iiE", "userId": "Bueibr2k"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'sHBW0HXI' \
    --body '{"members": [{"displayName": "JyPNpsqX", "namespace": "bCmdl6OI", "userId": "ydDZkzp4"}, {"displayName": "WSCrBOIN", "namespace": "uP2521sb", "userId": "mM5BTMOE"}, {"displayName": "MZols3qc", "namespace": "2YLstrjH", "userId": "nEyywKhR"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'WxmdvRvG' \
    --body '{"permissions": [{"action": 10, "resource": "JxUH1pBj", "schedAction": 43, "schedCron": "09xsA9Pf", "schedRange": ["JrqWA8LC", "mf3Kjm27", "VZDi3kAH"]}, {"action": 41, "resource": "F7iQOuJT", "schedAction": 67, "schedCron": "7PkgKDtE", "schedRange": ["2OszXOZR", "OsmWHSrq", "d4ObXNR7"]}, {"action": 13, "resource": "feA46U7s", "schedAction": 86, "schedCron": "yvm13tjM", "schedRange": ["2D8fA3uz", "Ve1iY8Mj", "rQgAgUbo"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'nZRj3LWB' \
    --body '{"permissions": [{"action": 44, "resource": "5Q5svxRc", "schedAction": 67, "schedCron": "9HFgaCtm", "schedRange": ["wqGGVuZY", "c9nDXK57", "rgJHB8oz"]}, {"action": 17, "resource": "fBMnlhYc", "schedAction": 8, "schedCron": "6luUvSEU", "schedRange": ["UFpsVNj9", "DtkEGY3L", "afHgVpBf"]}, {"action": 79, "resource": "2NF2z4mX", "schedAction": 10, "schedCron": "IOopBzbP", "schedRange": ["dy7xVFFt", "CMA2JcuL", "f6S8MdMM"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'yZqib011' \
    --body '["okpQDs8R", "xU5beejA", "KLVKaevS"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '11' \
    --resource 'Pq0FzYNG' \
    --roleId 'gevRdIyQ' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '5b2TiSjA' \
    --extendExp 'true' \
    --redirectUri '9dK35WtS' \
    --password 'PXUdwfwC' \
    --requestId 'GdSur0zm' \
    --userName 'oVIQhDka' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'iKKw1jcB' \
    --linkingToken 'Hy6XlsXU' \
    --password 'Ti13c4tN' \
    --username 'vIROfhlf' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'NLUT8K7K' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'Xu0oGPUY' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode '2H9lhmwF' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId 'KKc6OD4c' \
    --oneTimeLinkCode 'uQmfKoz0' \
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
    --clientId 'vdGLCK1X' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WB4GFzfe' \
    --userId 'mezHUumy' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MnRPvCgj' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'UypuHVrk' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'PT5U8BXE' \
    --redirectUri 'Dogthoq9' \
    --scope 'cSXXwXCM' \
    --state 'a5GNrggD' \
    --targetAuthPage 'Dim3LhMu' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'H7CDO6Uf' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'JncjyGF1' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'cGNpyDvC' \
    --factor 'ud5PoBbu' \
    --mfaToken 'TL0QVX5X' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'JWbXEVmB' \
    --mfaToken 'dvNFON0X' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'PwYYwoip' \
    --factor 'kmGfAEu8' \
    --mfaToken 'Gja97alp' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SYdNvQAH' \
    --userId 'Sj0Q8vxF' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '73uJfEmo' \
    --clientId '9r3gMPGn' \
    --redirectUri 'I3w5RBPL' \
    --requestId 'mpuYwBe8' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '8QB69QVc' \
    --clientId 'wbjUtqT9' \
    --createHeadless 'true' \
    --deviceId 'mrwQ0mjh' \
    --macAddress 'jVaKpVsS' \
    --platformToken '0eBJzaMp' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'dJEHMETx' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId '4hZtBOuH' \
    --code 'ZgrLZcGm' \
    --codeVerifier 'YiYbnB3p' \
    --extendExp 'true' \
    --password 'pNxFSciM' \
    --redirectUri 'F0jw9o8L' \
    --refreshToken 'pK2GxGyr' \
    --username 'qMzYflVK' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'WU1ZxpO4' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '7OyN0UGQ' \
    --code 'ihKoCuYs' \
    --error 'QHAQ75AU' \
    --openidAssocHandle 'Bor4jM0S' \
    --openidClaimedId 'fvHDpz7x' \
    --openidIdentity 'u7oCpeW8' \
    --openidMode 'ET7z871p' \
    --openidNs 'NqSGEO3U' \
    --openidOpEndpoint 'B0JmOv4V' \
    --openidResponseNonce 'fpR5RVYO' \
    --openidReturnTo '2bVKEJ3o' \
    --openidSig 'fBSOph9a' \
    --openidSigned 'Uh1lGpVv' \
    --state '8DcodGh8' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'EDcNZNbX' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'BWloZtxB' \
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
    --clientId 'UBlzIGnz' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mxnHpJIh' \
    --body '{"platformUserIds": ["EQuIBtp9", "bVRKBVfu", "mgOLPCGL"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'e1cHQnKn' \
    --platformUserId 't4xyLoBD' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'oSuXqSab' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'ekJJYTtX' \
    --limit '76' \
    --offset '22' \
    --query 'G2qR76fL' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "Rt4B7Zon", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "oqciMQey", "policyId": "UIPGuuLz", "policyVersionId": "NS6lCmEy"}, {"isAccepted": false, "localizedPolicyVersionId": "a5P2RkTU", "policyId": "gtaEIDFX", "policyVersionId": "BIXk5FYt"}, {"isAccepted": true, "localizedPolicyVersionId": "a5WFRZbl", "policyId": "ZuhvNBw2", "policyVersionId": "YvYZFQtg"}], "authType": "Mtg4QDWI", "code": "1U3Ug6nl", "country": "8KBwvFMZ", "dateOfBirth": "eAbkomNB", "displayName": "sP0zyGGd", "emailAddress": "ZzvHvNaa", "password": "7UPBLXzN", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'BNfmIDHk' \
    --query 'XEvORbz3' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["huStJanF", "bLkfi8dz", "p7EjHG5z"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "NlF3QzaE", "languageTag": "O7JGImjT"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IsdzzsVc", "emailAddress": "60wXyw8F"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "xPXCNMAB", "languageTag": "lBgZILIF"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'HnUX4Oxo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'R7eGmeqs' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "c1mmqIs8", "policyId": "ykzDLi69", "policyVersionId": "8Ghj2wpD"}, {"isAccepted": true, "localizedPolicyVersionId": "GjqaFgYS", "policyId": "3WgQ1lhg", "policyVersionId": "cK4bYeqg"}, {"isAccepted": true, "localizedPolicyVersionId": "fKtPjBLl", "policyId": "96SfN0Eq", "policyVersionId": "65Lkpw5N"}], "authType": "EMAILPASSWD", "country": "uEA7hfTy", "dateOfBirth": "h7wCuyWi", "displayName": "EnnMODYg", "password": "jNp2LMLI", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "6yPDZ2t6", "country": "tvDIqGmO", "dateOfBirth": "GxxjRaat", "displayName": "2vrJ2j0j", "languageTag": "CSgSSosX", "userName": "PCToYQmM"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "yBqwbgSp", "country": "Gfdz4XdJ", "dateOfBirth": "Tz25ZdnC", "displayName": "0XlLHA68", "languageTag": "xlY0OipB", "userName": "B5gn7Bmc"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "Y4pBXr7V", "emailAddress": "F7jWxLFX", "languageTag": "D5RnCHwS"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "x7JhZX5n", "contactType": "TesUEMiF", "languageTag": "IyRJYBRn", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "S7lS2RTB", "country": "TrRkExVl", "dateOfBirth": "qbN5kan6", "displayName": "aJ65GMHt", "emailAddress": "N4Vstiw3", "password": "f2HEPD1W", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Ax2C8zoL", "password": "mqj7OzZI"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "t3Ba9AU2", "newPassword": "CUzdpnqv", "oldPassword": "2lYO8apE"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'll5WmddF' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XzNuXmvn' \
    --redirectUri '7NojOXc1' \
    --ticket 'jS2qxgB8' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7RnGB0OW' \
    --body '{"platformNamespace": "i9R9DyzE"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'E6Y4oEma' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JZesYLzO' \
    --ticket 'FOJxZw4v' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'nbqYIYOR' \
    --clientId 'YZjLhHu0' \
    --redirectUri 'nZKGFz2t' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '67BK4tjT' \
    --state 'qLXMx5h8' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "zhh5MWux", "emailAddress": "qur0t2Kn", "newPassword": "nBJcojMX"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lKlkPobB' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '3UDQHpWY' \
    --activeOnly 'true' \
    --after 'DAw5bb9u' \
    --before 'fcFZNi6R' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ij5kT6r4' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Jh3KDwEg' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'p4gZszd5' \
    --after '0.02834194339004603' \
    --before '0.8675308517970777' \
    --limit '70' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 't2pfw6MY' \
    --after 'tygqWXxM' \
    --before '923lbPg3' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G2JeTwec' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'I1B3bbuH' \
    --body '{"platformId": "7RDaBZya", "platformUserId": "0GAVbYCJ"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'giflbpIl' \
    --body '{"chosenNamespaces": ["5ins7QtR", "XVUCCvR2", "JCbBhMf3"], "requestId": "1bTWfUvU"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DL9eAFkD' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jIlfirQ8' \
    --password 'JDlMtp6s' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'qnPARyjF' \
    --before 'u3WSbmgD' \
    --isWildcard 'true' \
    --limit '69' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'ntZ70koA' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'CKkI61sQ' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["VzScnZ6i", "D0aVOPuQ", "SDKLtPkB"], "oneTimeLinkCode": "CiRuQ5aj"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "S0VWBSkk"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'KeYP1we1' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'C4I5rlbs' \
    --code 'tyjRe3o0' \
    --error '7kJ02PWs' \
    --state 'YXKHnQy1' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'rIUvXKvC' \
    --payload 'qnK99P5m' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'GM9LqUOt' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'a96WGIb8' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'u7wehHkQ' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'yVnWca4L' \
    --endDate '8mMmmFB6' \
    --limit '39' \
    --offset '78' \
    --startDate 'pVPVOnHB' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'WpDuCj5H' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "I2hfzwjF", "deviceId": "l0hnt2sz", "deviceType": "Onm2Tb6O", "enabled": true, "endDate": "KPHXCLOR", "ext": {"GH0jdqZh": {}, "S7EClNWB": {}, "N5W5pixk": {}}, "reason": "FK06kmLM"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'hhuSQE0Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'vlmGueo4' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '6iAsJAUd' \
    --startDate 'lx8PNIcQ' \
    --deviceType '1LaLFfJN' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'EI6qqWYF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'MJ9Jhq8c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'SpUI6i07' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'VZ1BH0Ee' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 36}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["kadZtf4B", "xGUJyuJy", "xRj8RdiL"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HpFVs547' \
    --body '{"avatarUrl": "Iy2omXhh", "country": "kLATYlQZ", "dateOfBirth": "O5CMWWuu", "displayName": "VqoVreoP", "languageTag": "XNSUEXJG", "userName": "KKxHVgUU"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OlPbevYL' \
    --body '{"code": "mK1yz3FN", "emailAddress": "8dp21z37"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '8ywjDYoJ' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hiVXy10M' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'lKRwEOM3' \
    --body '{"assignedNamespaces": ["ou3zRBQk", "G6z0lCoG", "au8rff5v"], "roleId": "oZvRhfVL"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jAv7Gl3o' \
    --body '{"assignedNamespaces": ["gFO4zk4n", "q9qFBw61", "5YP5QXjZ"], "roleId": "dAjLoTjA"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oj5Zl2zA' \
    --body '{"assignedNamespaces": ["fgMmSPgo", "nTVJXITH", "QtyDrBHP"], "roleId": "MhqmyqBS"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '94' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "jyBrCi5w"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'C4QMbKsV' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'GJ8nR0i5' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'y73U2V3k' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "8JVGV9yP"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'QHZVMxzH' \
    --body '{"permissions": [{"action": 90, "resource": "WixhQ3OU", "schedAction": 29, "schedCron": "gJxJ9Nlx", "schedRange": ["kiKHrrb9", "p2575FdV", "eBED7que"]}, {"action": 100, "resource": "9Wkohv9h", "schedAction": 65, "schedCron": "TKyFmcMz", "schedRange": ["qYebvwUH", "mVfGhjzJ", "OxpO6QJE"]}, {"action": 24, "resource": "qNbv5Zko", "schedAction": 83, "schedCron": "wKySZynj", "schedRange": ["rpMDq7Sz", "zEZbdfVf", "FqAyIQB6"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'oH0LpkEV' \
    --body '{"permissions": [{"action": 93, "resource": "PvayQHCm", "schedAction": 70, "schedCron": "7qJa8M3P", "schedRange": ["mrPXcsNk", "LHHZUFBG", "TNVIReBn"]}, {"action": 43, "resource": "F6NrDuuF", "schedAction": 48, "schedCron": "AeAe3VK5", "schedRange": ["y1TjadB8", "1tUmbhP7", "k8fT2Ht2"]}, {"action": 55, "resource": "cKX657gL", "schedAction": 40, "schedCron": "7jZw7O2Z", "schedRange": ["XQz0kkiU", "cvrUXwA5", "gq0F9Pho"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '87jZ2ql4' \
    --body '["rVeiiOYk", "Db9EqfY1", "eQ3JDyuZ"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '9XOW5u9d' \
    --after '4Xh9KEc1' \
    --before '7EwCVJx3' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'z5uMBL0V' \
    --body '{"assignedNamespaces": ["s2Je71ms", "5tnlEeHe", "8dqk4g0V"], "namespace": "pbOcxCLX", "userId": "YpImByqx"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'qcOsIKXa' \
    --body '{"namespace": "v116nkt0", "userId": "T6YY0McP"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "yOuCaQCx", "country": "68I9rBrC", "dateOfBirth": "OeCYakkM", "displayName": "zhNyE1NG", "languageTag": "bNhJ9CyL", "userName": "HbxdM9JS"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'lypB9rq6' \
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
    --code 'ImFkTySs' \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'HM7ZYnlI' \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["VMo2JvIy", "3shSh1fp", "gepFOXV8"], "emailAddresses": ["iuax9X9r", "6G2g9FrT", "8m2tLPI7"], "isAdmin": true, "namespace": "83h7EzjK", "roleId": "0P3QV8tt"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "SqCqWBsJ", "policyId": "7bnGDhzL", "policyVersionId": "tI44otUO"}, {"isAccepted": true, "localizedPolicyVersionId": "nEy7JwrV", "policyId": "FMCVDQIB", "policyVersionId": "2IWBydqD"}, {"isAccepted": true, "localizedPolicyVersionId": "PJW6PCTd", "policyId": "9qGEAr00", "policyVersionId": "SNqsLWCC"}], "authType": "EMAILPASSWD", "country": "Hj58dSvG", "dateOfBirth": "tpLTAPMh", "displayName": "7AcenNey", "emailAddress": "fw1OED9o", "password": "oNFzytCU", "passwordMD5Sum": "wuPs1PPb", "username": "1RgO2obA", "verified": true}' \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "bqGqnXsC", "policyId": "I8EhDxZ0", "policyVersionId": "p6UHBSp9"}, {"isAccepted": false, "localizedPolicyVersionId": "6mQFdyKu", "policyId": "H5j9xm4n", "policyVersionId": "8XAFjxC2"}, {"isAccepted": false, "localizedPolicyVersionId": "llr3BGiU", "policyId": "p0PLHmk6", "policyVersionId": "R26EdhJj"}], "authType": "EMAILPASSWD", "code": "PsFxYIEF", "country": "vw3dr2u1", "dateOfBirth": "P8sT7keo", "displayName": "t0tFZug8", "emailAddress": "7QqwEDhI", "password": "EsicXGmt", "passwordMD5Sum": "O9MlegAC", "reachMinimumAge": false, "username": "SD8bDXOB"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'd1an52Rq' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "KMJcvbeh", "policyId": "WQ2Dxccb", "policyVersionId": "rOxVB7BF"}, {"isAccepted": false, "localizedPolicyVersionId": "u70XxSXR", "policyId": "8elHvQUq", "policyVersionId": "Ui5zoV8Z"}, {"isAccepted": true, "localizedPolicyVersionId": "9ARItUwh", "policyId": "oZibhbns", "policyVersionId": "2QeIX6x6"}], "authType": "EMAILPASSWD", "country": "q0Qmgani", "dateOfBirth": "XI0nKyAp", "displayName": "zoG4KAxe", "password": "9JEK8aZc", "reachMinimumAge": true, "username": "O6aL9oJC"}' \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "DVbcRERw", "country": "hxTMtBvd", "dateOfBirth": "hlBGL1Qp", "displayName": "OWdTOnqv", "languageTag": "FZjYrdCn", "userName": "s8pTUPmt"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "A9PCFoLz", "emailAddress": "Mj1evB1U"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vkVyzcht", "country": "8n0XZU7B", "dateOfBirth": "mKC7zTK0", "displayName": "QeRLrWrx", "emailAddress": "dqDbSdpv", "password": "h5oUkd2l", "reachMinimumAge": true, "username": "OMHJppWM", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "QtpKAyk9", "password": "o4kezDVP", "username": "ddkQmePu"}' \
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
    --code '1gBsqDzX' \
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
    --code 'Mj0AkLpx' \
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
    --factor 'HeKuzmDq' \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out

#- 348 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "6Ve0FsCs", "namespace": "KWNxAEoN", "namespaceDisplayName": "rzfPMSN2"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE