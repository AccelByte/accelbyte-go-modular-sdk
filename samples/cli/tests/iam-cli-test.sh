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
echo "1..394"

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

#- 108 AdminListClientAvailablePermissions
samples/cli/sample-apps Iam adminListClientAvailablePermissions \
    --excludePermissions 'true' \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'true' \
    --body '{"modules": [{"docLink": "nUXgfCOR", "groups": [{"group": "LwDVIPDZ", "groupId": "0Gr47gJq", "permissions": [{"allowedActions": [48, 51, 78], "resource": "yaIQcNTn"}, {"allowedActions": [53, 11, 70], "resource": "Bl1VSwTX"}, {"allowedActions": [86, 87, 38], "resource": "uxTt6C4Y"}]}, {"group": "5cPaThpk", "groupId": "JFQxrRji", "permissions": [{"allowedActions": [89, 64, 24], "resource": "llV5UwsN"}, {"allowedActions": [67, 97, 91], "resource": "9ISfUmz9"}, {"allowedActions": [32, 18, 5], "resource": "O6YnEeCS"}]}, {"group": "ZLaiuIxq", "groupId": "raotCCiA", "permissions": [{"allowedActions": [82, 13, 33], "resource": "SdFxLEaN"}, {"allowedActions": [77, 31, 30], "resource": "jVCUDLNn"}, {"allowedActions": [97, 4, 5], "resource": "HeDGxHuw"}]}], "module": "rV2JsMPF", "moduleId": "rK9CJlpm"}, {"docLink": "sePJih1Y", "groups": [{"group": "yENDP4k1", "groupId": "c6LBg5Yu", "permissions": [{"allowedActions": [1, 17, 34], "resource": "5eDKpBAk"}, {"allowedActions": [77, 27, 97], "resource": "5ksnXH2V"}, {"allowedActions": [24, 74, 15], "resource": "sgx8x9Mn"}]}, {"group": "ZvL0obIP", "groupId": "5A6CbmCK", "permissions": [{"allowedActions": [91, 62, 18], "resource": "ELGtTzye"}, {"allowedActions": [47, 40, 49], "resource": "7uJAiaAf"}, {"allowedActions": [63, 69, 90], "resource": "sU5HrTd7"}]}, {"group": "W8DGuoSU", "groupId": "IQn2SAGK", "permissions": [{"allowedActions": [83, 10, 48], "resource": "teeRy5eJ"}, {"allowedActions": [100, 86, 45], "resource": "Nj1C2Aqx"}, {"allowedActions": [70, 61, 35], "resource": "PwOua2RW"}]}], "module": "c7xUd04z", "moduleId": "oNHCcXuw"}, {"docLink": "5gUjlGgv", "groups": [{"group": "Z0EDVXzp", "groupId": "2CtXaaS2", "permissions": [{"allowedActions": [29, 96, 7], "resource": "8mAk0PoL"}, {"allowedActions": [13, 93, 18], "resource": "y9sHxTXZ"}, {"allowedActions": [40, 96, 72], "resource": "k0zuySCt"}]}, {"group": "WCX79diZ", "groupId": "6CUfMxP2", "permissions": [{"allowedActions": [97, 11, 42], "resource": "5UOjaWLL"}, {"allowedActions": [68, 55, 4], "resource": "FvTiKv7B"}, {"allowedActions": [2, 66, 51], "resource": "PX289c36"}]}, {"group": "HUskL65t", "groupId": "5BGKQR29", "permissions": [{"allowedActions": [39, 13, 59], "resource": "Nay5Yrfb"}, {"allowedActions": [61, 23, 83], "resource": "1nviGMBk"}, {"allowedActions": [31, 55, 50], "resource": "Cc4eKzJT"}]}], "module": "KFi00dho", "moduleId": "HBD28XP3"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "7eSoOCkB", "moduleId": "XNOGOkEd"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminDeleteConfigPermissionsByGroup' test.out

#- 111 AdminListClientTemplates
samples/cli/sample-apps Iam adminListClientTemplates \
    > test.out 2>&1
eval_tap $? 111 'AdminListClientTemplates' test.out

#- 112 AdminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    > test.out 2>&1
eval_tap $? 112 'AdminGetInputValidations' test.out

#- 113 AdminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "kYyUQyuB", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["loWAZF9j", "RdUDmz8s", "i4BGPfb5"], "preferRegex": false, "regex": "KMBrt3Gc"}, "blockedWord": ["KOAImFKH", "303PaXM2", "DoV55Uj2"], "description": [{"language": "zaGXAC3X", "message": ["gC4nmtkq", "iNyYKaCj", "1zvYZYGJ"]}, {"language": "cZe3dU3I", "message": ["JarG05ZW", "u96YsBlY", "8Oldn6Xa"]}, {"language": "nGrXfzpA", "message": ["L8gEZwPI", "CGiY0Pae", "Y8vaBrlK"]}], "isCustomRegex": false, "letterCase": "a7nx16QN", "maxLength": 96, "maxRepeatingAlphaNum": 2, "maxRepeatingSpecialCharacter": 86, "minCharType": 45, "minLength": 15, "regex": "ICV0ZKER", "specialCharacterLocation": "MOnfSIdC", "specialCharacters": ["xNUXNeo8", "Q9XDmUUe", "xwpUoMSg"]}}, {"field": "fIOKMiin", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["zeDj34vC", "BCYLCRlH", "gVKwTnRH"], "preferRegex": false, "regex": "5SoZBjdv"}, "blockedWord": ["NZ2DUWo2", "Hx5bFdzU", "dNCnda5o"], "description": [{"language": "aKQToW60", "message": ["hX8LTNV5", "MEvtu9YS", "TxTCuhHa"]}, {"language": "JP2wNVN7", "message": ["o5tK23U1", "laDgv0I1", "ExtzxsgB"]}, {"language": "wZHRwfXr", "message": ["amEv9Lfj", "m077oKri", "LCvezGu6"]}], "isCustomRegex": false, "letterCase": "B5VE3X36", "maxLength": 75, "maxRepeatingAlphaNum": 3, "maxRepeatingSpecialCharacter": 20, "minCharType": 35, "minLength": 60, "regex": "3bakTXQy", "specialCharacterLocation": "bBH5Qae3", "specialCharacters": ["xIYXXlm6", "Gmwd3ZBX", "PI4xM1SB"]}}, {"field": "kjj6TI52", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["tFDGYoRb", "B5V7wZbA", "429ozQjE"], "preferRegex": false, "regex": "uF4bTe14"}, "blockedWord": ["YZu526RL", "KqvqG5Xu", "rfRGHVqF"], "description": [{"language": "S9ABbITS", "message": ["yeEUeMb7", "BzjigcAc", "nYySAX0J"]}, {"language": "fPZ2Cbmv", "message": ["2Gq8h0yt", "qXa6muDs", "3CQD8p7H"]}, {"language": "MRCma9Nd", "message": ["dFx2XzvN", "IK0TVsVK", "PpaSRKLV"]}], "isCustomRegex": false, "letterCase": "iK7WVWtZ", "maxLength": 86, "maxRepeatingAlphaNum": 55, "maxRepeatingSpecialCharacter": 22, "minCharType": 32, "minLength": 87, "regex": "e5o0vEgr", "specialCharacterLocation": "MyjFgiVa", "specialCharacters": ["TO4p5Rlp", "4SYzcAPw", "dzV5gSLp"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'OFGyv9h0' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '9CCUsWsl' \
    --before 'dTMUuMqU' \
    --endDate 'rV4Z3Tbr' \
    --limit '32' \
    --query '3PeUehAd' \
    --roleId 'odMH3Ymt' \
    --startDate 'WVXyMowM' \
    > test.out 2>&1
eval_tap $? 115 'ListAdminsV3' test.out

#- 116 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'AdminGetAgeRestrictionStatusV3' test.out

#- 117 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 23, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '11XBkdnG' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 99}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'CZwLYKYt' \
    --limit '55' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "PyDkhmha", "comment": "Gs6BJVHs", "endDate": "sb7OQ3NE", "reason": "YWdTgZCm", "skipNotif": true, "userIds": ["fj1PsBI5", "3Ah8g3DS", "X5gwGkVf"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "JofbjrNj", "userId": "qROb5bhm"}, {"banId": "BTxWqkdX", "userId": "NlQJ3Ddv"}, {"banId": "5Bbjsayk", "userId": "v7s31qwL"}]}' \
    > test.out 2>&1
eval_tap $? 122 'AdminUnbanUserBulkV3' test.out

#- 123 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetBansTypeWithNamespaceV3' test.out

#- 124 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'zROAQO1T' \
    --clientName 'bMLkQjVi' \
    --clientType 'AH9F64zJ' \
    --limit '21' \
    --offset '75' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["kEg0ibKG", "CJRLuXH7", "KJKfz3P1"], "clientUpdateRequest": {"audiences": ["VUZXb5kJ", "yi3sTpXE", "1QvLu75B"], "baseUri": "oFoL6TDn", "clientName": "cldoYftx", "clientPermissions": [{"action": 17, "resource": "KYyXsvlX", "schedAction": 10, "schedCron": "loF0S6fo", "schedRange": ["lJ8XzujW", "5CeKh9Oz", "xbcyU5EO"]}, {"action": 90, "resource": "8SfVeQKe", "schedAction": 87, "schedCron": "iRUkhVQt", "schedRange": ["sQrwIJcL", "qhqqzEi6", "ppsmgRUo"]}, {"action": 38, "resource": "XKkIOzaO", "schedAction": 58, "schedCron": "2SJRJrIU", "schedRange": ["3jajGr7q", "4wgNHP84", "8mZxWE6Q"]}], "clientPlatform": "UbpEKprx", "deletable": false, "description": "kxEGm2qD", "modulePermissions": [{"moduleId": "mp2aK5z4", "selectedGroups": [{"groupId": "3YjqFsDA", "selectedActions": [6, 75, 12]}, {"groupId": "SBkR37Dx", "selectedActions": [68, 6, 86]}, {"groupId": "kfG291v4", "selectedActions": [89, 58, 72]}]}, {"moduleId": "54b1Bs3s", "selectedGroups": [{"groupId": "YoaHTuP8", "selectedActions": [41, 3, 62]}, {"groupId": "f5I5KA0t", "selectedActions": [77, 46, 62]}, {"groupId": "RmefEADK", "selectedActions": [12, 18, 70]}]}, {"moduleId": "vFwMZvr6", "selectedGroups": [{"groupId": "0EBjkAAE", "selectedActions": [17, 75, 67]}, {"groupId": "a8BrqWDH", "selectedActions": [22, 96, 28]}, {"groupId": "VhuajEs3", "selectedActions": [77, 59, 91]}]}], "namespace": "Xjiu97oz", "oauthAccessTokenExpiration": 14, "oauthAccessTokenExpirationTimeUnit": "H29nF90R", "oauthRefreshTokenExpiration": 45, "oauthRefreshTokenExpirationTimeUnit": "9WHrpg6W", "redirectUri": "gFNPGIYe", "scopes": ["Bw3e2dpG", "9d44BMNy", "FICyfTNR"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["daE9dg46", "YPmrXuHK", "GX1Wja2w"], "baseUri": "UDBdXQrX", "clientId": "NBBs7wCt", "clientName": "d9pWZYHN", "clientPermissions": [{"action": 3, "resource": "YqiSY2if", "schedAction": 93, "schedCron": "VpYRhdcz", "schedRange": ["Yvr15Tn8", "FS06cCRL", "0Zm81AKq"]}, {"action": 37, "resource": "TZYYcUpm", "schedAction": 87, "schedCron": "7aiFgQ4V", "schedRange": ["4NOPv9Jg", "zVyjXP0O", "z1sp6xv4"]}, {"action": 34, "resource": "bLdTwU6N", "schedAction": 26, "schedCron": "uBiGrlgv", "schedRange": ["xoCBP7G7", "yrb2KLOY", "HpzajXnb"]}], "clientPlatform": "3cO2obT6", "deletable": true, "description": "Rt7Jk29f", "modulePermissions": [{"moduleId": "4624uVxb", "selectedGroups": [{"groupId": "7SsoMdcO", "selectedActions": [63, 1, 96]}, {"groupId": "isQsNLmp", "selectedActions": [20, 61, 41]}, {"groupId": "kV3Qoa31", "selectedActions": [45, 98, 94]}]}, {"moduleId": "ivk7zolE", "selectedGroups": [{"groupId": "Nep6mcqz", "selectedActions": [11, 72, 51]}, {"groupId": "bNCVgAL1", "selectedActions": [83, 30, 81]}, {"groupId": "llRZIPCH", "selectedActions": [29, 71, 84]}]}, {"moduleId": "yVssKIu0", "selectedGroups": [{"groupId": "vDkCWwBw", "selectedActions": [88, 61, 60]}, {"groupId": "fkwLR0p8", "selectedActions": [18, 39, 49]}, {"groupId": "Zf8TePuB", "selectedActions": [79, 77, 88]}]}], "namespace": "gKcrBOeD", "oauthAccessTokenExpiration": 59, "oauthAccessTokenExpirationTimeUnit": "5YrBZTRn", "oauthClientType": "GYXHBe4D", "oauthRefreshTokenExpiration": 49, "oauthRefreshTokenExpirationTimeUnit": "VeJeB2EB", "parentNamespace": "0U8fxNIZ", "redirectUri": "jpFmyqqB", "scopes": ["GvZ3eRrf", "2SQmQbcG", "T4kE67uW"], "secret": "xPGKBNEu", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'cMB1Ai2P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '4xBKwXM2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'uQIK4FLO' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["unlm9SJD", "DKv3aBD0", "PE9YVsvy"], "baseUri": "aVuXaezP", "clientName": "H0XlmbdP", "clientPermissions": [{"action": 51, "resource": "f2cLCgjf", "schedAction": 19, "schedCron": "1qlw4qhz", "schedRange": ["GuxZFL5P", "8KHP8IeL", "3eeecm3X"]}, {"action": 32, "resource": "oObZR4iO", "schedAction": 54, "schedCron": "AB4ceOWb", "schedRange": ["lrt8mM33", "OwsuBFWt", "Jah9sHSf"]}, {"action": 60, "resource": "dfTs9VS4", "schedAction": 73, "schedCron": "HUZHQDvS", "schedRange": ["SbGNZp02", "49u1mwHt", "oeZAUcpc"]}], "clientPlatform": "HtoXsgaA", "deletable": true, "description": "9c2CZW36", "modulePermissions": [{"moduleId": "vwWRsI3D", "selectedGroups": [{"groupId": "3JSrrgKF", "selectedActions": [24, 65, 33]}, {"groupId": "RuwP9Ea6", "selectedActions": [93, 61, 70]}, {"groupId": "UYrnttGw", "selectedActions": [71, 72, 2]}]}, {"moduleId": "FfeXhEwx", "selectedGroups": [{"groupId": "mVcFYQcS", "selectedActions": [25, 68, 40]}, {"groupId": "k4NrRjzv", "selectedActions": [55, 67, 97]}, {"groupId": "3imBOvqW", "selectedActions": [72, 34, 29]}]}, {"moduleId": "sdNT77q2", "selectedGroups": [{"groupId": "OgykkfW6", "selectedActions": [58, 92, 5]}, {"groupId": "H2LR4slv", "selectedActions": [23, 53, 72]}, {"groupId": "xnlT3zzs", "selectedActions": [37, 80, 21]}]}], "namespace": "aISx2exW", "oauthAccessTokenExpiration": 90, "oauthAccessTokenExpirationTimeUnit": "DwqOc6dc", "oauthRefreshTokenExpiration": 58, "oauthRefreshTokenExpirationTimeUnit": "YV9adgUv", "redirectUri": "4u6g5FpU", "scopes": ["4ASHg6xT", "5v8uRQWH", "YynyEUnb"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'yDhdJMZe' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 43, "resource": "srlPRvMY"}, {"action": 68, "resource": "wcOc4av3"}, {"action": 17, "resource": "Nc6UISkO"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'd1bOIZV9' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 85, "resource": "nMhbe31I"}, {"action": 43, "resource": "ZApnhQ9f"}, {"action": 82, "resource": "30GHDgS2"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '44' \
    --clientId 'DAOJsXmV' \
    --namespace $AB_NAMESPACE \
    --resource 'UyLClW3E' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'WVClLfh5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'AdminGetConfigValueV3' test.out

#- 134 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'true' \
    > test.out 2>&1
eval_tap $? 134 'AdminGetCountryListV3' test.out

#- 135 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'AdminGetCountryBlacklistV3' test.out

#- 136 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["0PXUoyjW", "0G4kWf3d", "8Ouh8IXS"]}' \
    > test.out 2>&1
eval_tap $? 136 'AdminAddCountryBlacklistV3' test.out

#- 137 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 138 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 139 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 140 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4cwFoOIA' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xqooTEKh' \
    --body '{"ACSURL": "gJgkv2SD", "AWSCognitoRegion": "fdZM8YfA", "AWSCognitoUserPool": "eXxRXsQS", "AllowedClients": ["ws2aPBAJ", "c98LUd6c", "qY5xselh"], "AppId": "QVZqMhyK", "AuthorizationEndpoint": "EwZGii2V", "ClientId": "d0nP2UHW", "Environment": "i4ok9yek", "FederationMetadataURL": "Un9PCI7m", "GenericOauthFlow": false, "IsActive": false, "Issuer": "8YEyZdDs", "JWKSEndpoint": "gEHR9UmE", "KeyID": "fxo2AY8u", "NetflixCertificates": {"encryptedPrivateKey": "Bjpf3vGu", "encryptedPrivateKeyName": "fLyyOtN2", "publicCertificate": "KreEb5Ea", "publicCertificateName": "NqHcNoIk", "rootCertificate": "AviCAGJZ", "rootCertificateName": "618frlau"}, "OrganizationId": "eHlee5JG", "PlatformName": "axaH4AmV", "RedirectUri": "YD1Q1g1S", "RegisteredDomains": [{"affectedClientIDs": ["qxOymbOj", "gYaNZ1Jf", "zLWKRPVJ"], "domain": "ZAl2ccSL", "namespaces": ["2pdjh3QM", "EfYwKMg2", "5fGLRlsJ"], "roleId": "AKMeJd6c"}, {"affectedClientIDs": ["URH1fIK6", "PuQOYDu0", "jrwHhDLL"], "domain": "6ga94zYq", "namespaces": ["y0W9cZcP", "M9p4GCI2", "zXxhkYt1"], "roleId": "bOvZwpQP"}, {"affectedClientIDs": ["2LjZv6sN", "pDNpEHl4", "vH25i0Df"], "domain": "QvgFRYov", "namespaces": ["HJNOQITL", "89AAllqC", "hVUyzQbz"], "roleId": "tcXQYOBY"}], "Secret": "bdcPtpaV", "TeamID": "skt6Oaxa", "TokenAuthenticationType": "THCtnpOk", "TokenClaimsMapping": {"mD72MIL7": "NAFrGTYH", "GfzxCoPZ": "PF6obyq7", "V0Xsgl53": "xvd8LI6j"}, "TokenEndpoint": "SYMnkMne", "UserInfoEndpoint": "56AJUpO1", "UserInfoHTTPMethod": "4cbYOaXl", "scopes": ["5jOl5qru", "N63ZGXRx", "eeuv9EVN"]}' \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tPsJHvrq' \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'p0ydIPMt' \
    --body '{"ACSURL": "bJSf4frA", "AWSCognitoRegion": "5lBS3ScJ", "AWSCognitoUserPool": "RzflLOgO", "AllowedClients": ["eNfPfyTr", "QNXlHG5N", "RBf2KrvF"], "AppId": "LbPprspe", "AuthorizationEndpoint": "3pWK58jL", "ClientId": "cNANWADR", "Environment": "Tn1JUZDe", "FederationMetadataURL": "b6N0K9Dd", "GenericOauthFlow": true, "IsActive": false, "Issuer": "7ee4sOHC", "JWKSEndpoint": "0Nhvs8sX", "KeyID": "kiJTr1Zw", "NetflixCertificates": {"encryptedPrivateKey": "KqVDit3h", "encryptedPrivateKeyName": "JgiLqWD6", "publicCertificate": "3QwgQuAr", "publicCertificateName": "0lFzZCKv", "rootCertificate": "CR4yo39C", "rootCertificateName": "8LS5Z5CH"}, "OrganizationId": "xvaitlwO", "PlatformName": "3tclPa5c", "RedirectUri": "eCVxVhUP", "RegisteredDomains": [{"affectedClientIDs": ["jf2gvcub", "prJzlUDA", "lkC3A6P7"], "domain": "PAkEAHfZ", "namespaces": ["UAe0kDAQ", "gKboiPk8", "X2RUEtSY"], "roleId": "TcNstlPQ"}, {"affectedClientIDs": ["Pdz5hjCO", "s6ZZas1a", "hfwmpE46"], "domain": "6kDmXptP", "namespaces": ["1IdurPg2", "S60VdErV", "hCTM7zxO"], "roleId": "qbbw2ICl"}, {"affectedClientIDs": ["uqYZ01De", "02IaNwqI", "CKQxwHfh"], "domain": "SDcdMGp2", "namespaces": ["Ox5zKCuI", "G3eERbT7", "nJl4HPZ8"], "roleId": "Rgo1Yrpz"}], "Secret": "nxnTYpsN", "TeamID": "rcrrzuBL", "TokenAuthenticationType": "D0ZPn3p1", "TokenClaimsMapping": {"Xb23DIvB": "Xfe8juc7", "QH9KY94w": "ftBJNyKD", "Yw2MLt0t": "ZIozY7Pn"}, "TokenEndpoint": "as06j8A6", "UserInfoEndpoint": "6gSzNb2x", "UserInfoHTTPMethod": "2spUYtQM", "scopes": ["Vf3kQ4MJ", "UXpSy5Xc", "mzevQ0wm"]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cZk8Bii3' \
    --body '{"affectedClientIDs": ["g6CHR7GO", "sArguu3g", "QZok1AkN"], "assignedNamespaces": ["aMy0uMH9", "5A5mZXIM", "pjg4zCOl"], "domain": "zlyTAGQR", "roleId": "0Q3cLBAm"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tlrcm6SH' \
    --body '{"domain": "G8zE8HN9"}' \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'k8EgBs5X' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'qeM1OuOD' \
    --body '{"acsUrl": "fcMtbPej", "apiKey": "MOvFebXh", "appId": "u6KFSx6E", "federationMetadataUrl": "DOFCDdPQ", "isActive": false, "redirectUri": "hHJdfcFL", "secret": "RygbR3dP", "ssoUrl": "zcnt7Nap"}' \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wME56ahO' \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'De3g2lib' \
    --body '{"acsUrl": "RIea0iSG", "apiKey": "tra9mY0m", "appId": "fxn6JfDE", "federationMetadataUrl": "eIUCnsdr", "isActive": true, "redirectUri": "7dmd4z5F", "secret": "tWPwfmst", "ssoUrl": "IzJea0Sb"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qhwWAMFF' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["Q57qGpDA", "LFD2eam6", "k0n1eAPW"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gB2GzrCW' \
    --platformUserId 'xEEcA5Ed' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Cwrjnc79' \
    --after '91' \
    --before '65' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 152 'GetAdminUsersByRoleIdV3' test.out

#- 153 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'tRdmLxob' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByEmailAddressV3' test.out

#- 154 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["0ri14hZd", "nMFbvozt", "POwOP9qm"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBulkUpdateUsersV3' test.out

#- 155 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'ylw3MbPv' \
    --body '{"bulkUserId": ["pMoj5aMl", "81FTUopp", "N7oO7K15"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserBanV3' test.out

#- 156 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["4hggTkyL", "ahQdycPw", "n8UMvbeO"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminListUserIDByUserIDsV3' test.out

#- 157 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["2iEdyIHW", "sICJ5oQo", "vvVIOlhm"]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminBulkGetUsersPlatform' test.out

#- 158 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["Dgytubju", "WxZ8YRpA", "zm23W57L"], "isAdmin": false, "namespace": "BdrH0voM", "roles": ["ZCQZW33e", "hNQzAemB", "8uN5CU81"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminInviteUserV3' test.out

#- 159 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '34' \
    --platformUserId 'bhR1HiWW' \
    --platformId 'ONMWxb5k' \
    > test.out 2>&1
eval_tap $? 159 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 160 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 160 'AdminListUsersV3' test.out

#- 161 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'LdwD6ER8' \
    --endDate 'dJPeoBP3' \
    --includeTotal 'false' \
    --limit '89' \
    --offset '8' \
    --platformBy 'MYBsJXKL' \
    --platformId 'UYITOOB3' \
    --query 'rBPYzg8y' \
    --roleIds 'wcFqLy60' \
    --skipLoginQueue 'false' \
    --startDate 'xlfpgGbq' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 161 'AdminSearchUserV3' test.out

#- 162 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["YPMlJdad", "zFxb9niR", "alj4Oop3"]}' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetBulkUserByEmailAddressV3' test.out

#- 163 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Jx14Sd5F' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByUserIdV3' test.out

#- 164 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ucf3pXVB' \
    --body '{"avatarUrl": "6Ll7Tycy", "country": "52m2aU9c", "dateOfBirth": "EbgkJnHh", "displayName": "gH4c5UUV", "languageTag": "tNS6J8fh", "skipLoginQueue": true, "uniqueDisplayName": "DoF2F9t6", "userName": "RTdru9f7"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserV3' test.out

#- 165 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aiv7YFVH' \
    --activeOnly 'true' \
    --after '3HgrBtFR' \
    --before 'J19KstKL' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserBanV3' test.out

#- 166 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DZE2mCYg' \
    --body '{"ban": "bfeF8sJ0", "comment": "7B7T8mDm", "endDate": "0xQaJDX9", "reason": "cttTjZOQ", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBanUserV3' test.out

#- 167 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'EbreKUyO' \
    --namespace $AB_NAMESPACE \
    --userId '6fvnlsfI' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 167 'AdminUpdateUserBanV3' test.out

#- 168 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FUJStDGY' \
    --body '{"context": "8nmDxqzB", "emailAddress": "NTbz0AXn", "languageTag": "PYR1wpLm"}' \
    > test.out 2>&1
eval_tap $? 168 'AdminSendVerificationCodeV3' test.out

#- 169 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wh3BupHg' \
    --body '{"Code": "qbrsEm2u", "ContactType": "mhGqfBwY", "LanguageTag": "mUbSBb2H", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 169 'AdminVerifyAccountV3' test.out

#- 170 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'nLi79z66' \
    > test.out 2>&1
eval_tap $? 170 'GetUserVerificationCode' test.out

#- 171 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'p8og8CJx' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserDeletionStatusV3' test.out

#- 172 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AzibeJtI' \
    --body '{"deletionDate": 4, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 172 'AdminUpdateUserDeletionStatusV3' test.out

#- 173 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'v0O3QUTw' \
    > test.out 2>&1
eval_tap $? 173 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 174 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 's8XgPdgP' \
    --body '{"code": "UkTCNuwq", "country": "xYTJflav", "dateOfBirth": "fAkIbhJ6", "displayName": "UeiUai3b", "emailAddress": "DXbyLARj", "password": "nn3QQnZx", "uniqueDisplayName": "rwExtioT", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpgradeHeadlessAccountV3' test.out

#- 175 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cwRw9J4I' \
    > test.out 2>&1
eval_tap $? 175 'AdminDeleteUserInformationV3' test.out

#- 176 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YFyoZuGt' \
    --after '0.3877037029723268' \
    --before '0.05788103828037616' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserLoginHistoriesV3' test.out

#- 177 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GbrBXbqG' \
    --body '{"languageTag": "fLQZ9Wih", "newPassword": "jDjeXRqs", "oldPassword": "6vYBnJ1U"}' \
    > test.out 2>&1
eval_tap $? 177 'AdminResetPasswordV3' test.out

#- 178 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zRDY4R4i' \
    --body '{"Permissions": [{"Action": 92, "Resource": "vqM3MPk1", "SchedAction": 41, "SchedCron": "Jka8H647", "SchedRange": ["D8PpMhLX", "lOATTIAw", "iY0XDJzV"]}, {"Action": 43, "Resource": "awdCU4b2", "SchedAction": 93, "SchedCron": "UotHILdq", "SchedRange": ["vfBkfwzi", "2iPsS1A3", "ckYa4hW4"]}, {"Action": 89, "Resource": "NyyojIkP", "SchedAction": 14, "SchedCron": "dkk0kXxg", "SchedRange": ["rXkAudAT", "UoBD3oQa", "SX0NszkO"]}]}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserPermissionV3' test.out

#- 179 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PLliH3ik' \
    --body '{"Permissions": [{"Action": 36, "Resource": "FsFGIvJZ", "SchedAction": 35, "SchedCron": "zLqVXvzS", "SchedRange": ["YzjuKNbE", "ynPqndID", "RU8Wu39E"]}, {"Action": 11, "Resource": "9gwGXJxR", "SchedAction": 98, "SchedCron": "Xf7vyAgS", "SchedRange": ["qWkrFGXR", "79Mu5mIz", "EDLh1xMq"]}, {"Action": 70, "Resource": "cb0OerEo", "SchedAction": 73, "SchedCron": "uhu18d5p", "SchedRange": ["vKUIf0aq", "eBAbQ5mo", "2xLiCzuu"]}]}' \
    > test.out 2>&1
eval_tap $? 179 'AdminAddUserPermissionsV3' test.out

#- 180 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vfTMjn83' \
    --body '[{"Action": 63, "Resource": "4gI42N0K"}, {"Action": 24, "Resource": "wHOmTqEZ"}, {"Action": 71, "Resource": "fXVgtHzb"}]' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteUserPermissionBulkV3' test.out

#- 181 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '23' \
    --namespace $AB_NAMESPACE \
    --resource 'HYTxcaWI' \
    --userId 'kesA7sMD' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserPermissionV3' test.out

#- 182 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'chacRIqv' \
    --after 'vtEIiTvC' \
    --before 'PFuOJcrT' \
    --limit '96' \
    --platformId 'xS2zXpYD' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserPlatformAccountsV3' test.out

#- 183 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'Z0ofmHOP' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetListJusticePlatformAccounts' test.out

#- 184 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'nZEqZkM1' \
    --userId 'ADZRgdlR' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetUserMapping' test.out

#- 185 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'uXC9CL9l' \
    --userId 'gd56LBL0' \
    > test.out 2>&1
eval_tap $? 185 'AdminCreateJusticeUser' test.out

#- 186 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'uLpF1qYL' \
    --skipConflict 'true' \
    --body '{"platformId": "ZA9gNZjv", "platformUserId": "eAJSMm57"}' \
    > test.out 2>&1
eval_tap $? 186 'AdminLinkPlatformAccount' test.out

#- 187 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MIRE4PN2' \
    --userId 'yEoXH9EN' \
    --body '{"platformNamespace": "UTUUVmCP"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminPlatformUnlinkV3' test.out

#- 188 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3yYYvvPa' \
    --userId 'Bh2F1xFo' \
    > test.out 2>&1
eval_tap $? 188 'AdminPlatformUnlinkAllV3' test.out

#- 189 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tsjWri8X' \
    --userId 'Av3nD0MN' \
    --ticket 'HjwPikGP' \
    > test.out 2>&1
eval_tap $? 189 'AdminPlatformLinkV3' test.out

#- 190 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'T0y6thCu' \
    --userId 'YY0gmNX5' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 191 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2o0jM4QD' \
    --userId 'x9GK2ahQ' \
    --platformToken '4T4wm8qL' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 192 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'X8UGAI1L' \
    --userId 'pK0PdUnu' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserSinglePlatformAccount' test.out

#- 193 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gqvppveV' \
    --body '["CWlY8G5s", "eDiC7PO8", "5rix7qAp"]' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteUserRolesV3' test.out

#- 194 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VU7nVyYs' \
    --body '[{"namespace": "PIHC6VIV", "roleId": "VRxh4ghg"}, {"namespace": "T1WtqpxY", "roleId": "0tKjK2qP"}, {"namespace": "YD9q8n2c", "roleId": "jkYt9Oey"}]' \
    > test.out 2>&1
eval_tap $? 194 'AdminSaveUserRoleV3' test.out

#- 195 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'z2aUwxNY' \
    --userId 'kOlXhG0y' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserRoleV3' test.out

#- 196 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ra1O56E1' \
    --userId 'AcSChjmG' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserRoleV3' test.out

#- 197 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iRiiuHAX' \
    --body '{"enabled": true, "reason": "TyMCqFKn"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateUserStatusV3' test.out

#- 198 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'zOOH9yNM' \
    --body '{"emailAddress": "1dzowOUl", "password": "2m4sUVXj"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminTrustlyUpdateUserIdentity' test.out

#- 199 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '2uwlwjq7' \
    > test.out 2>&1
eval_tap $? 199 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 200 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '6UfB1Ct6' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "oFmefOLj"}' \
    > test.out 2>&1
eval_tap $? 200 'AdminUpdateClientSecretV3' test.out

#- 201 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'QEm3iPBB' \
    > test.out 2>&1
eval_tap $? 201 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 202 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'vi6JoDsx' \
    --before '3Tu3a4Lk' \
    --isWildcard 'false' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRolesV3' test.out

#- 203 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "K1kv1Jih", "namespace": "JG4DWZIN", "userId": "ce1Filzn"}, {"displayName": "EAaR0Kwd", "namespace": "WS8u1z0h", "userId": "mpNpcmPZ"}, {"displayName": "OYs9m3H0", "namespace": "d3AQyjcx", "userId": "oKhWbvzm"}], "members": [{"displayName": "8pCqHG3z", "namespace": "EYmtbKYH", "userId": "ZJ0Qu4VF"}, {"displayName": "MzvVMZrV", "namespace": "zHf3vzTv", "userId": "CUSrqIHk"}, {"displayName": "TITIHFgT", "namespace": "qKlEkwtW", "userId": "Z7p8yyZ7"}], "permissions": [{"action": 83, "resource": "EKur0uYr", "schedAction": 57, "schedCron": "8iP8cIJN", "schedRange": ["BRnFeI4O", "ZoDHZsV1", "dkOwXCyn"]}, {"action": 44, "resource": "iQfw97qj", "schedAction": 74, "schedCron": "lhfd2GT5", "schedRange": ["vBxfnz7B", "QNV9e4io", "QQ2SpEta"]}, {"action": 85, "resource": "e4LCRtGm", "schedAction": 14, "schedCron": "8pAHDFdt", "schedRange": ["O3Tb825d", "NkCO6uqp", "qveoRx7z"]}], "roleName": "V9uUPBXQ"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminCreateRoleV3' test.out

#- 204 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'P3uSY1tw' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetRoleV3' test.out

#- 205 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'Jru1tvFh' \
    > test.out 2>&1
eval_tap $? 205 'AdminDeleteRoleV3' test.out

#- 206 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'cfvqv6op' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "PaSXtUYC"}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRoleV3' test.out

#- 207 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'evw8vZbi' \
    > test.out 2>&1
eval_tap $? 207 'AdminGetRoleAdminStatusV3' test.out

#- 208 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'FaM1UMt9' \
    > test.out 2>&1
eval_tap $? 208 'AdminUpdateAdminRoleStatusV3' test.out

#- 209 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'QgVvcnN8' \
    > test.out 2>&1
eval_tap $? 209 'AdminRemoveRoleAdminV3' test.out

#- 210 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '6xKJz0Jz' \
    --after 'OBZ4kcFH' \
    --before 'UaHGi0v3' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetRoleManagersV3' test.out

#- 211 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '3mvoRzbX' \
    --body '{"managers": [{"displayName": "npOhJJE4", "namespace": "bXoCqQqf", "userId": "E3xC4qP0"}, {"displayName": "KLXbb3Tc", "namespace": "BOTdbrAq", "userId": "V58e0lJ5"}, {"displayName": "dOM81RiO", "namespace": "26pqYcRm", "userId": "rCR48Y7q"}]}' \
    > test.out 2>&1
eval_tap $? 211 'AdminAddRoleManagersV3' test.out

#- 212 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'PxNd1w9N' \
    --body '{"managers": [{"displayName": "QQztEbSk", "namespace": "Zs8NckVf", "userId": "KjztlyDJ"}, {"displayName": "aJJNqGZS", "namespace": "6QvNUlK8", "userId": "BXvzgIps"}, {"displayName": "HxcDqXOm", "namespace": "7gmC3rrO", "userId": "AoNJXeRK"}]}' \
    > test.out 2>&1
eval_tap $? 212 'AdminRemoveRoleManagersV3' test.out

#- 213 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'coBxMjtB' \
    --after 'WWFlHfi3' \
    --before 'jcAJM7xV' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 213 'AdminGetRoleMembersV3' test.out

#- 214 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'PjJ5z8Yb' \
    --body '{"members": [{"displayName": "rnFJNU8e", "namespace": "FfJVid1B", "userId": "lmzzBRqF"}, {"displayName": "YJLOcAJA", "namespace": "PDaedi1S", "userId": "9NknSxBQ"}, {"displayName": "pTpycDBA", "namespace": "yhzoQX72", "userId": "8m7Exwyn"}]}' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddRoleMembersV3' test.out

#- 215 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'ViIrGE2y' \
    --body '{"members": [{"displayName": "TOnfdHyn", "namespace": "r8YjEboU", "userId": "VR6EcPha"}, {"displayName": "Ued7wOxq", "namespace": "ZZ2Eaxt1", "userId": "OMDuMLkh"}, {"displayName": "Zb7pldrx", "namespace": "kqrt8Rln", "userId": "mfVPLj1T"}]}' \
    > test.out 2>&1
eval_tap $? 215 'AdminRemoveRoleMembersV3' test.out

#- 216 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '7U2WvTlh' \
    --body '{"permissions": [{"action": 34, "resource": "texkzy9F", "schedAction": 53, "schedCron": "WxerTZTA", "schedRange": ["KSvIAzTa", "604aQ5oW", "B95UiwNU"]}, {"action": 14, "resource": "B1hzkrQa", "schedAction": 43, "schedCron": "W6vMPMzw", "schedRange": ["sG6nTopr", "d35xnNaP", "gYrRWlpe"]}, {"action": 32, "resource": "VHKNhzzp", "schedAction": 77, "schedCron": "kYutHXA4", "schedRange": ["GDYOMQZR", "NWqnXMca", "9YuzKcJq"]}]}' \
    > test.out 2>&1
eval_tap $? 216 'AdminUpdateRolePermissionsV3' test.out

#- 217 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'AGohFwO5' \
    --body '{"permissions": [{"action": 6, "resource": "2v8dIWXw", "schedAction": 11, "schedCron": "Pu9cwb7O", "schedRange": ["q0FFxo7j", "Ya5Sq2ib", "fgG9Ao4x"]}, {"action": 21, "resource": "HjjMOJxb", "schedAction": 51, "schedCron": "fk1YXfb4", "schedRange": ["6G8I9byK", "LWEXxY8K", "PtJbHwNF"]}, {"action": 96, "resource": "RxgHTkUF", "schedAction": 7, "schedCron": "KXp17YM4", "schedRange": ["RlwS8ekK", "NSB3OZH1", "E1yrGm1Q"]}]}' \
    > test.out 2>&1
eval_tap $? 217 'AdminAddRolePermissionsV3' test.out

#- 218 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'gAwM1Dtl' \
    --body '["exGnkC7E", "tvBwfdR1", "0nnwsZxx"]' \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRolePermissionsV3' test.out

#- 219 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '100' \
    --resource 'lpXPfo1p' \
    --roleId 'fX8UjQKj' \
    > test.out 2>&1
eval_tap $? 219 'AdminDeleteRolePermissionV3' test.out

#- 220 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 220 'AdminGetMyUserV3' test.out

#- 221 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '5FaNc0a5' \
    --extendExp 'true' \
    --redirectUri 'xQ9sb96B' \
    --password '8MYXmAHi' \
    --requestId 'soyarNWi' \
    --userName 'J862tpdU' \
    > test.out 2>&1
eval_tap $? 221 'UserAuthenticationV3' test.out

#- 222 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'wiRdYax8' \
    --linkingToken 'K0TMYNit' \
    --password 'brUyoCRJ' \
    --username 'e2DDg8KJ' \
    > test.out 2>&1
eval_tap $? 222 'AuthenticationWithPlatformLinkV3' test.out

#- 223 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'QibTrvW5' \
    --extendExp 'false' \
    --linkingToken 'Tqmq7hp4' \
    > test.out 2>&1
eval_tap $? 223 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 224 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'xwuCG2Hc' \
    > test.out 2>&1
eval_tap $? 224 'RequestOneTimeLinkingCodeV3' test.out

#- 225 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'XfqgNdIP' \
    > test.out 2>&1
eval_tap $? 225 'ValidateOneTimeLinkingCodeV3' test.out

#- 226 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'WB3ABpdR' \
    --isTransient 'true' \
    --clientId '3ZAWrOpv' \
    --oneTimeLinkCode 'Crz44CZ4' \
    > test.out 2>&1
eval_tap $? 226 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 227 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 227 'GetCountryLocationV3' test.out

#- 228 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 228 'Logout' test.out

#- 229 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge '2vmDFIO3' \
    --codeChallengeMethod 'S256' \
    --clientId 'TaBq7QuS' \
    > test.out 2>&1
eval_tap $? 229 'RequestTokenExchangeCodeV3' test.out

#- 230 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xLNqg3Wi' \
    --userId 'AASHiWDT' \
    --platformUserId 'xRGBOnMv' \
    > test.out 2>&1
eval_tap $? 230 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 231 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Gz7jBROd' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 231 'RevokeUserV3' test.out

#- 232 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'dj2MRuo3' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'vsgR6g2y' \
    --redirectUri 'bOBu8UyQ' \
    --scope 'telRRL42' \
    --state 'ZrmWmz1Z' \
    --targetAuthPage 'msNsbNIv' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'GPbv9HMX' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 232 'AuthorizeV3' test.out

#- 233 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'FTON8kqL' \
    > test.out 2>&1
eval_tap $? 233 'TokenIntrospectionV3' test.out

#- 234 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 234 'GetJWKSV3' test.out

#- 235 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '6Yp0bbkO' \
    --factor 'TnVzzm7p' \
    --mfaToken 'mijoUjPV' \
    > test.out 2>&1
eval_tap $? 235 'SendMFAAuthenticationCode' test.out

#- 236 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'K8BuA65g' \
    --mfaToken 'zr8OFnUS' \
    > test.out 2>&1
eval_tap $? 236 'Change2faMethod' test.out

#- 237 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '2KlFR01V' \
    --factor 'N64mh0Cp' \
    --mfaToken 'KQcgH97R' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 237 'Verify2faCode' test.out

#- 238 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3Tbn55I4' \
    --userId 'pyh5QszT' \
    > test.out 2>&1
eval_tap $? 238 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 239 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '8Mh2e2fk' \
    --clientId 'Rl1vqceY' \
    --redirectUri 'ci0FLHhX' \
    --requestId 'ZgPmQWCN' \
    > test.out 2>&1
eval_tap $? 239 'AuthCodeRequestV3' test.out

#- 240 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'NRDwSHtt' \
    --additionalData 'A9W3j3d2' \
    --clientId 'ednDdgTF' \
    --createHeadless 'true' \
    --deviceId 'w72UTFNr' \
    --macAddress 'lid3nFmK' \
    --platformToken 'hegC82rC' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 240 'PlatformTokenGrantV3' test.out

#- 241 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 241 'GetRevocationListV3' test.out

#- 242 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'L4P5ZHqp' \
    > test.out 2>&1
eval_tap $? 242 'TokenRevocationV3' test.out

#- 243 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'IlyS70X9' \
    --simultaneousTicket '1A6jCqmI' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'IzOkOYkI' \
    > test.out 2>&1
eval_tap $? 243 'SimultaneousLoginV3' test.out

#- 244 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'xLJk0n5T' \
    --clientId 'nxMQzdG3' \
    --code 'UsrdDers' \
    --codeVerifier 'x8UvRKNr' \
    --extendNamespace 'UfzpuAKr' \
    --extendExp 'true' \
    --password 'DjPSHA6V' \
    --redirectUri 'OnOkF4eZ' \
    --refreshToken 'rt8BsSAZ' \
    --username 'GJAn0OMR' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 244 'TokenGrantV3' test.out

#- 245 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'spqnuqEf' \
    > test.out 2>&1
eval_tap $? 245 'VerifyTokenV3' test.out

#- 246 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'lCOpCQsA' \
    --code 'wkmG0UmS' \
    --error 'OrVDyrVZ' \
    --openidAssocHandle 'sqvc8Ngs' \
    --openidClaimedId 'nVTww8eM' \
    --openidIdentity 'oCBzmO22' \
    --openidMode 'r9XItFZg' \
    --openidNs 'LzGPtxCy' \
    --openidOpEndpoint 'RGXEEJq8' \
    --openidResponseNonce 'gBu242xW' \
    --openidReturnTo 'lrt1Cnwm' \
    --openidSig 'auGktrxG' \
    --openidSigned 'F4kCuNK1' \
    --state 'MDgtynCj' \
    > test.out 2>&1
eval_tap $? 246 'PlatformAuthenticationV3' test.out

#- 247 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '1XhDKKa4' \
    --platformToken 'ASDPkoFO' \
    > test.out 2>&1
eval_tap $? 247 'PlatformTokenRefreshV3' test.out

#- 248 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'PbdTzAe6' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetInputValidations' test.out

#- 249 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'SeARyNHx' \
    > test.out 2>&1
eval_tap $? 249 'PublicGetInputValidationByField' test.out

#- 250 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'dFGTjevN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 250 'PublicGetCountryAgeRestrictionV3' test.out

#- 251 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'Tj6gRk8y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 251 'PublicGetConfigValueV3' test.out

#- 252 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'PublicGetCountryListV3' test.out

#- 253 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 253 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 254 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'sM6rUvNj' \
    > test.out 2>&1
eval_tap $? 254 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 255 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PVDS4fSd' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["NUB7Zj5A", "80Uwt2oH", "c6glfZBf"]}' \
    > test.out 2>&1
eval_tap $? 255 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 256 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ynx9n3mq' \
    --platformUserId 'hcV7gBCh' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserByPlatformUserIDV3' test.out

#- 257 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'g5KHCpnj' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetAsyncStatus' test.out

#- 258 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '0CTAxtzO' \
    --limit '54' \
    --offset '1' \
    --platformBy 'UHmDfIOh' \
    --platformId 'iqGlCpjh' \
    --query 'K5faBCjE' \
    > test.out 2>&1
eval_tap $? 258 'PublicSearchUserV3' test.out

#- 259 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "3gqGtja7", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "JlmvCyWO", "policyId": "UXKSguHa", "policyVersionId": "TpvZAJJn"}, {"isAccepted": false, "localizedPolicyVersionId": "KlhOMsO1", "policyId": "TEmntR1o", "policyVersionId": "Y3OPnWbU"}, {"isAccepted": true, "localizedPolicyVersionId": "rJLNrUsh", "policyId": "FS4xd6rB", "policyVersionId": "BawllH1K"}], "authType": "YwsxzWLF", "code": "n61aQTSp", "country": "nSsIaoBv", "dateOfBirth": "R4o9n4X4", "displayName": "ZHN4NYAT", "emailAddress": "FIJKAGuN", "password": "Vt3vWyKA", "reachMinimumAge": false, "uniqueDisplayName": "yPD6LBFB"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicCreateUserV3' test.out

#- 260 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '6YXsZmDL' \
    --query 'UPZb89hc' \
    > test.out 2>&1
eval_tap $? 260 'CheckUserAvailability' test.out

#- 261 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["sLKYRG3s", "Cg1vrpY5", "f50Kupf5"]}' \
    > test.out 2>&1
eval_tap $? 261 'PublicBulkGetUsers' test.out

#- 262 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "bqW96X52", "languageTag": "zciWA3vH"}' \
    > test.out 2>&1
eval_tap $? 262 'PublicSendRegistrationCode' test.out

#- 263 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UshYErgt", "emailAddress": "gHTJ56jd"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicVerifyRegistrationCode' test.out

#- 264 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "nI2UR66U", "languageTag": "lsLD0rmV"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicForgotPasswordV3' test.out

#- 265 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'Glmr9sZM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 265 'GetAdminInvitationV3' test.out

#- 266 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId '8UwUAwJz' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "BpDdBgEi", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "EJvxovsT", "policyId": "TSzXwFji", "policyVersionId": "dUI9w58o"}, {"isAccepted": true, "localizedPolicyVersionId": "Ms9To7Hq", "policyId": "tkkV6hhA", "policyVersionId": "Y4DmhD22"}, {"isAccepted": true, "localizedPolicyVersionId": "kbfQtHoy", "policyId": "JCz1eZar", "policyVersionId": "99yzOFQl"}], "authType": "jTDup21E", "code": "ZHKwUymn", "country": "tVHLpnA4", "dateOfBirth": "cPgwBEiX", "displayName": "ffyBd4A0", "emailAddress": "D2j77ItZ", "password": "y3DmfQsj", "reachMinimumAge": false, "uniqueDisplayName": "YIudc6Vn"}' \
    > test.out 2>&1
eval_tap $? 266 'CreateUserFromInvitationV3' test.out

#- 267 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "cgYyGZqa", "country": "NZHTlfm9", "dateOfBirth": "xG97iQDl", "displayName": "JI3sQlul", "languageTag": "OKSfda46", "uniqueDisplayName": "fFfNhskZ", "userName": "2RK7Omiw"}' \
    > test.out 2>&1
eval_tap $? 267 'UpdateUserV3' test.out

#- 268 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "AtL9sjrH", "country": "BcqzpE7P", "dateOfBirth": "vfW1pv5g", "displayName": "b2yeZ2Gs", "languageTag": "wMXSKxJn", "uniqueDisplayName": "8HW3muRF", "userName": "DHCEgA3U"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicPartialUpdateUserV3' test.out

#- 269 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "yTSIMbV6", "emailAddress": "2JIpR3kg", "languageTag": "Wkec18xp"}' \
    > test.out 2>&1
eval_tap $? 269 'PublicSendVerificationCodeV3' test.out

#- 270 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dSRIAjek", "contactType": "EhZI7Gpo", "languageTag": "WLpbhWMB", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 270 'PublicUserVerificationV3' test.out

#- 271 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "naGAmk9T", "country": "3i0tCJfc", "dateOfBirth": "kSieqvxx", "displayName": "ipMXd0W2", "emailAddress": "XqtQlhkZ", "password": "ngfW0Klw", "uniqueDisplayName": "62aVr4Fe", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 271 'PublicUpgradeHeadlessAccountV3' test.out

#- 272 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "BOriW1Rg", "password": "yTzwfqSb"}' \
    > test.out 2>&1
eval_tap $? 272 'PublicVerifyHeadlessAccountV3' test.out

#- 273 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "XKt4eXXh", "newPassword": "z0YArcXC", "oldPassword": "BmZQ4XN1"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicUpdatePasswordV3' test.out

#- 274 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'kZvCsU4H' \
    > test.out 2>&1
eval_tap $? 274 'PublicCreateJusticeUser' test.out

#- 275 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fCuynVoC' \
    --redirectUri 'nXrp74D3' \
    --ticket 'yXBKWfSD' \
    > test.out 2>&1
eval_tap $? 275 'PublicPlatformLinkV3' test.out

#- 276 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5TKI35sH' \
    --body '{"platformNamespace": "AoEZcCsU"}' \
    > test.out 2>&1
eval_tap $? 276 'PublicPlatformUnlinkV3' test.out

#- 277 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'I6HtLSYU' \
    > test.out 2>&1
eval_tap $? 277 'PublicPlatformUnlinkAllV3' test.out

#- 278 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vWA5403P' \
    --ticket '0MuXeF8K' \
    > test.out 2>&1
eval_tap $? 278 'PublicForcePlatformLinkV3' test.out

#- 279 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'paucUgYB' \
    --clientId 'rMxvsAWA' \
    --redirectUri 'paCwT5b4' \
    > test.out 2>&1
eval_tap $? 279 'PublicWebLinkPlatform' test.out

#- 280 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'myktLtA4' \
    --code '6H6tSxEx' \
    --state '17VOXoZI' \
    > test.out 2>&1
eval_tap $? 280 'PublicWebLinkPlatformEstablish' test.out

#- 281 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JWa2oamP' \
    --code 'c4685ULX' \
    --state 'hF63fHbt' \
    > test.out 2>&1
eval_tap $? 281 'PublicProcessWebLinkPlatformV3' test.out

#- 282 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "ytTaxBLO", "userIds": ["6Xv1MVje", "Sv0JujxP", "wZf0sFOp"]}' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUsersPlatformInfosV3' test.out

#- 283 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ddz1AK6R", "emailAddress": "BisUxrb7", "newPassword": "OJtGHOx4"}' \
    > test.out 2>&1
eval_tap $? 283 'ResetPasswordV3' test.out

#- 284 PublicGetUserByUserIdV3
eval_tap 0 284 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 285 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'k1b6QOHB' \
    --activeOnly 'false' \
    --after 'mdk0tI0F' \
    --before 'sIZCYQxA' \
    --limit '59' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetUserBanHistoryV3' test.out

#- 286 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cUJ8dXyM' \
    > test.out 2>&1
eval_tap $? 286 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 287 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YEk5lwP0' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetUserInformationV3' test.out

#- 288 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wB5aknjb' \
    --after '0.02974478249634871' \
    --before '0.0729839460343169' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUserLoginHistoriesV3' test.out

#- 289 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QjOYJRbp' \
    --after 'qmo7nonM' \
    --before 'BCJhqk6Y' \
    --limit '94' \
    --platformId 'NhWj5SED' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUserPlatformAccountsV3' test.out

#- 290 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'H2YthVhe' \
    > test.out 2>&1
eval_tap $? 290 'PublicListJusticePlatformAccountsV3' test.out

#- 291 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'y5QwB1q2' \
    --body '{"platformId": "W0zLOChZ", "platformUserId": "YtKFgy6m"}' \
    > test.out 2>&1
eval_tap $? 291 'PublicLinkPlatformAccount' test.out

#- 292 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'M7XwyCFn' \
    --body '{"chosenNamespaces": ["UU34pFb3", "KFV21CIU", "vtPYchFz"], "requestId": "iaNjZ12b"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicForceLinkPlatformWithProgression' test.out

#- 293 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7LDitDXS' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetPublisherUserV3' test.out

#- 294 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lwo91f41' \
    --password '566hnTlR' \
    > test.out 2>&1
eval_tap $? 294 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 295 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'Rja8eLzM' \
    --before 't5kdRoc6' \
    --isWildcard 'false' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetRolesV3' test.out

#- 296 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '1LX6OIKT' \
    > test.out 2>&1
eval_tap $? 296 'PublicGetRoleV3' test.out

#- 297 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetMyUserV3' test.out

#- 298 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'EJXp0tmm' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 299 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["ImxaJ19g", "kqZDXWU5", "gBZPei6o"], "oneTimeLinkCode": "9Q3DODzR"}' \
    > test.out 2>&1
eval_tap $? 299 'LinkHeadlessAccountToMyAccountV3' test.out

#- 300 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "2jrCHapL"}' \
    > test.out 2>&1
eval_tap $? 300 'PublicSendVerificationLinkV3' test.out

#- 301 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '5Maepb69' \
    > test.out 2>&1
eval_tap $? 301 'PublicVerifyUserByLinkV3' test.out

#- 302 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'sgYKHtu8' \
    --code 'iF8lbe8c' \
    --error 'eFYXIbbW' \
    --state 'YKizarbi' \
    > test.out 2>&1
eval_tap $? 302 'PlatformAuthenticateSAMLV3Handler' test.out

#- 303 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '3XxJThls' \
    --payload 'B06Kai9Q' \
    > test.out 2>&1
eval_tap $? 303 'LoginSSOClient' test.out

#- 304 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'pAln95VE' \
    > test.out 2>&1
eval_tap $? 304 'LogoutSSOClient' test.out

#- 305 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'AiwSb8RU' \
    --code 'mv2HdCIz' \
    > test.out 2>&1
eval_tap $? 305 'RequestTargetTokenResponseV3' test.out

#- 306 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '83' \
    --namespace 'jxCsB2BJ' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 306 'AdminListInvitationHistoriesV4' test.out

#- 307 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Vzvtm7fh' \
    > test.out 2>&1
eval_tap $? 307 'AdminGetDevicesByUserV4' test.out

#- 308 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'ZIFMmLQb' \
    --endDate 'HvaL4wOy' \
    --limit '22' \
    --offset '71' \
    --startDate '2EYgLuIv' \
    > test.out 2>&1
eval_tap $? 308 'AdminGetBannedDevicesV4' test.out

#- 309 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'shz4AGUK' \
    > test.out 2>&1
eval_tap $? 309 'AdminGetUserDeviceBansV4' test.out

#- 310 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "xnnncBgw", "deviceId": "AxlyXdXK", "deviceType": "ssXLEKBA", "enabled": false, "endDate": "R7W3xZNd", "ext": {"aWtgm8LB": {}, "KFp8hEAc": {}, "h0UgQiq2": {}}, "reason": "VWRmYgBI"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminBanDeviceV4' test.out

#- 311 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '8ocnKJgb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'AdminGetDeviceBanV4' test.out

#- 312 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'p8MEdwkT' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateDeviceBanV4' test.out

#- 313 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'VmAU8sxW' \
    --startDate 'yUwA84pa' \
    --deviceType 'CXBnljcx' \
    > test.out 2>&1
eval_tap $? 313 'AdminGenerateReportV4' test.out

#- 314 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'AdminGetDeviceTypesV4' test.out

#- 315 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'VLOzNYxS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'AdminGetDeviceBansV4' test.out

#- 316 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'zcsqIDaB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 316 'AdminDecryptDeviceV4' test.out

#- 317 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'DLNZLAK3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 317 'AdminUnbanDeviceV4' test.out

#- 318 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'Xq4K4vTs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 318 'AdminGetUsersByDeviceV4' test.out

#- 319 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 319 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 320 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 320 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 321 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 50}' \
    > test.out 2>&1
eval_tap $? 321 'AdminCreateTestUsersV4' test.out

#- 322 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "FqjdaMmS", "policyId": "HVbYwU0A", "policyVersionId": "ilgnlwwT"}, {"isAccepted": false, "localizedPolicyVersionId": "y6sWNDFe", "policyId": "AlrnrlrR", "policyVersionId": "GzfZErV8"}, {"isAccepted": true, "localizedPolicyVersionId": "U8IhYuVE", "policyId": "K4gTLRTk", "policyVersionId": "9SxTU9R3"}], "authType": "EMAILPASSWD", "code": "wVZvJ4YL", "country": "fB4ADTlX", "dateOfBirth": "gwSewZEc", "displayName": "6IeAD9Rr", "emailAddress": "9liiWFHH", "password": "6SMGfZ6y", "passwordMD5Sum": "V5idoJh5", "reachMinimumAge": true, "uniqueDisplayName": "peBSRK1y", "username": "OyTC01Vz"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminCreateUserV4' test.out

#- 323 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["kL7gf51q", "A9hOcl91", "PYRoalMA"]}' \
    > test.out 2>&1
eval_tap $? 323 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 324 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["HKgL0Anr", "qJ1HwjfX", "i2qn3CuZ"]}' \
    > test.out 2>&1
eval_tap $? 324 'AdminBulkCheckValidUserIDV4' test.out

#- 325 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZdkbmV9j' \
    --body '{"avatarUrl": "rBmtxMkS", "country": "QCjq0h8K", "dateOfBirth": "YC20m0IV", "displayName": "oWuemLRa", "languageTag": "ooUKNdk5", "skipLoginQueue": true, "uniqueDisplayName": "zKVR7v4u", "userName": "NUmjkaZ0"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminUpdateUserV4' test.out

#- 326 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '600z7ph2' \
    --body '{"code": "Fq4rXlQE", "emailAddress": "i6uCucO9"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateUserEmailAddressV4' test.out

#- 327 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'VpuYcsBj' \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableUserMFAV4' test.out

#- 328 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ToiRje9o' \
    > test.out 2>&1
eval_tap $? 328 'AdminListUserRolesV4' test.out

#- 329 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'W2dsPgqh' \
    --body '{"assignedNamespaces": ["yDt6JTzJ", "5Ehh9A0X", "AzKbpUhE"], "roleId": "bkPEvtoB"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminUpdateUserRoleV4' test.out

#- 330 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'uG8O8WEB' \
    --body '{"assignedNamespaces": ["LwaVtOaU", "R50BPEYV", "c6R2WpBN"], "roleId": "wOQIlXUe"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminAddUserRoleV4' test.out

#- 331 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '1LQ87jdo' \
    --body '{"assignedNamespaces": ["aNJCUoWR", "vtYijN2F", "PAbDP7Eg"], "roleId": "9Et8FnHW"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminRemoveUserRoleV4' test.out

#- 332 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '54' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 332 'AdminGetRolesV4' test.out

#- 333 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "JVgyt3wS"}' \
    > test.out 2>&1
eval_tap $? 333 'AdminCreateRoleV4' test.out

#- 334 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'MP4aIFkI' \
    > test.out 2>&1
eval_tap $? 334 'AdminGetRoleV4' test.out

#- 335 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'CP19Spzh' \
    > test.out 2>&1
eval_tap $? 335 'AdminDeleteRoleV4' test.out

#- 336 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'cHqqad77' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "g1ckqjdH"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateRoleV4' test.out

#- 337 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'ZmiF2TZx' \
    --body '{"permissions": [{"action": 41, "resource": "HEAoybRm", "schedAction": 33, "schedCron": "G4m6qMKI", "schedRange": ["17wzxh6d", "1jgqJU9u", "DEza3SAU"]}, {"action": 89, "resource": "YcdXFa1X", "schedAction": 99, "schedCron": "0EoVXb8i", "schedRange": ["7gHR2yfo", "0c0ArxmL", "uH8Lyrfa"]}, {"action": 40, "resource": "og4ukXkM", "schedAction": 16, "schedCron": "uQ7T4c4b", "schedRange": ["lKvfPSPK", "3ZbqL1jw", "q2laBDdG"]}]}' \
    > test.out 2>&1
eval_tap $? 337 'AdminUpdateRolePermissionsV4' test.out

#- 338 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'eK7haeVC' \
    --body '{"permissions": [{"action": 45, "resource": "thahrmar", "schedAction": 20, "schedCron": "Y7E7UZ3W", "schedRange": ["lzKufGBp", "165zGlfE", "HiMoG6dt"]}, {"action": 76, "resource": "8ACpdzyF", "schedAction": 71, "schedCron": "IB8QHbyJ", "schedRange": ["5qO9sxFu", "Ngt463UG", "5Slh1mvg"]}, {"action": 75, "resource": "7RkHmAdt", "schedAction": 2, "schedCron": "32xvUYXm", "schedRange": ["jccXVg6U", "r86Q5aaE", "MKX9VL4S"]}]}' \
    > test.out 2>&1
eval_tap $? 338 'AdminAddRolePermissionsV4' test.out

#- 339 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '7hE3Q9kK' \
    --body '["CI9HKxup", "8eTKilcL", "eGw2cmfU"]' \
    > test.out 2>&1
eval_tap $? 339 'AdminDeleteRolePermissionsV4' test.out

#- 340 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'yH12jI71' \
    --after 'uXhj7Iki' \
    --before 'qABlLfDL' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 340 'AdminListAssignedUsersV4' test.out

#- 341 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId '0tEjnkic' \
    --body '{"assignedNamespaces": ["6YIRB4o9", "8cecIctP", "bCyeAqxO"], "namespace": "AJfS81xn", "userId": "eOCWNNa1"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminAssignUserToRoleV4' test.out

#- 342 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'hAhPnVPr' \
    --body '{"namespace": "S3kjxDVv", "userId": "oMFvPJFw"}' \
    > test.out 2>&1
eval_tap $? 342 'AdminRevokeUserFromRoleV4' test.out

#- 343 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["tfvy73bp", "qREjznhf", "IZuWwgO5"], "emailAddresses": ["EC38f5NG", "v25vvelE", "FVwU2x0k"], "isAdmin": true, "isNewStudio": false, "namespace": "zkuHaaU0", "roleId": "J9qw6kRr"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminInviteUserNewV4' test.out

#- 344 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "SPIhHPM4", "country": "RVpCIS8y", "dateOfBirth": "CkXy7f7Y", "displayName": "6NguudK5", "languageTag": "fpJfRoqT", "skipLoginQueue": false, "uniqueDisplayName": "T8c0xQBV", "userName": "J2rxaDKD"}' \
    > test.out 2>&1
eval_tap $? 344 'AdminUpdateMyUserV4' test.out

#- 345 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 345 'AdminDisableMyAuthenticatorV4' test.out

#- 346 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'og3iqOJl' \
    > test.out 2>&1
eval_tap $? 346 'AdminEnableMyAuthenticatorV4' test.out

#- 347 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 347 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 348 AdminGetMyBackupCodesV4
eval_tap 0 348 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 349 AdminGenerateMyBackupCodesV4
eval_tap 0 349 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 350 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 350 'AdminDisableMyBackupCodesV4' test.out

#- 351 AdminDownloadMyBackupCodesV4
eval_tap 0 351 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 352 AdminEnableMyBackupCodesV4
eval_tap 0 352 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 353 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 353 'AdminGetBackupCodesV4' test.out

#- 354 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 354 'AdminGenerateBackupCodesV4' test.out

#- 355 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 355 'AdminEnableBackupCodesV4' test.out

#- 356 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 356 'AdminSendMyMFAEmailCodeV4' test.out

#- 357 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 357 'AdminDisableMyEmailV4' test.out

#- 358 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'zMDJr8ZA' \
    > test.out 2>&1
eval_tap $? 358 'AdminEnableMyEmailV4' test.out

#- 359 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 359 'AdminGetMyEnabledFactorsV4' test.out

#- 360 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'WDiDqs6M' \
    > test.out 2>&1
eval_tap $? 360 'AdminMakeFactorMyDefaultV4' test.out

#- 361 AdminInviteUserV4
eval_tap 0 361 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 362 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId '4go6jm0E' \
    --linkingToken 'xe3qywID' \
    --password 'FkiDPJs2' \
    --username 'uCWYqg0F' \
    > test.out 2>&1
eval_tap $? 362 'AuthenticationWithPlatformLinkV4' test.out

#- 363 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'MvJjCfFz' \
    --extendExp 'false' \
    --linkingToken 'dlRQkbO0' \
    > test.out 2>&1
eval_tap $? 363 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 364 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'mIAc8TGA' \
    --factor 'bh7cqfs3' \
    --mfaToken 'IPMjuDqH' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 364 'Verify2faCodeV4' test.out

#- 365 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'f7Hp3U9A' \
    --codeChallenge '1jz7KWRt' \
    --codeChallengeMethod 'plain' \
    --additionalData '9eiS67I6' \
    --clientId '9Ur2HTlG' \
    --createHeadless 'false' \
    --deviceId '3pEpIQkQ' \
    --macAddress 'bCL6JSNv' \
    --platformToken 'aln0FRXz' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 365 'PlatformTokenGrantV4' test.out

#- 366 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'd3XchV68' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'jljDnxVD' \
    --simultaneousTicket 'L9YAk0GL' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'Fyg5IMe8' \
    > test.out 2>&1
eval_tap $? 366 'SimultaneousLoginV4' test.out

#- 367 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'CjsNabUg' \
    --codeChallengeMethod 'S256' \
    --additionalData '8cpXZtQP' \
    --clientId 'yMRFiEzI' \
    --code '3noTsmYY' \
    --codeVerifier 'k7n5aoiw' \
    --extendNamespace '6ay5sWbo' \
    --extendExp 'true' \
    --loginQueueTicket 'HmJboae0' \
    --password 'n70rdX8T' \
    --redirectUri 'ptQsKjcr' \
    --refreshToken 'cnOfVpwI' \
    --username 'H6CIR2a1' \
    --grantType 'urn:ietf:params:oauth:grant-type:login_queue_ticket' \
    > test.out 2>&1
eval_tap $? 367 'TokenGrantV4' test.out

#- 368 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'MroaCEhS' \
    --code 'QBLGucD4' \
    > test.out 2>&1
eval_tap $? 368 'RequestTargetTokenResponseV4' test.out

#- 369 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "sRQJt0Ha", "policyId": "sB7FIGHB", "policyVersionId": "eBWZ49om"}, {"isAccepted": false, "localizedPolicyVersionId": "KVdyL2eN", "policyId": "fHOGInAq", "policyVersionId": "C3uRrsDS"}, {"isAccepted": false, "localizedPolicyVersionId": "A9uWR0Y8", "policyId": "wE76HcGD", "policyVersionId": "ss4QkXq6"}], "authType": "EMAILPASSWD", "country": "dqNOn9iI", "dateOfBirth": "QRdrux7F", "displayName": "C002ZWU7", "emailAddress": "e7W0ISw6", "password": "E7wiWexK", "passwordMD5Sum": "oPv3RFkf", "uniqueDisplayName": "CvnjqiXD", "username": "Ufmt6PTR", "verified": true}' \
    > test.out 2>&1
eval_tap $? 369 'PublicCreateTestUserV4' test.out

#- 370 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "FtHuG5oF", "policyId": "Vh6ifU45", "policyVersionId": "A5P0NJz5"}, {"isAccepted": false, "localizedPolicyVersionId": "AQWIVXiR", "policyId": "DpAp2Xep", "policyVersionId": "wJ8tOD4M"}, {"isAccepted": false, "localizedPolicyVersionId": "lo2BAkJK", "policyId": "I07OX4AF", "policyVersionId": "tEMW76kC"}], "authType": "EMAILPASSWD", "code": "NsbVjLM1", "country": "XjGGCO8x", "dateOfBirth": "JJTzs7PC", "displayName": "NlVvj68L", "emailAddress": "faclSK23", "password": "uYlibpQw", "passwordMD5Sum": "iaSrKBJk", "reachMinimumAge": false, "uniqueDisplayName": "KP8niXgX", "username": "Qbq1chpe"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicCreateUserV4' test.out

#- 371 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'sDMsplqy' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "4OsTZsql", "policyId": "OlhIF4AV", "policyVersionId": "qZxNbhoz"}, {"isAccepted": false, "localizedPolicyVersionId": "iVRZWwgS", "policyId": "80FY8SHN", "policyVersionId": "ZDphoWJZ"}, {"isAccepted": false, "localizedPolicyVersionId": "8c05F0oV", "policyId": "9ZHrfgsS", "policyVersionId": "AscuXA1K"}], "authType": "EMAILPASSWD", "code": "Cv4e7Y8k", "country": "7OODZBS1", "dateOfBirth": "cRp8XtMF", "displayName": "feht0XaR", "emailAddress": "PMkh4rzS", "password": "f7AmdGil", "passwordMD5Sum": "WYLBMdX5", "reachMinimumAge": true, "uniqueDisplayName": "VnlsuWnr", "username": "JJQMYdwa"}' \
    > test.out 2>&1
eval_tap $? 371 'CreateUserFromInvitationV4' test.out

#- 372 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "t7ZSoekl", "country": "DHsR9FT9", "dateOfBirth": "sXqtDmJ3", "displayName": "iggy7PrT", "languageTag": "W8dSZCTr", "uniqueDisplayName": "mz5hVaFS", "userName": "nr7bdk4R"}' \
    > test.out 2>&1
eval_tap $? 372 'PublicUpdateUserV4' test.out

#- 373 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6S1Wc6ZF", "emailAddress": "mXNDOMCn"}' \
    > test.out 2>&1
eval_tap $? 373 'PublicUpdateUserEmailAddressV4' test.out

#- 374 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Oayjs9tz", "country": "vSTFSWNv", "dateOfBirth": "8RNsFtcr", "displayName": "c0xiHFWN", "emailAddress": "QvD4VJZA", "password": "vbMaa0MB", "reachMinimumAge": true, "uniqueDisplayName": "utMNx1lO", "username": "7H6KiVi9", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 374 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 375 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "9Y34Qo5a", "password": "7M2tiE6s", "username": "pXIbJ8Mq"}' \
    > test.out 2>&1
eval_tap $? 375 'PublicUpgradeHeadlessAccountV4' test.out

#- 376 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 376 'PublicDisableMyAuthenticatorV4' test.out

#- 377 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'PNsQYeqZ' \
    > test.out 2>&1
eval_tap $? 377 'PublicEnableMyAuthenticatorV4' test.out

#- 378 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 378 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 379 PublicGetMyBackupCodesV4
eval_tap 0 379 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 380 PublicGenerateMyBackupCodesV4
eval_tap 0 380 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 381 'PublicDisableMyBackupCodesV4' test.out

#- 382 PublicDownloadMyBackupCodesV4
eval_tap 0 382 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 383 PublicEnableMyBackupCodesV4
eval_tap 0 383 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 384 'PublicGetBackupCodesV4' test.out

#- 385 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 385 'PublicGenerateBackupCodesV4' test.out

#- 386 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 386 'PublicEnableBackupCodesV4' test.out

#- 387 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 387 'PublicRemoveTrustedDeviceV4' test.out

#- 388 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 388 'PublicSendMyMFAEmailCodeV4' test.out

#- 389 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicDisableMyEmailV4' test.out

#- 390 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '96gTBPNX' \
    > test.out 2>&1
eval_tap $? 390 'PublicEnableMyEmailV4' test.out

#- 391 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 391 'PublicGetMyEnabledFactorsV4' test.out

#- 392 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'DUfVk6LS' \
    > test.out 2>&1
eval_tap $? 392 'PublicMakeFactorMyDefaultV4' test.out

#- 393 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'X2ATM9IU' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 394 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "Wox9JKfa", "emailAddress": "jkJ1aLey", "namespace": "bVmTzdI6", "namespaceDisplayName": "LCeeXR1o"}' \
    > test.out 2>&1
eval_tap $? 394 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE