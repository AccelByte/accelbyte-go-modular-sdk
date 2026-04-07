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
echo "1..435"

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
    --excludePermissions 'false' \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'true' \
    --body '{"modules": [{"docLink": "GLFX2fSx", "groups": [{"group": "R74vbScg", "groupId": "cOrponFJ", "permissions": [{"allowedActions": [85, 10, 90], "resource": "QKXb00Ea"}, {"allowedActions": [89, 29, 41], "resource": "Eyw7C00y"}, {"allowedActions": [13, 35, 41], "resource": "AyRIdGh7"}]}, {"group": "JXsWRRj7", "groupId": "VtDfJszM", "permissions": [{"allowedActions": [53, 98, 87], "resource": "3Uf8WCbP"}, {"allowedActions": [50, 74, 25], "resource": "mNGA5kEM"}, {"allowedActions": [18, 54, 79], "resource": "yNpOrQLu"}]}, {"group": "28Ff21KX", "groupId": "to3YxJRH", "permissions": [{"allowedActions": [27, 0, 36], "resource": "e9MHr3jc"}, {"allowedActions": [25, 19, 90], "resource": "PNqx12KB"}, {"allowedActions": [97, 93, 80], "resource": "DC7EX7Ud"}]}], "module": "ZJBaN102", "moduleId": "uNRUUHlS"}, {"docLink": "sXjTbf2f", "groups": [{"group": "wb3gRcjz", "groupId": "B0AU0qz5", "permissions": [{"allowedActions": [21, 43, 5], "resource": "BEQdroQZ"}, {"allowedActions": [29, 78, 38], "resource": "d1LNpSPh"}, {"allowedActions": [80, 0, 88], "resource": "t3b5OhSB"}]}, {"group": "v9Fxi6Ts", "groupId": "jqZFinDe", "permissions": [{"allowedActions": [58, 90, 21], "resource": "q8ACM0Dc"}, {"allowedActions": [37, 93, 96], "resource": "q1JjXhPS"}, {"allowedActions": [50, 48, 5], "resource": "RMXgYFEh"}]}, {"group": "qyCCn7hZ", "groupId": "FSEvZkhq", "permissions": [{"allowedActions": [57, 17, 94], "resource": "NEkH0dqP"}, {"allowedActions": [90, 33, 99], "resource": "A9idB4UU"}, {"allowedActions": [0, 95, 12], "resource": "Zu5ee4fK"}]}], "module": "vjKhfCik", "moduleId": "Vpihmg26"}, {"docLink": "UjcizhEC", "groups": [{"group": "KGVoyKxQ", "groupId": "WnAAt2Hr", "permissions": [{"allowedActions": [99, 31, 14], "resource": "1TKoKsOX"}, {"allowedActions": [38, 90, 63], "resource": "vBXPXxEw"}, {"allowedActions": [23, 76, 20], "resource": "HLx7pzkH"}]}, {"group": "JZ9pze69", "groupId": "2JaN227G", "permissions": [{"allowedActions": [91, 28, 9], "resource": "IjbT14to"}, {"allowedActions": [50, 19, 56], "resource": "1rj8q7fI"}, {"allowedActions": [27, 14, 31], "resource": "bguP0Zfz"}]}, {"group": "yYlKXpct", "groupId": "pw8Mv7T8", "permissions": [{"allowedActions": [40, 42, 60], "resource": "gatKeCYP"}, {"allowedActions": [60, 57, 91], "resource": "jGcx2ejI"}, {"allowedActions": [74, 44, 88], "resource": "l5OqndxR"}]}], "module": "JN3B0Yv3", "moduleId": "9ZzTeq1N"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "LiP7KHCr", "moduleId": "rEcl5eVq"}' \
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
    --body '[{"field": "G1ZW5dxM", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["fEjSQWJs", "Esh3gCXY", "DPHOonhn"], "preferRegex": true, "regex": "k84njoo7"}, "blockedWord": ["4qyWuvFz", "U1sJVJFs", "2sylSloe"], "description": [{"language": "i5TJ5QRd", "message": ["WkDbDKPr", "2sOoJtrg", "EC4rekkn"]}, {"language": "LOzZ8OW9", "message": ["P8hqebZA", "O75SnHCf", "O4PnLgDw"]}, {"language": "40bphfzT", "message": ["Kl5wduFO", "pDqSIJZh", "5mSJHAey"]}], "isCustomRegex": false, "letterCase": "0gd5aBjk", "maxLength": 85, "maxRepeatingAlphaNum": 42, "maxRepeatingSpecialCharacter": 0, "minCharType": 33, "minLength": 4, "profanityFilter": "nIhP5tOq", "regex": "ZqeaY2J1", "specialCharacterLocation": "oYbAaEwc", "specialCharacters": ["c1hHlov3", "ckmWgwYx", "d4Pnq5wj"]}}, {"field": "NRGOc090", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["cLuEO0zK", "LfwVTPKR", "1e92TRt7"], "preferRegex": false, "regex": "ffvkIvCB"}, "blockedWord": ["T2978eTv", "6KySjT50", "hw3GZ03W"], "description": [{"language": "qCq6V9Xf", "message": ["gzR2mQQP", "Inbskkm0", "1nTkZ57P"]}, {"language": "vq6zpA0J", "message": ["bwCiGTkN", "o8jOyciY", "N0rZ8zxw"]}, {"language": "O9Ble3Pt", "message": ["vSF7LH55", "rtvzZkqf", "o0eEU9Uv"]}], "isCustomRegex": true, "letterCase": "j8GIzEtx", "maxLength": 89, "maxRepeatingAlphaNum": 18, "maxRepeatingSpecialCharacter": 73, "minCharType": 35, "minLength": 79, "profanityFilter": "ZpL0TfFq", "regex": "JFqgsWLn", "specialCharacterLocation": "3unCmImi", "specialCharacters": ["rxEAheUc", "LrudchLe", "YnUmEKvd"]}}, {"field": "ySycqV8A", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["odoFC3yv", "KxxHDQVT", "qoONdxMs"], "preferRegex": false, "regex": "yRVS284M"}, "blockedWord": ["idFxvJoB", "82Bg07eB", "wKmG8YCT"], "description": [{"language": "OIZh64Tk", "message": ["7wkfqpSC", "DMqK5d5d", "4SWPQbjT"]}, {"language": "eOBZpMCx", "message": ["B0m5HbRN", "vdwQWvtM", "AyNu5nwW"]}, {"language": "3gyxN2fm", "message": ["IbGjSVE3", "RlfOzdN0", "IkkxuMIg"]}], "isCustomRegex": true, "letterCase": "Z6KBRKhS", "maxLength": 43, "maxRepeatingAlphaNum": 86, "maxRepeatingSpecialCharacter": 64, "minCharType": 31, "minLength": 66, "profanityFilter": "txDgxxVS", "regex": "rhxRuqCn", "specialCharacterLocation": "EmkEzvSj", "specialCharacters": ["6G2rFyF1", "zGZwx6zh", "tNYe7iEv"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'sRYVI9sj' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'znhBfqHM' \
    --before 'vPBCD8Kh' \
    --endDate '62iR3URu' \
    --limit '58' \
    --query 'olBDZtnp' \
    --roleId 'f6AC9mnM' \
    --startDate 'pKFSZx8G' \
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
    --body '{"ageRestriction": 97, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'OhlPA4fF' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 47}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'Lek6xN7z' \
    --limit '18' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "njnbPtZc", "comment": "pITc5BEc", "endDate": "AIkFjQJX", "reason": "s4SdPMYK", "skipNotif": false, "userIds": ["xDYAgIEF", "ptmfCcIV", "WRQhFimy"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "WlmgDyZi", "userId": "De4w2Ah6"}, {"banId": "hTbiCPNa", "userId": "vR3Gnq01"}, {"banId": "DW2SyXXT", "userId": "s6yg39Nk"}]}' \
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
    --clientId 'qpvQ2nnK' \
    --clientName '2FpxcNNP' \
    --clientType 'svW8TvgC' \
    --limit '89' \
    --offset '33' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["LQRrzQ6c", "rOL8Vosw", "PTxXI2yT"], "clientUpdateRequest": {"audiences": ["RuvidBu6", "RXTkSrZe", "PJVn3hhF"], "baseUri": "qgYLeJBB", "clientName": "RAgfvwfB", "clientPermissions": [{"action": 44, "resource": "m1SrRSJE", "schedAction": 3, "schedCron": "8bSwI31o", "schedRange": ["1bZMQQVR", "Xv1WhhaC", "MCWbCMVY"]}, {"action": 43, "resource": "vyuiJvhM", "schedAction": 29, "schedCron": "lXgRYJCK", "schedRange": ["ZfJxBSA7", "NoKV8xtO", "T8TnOr1X"]}, {"action": 80, "resource": "I6PQiPSR", "schedAction": 59, "schedCron": "B356ayL1", "schedRange": ["gi6ZPdcR", "TUiZ8QSA", "VWgz8mrk"]}], "clientPlatform": "0PUPKV0w", "deletable": false, "description": "ThHEd5qz", "modulePermissions": [{"moduleId": "yZwV36w0", "selectedGroups": [{"groupId": "gH3ScFyO", "selectedActions": [47, 74, 16]}, {"groupId": "UBAewWfq", "selectedActions": [85, 55, 0]}, {"groupId": "nsZL5aNE", "selectedActions": [70, 35, 39]}]}, {"moduleId": "qdMkBxoH", "selectedGroups": [{"groupId": "854HSmCS", "selectedActions": [21, 88, 27]}, {"groupId": "j3YmQlHt", "selectedActions": [59, 89, 86]}, {"groupId": "aimwuqLe", "selectedActions": [24, 8, 37]}]}, {"moduleId": "8TtwshuY", "selectedGroups": [{"groupId": "5OCijKRQ", "selectedActions": [83, 0, 94]}, {"groupId": "tF66fHA9", "selectedActions": [46, 92, 60]}, {"groupId": "ayBRj2j4", "selectedActions": [19, 1, 55]}]}], "namespace": "0tX9jdi3", "oauthAccessTokenExpiration": 60, "oauthAccessTokenExpirationTimeUnit": "rrDzbSzk", "oauthRefreshTokenExpiration": 98, "oauthRefreshTokenExpirationTimeUnit": "GFrg5pIA", "redirectUri": "QN3yBbhz", "scopes": ["aNMlZxVO", "Q3vXBdte", "8F6Ynxqm"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["hYUG0CD3", "iCYz0PhV", "cN93Zr2n"], "baseUri": "xYwQXiZp", "clientId": "fZVofElF", "clientName": "gBqOV2ud", "clientPermissions": [{"action": 35, "resource": "OFiPyLqy", "schedAction": 84, "schedCron": "1CTfoSIc", "schedRange": ["7E3AvYzd", "jLfHj3tO", "Lhm4sPCZ"]}, {"action": 54, "resource": "RjDAS7tW", "schedAction": 36, "schedCron": "7KqQ4S0Z", "schedRange": ["hHuoinb3", "adiuuI2B", "oNEfXDNX"]}, {"action": 5, "resource": "DBx4jp8y", "schedAction": 32, "schedCron": "pIORZmbh", "schedRange": ["5sECpmcn", "m3hbQECP", "DjE5mzIG"]}], "clientPlatform": "TZtuptUg", "deletable": true, "description": "19SNU8wO", "modulePermissions": [{"moduleId": "8YrgekIh", "selectedGroups": [{"groupId": "smVsmI09", "selectedActions": [63, 30, 72]}, {"groupId": "eQXZdPV1", "selectedActions": [40, 66, 43]}, {"groupId": "g4RzAGpv", "selectedActions": [50, 83, 7]}]}, {"moduleId": "9l7JuIVX", "selectedGroups": [{"groupId": "cgWc0924", "selectedActions": [30, 5, 22]}, {"groupId": "vRIO7ypZ", "selectedActions": [39, 70, 90]}, {"groupId": "hfJvFV3F", "selectedActions": [23, 37, 58]}]}, {"moduleId": "QGi4W5cM", "selectedGroups": [{"groupId": "PzQ0Owqx", "selectedActions": [54, 4, 82]}, {"groupId": "s7uUZPbM", "selectedActions": [39, 33, 84]}, {"groupId": "ogEeu0fE", "selectedActions": [95, 37, 68]}]}], "namespace": "90mGvoeh", "oauthAccessTokenExpiration": 2, "oauthAccessTokenExpirationTimeUnit": "bZbEcsb3", "oauthClientType": "gqC2VvOR", "oauthRefreshTokenExpiration": 28, "oauthRefreshTokenExpirationTimeUnit": "OUxq96gJ", "parentNamespace": "BImka64t", "redirectUri": "oaGqxMxq", "scopes": ["LPPhfY0B", "EBDa9rDP", "FR1qlmKS"], "secret": "8uziKRuo", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'O8hMOO8B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'eMg7N4RU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'hWxmC10t' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["len7DLMg", "JzNWOmId", "2jEFqUiv"], "baseUri": "Kp4MYJzi", "clientName": "HLl7Do9J", "clientPermissions": [{"action": 73, "resource": "hqfWNftP", "schedAction": 96, "schedCron": "sJ1Fj1ya", "schedRange": ["TFGG88qN", "qC2zVtPF", "0Wd4n3FV"]}, {"action": 27, "resource": "6Nk5ORc5", "schedAction": 79, "schedCron": "dRni9w4r", "schedRange": ["mfDWvr1m", "tfD5C1Zf", "EJK2mbvT"]}, {"action": 73, "resource": "6IgEQf6B", "schedAction": 97, "schedCron": "YnTCPq4I", "schedRange": ["GDbeJKxz", "Y0imVE6T", "Hzjl4Kac"]}], "clientPlatform": "bGpOoXdt", "deletable": false, "description": "SUCBg5bD", "modulePermissions": [{"moduleId": "CRm04aHk", "selectedGroups": [{"groupId": "G34w1fyF", "selectedActions": [67, 30, 5]}, {"groupId": "k0lxtGQc", "selectedActions": [81, 66, 93]}, {"groupId": "3UOLLFKL", "selectedActions": [75, 27, 70]}]}, {"moduleId": "TeppTMvO", "selectedGroups": [{"groupId": "0LUxdWeM", "selectedActions": [88, 6, 6]}, {"groupId": "gfLLnmDk", "selectedActions": [87, 53, 64]}, {"groupId": "oTHdtesk", "selectedActions": [70, 74, 15]}]}, {"moduleId": "uN4RbUOv", "selectedGroups": [{"groupId": "vP0DFYYt", "selectedActions": [19, 47, 88]}, {"groupId": "E8MGJXye", "selectedActions": [17, 51, 52]}, {"groupId": "6EQyDNj2", "selectedActions": [27, 81, 93]}]}], "namespace": "YYLN9thW", "oauthAccessTokenExpiration": 0, "oauthAccessTokenExpirationTimeUnit": "bs8NQeXf", "oauthRefreshTokenExpiration": 62, "oauthRefreshTokenExpirationTimeUnit": "HmgHSeja", "redirectUri": "idz4aUfC", "scopes": ["XBLXbgYb", "cJv4iq4Y", "laTUHt72"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'TuFZSNKo' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 5, "resource": "X7S8k8IZ"}, {"action": 92, "resource": "CXDjDpVZ"}, {"action": 81, "resource": "WiRRd0Vd"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'jm9x20TH' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 83, "resource": "ssZgUq01"}, {"action": 41, "resource": "lwCrPk0A"}, {"action": 47, "resource": "7R26odC6"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '61' \
    --clientId 'S5eQcztE' \
    --namespace $AB_NAMESPACE \
    --resource '3OIXh9jE' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'o9QI6yrm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'AdminGetConfigValueV3' test.out

#- 134 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
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
    --body '{"blacklist": ["L7YvRrez", "I06XKAIG", "LCBjU9U0"]}' \
    > test.out 2>&1
eval_tap $? 136 'AdminAddCountryBlacklistV3' test.out

#- 137 AdminGetLoginAllowlistV3
samples/cli/sample-apps Iam adminGetLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'AdminGetLoginAllowlistV3' test.out

#- 138 AdminUpdateLoginAllowlistV3
samples/cli/sample-apps Iam adminUpdateLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "roleIds": ["sTHfS9kB", "5jRc8gX6", "wxSkygOb"]}' \
    > test.out 2>&1
eval_tap $? 138 'AdminUpdateLoginAllowlistV3' test.out

#- 139 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 140 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TCWLtQtQ' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kscXTpmq' \
    --body '{"ACSURL": "jps3OKU1", "AWSCognitoRegion": "tBQ1u0kn", "AWSCognitoUserPool": "FdL8Ddd7", "AllowedClients": ["oFxjgVQt", "e1zx9Khr", "aoxHAEGs"], "AppId": "Cme9p26s", "AuthorizationEndpoint": "ggntkIgG", "ClientId": "6x3pmfBk", "EmptyStrFieldList": ["uxrns08N", "6AMyQruO", "cNTEH6mv"], "EnableServerLicenseValidation": false, "Environment": "y5zmIMhZ", "FederationMetadataURL": "98T5xWZm", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": true, "Issuer": "vbI6ybv1", "JWKSEndpoint": "bniXr3yM", "KeyID": "ob7sEemn", "LogoURL": "4huLSuRf", "NetflixCertificates": {"encryptedPrivateKey": "2MKeKS4h", "encryptedPrivateKeyName": "3imRZPPy", "publicCertificate": "rh6imLHG", "publicCertificateName": "kwZPMgLs", "rootCertificate": "THwusor1", "rootCertificateName": "RahpCfpx"}, "OrganizationId": "bivs9j3p", "PlatformName": "EWbZfY7b", "PrivateKey": "RXyfZsQY", "RedirectUri": "XTff16Tx", "RegisteredDomains": [{"affectedClientIDs": ["wMF8hdUt", "039ufOCi", "OksoEbbo"], "domain": "CZvxRwI9", "namespaces": ["BwyucHCL", "gBLiz95f", "kwaRTueA"], "roleId": "Nc8HCmR0", "ssoCfg": {"googleKey": {"qICsoixt": {}, "axx7jyWu": {}, "oUXfzsJg": {}}, "groupConfigs": [{"assignNamespaces": ["Qh7Er7L5", "madc8PM8", "jdqiEwgM"], "group": "9VZ0qpOu", "roleId": "HMU1pnYY"}, {"assignNamespaces": ["LoesU30s", "n5isQjy0", "0nnSVisP"], "group": "OmU4XsL0", "roleId": "We5T3HlP"}, {"assignNamespaces": ["wRLGbUnE", "L6TqjvN8", "myrWhkEU"], "group": "TP39Kh3j", "roleId": "0lHNU6xn"}]}}, {"affectedClientIDs": ["yN8aEhlc", "rTecBFJp", "ScpRZmhd"], "domain": "53vwOOP1", "namespaces": ["KVXv1b5u", "xSibWzSD", "C8T0wmTq"], "roleId": "FI1gxXHR", "ssoCfg": {"googleKey": {"P3oEZ1PC": {}, "WhGIpJja": {}, "MTEGonwQ": {}}, "groupConfigs": [{"assignNamespaces": ["Ytktd77o", "CcMpLGEz", "kttGfCzT"], "group": "8121OdTA", "roleId": "Ugn0mDlG"}, {"assignNamespaces": ["iTBhn1f3", "JLeDFcOM", "uIsEWsYj"], "group": "DdEDkNAS", "roleId": "Xh72TboO"}, {"assignNamespaces": ["238hwPqQ", "ZVqmmE0o", "4Uevpx95"], "group": "WpBfnDBU", "roleId": "yFk9Yo5Z"}]}}, {"affectedClientIDs": ["rYIELift", "S3HacmXT", "QVDEFvrl"], "domain": "JNK9Nwul", "namespaces": ["XgrPTAo8", "iEmiX5Jd", "ANMmqFki"], "roleId": "o0i4QCF1", "ssoCfg": {"googleKey": {"bbkm2rvw": {}, "sDhfgMVu": {}, "GTppADtd": {}}, "groupConfigs": [{"assignNamespaces": ["LEUvmWY3", "gGYFWjrN", "wrjo1fu3"], "group": "ejpuDXVg", "roleId": "u2Zle69o"}, {"assignNamespaces": ["S8b5xxMi", "mFxnooQ3", "EmAqZG3B"], "group": "n41gOEt9", "roleId": "ogO2X0oa"}, {"assignNamespaces": ["dMva6fgy", "VU695IHW", "bA2x9hoZ"], "group": "ycaiscXw", "roleId": "TXFuLVEG"}]}}], "RelyingParty": "VJOI6N1t", "SandboxId": "dwI6uSUH", "Secret": "PQKf94XV", "TeamID": "zYDzzW6G", "TokenAuthenticationType": "zsnlEexE", "TokenClaimsMapping": {"D5LpKl8c": "UFYe6fPu", "JtMhejgp": "u3GaWJR1", "W5XRE5yY": "44RzSzAq"}, "TokenEndpoint": "mGEcgrvs", "UserInfoEndpoint": "tJPBnxbi", "UserInfoHTTPMethod": "DCmYHrNS", "googleAdminConsoleKey": "zoT7jS4U", "scopes": ["NfVeywgw", "PcPRC0wB", "G8MI0SsU"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IhUu2fi0' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SihAxYuR' \
    --body '{"ACSURL": "aP8S5pl2", "AWSCognitoRegion": "ov3MUNGM", "AWSCognitoUserPool": "WowveLMv", "AllowedClients": ["NrUZNC0o", "RRM4FwnU", "i6HmTwa9"], "AppId": "5MehzRVx", "AuthorizationEndpoint": "8Dtm990W", "ClientId": "RDSAR0vb", "EmptyStrFieldList": ["kUhkA7nC", "POvegwUG", "QmYpga83"], "EnableServerLicenseValidation": false, "Environment": "Pd3gXDmw", "FederationMetadataURL": "mnPgTJjq", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "m2aVU992", "JWKSEndpoint": "15EXix1q", "KeyID": "2GQ1xpgt", "LogoURL": "xJblnR0c", "NetflixCertificates": {"encryptedPrivateKey": "EV16G6JJ", "encryptedPrivateKeyName": "MrcsreDx", "publicCertificate": "06IAZoSH", "publicCertificateName": "84Hg3LJy", "rootCertificate": "AKaGVlyr", "rootCertificateName": "XmwWkHRP"}, "OrganizationId": "qTtAVHf3", "PlatformName": "MhD0hIl4", "PrivateKey": "4IWzFB7h", "RedirectUri": "1U1ZkWzo", "RegisteredDomains": [{"affectedClientIDs": ["UsHTg8w0", "C4yyP5ph", "XNT01LBC"], "domain": "VJac16On", "namespaces": ["Edx2OTrE", "5ZiQFYQj", "rCS9TzBl"], "roleId": "MizrjgRn", "ssoCfg": {"googleKey": {"0ShJ5fi8": {}, "tQj04y5q": {}, "7MXXYIVQ": {}}, "groupConfigs": [{"assignNamespaces": ["NaRTmCuq", "COFlIjEn", "6ZX1lJo7"], "group": "iB5Knwft", "roleId": "QqlopX1R"}, {"assignNamespaces": ["p0s2l4tp", "XN3YzzFV", "Dzim8H25"], "group": "qqbjuEvz", "roleId": "R0u5MFoX"}, {"assignNamespaces": ["IL0sr55Q", "SG7Sa31K", "flu1gd05"], "group": "Sp12EU2Q", "roleId": "AqzeXJzY"}]}}, {"affectedClientIDs": ["pmWuXB6U", "AT3XDPhi", "Vxw2fxyt"], "domain": "Jhu641u8", "namespaces": ["x6NeMVYK", "eyNfScq6", "GS0h1ryl"], "roleId": "hVg20Lq9", "ssoCfg": {"googleKey": {"JlVMbDr0": {}, "92VHtYR3": {}, "PspBEjuT": {}}, "groupConfigs": [{"assignNamespaces": ["LlyqMi2E", "YEFRqf9j", "umcXBFRJ"], "group": "paahgRSq", "roleId": "QotqpsP4"}, {"assignNamespaces": ["0s4qiG5e", "w0UuC3av", "XfpdZEki"], "group": "OG6Pv4OL", "roleId": "JeBr0q0Z"}, {"assignNamespaces": ["fVAISxKx", "KlFqoqhh", "D1kmiulZ"], "group": "jG4l5Und", "roleId": "7yC7vaDT"}]}}, {"affectedClientIDs": ["42rsShoB", "Dj4FcGQe", "Xfu4Vsae"], "domain": "uCeqe7NC", "namespaces": ["UoPymxEE", "LhGScpHs", "wVyS9zT5"], "roleId": "6u9T7uUS", "ssoCfg": {"googleKey": {"Tz9M3ZFR": {}, "qnv7N0Y3": {}, "PHSh6C86": {}}, "groupConfigs": [{"assignNamespaces": ["TYUuvd5m", "sptbTWWA", "CYkfNcSl"], "group": "gcn1A6mG", "roleId": "apCQKufY"}, {"assignNamespaces": ["Gen47bE3", "fqjKHydx", "0sKLvd93"], "group": "bJNv49MT", "roleId": "DQ2l3eoH"}, {"assignNamespaces": ["rOtJHDWw", "tuTvBPTM", "FtIPkO0b"], "group": "LjSAZIzR", "roleId": "4Fnw0Djh"}]}}], "RelyingParty": "i8cRqyJv", "SandboxId": "0m5Ybg9M", "Secret": "AXUXnvNU", "TeamID": "P7pA8F3t", "TokenAuthenticationType": "RmcrU38X", "TokenClaimsMapping": {"gFt9JD37": "tOH5K1KI", "Ao1O1Ekn": "s7nruNXC", "q5w140xO": "ZxZDVmjY"}, "TokenEndpoint": "NCARwoBZ", "UserInfoEndpoint": "D3dUCr3d", "UserInfoHTTPMethod": "I1rhyIAN", "googleAdminConsoleKey": "OicidI0t", "scopes": ["pVBVeAzc", "eaKGQcgp", "0TFlIZMA"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'F5Cqhcbo' \
    --body '{"affectedClientIDs": ["VLd1zymn", "yXhJ7bAw", "XYe1Gau3"], "assignedNamespaces": ["rXQpYuJY", "XaZW5IAQ", "I2RnwoJ8"], "domain": "X2kj5Hee", "roleId": "5LIrJVR3", "ssoCfg": {"googleKey": {"BBPwAdCz": {}, "VnUQwccm": {}, "Pyu7ju4X": {}}, "groupConfigs": [{"assignNamespaces": ["zqKXkTXB", "OvBL8p7D", "Uzy4RUcD"], "group": "HcvBU8Tq", "roleId": "NDNnbXc7"}, {"assignNamespaces": ["36WSaoRm", "St3d3h25", "STe5sRa1"], "group": "MqCfdpkX", "roleId": "R3dmPjd5"}, {"assignNamespaces": ["r3Bfif5X", "fidjvyFV", "ejunkz4L"], "group": "hlkpxr1b", "roleId": "do9bpjoT"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eoAJnZ8g' \
    --body '{"domain": "FTzFEjpZ", "ssoGroups": ["lRuymT1G", "MHBF1ojo", "DpMmEVB2"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PP9YB8a0' \
    --body '{"affectedClientIDs": ["gMkC9Tp6", "tWIewvmT", "HBmTV3Zk"], "assignedNamespaces": ["7ubVX3Qw", "cooHVFLh", "4ftDBxJN"], "domain": "ag2Smvxx", "roleId": "b7C0G3cs", "ssoCfg": {"googleKey": {"0TPOU2og": {}, "ZvwInemX": {}, "qwg9DGPs": {}}, "groupConfigs": [{"assignNamespaces": ["Kiss9KMT", "hLdo0Dox", "XGxpfxs5"], "group": "7ceYPPD0", "roleId": "VkH3rRJA"}, {"assignNamespaces": ["HQ8LNNN5", "T993wcUF", "GnHorHMD"], "group": "GxSMZSC3", "roleId": "O1CXc6So"}, {"assignNamespaces": ["6T9ShNGc", "gnPyMVFP", "z1ZeWnfv"], "group": "GmDvuidK", "roleId": "Gn8Jv9jZ"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'G4tfMSdr' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'gTfWwSrU' \
    --body '{"acsUrl": "7kUUomM1", "apiKey": "ScqBpKNe", "appId": "htKHVNsY", "federationMetadataUrl": "DRqwldRA", "isActive": true, "redirectUri": "lUuqeJCI", "secret": "11nZsQR7", "ssoUrl": "Mj13lK0K"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YU3WPTBo' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '8LSr0gDI' \
    --body '{"acsUrl": "C8oxSjWc", "apiKey": "gNpDyWET", "appId": "frjrsArm", "federationMetadataUrl": "wNgVBH7S", "isActive": true, "redirectUri": "tvzlJf4b", "secret": "R5CYbfmo", "ssoUrl": "7e0f4eud"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bfqlBcFJ' \
    --rawPID 'true' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["JeAByJa1", "bbeKATBM", "DU4VwMQJ"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mHvP5xva' \
    --platformUserId 'AUs4AjW0' \
    --pidType 'gDzmZb6Y' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    --body '{"config": {"minimumAllowedInterval": 45}, "type": "2myc5lKN"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    --body '{"additions": [{"actions": [88, 65, 13], "resource": "sRbY9fhu"}, {"actions": [25, 30, 18], "resource": "iYIbVDvA"}, {"actions": [50, 37, 78], "resource": "ojdFV6QY"}], "exclusions": [{"actions": [95, 55, 50], "resource": "uNNxowDf"}, {"actions": [54, 76, 40], "resource": "cTsvDtr3"}, {"actions": [65, 78, 5], "resource": "Z7DnkpZI"}], "overrides": [{"actions": [73, 73, 78], "resource": "PX5HJubo"}, {"actions": [50, 69, 58], "resource": "EFAeCfSu"}, {"actions": [84, 85, 49], "resource": "0XE8xufu"}], "replacements": [{"replacement": {"actions": [8, 86, 78], "resource": "uizNrcLA"}, "target": "gwiiYxY6"}, {"replacement": {"actions": [76, 4, 11], "resource": "uxmSHcET"}, "target": "jbRpQ6Up"}, {"replacement": {"actions": [94, 74, 24], "resource": "gbdWouT9"}, "target": "5EbvLWfE"}]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateRoleOverrideConfigV3' test.out

#- 159 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetRoleSourceV3' test.out

#- 160 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'nzbiIJmL' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'vLcnsZRb' \
    --after '76' \
    --before '49' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '78' \
    --tagName 'UfIsK2Ue' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "ogDEtrcS"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'V6RVvqJE' \
    --body '{"tagName": "yUj6mqXL"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'PxEgQg0g' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'WpNfAmpA' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["AgtogUaf", "kLSqr2gU", "cLyhZhYP"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'TWwrByOV' \
    --body '{"bulkUserId": ["JGf8csU3", "EZxsTY67", "TKiZcs5Z"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": false, "userIds": ["edZFObhc", "WsG1kLxU", "ZG7OxWnx"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["C5aHkxp8", "tsj5Ae69", "7qSuenom"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "4jkV9TeR", "userId": "Mf8FtBnn"}, "fields": ["4SqcxJGx", "Ia3jxatC", "IHdSfmXX"], "limit": 45}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["wRmGPDpE", "4iQHZjYf", "yiLGuCzl"], "isAdmin": true, "languageTag": "VFDAqWTk", "namespace": "oeLhluc2", "roles": ["sEen419y", "069KSOHQ", "eDo9nwPz"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '16' \
    --platformUserId 'qJRHGKY7' \
    --platformId '9NsV78eG' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'pvC2Ukgd' \
    --endDate '2rFIrP9D' \
    --includeTotal 'false' \
    --limit '69' \
    --offset '63' \
    --platformBy 'NwfLcKJu' \
    --platformId 'UGuD0X8R' \
    --query 'oOm0ixyD' \
    --roleIds 'DWxgrV6a' \
    --selectedFields 'rBxv62X8' \
    --skipLoginQueue 'false' \
    --startDate 'jXVBuYFN' \
    --tagIds '6yADGJ2y' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["weabQJCG", "J2uZPYL4", "YX6uDMMZ"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jd8ZPZl7' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cT2ZmwlT' \
    --body '{"avatarUrl": "CojhC4Uc", "country": "iEOFMKrX", "dateOfBirth": "luZYTSOU", "displayName": "fu0TXt8o", "languageTag": "7BVeYjlo", "skipLoginQueue": false, "tags": ["M6rMyrtX", "bdb5ZTGI", "xmvt4A8w"], "uniqueDisplayName": "HhuyCBtP", "userName": "6B6uBluJ"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TnPYQXus' \
    --activeOnly 'false' \
    --after 'L6ahKLT3' \
    --before 'A2CWQdKP' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UXcmSTaq' \
    --body '{"ban": "RuvebeO7", "comment": "xz7qC99z", "endDate": "dJgqYjvC", "reason": "wJXBhbVL", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YVmnqSPo' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'xuBazqEA' \
    --namespace $AB_NAMESPACE \
    --userId 'b6nugmxW' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '8hYaaXqX' \
    --body '{"context": "5xIrMeSh", "emailAddress": "56hEin1O", "languageTag": "5o8b8mtM", "upgradeToken": "M8o9VmNV"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '5mdRytsd' \
    --body '{"Code": "v18j019I", "ContactType": "20KATr9M", "LanguageTag": "imAeF8GW", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'CpuWoytL' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lwlaPm6h' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iuJf2lxG' \
    --body '{"deletionDate": 83, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KL4O5uen' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YqBxhhv2' \
    --body '{"code": "AU15uoRB", "country": "OHw5LDLI", "dateOfBirth": "6fWLN9pP", "displayName": "Ll6HE9xq", "emailAddress": "xo9ODvcu", "password": "iOPEIBGM", "uniqueDisplayName": "5D1PQpSQ", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 's78hmI6R' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XfpkDR9k' \
    --after '0.4060472797512906' \
    --before '0.9363239851003372' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rvsyzq0z' \
    --body '{"languageTag": "OccTuIvY", "mfaToken": "I8dSTmOP", "newPassword": "cSKwJeCx", "oldPassword": "DpkRiauj"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '1olb1J9x' \
    --body '{"Permissions": [{"Action": 4, "Resource": "zHm5YIJd", "SchedAction": 24, "SchedCron": "TjjgNkQq", "SchedRange": ["4rp78BEM", "STuPQV88", "LGGh9lgS"]}, {"Action": 80, "Resource": "GZ4WY0YW", "SchedAction": 37, "SchedCron": "GjpgfDtJ", "SchedRange": ["G4Yuh9wC", "DdlfA57W", "4VnAl4ks"]}, {"Action": 12, "Resource": "NrmTQnhe", "SchedAction": 32, "SchedCron": "x1mRqa7g", "SchedRange": ["lLOSzvTd", "38TXrYi9", "9T2ftdbb"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QKbOWpML' \
    --body '{"Permissions": [{"Action": 85, "Resource": "OncDTbSU", "SchedAction": 7, "SchedCron": "wtyC9UnI", "SchedRange": ["kLwRIhGN", "Udg0ZRyt", "eQgiutW5"]}, {"Action": 46, "Resource": "Cq0VBBgb", "SchedAction": 59, "SchedCron": "mZ133u3M", "SchedRange": ["C7vRstFT", "RbJN9ElS", "eWfgV128"]}, {"Action": 61, "Resource": "zgMYJTX6", "SchedAction": 24, "SchedCron": "oeBwVAyr", "SchedRange": ["JcJtt2EU", "bSxwsBRH", "MRcfYjjr"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '26gI4RwW' \
    --body '[{"Action": 79, "Resource": "IBIvO0db"}, {"Action": 84, "Resource": "XSnsK8aH"}, {"Action": 15, "Resource": "dRW48Kh9"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '95' \
    --namespace $AB_NAMESPACE \
    --resource 'jicvh4o5' \
    --userId 'jAsnOLzT' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'W7IWNC8D' \
    --after 'OPVnvURs' \
    --before 'iZsqdLNU' \
    --limit '77' \
    --platformId 'nWB1lWf2' \
    --targetNamespace 'quf6oHMX' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jxHKeehX' \
    --status 'BXewmKl1' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'nmfWgQUV' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Ccm6WeQP' \
    --userId 'uEgKdnKh' \
    --createIfNotFound 'true' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'VIzFBEC7' \
    --userId '6C8swf6l' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '8jAhWyza' \
    --skipConflict 'false' \
    --body '{"platformId": "eLZ1ktw8", "platformUserId": "MK0JBwtQ"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jTwhyzLg' \
    --platformId 'wG6FwiIJ' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hiwCFWcS' \
    --userId 'mwlM2MYd' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bHwZS52N' \
    --userId '8JEzSVaV' \
    --ticket '12RkUO4b' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JvPgYrPM' \
    --userId 'Nglvc5jj' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wp0u9uTz' \
    --userId '7EB7Krtz' \
    --platformToken 'ffG8Ptna' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'pmSlXtaX' \
    --userId 'mKNr8pvJ' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '3jvwilOF' \
    --body '["tgrRROWB", "6gkVnmgo", "sKNPj72E"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fKbqToWY' \
    --body '[{"namespace": "KmPdIHHb", "roleId": "KwG4j7Ji"}, {"namespace": "DuTN5aiF", "roleId": "JJIbNWgf"}, {"namespace": "zhTt9Zri", "roleId": "dzG6cQFa"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'KuxxQuGx' \
    --userId 'vqlfRI4P' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'oTlamUWT' \
    --userId 'R3UITa89' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '00Z3b65V' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '9B9nn1Qr' \
    --body '{"enabled": true, "reason": "gCtjYM04"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'CnXXmBvV' \
    --body '{"emailAddress": "jZ68dkDd", "password": "SeLEU6SV"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '6vneDqds' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'C6Ir9n1d' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "UwJsu4Fp"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'lzFYgyU0' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'EFHsYkDd' \
    --before 'xe47Kidd' \
    --isWildcard 'false' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "Wvo0gbUB", "namespace": "bCr44yIC", "userId": "gP2VFmtV"}, {"displayName": "sgJTeSpi", "namespace": "OQITxM9Z", "userId": "YGkq1Fau"}, {"displayName": "KyHhHOgM", "namespace": "KcEJ938D", "userId": "y82LI59z"}], "members": [{"displayName": "oeqDiBTR", "namespace": "3Rac0i6h", "userId": "GCtr5bAC"}, {"displayName": "9yo1ny5q", "namespace": "vfuSEWKE", "userId": "pqYeTRvM"}, {"displayName": "pV0TbocA", "namespace": "v5XM4Z6D", "userId": "0dfZiAmv"}], "permissions": [{"action": 77, "resource": "u6cQf0Sr", "schedAction": 13, "schedCron": "Prsl4Dw0", "schedRange": ["8yNnyBD0", "h5Vsbype", "BTuldxef"]}, {"action": 47, "resource": "SJpd3cYQ", "schedAction": 7, "schedCron": "WQx7yfdd", "schedRange": ["tPkZpueN", "E0U4Xptb", "005TGPpU"]}, {"action": 18, "resource": "fdBKrfHO", "schedAction": 41, "schedCron": "e15F1It7", "schedRange": ["MZkbLwGi", "eG9GqRAN", "GWWEfZAc"]}], "roleName": "h8l8XYxb"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'N7lzfY4H' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'NG7RTWmm' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'wy0Yn9SQ' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "yrr6jp6O"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'xvhU08MK' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'WdFpB0aN' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '1uWYRWyy' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'aAQjG3dr' \
    --after 'dMXuuwr3' \
    --before '8lLgCf7Y' \
    --limit '70' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'ASbSpYmd' \
    --body '{"managers": [{"displayName": "kiEJ9ukE", "namespace": "R6Y5sOtj", "userId": "AuY4ADj6"}, {"displayName": "Ijibc7zZ", "namespace": "SG9zmMyn", "userId": "6KtRKpVL"}, {"displayName": "YD121f8B", "namespace": "pfLFCkIa", "userId": "YIBzlYVH"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'lyqBE9Rj' \
    --body '{"managers": [{"displayName": "OREU2cZb", "namespace": "9XtC4b7M", "userId": "OZgQRQ9Z"}, {"displayName": "m5NFv6To", "namespace": "tXCK5co3", "userId": "BXrBmLes"}, {"displayName": "FCu9HL1F", "namespace": "p8BBAWsE", "userId": "oE9ovOxx"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'bG5pxWPa' \
    --after 'hn96OOvl' \
    --before 'ZF2YxqoO' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'TY9wEFTz' \
    --body '{"members": [{"displayName": "L8xN08Ca", "namespace": "bdZYXzSV", "userId": "HmSiMBQv"}, {"displayName": "Sba7dONB", "namespace": "4zWaCn3V", "userId": "fHmCt14B"}, {"displayName": "CmzkVkEP", "namespace": "PagmYzwr", "userId": "tl3lbe13"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'f6vF4gNN' \
    --body '{"permissions": [{"action": 58, "resource": "3s4Pj4ob", "schedAction": 34, "schedCron": "Pkcp5isg", "schedRange": ["EdMjwFcS", "KoN9Vi8N", "lFt4rP4e"]}, {"action": 37, "resource": "OefY7b6f", "schedAction": 12, "schedCron": "yKeGdB96", "schedRange": ["odrdqmka", "zFuXlahH", "MFoEzmUk"]}, {"action": 22, "resource": "7gAidJQ3", "schedAction": 53, "schedCron": "YPeAvoNJ", "schedRange": ["Yhy7UvOY", "GCfZwh8m", "lUFJWDcd"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '77buiI1T' \
    --body '{"permissions": [{"action": 21, "resource": "NAqKOgcQ", "schedAction": 76, "schedCron": "PJ4o99f1", "schedRange": ["mq7tavvt", "8pwf2xl7", "rgoE6gAD"]}, {"action": 55, "resource": "o5a8uAou", "schedAction": 54, "schedCron": "xJ3BzhTr", "schedRange": ["Svj69ELI", "yJas1AGA", "FtgSM5w2"]}, {"action": 39, "resource": "cQauDOgg", "schedAction": 53, "schedCron": "ZUCnf47w", "schedRange": ["dwZ5vRYh", "OeZjUjNm", "RvVGIWe0"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'St1hbRhN' \
    --body '["x15xiHSC", "eiZNiLMe", "ywJy477a"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '14' \
    --resource 'KlSv2Iwg' \
    --roleId 'YATyPzsr' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'sXUZYY00' \
    --extendExp 'false' \
    --redirectUri 'rGUkMX0m' \
    --password 'LRK69zWX' \
    --requestId 'tqsrpym7' \
    --userName 'E6RKH2Wv' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'nZaNlYwI' \
    --linkingToken 'zMsU3cBz' \
    --password '1CUS7tpN' \
    --username 'FZnNPhtT' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId '5ZpHIfNz' \
    --linkingToken 'CuhzEIA0' \
    --password 'IYdDt86W' \
    --username 'VHASKfnU' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'zdJRj9gs' \
    --extendExp 'false' \
    --linkingToken 'opcH9tYQ' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'E3pCxyff' \
    --state 'vM6C7bq9' \
    --platformId 'UEco988T' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'TvyWHUla' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'l27Yeyu0' \
    --isTransient 'true' \
    --clientId 'xAH969eC' \
    --oneTimeLinkCode 'LgRjX96b' \
    > test.out 2>&1
eval_tap $? 248 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 249 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 249 'GetCountryLocationV3' test.out

#- 250 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 250 'Logout' test.out

#- 251 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'NCcdeJWe' \
    --codeChallengeMethod 'plain' \
    --clientId '1Pb4ZcH4' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZqEvStSP' \
    --userId 'vqpDlWnD' \
    --platformUserId 'vpGtXkKO' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tqjAct4B' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'GDPUuOFA' \
    --codeChallenge 'cd4yNIuo' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --loginWebBased 'true' \
    --nonce 'TXBkLih9' \
    --oneTimeLinkCode 'TMfT147L' \
    --redirectUri 'Q5aJKno5' \
    --scope 'h8jHKEvV' \
    --state 'kkodagBN' \
    --targetAuthPage 'iCKNDM3X' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'YgOQWpTl' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'EYn9FDe0' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'LzIAmNJQ' \
    --factor 'CMHm06kt' \
    --mfaToken 'nhwL0y3A' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'vHXnbu5S' \
    --mfaToken 'YmH21NcP' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'g1YldA6j' \
    --factor 'czAkFAr5' \
    --mfaToken 'oYYpTDAM' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'wAo0RuKd' \
    --factors 'MBDYFKtj' \
    --rememberDevice 'false' \
    --clientId 'ACcoVLn6' \
    --code 'tj7F7nLM' \
    --factor 'L8gIC95m' \
    --mfaToken 'CCS3nONT' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'sLGObk5X' \
    --userId 'Ey6S4Avu' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'QZiRkkCC' \
    --clientId 'MBhk9OSH' \
    --redirectUri 'DgNvIVbo' \
    --requestId 'EwlIhK4k' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'VVmv2Fu2' \
    --additionalData 'wmHjjZMu' \
    --clientId 'eBPn3RvE' \
    --createHeadless 'true' \
    --deviceId 'qdVmuXiD' \
    --macAddress 'iMFdSm09' \
    --platformToken 'QHHupxKq' \
    --serviceLabel '0.510241970182553' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'UZFOcbMX' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'MwcGXurH' \
    --simultaneousTicket 'Ihj4aLON' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'k727SJVY' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'wWtEYpH1' \
    --clientId 'WUX9FNyw' \
    --clientSecret 'atmbSQaN' \
    --code 'NXWQy6ZD' \
    --codeVerifier 'Xb59zrPj' \
    --extendNamespace 'Ku7dZg9N' \
    --extendExp 'false' \
    --password 'D8ADAaii' \
    --redirectUri 'f8mek8od' \
    --refreshToken '5b5SneyD' \
    --scope '0CGQHGUW' \
    --username 'aUD6XEgF' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'nFJF0cGa' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'SMW0h4Jm' \
    --code 'DIuyPq1k' \
    --error 'ob7IyFG9' \
    --openidAssocHandle 'hkIttwq3' \
    --openidClaimedId '7fmHnuSq' \
    --openidIdentity 'diow3cMW' \
    --openidMode 'r0BHWfB1' \
    --openidNs 'HAAuDO2f' \
    --openidOpEndpoint 'ENJtV6y2' \
    --openidResponseNonce 'ndb1GYz7' \
    --openidReturnTo '182HoB73' \
    --openidSig '7aruugMs' \
    --openidSigned 'H9bYY3Qq' \
    --state '7xxx9QWl' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'BGFTFAFR' \
    --platformToken 'mstx320S' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'L6dgZ6Ik' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'hSc9vOil' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'CFyiqCEw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'epsDKZRu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 274 'PublicGetConfigValueV3' test.out

#- 275 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 275 'PublicGetCountryListV3' test.out

#- 276 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 276 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 277 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'NlXJkMbw' \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '4Pn4urF5' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'yqSdK46a' \
    --limit '70' \
    --offset '34' \
    --platformBy 'l3ibZ0zB' \
    --platformId 'bUIkzOes' \
    --query 'kZWu57Gg' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "TmthhMUH", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Sh7Hlx0S", "policyId": "ocmId69O", "policyVersionId": "6DHFKb43"}, {"isAccepted": false, "localizedPolicyVersionId": "8gkKDeWq", "policyId": "gi8dSFNz", "policyVersionId": "iU6kYazF"}, {"isAccepted": false, "localizedPolicyVersionId": "lJK89lXs", "policyId": "gQoFUW18", "policyVersionId": "DOe0sWVs"}], "authType": "ZbqCTK4W", "code": "e9Lds9A5", "country": "k6K7NaRC", "dateOfBirth": "HrLoaWpI", "displayName": "BIANWJtO", "emailAddress": "th0vFcdU", "password": "6NC2s5ct", "reachMinimumAge": false, "uniqueDisplayName": "xhhfHu6X"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'rFBfBB7p' \
    --query 'fp8ccm9A' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "TOMb7B8x", "languageTag": "Nb7W4nFP"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "GkunoLZn", "emailAddress": "sB4ImImZ"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "cZbK9NrC", "languageTag": "qZYktH3s"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "LsfJ9Yim", "password": "79KkomOW", "uniqueDisplayName": "4E7gFuLo", "username": "HY0zv0Ko"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'a33BIAG8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'QEoOxYbk' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "yVkerVd0", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "sdQtiTRx", "policyId": "Dl9Ac19M", "policyVersionId": "FS64IMR7"}, {"isAccepted": false, "localizedPolicyVersionId": "LWsCGbyG", "policyId": "tl4SBgfK", "policyVersionId": "Hk5t40zq"}, {"isAccepted": false, "localizedPolicyVersionId": "bLRsRpzw", "policyId": "LOuHc0zg", "policyVersionId": "THD80YIZ"}], "authType": "rkwyNKQx", "code": "AvFRDDtP", "country": "2acSi9v5", "dateOfBirth": "bZ6qU0lJ", "displayName": "OKs3tv8y", "emailAddress": "22cb0H8D", "password": "xiB40Ub6", "reachMinimumAge": true, "uniqueDisplayName": "afWfh17Y"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "NFJ1GZpT", "country": "vZBzFHYZ", "dateOfBirth": "8seolKB4", "displayName": "eqIlvoB0", "languageTag": "xf0sIBRh", "uniqueDisplayName": "pNOfZnTg", "userName": "r6AQJzR3"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "fuHkLMOV", "country": "bhAww6eC", "dateOfBirth": "kNyO0dPt", "displayName": "bIaVpy6Y", "languageTag": "lOAyu80j", "uniqueDisplayName": "fBADz4je", "userName": "nNvsXyLn"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "LSXYvw0T", "emailAddress": "YsKViEya", "languageTag": "Z9EAOXCu", "upgradeToken": "CmO1hUN9"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MRcNUSLz", "contactType": "LF8YuKpb", "languageTag": "1dn8BP4w", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "KCfucZ9O", "country": "v0JVLE0H", "dateOfBirth": "cXY0hkhz", "displayName": "8tmOwllM", "emailAddress": "7gnzFihz", "password": "saK2gLvU", "uniqueDisplayName": "h9kxymmt", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "gDDwX40o", "password": "wZcOomu0"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "6XRGIWho", "mfaToken": "FLtSNiXB", "newPassword": "szFpvpQJ", "oldPassword": "S94ZA2wQ"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'GeQ7ikWa' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6a1xcD1I' \
    --redirectUri 'IR3NoVS3' \
    --ticket 'ReRzyF1i' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 't8XLZQS8' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'oKnGmprm' \
    --ticket '45qUxx1k' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'YVRvNOTI' \
    --clientId 'HqINMxKQ' \
    --redirectUri 'IXNXqtiZ' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 't05AyED9' \
    --code 'cT9uNDZb' \
    --state 'eMwXSf7N' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Z3FRE33I' \
    --code 'GHI1RLSK' \
    --state 'veHI30xI' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "Iu6IvaZg", "userIds": ["BHh7AI4t", "ifZhPpuY", "YSefnJn8"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "kzWXeSS8", "code": "VwdCdV1h", "emailAddress": "yDTu1fqS", "languageTag": "UjX5hfGc", "newPassword": "i5oERCwv"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '5MZuGDSK' \
    --activeOnly 'false' \
    --limit '22' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '34oI8GpE' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Y0ZIgrHW' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zPwsOxjZ' \
    --after '0.4065941239272869' \
    --before '0.08583459798714177' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '2UvpwfPH' \
    --after '2smu2oV4' \
    --before 'x5LJ0J19' \
    --limit '3' \
    --platformId 'gyRIh1Ik' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EN9c6Wts' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'lTmRFXgJ' \
    --body '{"platformId": "rPyIGdpF", "platformUserId": "mT3e3a7R"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'SAQAdt1q' \
    --body '{"chosenNamespaces": ["m7mvo5an", "Y4cmP3vH", "Pjz3nbjI"], "requestId": "5K5EUdMl"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DQZRhBEq' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EQdRqVtZ' \
    --password 'bhJhDFKc' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'A1yA5SD3' \
    --before 'lC9hYt5J' \
    --isWildcard 'false' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '1aoqv6BS' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "YcbzHCpF", "emailAddress": "CUkpqS77", "languageTag": "UFf0hCR9"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "uEBXFvKQ", "emailAddress": "N4hJHswe", "languageTag": "NicP4m2f", "upgradeToken": "6g9B9KZr"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'yRjCvSE8' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["cIFE8X6k", "eo84InQh", "DZH9kFbx"], "oneTimeLinkCode": "5YNAUC3Y"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'Axr1g4So' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "7mQVMQeK"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'EgcaBhTl' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'PaxBgyq1' \
    --code 'UdK1INXV' \
    --error '5lhM7iVQ' \
    --state 'YebIPxUU' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '8Pw9KTN0' \
    --payload 'UA9GubQ9' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'lNtBPh40' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '7sRiCtiP' \
    --code 'WftLb3J1' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'ZFNm1EH3' \
    --upgradeSuccessToken 'ScWuR8pn' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '74' \
    --namespace 'ICH5RU8H' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '5g1qb9XL' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'abIuxEfV' \
    --endDate 'k5jRSuvg' \
    --limit '71' \
    --offset '50' \
    --startDate 'pg3pm7ud' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'rw3F1HOp' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "BMleh0n5", "deviceId": "7e8Ess4a", "deviceType": "JP7VoIRr", "enabled": false, "endDate": "hKxl8UUV", "ext": {"KMPWGNV6": {}, "10ZU2M8O": {}, "OEeAfHXY": {}}, "reason": "c36jrGcD"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '8k4CjCCz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '8b9MO6NP' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'X3VC72EW' \
    --startDate 'yJhbk6hK' \
    --deviceType 'S2yUF9DX' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'YXEu6cRJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'LwsVFnFq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'fnK3M1Y4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 349 'AdminGetUsersByDeviceV4' test.out

#- 350 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 351 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "li7mf2k1", "policyId": "D4xcYo8f", "policyVersionId": "cFvrc7XY"}, {"isAccepted": true, "localizedPolicyVersionId": "hLkK0Vz4", "policyId": "r3VdCBQ2", "policyVersionId": "xwA1bC6j"}, {"isAccepted": true, "localizedPolicyVersionId": "2vVleZgw", "policyId": "teb9iran", "policyVersionId": "9vHFTjYn"}], "count": 1, "userInfo": {"country": "tC1qX855"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "oK8a6iwW", "policyId": "8ieBjdXJ", "policyVersionId": "58zS9wj4"}, {"isAccepted": false, "localizedPolicyVersionId": "BHrTBa1E", "policyId": "0f6vF4nI", "policyVersionId": "3pP4s6cB"}, {"isAccepted": false, "localizedPolicyVersionId": "cvW2d6Fv", "policyId": "bNqKrIwh", "policyVersionId": "ElvTiSOZ"}], "authType": "EMAILPASSWD", "code": "PngeTx96", "country": "eYm5BPkP", "dateOfBirth": "yV9RY47J", "displayName": "KMDdzuWd", "emailAddress": "qBrhi4Mk", "password": "1PUeIGBY", "passwordMD5Sum": "QcaHNuqA", "reachMinimumAge": true, "uniqueDisplayName": "s3LFAf8P", "username": "4tOxBhx9"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["rCdwdjKX", "KIVd19a3", "Sr3ID0CK"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["I79Vw5mg", "XU0I6XDt", "KgdZejt6"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RYPn9oRu' \
    --body '{"avatarUrl": "QArJHcnE", "country": "5UWmaNo8", "dateOfBirth": "Beu0mQBw", "displayName": "8r4aYjWV", "languageTag": "co5u77Rc", "skipLoginQueue": false, "tags": ["waXkXkDY", "CJYQl0PK", "lirq0Om3"], "uniqueDisplayName": "VEO84G2y", "userName": "y7RWFCPY"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'e2xFJYrq' \
    --body '{"code": "FCzSLYc3", "emailAddress": "aTo6hrbn"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'KMMdEZT2' \
    --body '{"factor": "8eF3FYYr", "mfaToken": "SoSFSUGy"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'VKZyietU' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'cjji860x' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '6EkIqp68' \
    --body '{"assignedNamespaces": ["q9D1hg2O", "6KlsL0Uf", "79Vhm5UB"], "roleId": "6gEjj2jC"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'k6D55AIb' \
    --body '{"assignedNamespaces": ["Q0QV444j", "FvRv5v7C", "hCqRgW20"], "roleId": "OIr3tQ3W"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'C2uAFFis' \
    --body '{"assignedNamespaces": ["OC6qtcK8", "dBHWjyS7", "7i2jkvLY"], "roleId": "AyPvLVpw"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '10' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "ufiwE1uF"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'osT42zYX' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'xaNiJLQ9' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'bDhpF0rs' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "Tzww4U2a"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'UWMqnMXM' \
    --body '{"permissions": [{"action": 17, "resource": "FEvkOBTv", "schedAction": 18, "schedCron": "FFQjsj7I", "schedRange": ["j4mIkPcF", "QuPjQ52m", "AnTcwNUa"]}, {"action": 58, "resource": "13X1q575", "schedAction": 38, "schedCron": "0PV58j0l", "schedRange": ["NgrVBfdz", "vqxHc27G", "rRQrBSZX"]}, {"action": 65, "resource": "soG6YRf1", "schedAction": 88, "schedCron": "t7q607pp", "schedRange": ["VF3IDEXZ", "2TMY7Asw", "LhzAL4iP"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'z6GA8Gsj' \
    --body '{"permissions": [{"action": 78, "resource": "FUBJTRko", "schedAction": 86, "schedCron": "csaePSUO", "schedRange": ["pgk5PVsD", "mbyGvN6f", "2A6YzAtW"]}, {"action": 46, "resource": "oQVk3d3S", "schedAction": 36, "schedCron": "IcKg8LPF", "schedRange": ["Aau92tl1", "L8SMFBhX", "YRrXh4a3"]}, {"action": 10, "resource": "a1Fvg2M6", "schedAction": 10, "schedCron": "SN02NbMs", "schedRange": ["hWvYQP03", "fE0eu2Rv", "O7JFMtlR"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'ysaJqHL3' \
    --body '["TTrqxP45", "bNNzGrRc", "19mou08x"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'KzdgkSAT' \
    --after 'HeMmSjlz' \
    --before 'bCuQKL0W' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId '7nSmvp11' \
    --body '{"assignedNamespaces": ["MdM4caS1", "WH1nzNrn", "oZnru4YY"], "namespace": "Tv1Jjd4r", "userId": "ektTmLZM"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '8hxMaD2N' \
    --body '{"namespace": "v8fGBmbT", "userId": "RZoe0nr1"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["nDc0l76H", "jEqtNCRA", "sY0TrPeN"], "emailAddresses": ["h38s9bBN", "iL5U3yOR", "iBUwdpOW"], "isAdmin": true, "isNewStudio": true, "languageTag": "tCqGuxuq", "namespace": "L3Go2zpE", "roleId": "G4sO8KhL"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "qDQCEMoe", "country": "MhsaWP8W", "dateOfBirth": "M5Y07GXl", "displayName": "GgIr7R8s", "languageTag": "gdXty3GL", "skipLoginQueue": false, "tags": ["uAYRpINW", "qGGyfzqI", "Y3ZSngvF"], "uniqueDisplayName": "JuwUtZJv", "userName": "bm2R9Ku7"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "TebzvcSE", "mfaToken": "0XQReUQI"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'Zkoczcdl' \
    > test.out 2>&1
eval_tap $? 378 'AdminEnableMyAuthenticatorV4' test.out

#- 379 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 379 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 380 AdminGetMyBackupCodesV4
eval_tap 0 380 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 AdminGenerateMyBackupCodesV4
eval_tap 0 381 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 382 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "KX343t3b", "mfaToken": "LwouUICg"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'K7VztL9E' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'dvaXBzVt' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'OpNsSVcq' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'hJ0Um5XO' \
    --factor 'idJHiOjq' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'vBtWEvVE' \
    --languageTag 'BF8GCrCk' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "fbvbSZz8", "mfaToken": "pidicQnG"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '9a6EXkzw' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'JEOQWR25' \
    > test.out 2>&1
eval_tap $? 393 'AdminMakeFactorMyDefaultV4' test.out

#- 394 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 394 'AdminGetMyOwnMFAStatusV4' test.out

#- 395 AdminGetMyMFAStatusV4
eval_tap 0 395 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 396 AdminInviteUserV4
eval_tap 0 396 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 397 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'ALysnafl' \
    --linkingToken '3KfKea7d' \
    --password 'llrVOej3' \
    --username 'AzKhmIYg' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'KMw7bc1m' \
    --extendExp 'true' \
    --linkingToken '0brT3aaq' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'ejhjAi8D' \
    --factor 'we4kPN1y' \
    --mfaToken 'fA5xG2w2' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'QRR9iJ3c' \
    --codeChallenge 'SAE7uksc' \
    --codeChallengeMethod 'S256' \
    --additionalData 'kly2kdFZ' \
    --clientId 'bCIQbqr0' \
    --createHeadless 'true' \
    --deviceId 'jy81pUTM' \
    --macAddress 'FVqhoUTj' \
    --platformToken 'BTp41Urs' \
    --serviceLabel '0.8889840726924808' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'bNaTryEL' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'lEbn2dBQ' \
    --simultaneousTicket '37pKNe0b' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket '7uYtfoNM' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge '1QRNlOv0' \
    --codeChallengeMethod 'S256' \
    --additionalData 'mZKvJZXS' \
    --clientId 'xQr49ox5' \
    --clientSecret 'gVIjFamO' \
    --code 'Xp2uWtiP' \
    --codeVerifier 'CJKYd8fH' \
    --extendNamespace 'zSzB3DQQ' \
    --extendExp 'false' \
    --loginQueueTicket 'iBX39Mad' \
    --password '4GYQOyOE' \
    --redirectUri 'xAcOBPjN' \
    --refreshToken 'B1kNxcQ6' \
    --scope 'uuGPXisC' \
    --username 'bZpZOEuO' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'wMXxojIv' \
    --code 'AuhIX0rM' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'kDT5IYky' \
    --rawPUID 'true' \
    --body '{"pidType": "3GAJFR2R", "platformUserIds": ["GneypUZg", "cQ7ix4E5", "C0KIEJfV"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId '4s0AIjEL' \
    --platformUserId 'R4B6QiHE' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "5taNF6xo", "policyId": "fpbwrE8a", "policyVersionId": "HytdOthi"}, {"isAccepted": true, "localizedPolicyVersionId": "PhocSwN2", "policyId": "xyFB0pRa", "policyVersionId": "lNnFu7Vs"}, {"isAccepted": false, "localizedPolicyVersionId": "IyHfb7m6", "policyId": "wPex1Mo2", "policyVersionId": "IcctGZjP"}], "authType": "EMAILPASSWD", "country": "Thq06fh0", "dateOfBirth": "lzE2Dz5i", "displayName": "qe0bwDVk", "emailAddress": "NKqaVP1h", "password": "CDB0hErC", "passwordMD5Sum": "MMe8cDbX", "uniqueDisplayName": "a3fUw2Wa", "username": "JAMY800A", "verified": false}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "9fUfndnA", "policyId": "T7peIDyj", "policyVersionId": "2LbgthBh"}, {"isAccepted": true, "localizedPolicyVersionId": "jAVfjiKh", "policyId": "ho8WbvqP", "policyVersionId": "SXu8LhXs"}, {"isAccepted": false, "localizedPolicyVersionId": "ghTktxpX", "policyId": "9erDMD78", "policyVersionId": "02Mjo7ai"}], "authType": "EMAILPASSWD", "code": "W4HOuan0", "country": "z5BrrZLT", "dateOfBirth": "gHRUwt1p", "displayName": "GULrCc5J", "emailAddress": "mtu5aZPx", "password": "lvAcqxMY", "passwordMD5Sum": "qqlNzdM8", "reachMinimumAge": false, "uniqueDisplayName": "6qgO7qzb", "username": "XoXNlLFY"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'QS9DyayZ' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zuORN2vB", "policyId": "mlYO1Bau", "policyVersionId": "jGFJ0nRt"}, {"isAccepted": false, "localizedPolicyVersionId": "ggO95E0t", "policyId": "VtpUuGs9", "policyVersionId": "YzdzePs7"}, {"isAccepted": true, "localizedPolicyVersionId": "uwFABwCy", "policyId": "nksC6K0p", "policyVersionId": "zfPpv1dJ"}], "authType": "EMAILPASSWD", "code": "7Oxn2lS5", "country": "qW5MXXgK", "dateOfBirth": "3RGlQGHg", "displayName": "tkiW5bQC", "emailAddress": "bVrAWSsZ", "password": "PSQ5LFZ6", "passwordMD5Sum": "rGR7xTWG", "reachMinimumAge": true, "uniqueDisplayName": "ESS8UXxV", "username": "ANcvUi5k"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "YHhnbv0d", "country": "W44E9ZmC", "dateOfBirth": "fIWw530N", "displayName": "ryPiNgOQ", "languageTag": "uzLgYScR", "uniqueDisplayName": "qgfewdTs", "userName": "ObkrJYHj"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Pps4l5Se", "emailAddress": "vLP3OxSW"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mCQysvm8", "country": "ex7LqnSj", "dateOfBirth": "obclLLDx", "displayName": "aQ8LWtNr", "emailAddress": "2NhmxLLd", "password": "e2xlRwXd", "reachMinimumAge": false, "uniqueDisplayName": "4vDhS8Ji", "username": "mVoznt5P", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "5yy1ZRH7", "displayName": "Uf6wuX3J", "emailAddress": "ctdPmumA", "password": "deYqlXHj", "uniqueDisplayName": "bwWVt4ka", "username": "zHn4xnJs"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "bmshQqzZ", "mfaToken": "UOWsqlb8"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'Cr4XB1cm' \
    > test.out 2>&1
eval_tap $? 414 'PublicEnableMyAuthenticatorV4' test.out

#- 415 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 416 PublicGetMyBackupCodesV4
eval_tap 0 416 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 417 PublicGenerateMyBackupCodesV4
eval_tap 0 417 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 418 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "MT1T5q8M", "mfaToken": "Uo5eMltZ"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '6SQADa7o' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '6grsx1Bo' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '9rzn6o8K' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'pAbkVQll' \
    --factor 'GFgEIXq8' \
    > test.out 2>&1
eval_tap $? 424 'PublicChallengeMyMFAV4' test.out

#- 425 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 425 'PublicRemoveTrustedDeviceV4' test.out

#- 426 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'hcdybFdi' \
    --languageTag 'GVDvdLVw' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "ATU8PgWr", "mfaToken": "qNWrnBLn"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '2gqzJZhx' \
    > test.out 2>&1
eval_tap $? 428 'PublicEnableMyEmailV4' test.out

#- 429 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 429 'PublicGetMyEnabledFactorsV4' test.out

#- 430 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor '9vV3tyYx' \
    > test.out 2>&1
eval_tap $? 430 'PublicMakeFactorMyDefaultV4' test.out

#- 431 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 431 'PublicGetMyOwnMFAStatusV4' test.out

#- 432 PublicGetMyMFAStatusV4
eval_tap 0 432 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 433 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId '1E5gfYCh' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "odSNQHGH", "emailAddress": "o0zKL6aE", "languageTag": "k5MTwsn3", "namespace": "m16bXB0Z", "namespaceDisplayName": "coodNhpQ"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "RpLGh1dj", "policyId": "i9DrHTWa", "policyVersionId": "9ILQgLKV"}, {"isAccepted": true, "localizedPolicyVersionId": "bFmJZPHn", "policyId": "mfxdaI3e", "policyVersionId": "1nhLN6r3"}, {"isAccepted": true, "localizedPolicyVersionId": "68U1HVcX", "policyId": "Q4mFjgER", "policyVersionId": "XcI1s09l"}], "code": "33D2f2HX", "country": "F9tesr2B", "dateOfBirth": "x7xvDruM", "displayName": "epgIRtBg", "emailAddress": "OeCr8SPZ", "password": "an6f1UU8", "reachMinimumAge": true, "uniqueDisplayName": "ED2Qxj7r", "username": "DvcJJ73k", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE