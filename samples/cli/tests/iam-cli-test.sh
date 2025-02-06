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
echo "1..428"

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
    --body '{"modules": [{"docLink": "5shV5ypp", "groups": [{"group": "4EvCL0OQ", "groupId": "AjTTSyWf", "permissions": [{"allowedActions": [18, 48, 91], "resource": "sP9Q3bzN"}, {"allowedActions": [32, 53, 26], "resource": "tfKQqNje"}, {"allowedActions": [68, 70, 19], "resource": "qw6ggTrK"}]}, {"group": "wz2SqPxr", "groupId": "A5whbm4d", "permissions": [{"allowedActions": [67, 25, 36], "resource": "skpysXu5"}, {"allowedActions": [85, 34, 91], "resource": "Wi5mNzqf"}, {"allowedActions": [31, 60, 97], "resource": "W6TCrghX"}]}, {"group": "fmoeTXdT", "groupId": "2kgOdx0o", "permissions": [{"allowedActions": [67, 22, 65], "resource": "3kMQknzv"}, {"allowedActions": [11, 36, 88], "resource": "oN2LswHG"}, {"allowedActions": [83, 80, 30], "resource": "D8cEGCdB"}]}], "module": "g2BUPHrN", "moduleId": "2QMdnDsi"}, {"docLink": "qP74MRkg", "groups": [{"group": "PDgJJcU5", "groupId": "WirQFRTd", "permissions": [{"allowedActions": [78, 46, 18], "resource": "8L6uo91R"}, {"allowedActions": [60, 57, 92], "resource": "fQYn8D79"}, {"allowedActions": [77, 24, 70], "resource": "stK3Mm5s"}]}, {"group": "Ln8c6pJL", "groupId": "F6VMVgsz", "permissions": [{"allowedActions": [33, 52, 53], "resource": "nioMmdRR"}, {"allowedActions": [1, 58, 67], "resource": "16vIr872"}, {"allowedActions": [89, 14, 23], "resource": "XvP2Q212"}]}, {"group": "MdXuSjOB", "groupId": "MGQuCgn3", "permissions": [{"allowedActions": [86, 38, 53], "resource": "hgHiHeql"}, {"allowedActions": [94, 49, 76], "resource": "2hr1fNGD"}, {"allowedActions": [18, 3, 76], "resource": "KwUAajmn"}]}], "module": "MbBDANSD", "moduleId": "MoGm7Qrp"}, {"docLink": "6KYhh9q6", "groups": [{"group": "qsXENsZK", "groupId": "IjfAtWn9", "permissions": [{"allowedActions": [58, 99, 81], "resource": "549X0pOr"}, {"allowedActions": [11, 0, 49], "resource": "vPjiRUIW"}, {"allowedActions": [59, 48, 47], "resource": "KyaF4oP3"}]}, {"group": "S7RcTelD", "groupId": "kqCTRYYl", "permissions": [{"allowedActions": [31, 98, 92], "resource": "xMEtRqXy"}, {"allowedActions": [59, 89, 86], "resource": "Z06XEKev"}, {"allowedActions": [97, 81, 68], "resource": "uQR7D1iZ"}]}, {"group": "lx21MBvg", "groupId": "mrUDivbD", "permissions": [{"allowedActions": [87, 19, 60], "resource": "foZCU7aI"}, {"allowedActions": [11, 53, 36], "resource": "JMshpeUh"}, {"allowedActions": [74, 2, 47], "resource": "ZIVCqm4S"}]}], "module": "vtL9Zs6i", "moduleId": "OJfKljuT"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "khWl64KZ", "moduleId": "bKcKGEPp"}' \
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
    --body '[{"field": "UlWpUxsn", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["nt7ZKFnt", "iutkXQpL", "aaLZYCog"], "preferRegex": true, "regex": "62GHXLAr"}, "blockedWord": ["gw4owZgo", "Th7UnX8L", "j5oX4DJN"], "description": [{"language": "rxRV4h1D", "message": ["s09u7bVa", "Kpt4WB6N", "mAqpmaXQ"]}, {"language": "bDIPlqOT", "message": ["W57dgjAm", "y5NYXLZ0", "4Nq26FYk"]}, {"language": "liHRRLvh", "message": ["Zlujg4Vr", "qjGIcHCP", "e89ucAwu"]}], "isCustomRegex": false, "letterCase": "Vwup3rzm", "maxLength": 96, "maxRepeatingAlphaNum": 63, "maxRepeatingSpecialCharacter": 88, "minCharType": 74, "minLength": 23, "profanityFilter": "iihkB4Ti", "regex": "y0SaYt7u", "specialCharacterLocation": "8I5BVsPi", "specialCharacters": ["BdxNqXnM", "X2Gf39UD", "6K6MRdUT"]}}, {"field": "aSQrSpVO", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["TQi45DML", "yEsB6WRR", "ji8CNi6Z"], "preferRegex": true, "regex": "YYIO3K0j"}, "blockedWord": ["9EpjnhCn", "h1DxqkY0", "r0lSSFhE"], "description": [{"language": "WUs7qHlb", "message": ["S09WTykP", "ciK3ulPn", "wrWQjk3c"]}, {"language": "JR89jxVG", "message": ["ZajES7Po", "55y9cUkK", "OcXrpnIz"]}, {"language": "A2Z8Zjv9", "message": ["9w9RYxcq", "UtTdcom1", "EEJgj7WP"]}], "isCustomRegex": true, "letterCase": "E11BGITp", "maxLength": 23, "maxRepeatingAlphaNum": 89, "maxRepeatingSpecialCharacter": 92, "minCharType": 0, "minLength": 64, "profanityFilter": "IIOFL4Iy", "regex": "unQLNOyH", "specialCharacterLocation": "ZPkmlUfK", "specialCharacters": ["ViSRijhr", "2jMzEg2Y", "2FOVAhtJ"]}}, {"field": "9R6ObTjx", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["sWnGQ9wJ", "pOkjgly0", "M93FgtZr"], "preferRegex": false, "regex": "mJwXy0pi"}, "blockedWord": ["jSjVLpMx", "TwrJ4y9U", "7DAysc7M"], "description": [{"language": "fjDpyzZN", "message": ["xOysOoD7", "eJY9vLpc", "rTywhiTT"]}, {"language": "UAFfQ2A9", "message": ["gSCwKSv2", "wCE2RyTa", "ObuIRpIX"]}, {"language": "xrzEJxDI", "message": ["Nw5lEWRW", "bGRu4YVr", "IvpEFb1t"]}], "isCustomRegex": false, "letterCase": "4leGCwZ0", "maxLength": 51, "maxRepeatingAlphaNum": 13, "maxRepeatingSpecialCharacter": 45, "minCharType": 68, "minLength": 4, "profanityFilter": "KNF06G05", "regex": "dzaPJhHw", "specialCharacterLocation": "vmKTUTya", "specialCharacters": ["VlHa0HMq", "Ep7u8WU8", "Tp4UUlaB"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'wwHhW545' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'KQTVsVPQ' \
    --before 'rCVZJNc2' \
    --endDate 'ORTfk9cq' \
    --limit '68' \
    --query 'VF0w2Tl0' \
    --roleId '85NVzDp4' \
    --startDate 'KwuUHWxC' \
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
    --body '{"ageRestriction": 9, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'HRubaYUr' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 25}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'hm4Uje43' \
    --limit '22' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "1L7h85wn", "comment": "FrHtevsc", "endDate": "OdiNb0gW", "reason": "WqTykhjH", "skipNotif": false, "userIds": ["5M5r5Bnb", "ik5cwVTK", "P70rxSAS"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "vRXwXifk", "userId": "PIJ2GhdF"}, {"banId": "W6nWVQmh", "userId": "qGBnTulw"}, {"banId": "JJ1xWpaF", "userId": "QYlDBDhj"}]}' \
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
    --clientId 'tbn1G637' \
    --clientName 'oOu7gZyh' \
    --clientType '6vZBNt8M' \
    --limit '86' \
    --offset '80' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["PFm5EmST", "KvKQ0f1P", "AuJ0RN1t"], "clientUpdateRequest": {"audiences": ["gMw0l2MQ", "HPrglst4", "IXdUO2z0"], "baseUri": "c01dupT2", "clientName": "bRRBdFg6", "clientPermissions": [{"action": 97, "resource": "ZBKkyX7Q", "schedAction": 55, "schedCron": "yGgO1067", "schedRange": ["SwE4zQBV", "AF0zWCoh", "EMWjKFmW"]}, {"action": 33, "resource": "VMWan5wb", "schedAction": 31, "schedCron": "2fmz4b1F", "schedRange": ["ULbcDqPj", "1vrh24fy", "IQ60oYbz"]}, {"action": 64, "resource": "bt5TjZsD", "schedAction": 8, "schedCron": "RunZjStU", "schedRange": ["mmJO3oRW", "AQMNRMTo", "Bs7mfzqG"]}], "clientPlatform": "sNksw8kb", "deletable": true, "description": "WZkOMuC8", "modulePermissions": [{"moduleId": "gJ9BvVlU", "selectedGroups": [{"groupId": "XLJUBJ9F", "selectedActions": [69, 35, 38]}, {"groupId": "nC5BfLV6", "selectedActions": [89, 18, 56]}, {"groupId": "FUmc5MGi", "selectedActions": [1, 76, 61]}]}, {"moduleId": "GBnyBBBS", "selectedGroups": [{"groupId": "zOf7iBW6", "selectedActions": [67, 53, 42]}, {"groupId": "0B0BcIWp", "selectedActions": [37, 7, 69]}, {"groupId": "5dS1epf4", "selectedActions": [60, 85, 74]}]}, {"moduleId": "Ya19SAAV", "selectedGroups": [{"groupId": "4DwFfXhT", "selectedActions": [89, 69, 66]}, {"groupId": "Q5r17bzJ", "selectedActions": [12, 73, 30]}, {"groupId": "MBptXeI0", "selectedActions": [79, 31, 98]}]}], "namespace": "m1U1ado1", "oauthAccessTokenExpiration": 23, "oauthAccessTokenExpirationTimeUnit": "zzhbMjHs", "oauthRefreshTokenExpiration": 2, "oauthRefreshTokenExpirationTimeUnit": "edV3idPw", "redirectUri": "AgvzdioM", "scopes": ["6GEvP2aK", "Jre88bYq", "QomXmR3y"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["fUsRrhBe", "vzFVZOlW", "jBYPblm7"], "baseUri": "IjSnQzi5", "clientId": "Z8iofG1I", "clientName": "48s5QU8S", "clientPermissions": [{"action": 26, "resource": "tHK0FJTK", "schedAction": 45, "schedCron": "9C51RbjH", "schedRange": ["nxMpkgq0", "gC0qlnxg", "Q7N29LNh"]}, {"action": 56, "resource": "yHwMAAV0", "schedAction": 41, "schedCron": "NY3sdv4g", "schedRange": ["5AnVjdkU", "9GByd9zg", "AUFv1mcb"]}, {"action": 10, "resource": "XIYeX8Of", "schedAction": 32, "schedCron": "lhyMHRT4", "schedRange": ["V33lThP6", "SUbvFsEy", "yNn8VVD5"]}], "clientPlatform": "sktRjM5y", "deletable": true, "description": "6Lv0QiFg", "modulePermissions": [{"moduleId": "tA2VDma1", "selectedGroups": [{"groupId": "9OIG2hgB", "selectedActions": [6, 27, 35]}, {"groupId": "KZgVgpme", "selectedActions": [92, 8, 74]}, {"groupId": "Kcvrpjnm", "selectedActions": [80, 4, 81]}]}, {"moduleId": "Hrotf3Di", "selectedGroups": [{"groupId": "5VTNX8Nj", "selectedActions": [44, 65, 97]}, {"groupId": "NmvCKPYN", "selectedActions": [74, 48, 82]}, {"groupId": "1aUbzdYP", "selectedActions": [8, 2, 87]}]}, {"moduleId": "s6RJC1qM", "selectedGroups": [{"groupId": "R6hHHQp7", "selectedActions": [49, 74, 23]}, {"groupId": "EZglqvgx", "selectedActions": [38, 0, 45]}, {"groupId": "RGD8JIeO", "selectedActions": [22, 84, 31]}]}], "namespace": "rkoZe5Ea", "oauthAccessTokenExpiration": 45, "oauthAccessTokenExpirationTimeUnit": "WEmMVppd", "oauthClientType": "8RPwFMJS", "oauthRefreshTokenExpiration": 40, "oauthRefreshTokenExpirationTimeUnit": "5pEAPrDx", "parentNamespace": "fODh54yv", "redirectUri": "h8WLZ0Ls", "scopes": ["7aDgU8mP", "xp8qgdqr", "pjdw8oFG"], "secret": "Hm8SAQ2C", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'UwZCbPcR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'ItfLRSzW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'hDXj66Xf' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["0e4D4Thf", "O0ltFI3t", "vwZ446ud"], "baseUri": "DrpTtHwT", "clientName": "TdJdiiSZ", "clientPermissions": [{"action": 38, "resource": "gJIuMaSo", "schedAction": 33, "schedCron": "YDxQyNRA", "schedRange": ["zlAzfHsS", "YUqSxV2Y", "mCWkrs9w"]}, {"action": 5, "resource": "Tx0orgEd", "schedAction": 60, "schedCron": "JU9d1zsU", "schedRange": ["1iLzivbt", "fcdcn4pp", "QIEqWL7z"]}, {"action": 90, "resource": "Ia2hKAVl", "schedAction": 35, "schedCron": "r4YHBHwy", "schedRange": ["1hRD6chn", "KxfFUY6v", "veez335b"]}], "clientPlatform": "xTYBL1ID", "deletable": false, "description": "rKgvUn7S", "modulePermissions": [{"moduleId": "OST3UT5h", "selectedGroups": [{"groupId": "z2K8sztW", "selectedActions": [49, 39, 23]}, {"groupId": "99Vbjf6a", "selectedActions": [78, 99, 98]}, {"groupId": "qmzGnruO", "selectedActions": [72, 77, 99]}]}, {"moduleId": "p5PQbhhi", "selectedGroups": [{"groupId": "i3dDXhvu", "selectedActions": [76, 13, 72]}, {"groupId": "hnWiDiZa", "selectedActions": [32, 44, 67]}, {"groupId": "o5GFYUTZ", "selectedActions": [40, 90, 46]}]}, {"moduleId": "50uAWuOT", "selectedGroups": [{"groupId": "W9evM0Z4", "selectedActions": [12, 99, 21]}, {"groupId": "qvNefoxC", "selectedActions": [0, 2, 47]}, {"groupId": "ETJbG5x0", "selectedActions": [31, 80, 65]}]}], "namespace": "i1l83uWG", "oauthAccessTokenExpiration": 74, "oauthAccessTokenExpirationTimeUnit": "8Njaszov", "oauthRefreshTokenExpiration": 39, "oauthRefreshTokenExpirationTimeUnit": "7SDwZCVn", "redirectUri": "w6E5pUMJ", "scopes": ["rUwM1phS", "wrAbncDu", "W28xn6b0"], "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'MC5WaobG' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 32, "resource": "yQCvq5KH"}, {"action": 94, "resource": "mOINx5CC"}, {"action": 30, "resource": "YLLGKrKr"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '7bYcuadM' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 36, "resource": "ZosXQJzB"}, {"action": 82, "resource": "w6z3OiFV"}, {"action": 16, "resource": "PgOMXoJr"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '58' \
    --clientId 'z5kPBkHX' \
    --namespace $AB_NAMESPACE \
    --resource 'H4YrS6dT' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'KV7ietld' \
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
    --body '{"blacklist": ["EYR0Q54z", "oFqkstSu", "glqnjL9e"]}' \
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
    --body '{"active": false, "roleIds": ["2cq8UjYV", "P8Tx3AUH", "vovAdUPk"]}' \
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
    --limit '33' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wrlMjuid' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'opYGwZ95' \
    --body '{"ACSURL": "oHpTI1wU", "AWSCognitoRegion": "JHcjneMA", "AWSCognitoUserPool": "iPmdSkFb", "AllowedClients": ["U4oJkeoo", "1LDcTAwa", "w8APDXYU"], "AppId": "hMW8doUX", "AuthorizationEndpoint": "25a1UQAP", "ClientId": "p0nzlqn9", "EmptyStrFieldList": ["OPbfO6n6", "V7jK8oG3", "ka2BJBTw"], "EnableServerLicenseValidation": true, "Environment": "q7jOZpKq", "FederationMetadataURL": "mNDllNKj", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "oS6lAZqg", "JWKSEndpoint": "31CjlJDI", "KeyID": "YqUhaYt8", "LogoURL": "RaIUG0Q6", "NetflixCertificates": {"encryptedPrivateKey": "qDWKkXpW", "encryptedPrivateKeyName": "5TUYMLz7", "publicCertificate": "gxUlD8l1", "publicCertificateName": "HrMsrx0J", "rootCertificate": "vze0izNM", "rootCertificateName": "V1vrBtwz"}, "OrganizationId": "A8NzVrRD", "PlatformName": "f82G1mWG", "RedirectUri": "t7HKLwl7", "RegisteredDomains": [{"affectedClientIDs": ["6ZZJG7WP", "XsbKW3Eg", "EgaelxwZ"], "domain": "hVVDdOYS", "namespaces": ["sC0tvncL", "hbBJVBM0", "rYZ2v9R4"], "roleId": "46w4X6cO", "ssoCfg": {"googleKey": {"X4ja6myy": {}, "rTIrgatu": {}, "utf5nuwl": {}}, "groupConfigs": [{"assignNamespaces": ["oE1fLNlj", "fCPWKW30", "U4ocSAfD"], "group": "lUKB9wWA", "roleId": "YnssBvIG"}, {"assignNamespaces": ["116R5Zdz", "CDbjA3rb", "ilVqOFNo"], "group": "7AOjmJaK", "roleId": "mgi99OEN"}, {"assignNamespaces": ["tSXhAyGN", "It8AqUCO", "jVTQy7VO"], "group": "2QIhrxEE", "roleId": "Xv047C1s"}]}}, {"affectedClientIDs": ["7EmA0HBk", "azmVADAo", "58ytPIQZ"], "domain": "IDpZ6Emp", "namespaces": ["CpBkVOK9", "ljSjxtwL", "WhFYR0yo"], "roleId": "rlAQ4JYc", "ssoCfg": {"googleKey": {"Wlf64vbl": {}, "heoRh4Cr": {}, "k3B1wrYj": {}}, "groupConfigs": [{"assignNamespaces": ["MX1ZFvfC", "yEU7s5j6", "yZYc2okG"], "group": "MIF9c2wO", "roleId": "GZYmslYK"}, {"assignNamespaces": ["HZ6cPkqc", "5aqDl4iD", "AbA080x4"], "group": "gvQVvyqd", "roleId": "a3FkwtSn"}, {"assignNamespaces": ["zK0fOsTJ", "9jfvbUkM", "5YuVhmDT"], "group": "BOTwTIva", "roleId": "DXEKLZxz"}]}}, {"affectedClientIDs": ["Nxfs4CuV", "1SvMIU6Q", "F48l13XT"], "domain": "g9VCpVsh", "namespaces": ["HsP6yVEg", "iUKH9gAB", "WYGetXGz"], "roleId": "yHkoItJ8", "ssoCfg": {"googleKey": {"2I5MwGlc": {}, "rmpj9Kmz": {}, "YdAfcGMu": {}}, "groupConfigs": [{"assignNamespaces": ["bVgVrXak", "24KWORmF", "FIxmfzwx"], "group": "2Jm8l95U", "roleId": "ebcUHOIw"}, {"assignNamespaces": ["eI8pFkrv", "Zaxrz5Ix", "ZNwYh0WL"], "group": "PlklL5eN", "roleId": "69PvSTIM"}, {"assignNamespaces": ["Xz1HCyER", "0iMMp7W4", "ORApefWh"], "group": "gpS9HzNz", "roleId": "8A1Pt7Yg"}]}}], "Secret": "332BVNFg", "TeamID": "lVmuvxsO", "TokenAuthenticationType": "MRzOd3mk", "TokenClaimsMapping": {"GsDjOZ1s": "twHNaYIx", "Tv3FERXv": "MXmE5Hj3", "TE0cfQNJ": "Hdq6zudm"}, "TokenEndpoint": "raDK2PtX", "UserInfoEndpoint": "8ulYasah", "UserInfoHTTPMethod": "0xxVrH1P", "googleAdminConsoleKey": "yh4keyEf", "scopes": ["v1j490CQ", "XfEfzVWX", "1dND2Sdw"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WorBmZoY' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qGPOrGXS' \
    --body '{"ACSURL": "qu9iTiXF", "AWSCognitoRegion": "9zeq065s", "AWSCognitoUserPool": "ZM7COT96", "AllowedClients": ["2To2E6da", "W0sTCAvx", "Ds1k4eMm"], "AppId": "JiHWu5Sy", "AuthorizationEndpoint": "nPbDkkMM", "ClientId": "04JrOI3U", "EmptyStrFieldList": ["yMUt5nBH", "lja1Cr15", "UDYj6XsV"], "EnableServerLicenseValidation": false, "Environment": "q2Z6TcIL", "FederationMetadataURL": "kPz5a7ZH", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "uTerccB3", "JWKSEndpoint": "Xn1W0rNK", "KeyID": "aq0gwmPG", "LogoURL": "JoReEBu4", "NetflixCertificates": {"encryptedPrivateKey": "6BT2G2X3", "encryptedPrivateKeyName": "C8uKrQF4", "publicCertificate": "V6oBasDZ", "publicCertificateName": "MbZdaCRG", "rootCertificate": "qmrxzffg", "rootCertificateName": "AnMVvTJW"}, "OrganizationId": "2SzMlhai", "PlatformName": "GoUjHt4V", "RedirectUri": "V3MOtLEA", "RegisteredDomains": [{"affectedClientIDs": ["e99XqnBv", "OlpCix7i", "nFsgjl3J"], "domain": "1b9f86X5", "namespaces": ["kkIhmzSN", "XIXn7S3e", "puZDqQ7S"], "roleId": "NWliz7yZ", "ssoCfg": {"googleKey": {"D7o1mbL6": {}, "dhl9qEEL": {}, "d1MnNhM9": {}}, "groupConfigs": [{"assignNamespaces": ["WHhTn0Wa", "z8wVhmi5", "MyJoGAfe"], "group": "St75xwPO", "roleId": "BLwZtnrZ"}, {"assignNamespaces": ["2NYtvnho", "70ZzT9AE", "eRyzT9Fu"], "group": "WbHH8Zad", "roleId": "z44YdKnT"}, {"assignNamespaces": ["HnH1iJtT", "jnb1M5cS", "YV8uzCYp"], "group": "78T8QrrD", "roleId": "bB4f6mil"}]}}, {"affectedClientIDs": ["yYKBkcNP", "vxBTQB93", "PJ5pgXCW"], "domain": "fL6jZ3Ww", "namespaces": ["sf683ePa", "Wqsu1TsV", "m2EaQEyb"], "roleId": "NgK9EaBS", "ssoCfg": {"googleKey": {"WcXJxJ7C": {}, "vv1DmtmM": {}, "PAkQpX5J": {}}, "groupConfigs": [{"assignNamespaces": ["nUpTAZbq", "5YB3eQtx", "bjzAupfK"], "group": "mRUllsF6", "roleId": "f3TdwlQg"}, {"assignNamespaces": ["u0DqVVhF", "l7U154mN", "RF9exY4y"], "group": "ch64osjn", "roleId": "IU94XMVY"}, {"assignNamespaces": ["l8izjqVl", "ojid3bTa", "am9Xaai4"], "group": "SpORhi6o", "roleId": "ORTiwFCU"}]}}, {"affectedClientIDs": ["UJhPMdfx", "jIwV1Rd1", "C5yChgzD"], "domain": "h6iHtb6G", "namespaces": ["G8pCdvdr", "8Xkao3h3", "896wRG83"], "roleId": "S8o4L6Fk", "ssoCfg": {"googleKey": {"3cM0OVxq": {}, "xbqZmLRx": {}, "Sp2hXH9A": {}}, "groupConfigs": [{"assignNamespaces": ["3xnh8iHo", "Ab8oZyrR", "ZM8PxUg7"], "group": "q9ycsi2N", "roleId": "lE36nLz4"}, {"assignNamespaces": ["RkwM0pIo", "Q7jMOhic", "oMpfLq9S"], "group": "PXZrPtOu", "roleId": "GDArMLCi"}, {"assignNamespaces": ["r80ngktV", "1q4Hst3T", "WsuAMWqu"], "group": "weg9ak3L", "roleId": "25sil8S2"}]}}], "Secret": "KjKOVaCx", "TeamID": "0yIgPR1l", "TokenAuthenticationType": "pskS3xNo", "TokenClaimsMapping": {"Awt0cAu6": "moz6FNVq", "x5s9pz90": "S5gWP555", "Pf8rVQgn": "KD9ogzHO"}, "TokenEndpoint": "K15DwmFK", "UserInfoEndpoint": "fUFCFZKi", "UserInfoHTTPMethod": "t0DwP4lm", "googleAdminConsoleKey": "8eAdIqrh", "scopes": ["PFiIodPG", "QSsPudZP", "x05wXJhJ"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XiV6WEld' \
    --body '{"affectedClientIDs": ["Ehpz3VwL", "xgIc855p", "bmCvYgx8"], "assignedNamespaces": ["7CHzCK3R", "dH12FLvw", "hg2TBU7A"], "domain": "IgU54lSk", "roleId": "UE7eeTsF", "ssoCfg": {"googleKey": {"dtlyloKE": {}, "ahv8SMzV": {}, "HySKKT2M": {}}, "groupConfigs": [{"assignNamespaces": ["jTbn6jXU", "NJSCumoU", "FyhTEnI4"], "group": "qIBEmnTn", "roleId": "U3jl4cxV"}, {"assignNamespaces": ["jofqEHDv", "PXkaDktp", "ky18HYO1"], "group": "7wWg4H4d", "roleId": "jXqySn8S"}, {"assignNamespaces": ["qb1LXxqf", "Ux0CEqWh", "qLMOhkpk"], "group": "1rAb8nYg", "roleId": "EHfa1ElS"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ruPB1Ppo' \
    --body '{"domain": "kksMZ6Go", "ssoGroups": ["qULChCCk", "GlJkZzT7", "RJXpY1hX"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XCgD9Z2B' \
    --body '{"affectedClientIDs": ["3Ac5Jv9w", "CcyXcWfc", "tUTxODEj"], "assignedNamespaces": ["1SekyiCe", "h1CLiUzd", "jGF3QAiQ"], "domain": "C5AVwZS0", "roleId": "lZ852cZQ", "ssoCfg": {"googleKey": {"Mg2Khe5R": {}, "Y0UEnp9T": {}, "CUxIcxmg": {}}, "groupConfigs": [{"assignNamespaces": ["4TtZTFfq", "02eRE1Is", "XNW4AZDE"], "group": "Mg56RJTY", "roleId": "yjis9pr0"}, {"assignNamespaces": ["b7qNfQhN", "wYzPd7X0", "AtFynh3E"], "group": "ZqaHxobf", "roleId": "mOxI20BR"}, {"assignNamespaces": ["MbRE07ZK", "SeXskZrI", "eYiRceVT"], "group": "DJvDIxao", "roleId": "kWV4zpE0"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'iXvtZjBa' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'yM1NLmTp' \
    --body '{"acsUrl": "eYFkyIDf", "apiKey": "dVJ4fzI4", "appId": "jpNcTCiX", "federationMetadataUrl": "waMja4ZJ", "isActive": false, "redirectUri": "FwYzkBoW", "secret": "qd3W7vGU", "ssoUrl": "xvskovTa"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vBL0uII6' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'DJ5WJHSw' \
    --body '{"acsUrl": "kCZokA2u", "apiKey": "1dGjjcoz", "appId": "NDuWEio3", "federationMetadataUrl": "vVHwRzNA", "isActive": true, "redirectUri": "PWssAoHc", "secret": "TlW1GJmr", "ssoUrl": "lv1wp7oH"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PleVYx7D' \
    --rawPID 'true' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["R7zZh4FK", "qyjBiSvm", "9xaPtuar"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xuA814w3' \
    --platformUserId 'ZwEhbxVY' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    --body '{"config": {"minimumAllowedInterval": 37}, "type": "2qKrCjVr"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"additions": [{"actions": [66, 1, 17], "resource": "f4Dhd8aE"}, {"actions": [67, 68, 92], "resource": "Hn64QCUT"}, {"actions": [60, 79, 74], "resource": "7rzqDx65"}], "exclusions": [{"actions": [3, 99, 55], "resource": "mYhDPt7m"}, {"actions": [27, 35, 11], "resource": "fTQbBn0U"}, {"actions": [96, 16, 3], "resource": "or24rleo"}], "overrides": [{"actions": [12, 95, 25], "resource": "3GEkjreq"}, {"actions": [57, 56, 16], "resource": "9JCNyAAZ"}, {"actions": [36, 84, 1], "resource": "9MOluyIK"}], "replacements": [{"replacement": {"actions": [50, 62, 29], "resource": "8SYs7k18"}, "target": "fLZDs9DP"}, {"replacement": {"actions": [76, 69, 24], "resource": "BVoF4vog"}, "target": "EsCLKz8I"}, {"replacement": {"actions": [61, 94, 47], "resource": "7Zf0Rl98"}, "target": "teer4DbS"}]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateRoleOverrideConfigV3' test.out

#- 159 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
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
    --roleId 'K1wBGXq8' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Ht0u8jrV' \
    --after '87' \
    --before '10' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'QBgGQ3df' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByEmailAddressV3' test.out

#- 164 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["gf6Dlkdn", "gRFhh7JA", "c0QN96zD"]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminBulkUpdateUsersV3' test.out

#- 165 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'aDkxnl2m' \
    --body '{"bulkUserId": ["0ddhF8bT", "IfMKFr7m", "oynsC1Wa"]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetBulkUserBanV3' test.out

#- 166 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["1BhMzkgr", "bOOAnR9Q", "Kfd3DukD"]}' \
    > test.out 2>&1
eval_tap $? 166 'AdminListUserIDByUserIDsV3' test.out

#- 167 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lVLTIsap", "DAJSMMeS", "JyOZLqc6"]}' \
    > test.out 2>&1
eval_tap $? 167 'AdminBulkGetUsersPlatform' test.out

#- 168 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["4LODeZ7f", "gbexEQJz", "X3xh5MRm"], "isAdmin": false, "languageTag": "4LFrryEl", "namespace": "5I9DxgHa", "roles": ["1LOo9YBr", "stF7fl1B", "cgB244CE"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminInviteUserV3' test.out

#- 169 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '88' \
    --platformUserId '8eiSIcQN' \
    --platformId 'la831lSW' \
    > test.out 2>&1
eval_tap $? 169 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 170 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUsersV3' test.out

#- 171 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '6d62T8Ai' \
    --endDate 'Q0wyYN6E' \
    --includeTotal 'false' \
    --limit '84' \
    --offset '26' \
    --platformBy 'YWAZn19e' \
    --platformId 'FnicKJXL' \
    --query 'mghMNIf4' \
    --roleIds 'pkrxGhUm' \
    --skipLoginQueue 'false' \
    --startDate 'aKndTduh' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 171 'AdminSearchUserV3' test.out

#- 172 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["PHWDVWXk", "FvzMlg6B", "N7EJOfhJ"]}' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetBulkUserByEmailAddressV3' test.out

#- 173 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TRXdZlSz' \
    > test.out 2>&1
eval_tap $? 173 'AdminGetUserByUserIdV3' test.out

#- 174 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VRqOqt9H' \
    --body '{"avatarUrl": "bxlONofC", "country": "9QstuN55", "dateOfBirth": "C2pIF6lB", "displayName": "Sigzew39", "languageTag": "Gk97TWPc", "skipLoginQueue": false, "uniqueDisplayName": "p4okM7er", "userName": "RepvY0VN"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserV3' test.out

#- 175 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'l2nATdLb' \
    --activeOnly 'false' \
    --after 'u1OrLndo' \
    --before 'yNwN8ZM0' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetUserBanV3' test.out

#- 176 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'efWJRQkw' \
    --body '{"ban": "XLwZ0sew", "comment": "KPE0qizP", "endDate": "eQNABHoT", "reason": "q9RT2xL0", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 176 'AdminBanUserV3' test.out

#- 177 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId '4KSwxz99' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserBanSummaryV3' test.out

#- 178 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'jBKw5jxb' \
    --namespace $AB_NAMESPACE \
    --userId 'lNxZkOjq' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserBanV3' test.out

#- 179 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jV5zqC4T' \
    --body '{"context": "OF8RkMCl", "emailAddress": "WPGSAQDw", "languageTag": "pe02ZHzj", "upgradeToken": "NoIqsJPr"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminSendVerificationCodeV3' test.out

#- 180 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KSyNxmJy' \
    --body '{"Code": "ReJ1b9uX", "ContactType": "CvyBg3Sj", "LanguageTag": "IAiD7axY", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 180 'AdminVerifyAccountV3' test.out

#- 181 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'LX3NEXUr' \
    > test.out 2>&1
eval_tap $? 181 'GetUserVerificationCode' test.out

#- 182 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tpnAVK4j' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserDeletionStatusV3' test.out

#- 183 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '0WrTMr1V' \
    --body '{"deletionDate": 44, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserDeletionStatusV3' test.out

#- 184 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '13YSH8Kh' \
    > test.out 2>&1
eval_tap $? 184 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 185 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xl6mrw6J' \
    --body '{"code": "ElnwCY7o", "country": "d1Y81ID9", "dateOfBirth": "VnhK3uyn", "displayName": "R1PVA4RO", "emailAddress": "wqKclYrX", "password": "6hL14pxj", "uniqueDisplayName": "LakdYGzi", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 185 'AdminUpgradeHeadlessAccountV3' test.out

#- 186 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F6IBapax' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserInformationV3' test.out

#- 187 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VCUSVJT2' \
    --after '0.9006673553397182' \
    --before '0.045189173731839616' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserLoginHistoriesV3' test.out

#- 188 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RfQbvcy6' \
    --body '{"languageTag": "krBg0Zic", "mfaToken": "PCyI4Rj2", "newPassword": "IvtUHP6c", "oldPassword": "kXKvxn59"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminResetPasswordV3' test.out

#- 189 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DKghY0AL' \
    --body '{"Permissions": [{"Action": 45, "Resource": "GliwsZXu", "SchedAction": 54, "SchedCron": "419JR6P8", "SchedRange": ["pdP6ZRdC", "0lyzHF1n", "28ytGPGD"]}, {"Action": 61, "Resource": "SpIan4bW", "SchedAction": 12, "SchedCron": "afk0jdGh", "SchedRange": ["Oe8OCAeX", "v5v96LJy", "1e5ZRjXO"]}, {"Action": 16, "Resource": "CKjR3Z3f", "SchedAction": 40, "SchedCron": "6BVwj03H", "SchedRange": ["xJtsqysJ", "7FFDAp3Y", "KbcG5vhF"]}]}' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateUserPermissionV3' test.out

#- 190 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RTgG5svl' \
    --body '{"Permissions": [{"Action": 67, "Resource": "WFWErlOV", "SchedAction": 65, "SchedCron": "YQklfmb4", "SchedRange": ["PCEK4dkh", "8Ohau75T", "F9DBGnbO"]}, {"Action": 96, "Resource": "Ncg9FBjZ", "SchedAction": 82, "SchedCron": "8Zqju3zS", "SchedRange": ["6vkIe60d", "QOkhXgb6", "34arlmK0"]}, {"Action": 7, "Resource": "XO8uYU4x", "SchedAction": 81, "SchedCron": "SZ4dsmnA", "SchedRange": ["BAnimUgR", "nIQcZf1R", "CnSr8q0l"]}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminAddUserPermissionsV3' test.out

#- 191 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RI5XAyY8' \
    --body '[{"Action": 52, "Resource": "GXdqzVlq"}, {"Action": 83, "Resource": "pI6i7cXZ"}, {"Action": 15, "Resource": "PeKokI8u"}]' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserPermissionBulkV3' test.out

#- 192 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '92' \
    --namespace $AB_NAMESPACE \
    --resource 'snpx3QWF' \
    --userId 'fNYSG7wR' \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteUserPermissionV3' test.out

#- 193 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '2dHHkcf1' \
    --after 'gGpWw2wS' \
    --before 'HZKNT3IA' \
    --limit '100' \
    --platformId 'SIGkkduT' \
    --targetNamespace 'GSvT0Bc6' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetUserPlatformAccountsV3' test.out

#- 194 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XwdxmKiz' \
    --status 'bWsuqCio' \
    > test.out 2>&1
eval_tap $? 194 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 195 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'XEwqzXCL' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetListJusticePlatformAccounts' test.out

#- 196 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'dKkBszy1' \
    --userId 'RH9lnHOO' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetUserMapping' test.out

#- 197 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'XTIyaq1W' \
    --userId 'S2MuvaqE' \
    > test.out 2>&1
eval_tap $? 197 'AdminCreateJusticeUser' test.out

#- 198 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'e69yBCZw' \
    --skipConflict 'true' \
    --body '{"platformId": "nmElawd0", "platformUserId": "GOM1UrxD"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminLinkPlatformAccount' test.out

#- 199 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wKn4D4n4' \
    --platformId 'dAV5gChv' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetUserLinkHistoriesV3' test.out

#- 200 AdminPlatformUnlinkV3
eval_tap 0 200 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 201 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'F2gU6cxv' \
    --userId 'kPyAFlZe' \
    > test.out 2>&1
eval_tap $? 201 'AdminPlatformUnlinkAllV3' test.out

#- 202 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'd1FHTrvs' \
    --userId 'NefV7PeF' \
    --ticket 'hVlL7alT' \
    > test.out 2>&1
eval_tap $? 202 'AdminPlatformLinkV3' test.out

#- 203 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 203 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 204 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LSz6ZuTW' \
    --userId 'bnYUWVam' \
    > test.out 2>&1
eval_tap $? 204 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 205 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2sm8EmVa' \
    --userId 'QnQSiaFa' \
    --platformToken 'KihizQAX' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 206 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'LpMsBUdX' \
    --userId 'sp0T4Ybo' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 206 'AdminGetUserSinglePlatformAccount' test.out

#- 207 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'X7EB1Wd1' \
    --body '["wY1fZVzV", "IyfQDbRq", "vs3UH1pU"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteUserRolesV3' test.out

#- 208 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iW5kM8ai' \
    --body '[{"namespace": "l5rqVNpy", "roleId": "ME8MgWVT"}, {"namespace": "DAIeWW5v", "roleId": "F93NE1LH"}, {"namespace": "XhaM4VK0", "roleId": "lgLlRyMz"}]' \
    > test.out 2>&1
eval_tap $? 208 'AdminSaveUserRoleV3' test.out

#- 209 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'J3B2IUbJ' \
    --userId 'sDYZ53rV' \
    > test.out 2>&1
eval_tap $? 209 'AdminAddUserRoleV3' test.out

#- 210 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'wDGx15XD' \
    --userId 'WnM4xj66' \
    > test.out 2>&1
eval_tap $? 210 'AdminDeleteUserRoleV3' test.out

#- 211 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZR0O5r34' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserStateByUserIdV3' test.out

#- 212 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Mu0bRUAk' \
    --body '{"enabled": true, "reason": "p2fC4Yoq"}' \
    > test.out 2>&1
eval_tap $? 212 'AdminUpdateUserStatusV3' test.out

#- 213 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'GrqqrSMP' \
    --body '{"emailAddress": "OB77wCOE", "password": "uAp4do4D"}' \
    > test.out 2>&1
eval_tap $? 213 'AdminTrustlyUpdateUserIdentity' test.out

#- 214 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '68J1fmtt' \
    > test.out 2>&1
eval_tap $? 214 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 215 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'ndMhviMQ' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "4709OPBg"}' \
    > test.out 2>&1
eval_tap $? 215 'AdminUpdateClientSecretV3' test.out

#- 216 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'FOkJCv93' \
    > test.out 2>&1
eval_tap $? 216 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 217 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'pXmfq1yV' \
    --before 'cb1YeWhO' \
    --isWildcard 'true' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRolesV3' test.out

#- 218 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "A5Fz2hb6", "namespace": "cTMlAKoo", "userId": "6fBq2gwG"}, {"displayName": "zBjg8ra7", "namespace": "4VJy2XH2", "userId": "rGx1w2YZ"}, {"displayName": "uxgDxWxE", "namespace": "PbD7S95V", "userId": "y9mCNLeQ"}], "members": [{"displayName": "W9sNK2iB", "namespace": "rZmafhlX", "userId": "LTnTPXNT"}, {"displayName": "cV4MKJ94", "namespace": "B2tNPtkF", "userId": "VL2Wvnzn"}, {"displayName": "mg2LZQXh", "namespace": "ozgcFBk9", "userId": "bQ99L3nO"}], "permissions": [{"action": 90, "resource": "NAdhlKnM", "schedAction": 80, "schedCron": "eHzotinf", "schedRange": ["UZ57gTaD", "3wUgKbfN", "Bo8YaT9C"]}, {"action": 53, "resource": "q44rrnt5", "schedAction": 49, "schedCron": "up4Fxdx7", "schedRange": ["hxRFJch4", "PSfTmLnW", "yBFM8Vst"]}, {"action": 61, "resource": "nZRfjqnB", "schedAction": 85, "schedCron": "96PnbZhO", "schedRange": ["xeeXGrPG", "74e36G29", "JF41vygj"]}], "roleName": "GPPU5FJo"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminCreateRoleV3' test.out

#- 219 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'o5M2zU3L' \
    > test.out 2>&1
eval_tap $? 219 'AdminGetRoleV3' test.out

#- 220 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '7uUHuiGp' \
    > test.out 2>&1
eval_tap $? 220 'AdminDeleteRoleV3' test.out

#- 221 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'mLHLlNn1' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "Q9rFlfLO"}' \
    > test.out 2>&1
eval_tap $? 221 'AdminUpdateRoleV3' test.out

#- 222 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'uhXIvPym' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRoleAdminStatusV3' test.out

#- 223 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'kyTbXKda' \
    > test.out 2>&1
eval_tap $? 223 'AdminUpdateAdminRoleStatusV3' test.out

#- 224 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'UJWRVcK2' \
    > test.out 2>&1
eval_tap $? 224 'AdminRemoveRoleAdminV3' test.out

#- 225 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'GbRFJE1e' \
    --after 'hayFCc1V' \
    --before 'bmzSLMGn' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 225 'AdminGetRoleManagersV3' test.out

#- 226 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '7QzXhrRe' \
    --body '{"managers": [{"displayName": "kUcyBA10", "namespace": "pML36wz5", "userId": "6KkSk6b1"}, {"displayName": "9jjII7LL", "namespace": "dS5S89id", "userId": "vS4QpFPa"}, {"displayName": "BzfBOZMH", "namespace": "LJG4OP2P", "userId": "5DCoytDd"}]}' \
    > test.out 2>&1
eval_tap $? 226 'AdminAddRoleManagersV3' test.out

#- 227 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'S1WTKWdn' \
    --body '{"managers": [{"displayName": "i73fg7Un", "namespace": "JIepw1LE", "userId": "VNPNLMML"}, {"displayName": "V9qebXLX", "namespace": "8cfDXE01", "userId": "6FrBu14G"}, {"displayName": "5OquVErc", "namespace": "v4Y6EK7G", "userId": "nvDSKHu8"}]}' \
    > test.out 2>&1
eval_tap $? 227 'AdminRemoveRoleManagersV3' test.out

#- 228 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'IO2rhRl5' \
    --after 'WwuNRnAI' \
    --before 'cJxnqE1f' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 228 'AdminGetRoleMembersV3' test.out

#- 229 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'r1MOVFyL' \
    --body '{"members": [{"displayName": "Y7d3a0Ib", "namespace": "K41zQJT7", "userId": "KxT22kLZ"}, {"displayName": "2SGy9dIK", "namespace": "5y1h1Qmf", "userId": "1K624m6n"}, {"displayName": "mA104BcP", "namespace": "kF3guyrA", "userId": "3VQ8KDnZ"}]}' \
    > test.out 2>&1
eval_tap $? 229 'AdminAddRoleMembersV3' test.out

#- 230 AdminRemoveRoleMembersV3
eval_tap 0 230 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 231 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '0jgYBVJ6' \
    --body '{"permissions": [{"action": 8, "resource": "0dhBR5Me", "schedAction": 91, "schedCron": "svs0Kx8y", "schedRange": ["VQ6iODEE", "jCGm4J04", "gVoAqBaV"]}, {"action": 98, "resource": "SO629Dv4", "schedAction": 86, "schedCron": "CS7ZjR1f", "schedRange": ["GnZi8ATR", "eQzUo0Gt", "JdJPQNOI"]}, {"action": 63, "resource": "FMB1qF5C", "schedAction": 36, "schedCron": "kzaLDxcY", "schedRange": ["qzKblQX6", "V4gbg3zR", "gTxmHkqc"]}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminUpdateRolePermissionsV3' test.out

#- 232 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'scepuJOs' \
    --body '{"permissions": [{"action": 57, "resource": "Qi0CtF0n", "schedAction": 19, "schedCron": "dVjudbB8", "schedRange": ["87QWNOqd", "E5gEpuwF", "T9KwK6Tx"]}, {"action": 44, "resource": "KxSP5HH3", "schedAction": 66, "schedCron": "g2bk0mop", "schedRange": ["hRTZPM22", "D3LqzwEE", "9M16pYsw"]}, {"action": 16, "resource": "W6Yl2xZe", "schedAction": 29, "schedCron": "1OnhMPcP", "schedRange": ["xNNCTd7s", "DicBukUC", "vJkwgdwG"]}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminAddRolePermissionsV3' test.out

#- 233 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'kg0LN7fN' \
    --body '["jH2O2ldI", "oi8QYjJL", "Bwdy2YUq"]' \
    > test.out 2>&1
eval_tap $? 233 'AdminDeleteRolePermissionsV3' test.out

#- 234 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '50' \
    --resource 'y80ajWew' \
    --roleId 'vGaf9UJ1' \
    > test.out 2>&1
eval_tap $? 234 'AdminDeleteRolePermissionV3' test.out

#- 235 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 235 'AdminGetMyUserV3' test.out

#- 236 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'kgX712cg' \
    --extendExp 'false' \
    --redirectUri 'XCMIiTtr' \
    --password '9VQ4lLzv' \
    --requestId 'TcVsbxjC' \
    --userName 'xxL4wkCB' \
    > test.out 2>&1
eval_tap $? 236 'UserAuthenticationV3' test.out

#- 237 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'UCVmeLJ8' \
    --linkingToken '2b9hqX8v' \
    --password 'YQMTnYJj' \
    --username 'RfrLO6nR' \
    > test.out 2>&1
eval_tap $? 237 'AuthenticationWithPlatformLinkV3' test.out

#- 238 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'true' \
    --clientId 'FszdvC4g' \
    --linkingToken 'KNruDhX8' \
    --password 'htuJntJR' \
    --username '7WzJ6yYG' \
    > test.out 2>&1
eval_tap $? 238 'AuthenticateAndLinkForwardV3' test.out

#- 239 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData '61Q0noWH' \
    --extendExp 'false' \
    --linkingToken '8zCWVRMH' \
    > test.out 2>&1
eval_tap $? 239 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 240 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'XCwPk6PL' \
    --state 'nmLTKuHu' \
    --platformId 'UjetkBmo' \
    > test.out 2>&1
eval_tap $? 240 'RequestOneTimeLinkingCodeV3' test.out

#- 241 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'koHOnqRt' \
    > test.out 2>&1
eval_tap $? 241 'ValidateOneTimeLinkingCodeV3' test.out

#- 242 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'bJGbJoEd' \
    --isTransient 'true' \
    --clientId 'r46wka2b' \
    --oneTimeLinkCode 'D5jQjmPe' \
    > test.out 2>&1
eval_tap $? 242 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 243 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 243 'GetCountryLocationV3' test.out

#- 244 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 244 'Logout' test.out

#- 245 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'EtNDcoXj' \
    --codeChallengeMethod 'S256' \
    --clientId 'FLoYEUZQ' \
    > test.out 2>&1
eval_tap $? 245 'RequestTokenExchangeCodeV3' test.out

#- 246 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KcccUb8Z' \
    --userId 'mAQGvk8s' \
    --platformUserId 'uS7e5vl0' \
    > test.out 2>&1
eval_tap $? 246 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 247 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '9Ajvb5Q5' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserV3' test.out

#- 248 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'pmnBOKOR' \
    --codeChallenge '0QYAafU6' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --loginWebBased 'true' \
    --nonce 'jhB2dSEn' \
    --oneTimeLinkCode 'nZDVRyqz' \
    --redirectUri 'iAYqGSAU' \
    --scope 'owCMaHzB' \
    --state 'Y9PuSNOu' \
    --targetAuthPage 'fkKQgpq2' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'pw2cduRw' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 248 'AuthorizeV3' test.out

#- 249 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'D7M9ERmy' \
    > test.out 2>&1
eval_tap $? 249 'TokenIntrospectionV3' test.out

#- 250 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 250 'GetJWKSV3' test.out

#- 251 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'Qo9tDlH3' \
    --factor 'GHqkopnq' \
    --mfaToken 'flTCSKP9' \
    > test.out 2>&1
eval_tap $? 251 'SendMFAAuthenticationCode' test.out

#- 252 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'kh26X2yU' \
    --mfaToken 'bz4YaMXu' \
    > test.out 2>&1
eval_tap $? 252 'Change2faMethod' test.out

#- 253 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'R8eI2YT6' \
    --factor 'lcLf7yoS' \
    --mfaToken 'jQuO4dCe' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 253 'Verify2faCode' test.out

#- 254 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'pxbPMPCj' \
    --factors 'e6YhGtlD' \
    --rememberDevice 'true' \
    --clientId 's3VPHLa8' \
    --code 'BlpPaz6x' \
    --factor 'H4HL0POq' \
    --mfaToken 'ekGvqFQ5' \
    > test.out 2>&1
eval_tap $? 254 'Verify2faCodeForward' test.out

#- 255 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eFAvp69N' \
    --userId '72QuK4Mr' \
    > test.out 2>&1
eval_tap $? 255 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 256 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '5Wm5OybY' \
    --clientId 'xUJSkgfN' \
    --redirectUri 'WP5LsDEa' \
    --requestId 'hTvnyOOJ' \
    > test.out 2>&1
eval_tap $? 256 'AuthCodeRequestV3' test.out

#- 257 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '3oBjo5An' \
    --additionalData 'hGsFphQQ' \
    --clientId '8AtaQyP3' \
    --createHeadless 'true' \
    --deviceId 'zGAcc3tU' \
    --macAddress 'GiLtLdUi' \
    --platformToken 'Q7yng6hv' \
    --serviceLabel '0.5281747079100505' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 257 'PlatformTokenGrantV3' test.out

#- 258 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 258 'GetRevocationListV3' test.out

#- 259 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'ZYSxJyY3' \
    > test.out 2>&1
eval_tap $? 259 'TokenRevocationV3' test.out

#- 260 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'VKyxXMA0' \
    --simultaneousTicket 'UDkCRqly' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'ysky4B6z' \
    > test.out 2>&1
eval_tap $? 260 'SimultaneousLoginV3' test.out

#- 261 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'mywsII2x' \
    --clientId '1IgcxECt' \
    --clientSecret 'IA1fMnHK' \
    --code 'XiXEnVKs' \
    --codeVerifier 'tlTvHo1n' \
    --extendNamespace 'uFETbpip' \
    --extendExp 'true' \
    --password '8MmEZ5cG' \
    --redirectUri 'mnBG7UvN' \
    --refreshToken 'zPfhwRaC' \
    --username 'c68aEYr9' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 261 'TokenGrantV3' test.out

#- 262 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'LI7mSDf9' \
    > test.out 2>&1
eval_tap $? 262 'VerifyTokenV3' test.out

#- 263 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '6fmxUI1k' \
    --code 'btnx5UCF' \
    --error 'XSeD7sqC' \
    --openidAssocHandle 'eZTFQcWg' \
    --openidClaimedId 'zA4lqtZf' \
    --openidIdentity 'H43IQTet' \
    --openidMode 'yOJDpqao' \
    --openidNs 'IaNuoSlO' \
    --openidOpEndpoint 'csB0CJPz' \
    --openidResponseNonce 'WBtuwWdA' \
    --openidReturnTo 'tQIHSmtA' \
    --openidSig 'OiUs4W1k' \
    --openidSigned 'zmg1yqMn' \
    --state '82d1desK' \
    > test.out 2>&1
eval_tap $? 263 'PlatformAuthenticationV3' test.out

#- 264 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'CF2GFPyn' \
    --platformToken '8obpVf6t' \
    > test.out 2>&1
eval_tap $? 264 'PlatformTokenRefreshV3' test.out

#- 265 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'JomrynjD' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetInputValidations' test.out

#- 266 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'LhkPulPr' \
    > test.out 2>&1
eval_tap $? 266 'PublicGetInputValidationByField' test.out

#- 267 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '3aWhKqAH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 267 'PublicGetCountryAgeRestrictionV3' test.out

#- 268 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'QBotWKrC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 268 'PublicGetConfigValueV3' test.out

#- 269 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 269 'PublicGetCountryListV3' test.out

#- 270 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 270 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 271 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'D9jKjrCX' \
    > test.out 2>&1
eval_tap $? 271 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 272 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 272 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 273 PublicGetUserByPlatformUserIDV3
eval_tap 0 273 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 274 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetProfileUpdateStrategyV3' test.out

#- 275 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'kNGSTRYA' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetAsyncStatus' test.out

#- 276 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'sXvaxk2d' \
    --limit '16' \
    --offset '77' \
    --platformBy 'aLWLmO0K' \
    --platformId 'uzeusSQE' \
    --query '8OyjL1YL' \
    > test.out 2>&1
eval_tap $? 276 'PublicSearchUserV3' test.out

#- 277 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "rXZhrn8e", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "JaEThQNC", "policyId": "8bDBKxTR", "policyVersionId": "D4jUeDRd"}, {"isAccepted": true, "localizedPolicyVersionId": "RBHcZ8dT", "policyId": "QQ5jcr65", "policyVersionId": "IAwwgyNz"}, {"isAccepted": false, "localizedPolicyVersionId": "kd0SBI7W", "policyId": "IlB20aOG", "policyVersionId": "x0KpoQ2o"}], "authType": "fwPNvu93", "code": "4VnMehOb", "country": "98Jj0Y7g", "dateOfBirth": "16tNbymI", "displayName": "2xqsOIg8", "emailAddress": "ytdLEr99", "password": "JZIfnhko", "reachMinimumAge": true, "uniqueDisplayName": "wAqqFeOj"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicCreateUserV3' test.out

#- 278 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '3D4Fesgg' \
    --query 'bQB35jjm' \
    > test.out 2>&1
eval_tap $? 278 'CheckUserAvailability' test.out

#- 279 PublicBulkGetUsers
eval_tap 0 279 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 280 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Jb1oeG9J", "languageTag": "63ZyXgt5"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicSendRegistrationCode' test.out

#- 281 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "NclajB1E", "emailAddress": "9T7nqdQl"}' \
    > test.out 2>&1
eval_tap $? 281 'PublicVerifyRegistrationCode' test.out

#- 282 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "y7dgzsdA", "languageTag": "6epF2Dhl"}' \
    > test.out 2>&1
eval_tap $? 282 'PublicForgotPasswordV3' test.out

#- 283 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "lYS4xwvJ", "password": "FUdcLPiR", "uniqueDisplayName": "FLzc2xpc", "username": "5HeFYiDC"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicValidateUserInput' test.out

#- 284 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'TPt3NXNO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'GetAdminInvitationV3' test.out

#- 285 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'RSaHcji9' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "O0Vf5OmZ", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "PE0JrUF2", "policyId": "naIGrybq", "policyVersionId": "WOM7lgJl"}, {"isAccepted": false, "localizedPolicyVersionId": "BvmJUGdf", "policyId": "RU8PF4gd", "policyVersionId": "2pAGMHE7"}, {"isAccepted": false, "localizedPolicyVersionId": "RzQzIaDe", "policyId": "uT8GqmEm", "policyVersionId": "kzFeIPWl"}], "authType": "agdxuoYB", "code": "21cE7wT5", "country": "sBxOmt3Q", "dateOfBirth": "EapYAYZU", "displayName": "7EpP6Skp", "emailAddress": "l8jtNidG", "password": "KuIZLfxq", "reachMinimumAge": false, "uniqueDisplayName": "O0xLoX59"}' \
    > test.out 2>&1
eval_tap $? 285 'CreateUserFromInvitationV3' test.out

#- 286 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "uelnFepm", "country": "MoD0aiDN", "dateOfBirth": "n5MNJsJh", "displayName": "Tc5a4GTJ", "languageTag": "xetE3soZ", "uniqueDisplayName": "l3eL4I9L", "userName": "uYjRKaRC"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateUserV3' test.out

#- 287 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "hHUNxkzQ", "country": "qndbs18J", "dateOfBirth": "sNGzBFKz", "displayName": "iBcjY3j2", "languageTag": "CRRPmaSn", "uniqueDisplayName": "7YC8bDtY", "userName": "VQsAeYx2"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicPartialUpdateUserV3' test.out

#- 288 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "Kt6VIDXq", "emailAddress": "4yVcZFMr", "languageTag": "yrlaHtew", "upgradeToken": "zBJyuNkr"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicSendVerificationCodeV3' test.out

#- 289 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "16cWJIlB", "contactType": "7xMghxv5", "languageTag": "u3Wt7IMm", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 289 'PublicUserVerificationV3' test.out

#- 290 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "GngzYmxu", "country": "lZ1BWWJW", "dateOfBirth": "vRyY5iay", "displayName": "8RBZwC7d", "emailAddress": "AuwxR116", "password": "ubigkB7D", "uniqueDisplayName": "Hh1rEAJ7", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 290 'PublicUpgradeHeadlessAccountV3' test.out

#- 291 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "Ujh38gUY", "password": "rT2Mc4BP"}' \
    > test.out 2>&1
eval_tap $? 291 'PublicVerifyHeadlessAccountV3' test.out

#- 292 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "SkJjHoK8", "mfaToken": "a1tJjd2W", "newPassword": "jtoNe7a7", "oldPassword": "8DDvtZ3Z"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicUpdatePasswordV3' test.out

#- 293 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'bK96POU9' \
    > test.out 2>&1
eval_tap $? 293 'PublicCreateJusticeUser' test.out

#- 294 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ICwzzJuT' \
    --redirectUri 'ejK7W6cU' \
    --ticket 'ivxIA8Y1' \
    > test.out 2>&1
eval_tap $? 294 'PublicPlatformLinkV3' test.out

#- 295 PublicPlatformUnlinkV3
eval_tap 0 295 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 296 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KagDOCGG' \
    > test.out 2>&1
eval_tap $? 296 'PublicPlatformUnlinkAllV3' test.out

#- 297 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9waEcDWp' \
    --ticket 'g3nxsYLH' \
    > test.out 2>&1
eval_tap $? 297 'PublicForcePlatformLinkV3' test.out

#- 298 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'i304JBPo' \
    --clientId '0bOGnqOJ' \
    --redirectUri 'qc4ulWHL' \
    > test.out 2>&1
eval_tap $? 298 'PublicWebLinkPlatform' test.out

#- 299 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '91vsgINZ' \
    --code 'bfiGK5G4' \
    --state 'FKcqFGwa' \
    > test.out 2>&1
eval_tap $? 299 'PublicWebLinkPlatformEstablish' test.out

#- 300 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'URCaMinR' \
    --code 'qJhm1QCG' \
    --state 'ik2fmPUC' \
    > test.out 2>&1
eval_tap $? 300 'PublicProcessWebLinkPlatformV3' test.out

#- 301 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "koDRdrAN", "userIds": ["KDepMtq4", "aSS7bDgP", "AUT4UECw"]}' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetUsersPlatformInfosV3' test.out

#- 302 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "4j2Wphmm", "code": "SlsqYg8U", "emailAddress": "h1295tek", "languageTag": "ZcUnI4xU", "newPassword": "HA9E3war"}' \
    > test.out 2>&1
eval_tap $? 302 'ResetPasswordV3' test.out

#- 303 PublicGetUserByUserIdV3
eval_tap 0 303 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 304 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '8DoRXVFP' \
    --activeOnly 'true' \
    --after 'F7ltd8K9' \
    --before 'MBzKhWSo' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetUserBanHistoryV3' test.out

#- 305 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pulohrzz' \
    > test.out 2>&1
eval_tap $? 305 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 306 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EsYzbJGw' \
    > test.out 2>&1
eval_tap $? 306 'PublicGetUserInformationV3' test.out

#- 307 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Sognhxre' \
    --after '0.1098531975326954' \
    --before '0.5209411953575652' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUserLoginHistoriesV3' test.out

#- 308 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NH6cbc8u' \
    --after 'gvrVlcgA' \
    --before '1B96wpdX' \
    --limit '97' \
    --platformId 'GblWubat' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetUserPlatformAccountsV3' test.out

#- 309 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vvlJ9ymY' \
    > test.out 2>&1
eval_tap $? 309 'PublicListJusticePlatformAccountsV3' test.out

#- 310 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'IesAt0tE' \
    --body '{"platformId": "jqZJ0DER", "platformUserId": "5wxRJEQN"}' \
    > test.out 2>&1
eval_tap $? 310 'PublicLinkPlatformAccount' test.out

#- 311 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '6HluAJ1G' \
    --body '{"chosenNamespaces": ["fwTye2oK", "mYWug2Ft", "cVlcVmYr"], "requestId": "K58yEIPC"}' \
    > test.out 2>&1
eval_tap $? 311 'PublicForceLinkPlatformWithProgression' test.out

#- 312 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RmrI0sbM' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetPublisherUserV3' test.out

#- 313 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'W5kWqRxm' \
    --password 'tUgqNnD0' \
    > test.out 2>&1
eval_tap $? 313 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 314 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '9gtPCLqR' \
    --before 'kul9PZUR' \
    --isWildcard 'true' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetRolesV3' test.out

#- 315 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'eUsCdO22' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetRoleV3' test.out

#- 316 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetMyUserV3' test.out

#- 317 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "HlPes41y", "emailAddress": "4UUMADtU", "languageTag": "KBoEaiBt", "upgradeToken": "Ur4VQ5MY"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicSendCodeForwardV3' test.out

#- 318 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'CjVMP0cm' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 319 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["Df20Ss5N", "0tAfXvUl", "ytWOUXDh"], "oneTimeLinkCode": "AKRu65qK"}' \
    > test.out 2>&1
eval_tap $? 319 'LinkHeadlessAccountToMyAccountV3' test.out

#- 320 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'JrUmXkD5' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 321 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 321 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 322 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "sDKR9FiY"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicSendVerificationLinkV3' test.out

#- 323 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 323 'PublicGetOpenidUserInfoV3' test.out

#- 324 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '9X7I81I6' \
    > test.out 2>&1
eval_tap $? 324 'PublicVerifyUserByLinkV3' test.out

#- 325 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'Of4hFdXo' \
    --code '2fkb6Rku' \
    --error 'jQMlMWyZ' \
    --state 'ZebXCeiG' \
    > test.out 2>&1
eval_tap $? 325 'PlatformAuthenticateSAMLV3Handler' test.out

#- 326 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'msTsFlun' \
    --payload 'Q04g08xm' \
    > test.out 2>&1
eval_tap $? 326 'LoginSSOClient' test.out

#- 327 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'X8rqgH7G' \
    > test.out 2>&1
eval_tap $? 327 'LogoutSSOClient' test.out

#- 328 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'l21C8hq9' \
    --code 'V2hkfaWi' \
    > test.out 2>&1
eval_tap $? 328 'RequestTargetTokenResponseV3' test.out

#- 329 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'ecymgK5j' \
    --upgradeSuccessToken '8EWJzHeg' \
    > test.out 2>&1
eval_tap $? 329 'UpgradeAndAuthenticateForwardV3' test.out

#- 330 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '83' \
    --namespace 'MOJayVvC' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 330 'AdminListInvitationHistoriesV4' test.out

#- 331 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'iMJJ594L' \
    > test.out 2>&1
eval_tap $? 331 'AdminGetDevicesByUserV4' test.out

#- 332 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'nAT64puB' \
    --endDate 'Q2dxilRS' \
    --limit '3' \
    --offset '68' \
    --startDate '4e3WoqxJ' \
    > test.out 2>&1
eval_tap $? 332 'AdminGetBannedDevicesV4' test.out

#- 333 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZTD23KUU' \
    > test.out 2>&1
eval_tap $? 333 'AdminGetUserDeviceBansV4' test.out

#- 334 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "8G7kBSFR", "deviceId": "oWcJgTEo", "deviceType": "qCbwmVKM", "enabled": false, "endDate": "KP1M9H3E", "ext": {"hUlQk6vK": {}, "jEfMPE6G": {}, "376VBCyy": {}}, "reason": "ScyP09Sj"}' \
    > test.out 2>&1
eval_tap $? 334 'AdminBanDeviceV4' test.out

#- 335 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'NTJWkKjH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'AdminGetDeviceBanV4' test.out

#- 336 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'PhMF6DX2' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateDeviceBanV4' test.out

#- 337 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'Y1wXJMn4' \
    --startDate 'iBUET84X' \
    --deviceType '6PydiqQH' \
    > test.out 2>&1
eval_tap $? 337 'AdminGenerateReportV4' test.out

#- 338 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDeviceTypesV4' test.out

#- 339 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '20MgpQIS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'AdminGetDeviceBansV4' test.out

#- 340 AdminDecryptDeviceV4
eval_tap 0 340 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 341 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'YcTmZtJa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'AdminUnbanDeviceV4' test.out

#- 342 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'HXhvA3HU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetUsersByDeviceV4' test.out

#- 343 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 344 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 344 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 345 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 47, "userInfo": {"country": "kN2hjC6c"}}' \
    > test.out 2>&1
eval_tap $? 345 'AdminCreateTestUsersV4' test.out

#- 346 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Zxg3wbs4", "policyId": "gg8HHBCr", "policyVersionId": "lyMacs9a"}, {"isAccepted": true, "localizedPolicyVersionId": "yWCdHQHY", "policyId": "ZVH83PPq", "policyVersionId": "WUr4Fmjy"}, {"isAccepted": false, "localizedPolicyVersionId": "PmZLtuBg", "policyId": "YtLBc6Qs", "policyVersionId": "fJoCG07K"}], "authType": "EMAILPASSWD", "code": "tqklCQ2x", "country": "urpiCSEw", "dateOfBirth": "puJlHtuR", "displayName": "tu5NKgrP", "emailAddress": "FNGKz2pa", "password": "5VS1l4Ov", "passwordMD5Sum": "lWvnXE4A", "reachMinimumAge": false, "uniqueDisplayName": "QOlbrByy", "username": "QNLDpvgB"}' \
    > test.out 2>&1
eval_tap $? 346 'AdminCreateUserV4' test.out

#- 347 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["bU89zNug", "DRU3jt79", "QNca4UpI"]}' \
    > test.out 2>&1
eval_tap $? 347 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 348 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["pf6HKVmE", "M4ZGTmeg", "Pv4EySjf"]}' \
    > test.out 2>&1
eval_tap $? 348 'AdminBulkCheckValidUserIDV4' test.out

#- 349 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Z4XBAizM' \
    --body '{"avatarUrl": "Tc3aVDeK", "country": "N8uKxYMs", "dateOfBirth": "scQq2NKQ", "displayName": "X7qwivi7", "languageTag": "Hn0oX8su", "skipLoginQueue": false, "uniqueDisplayName": "xO5iZTdk", "userName": "fu3eakUR"}' \
    > test.out 2>&1
eval_tap $? 349 'AdminUpdateUserV4' test.out

#- 350 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '4QiEwMgL' \
    --body '{"code": "RxvvPUhc", "emailAddress": "LC2UM6NF"}' \
    > test.out 2>&1
eval_tap $? 350 'AdminUpdateUserEmailAddressV4' test.out

#- 351 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'nzrWDgH3' \
    --body '{"factor": "AiiKRWeV", "mfaToken": "5miod69b"}' \
    > test.out 2>&1
eval_tap $? 351 'AdminDisableUserMFAV4' test.out

#- 352 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'm8piwAPn' \
    > test.out 2>&1
eval_tap $? 352 'AdminGetUserMFAStatusV4' test.out

#- 353 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '2GTVHyLG' \
    > test.out 2>&1
eval_tap $? 353 'AdminListUserRolesV4' test.out

#- 354 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ujuRG9KU' \
    --body '{"assignedNamespaces": ["huVFRIlg", "6qBjAkpy", "5dvlUQEB"], "roleId": "EpJmKNVk"}' \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateUserRoleV4' test.out

#- 355 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '1vJfYSqN' \
    --body '{"assignedNamespaces": ["w6C6xXf6", "SpHWtaoq", "pN6c2SNa"], "roleId": "TNBA5oDA"}' \
    > test.out 2>&1
eval_tap $? 355 'AdminAddUserRoleV4' test.out

#- 356 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'qbbjBkbi' \
    --body '{"assignedNamespaces": ["QF5IvhHJ", "OPIsWEwf", "Vadpe8g7"], "roleId": "RU1uinUp"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminRemoveUserRoleV4' test.out

#- 357 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '76' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 357 'AdminGetRolesV4' test.out

#- 358 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "YK33OoD1"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminCreateRoleV4' test.out

#- 359 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'lPCyQROh' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetRoleV4' test.out

#- 360 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'BL1Dbuez' \
    > test.out 2>&1
eval_tap $? 360 'AdminDeleteRoleV4' test.out

#- 361 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'fDgr0V58' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "zUkNcQar"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateRoleV4' test.out

#- 362 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'enOyWCM3' \
    --body '{"permissions": [{"action": 50, "resource": "q7KVrr5U", "schedAction": 21, "schedCron": "AHocfmtO", "schedRange": ["ERDES6SY", "mZKjC11c", "Pq24slqM"]}, {"action": 6, "resource": "AAg3toPw", "schedAction": 98, "schedCron": "by5Tea7O", "schedRange": ["UMkB3Aqu", "DIOB0fcA", "V10n6KoK"]}, {"action": 34, "resource": "Po4XSJDf", "schedAction": 75, "schedCron": "wjFxzATR", "schedRange": ["HE0D61kp", "Wb6Hcb81", "iwC53x9R"]}]}' \
    > test.out 2>&1
eval_tap $? 362 'AdminUpdateRolePermissionsV4' test.out

#- 363 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'sPLGf3dx' \
    --body '{"permissions": [{"action": 29, "resource": "tMrPCucv", "schedAction": 22, "schedCron": "2vLbyPUt", "schedRange": ["pxB7OmzD", "ThZvGh22", "tv78JHm8"]}, {"action": 89, "resource": "JnaJ0O8n", "schedAction": 0, "schedCron": "ulXaoft7", "schedRange": ["iFp2Cwzj", "zoNsuCvH", "TCQQr39U"]}, {"action": 72, "resource": "4W7ltuvs", "schedAction": 49, "schedCron": "stRlkfpk", "schedRange": ["u5LsUFgb", "LnSmbxKR", "CecQEyLV"]}]}' \
    > test.out 2>&1
eval_tap $? 363 'AdminAddRolePermissionsV4' test.out

#- 364 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '19FfKyXZ' \
    --body '["kxoekqVu", "wbqJ8nn7", "2t9kYeqh"]' \
    > test.out 2>&1
eval_tap $? 364 'AdminDeleteRolePermissionsV4' test.out

#- 365 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'Fu5rTART' \
    --after 'Rt8xP4eT' \
    --before '7QSWt6TI' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 365 'AdminListAssignedUsersV4' test.out

#- 366 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'tCMzFmb6' \
    --body '{"assignedNamespaces": ["t5rjE6Q4", "Qj2hQchS", "hjgrawV6"], "namespace": "NHUPrS0Z", "userId": "h9tctUBd"}' \
    > test.out 2>&1
eval_tap $? 366 'AdminAssignUserToRoleV4' test.out

#- 367 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'd8ibBoZn' \
    --body '{"namespace": "AaSlumVy", "userId": "BCOXbUZc"}' \
    > test.out 2>&1
eval_tap $? 367 'AdminRevokeUserFromRoleV4' test.out

#- 368 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["Y8sTIVtW", "FeR8LiNJ", "SA8NIvsx"], "emailAddresses": ["hxyO7aTc", "5GctY75p", "fbiRrtUF"], "isAdmin": true, "isNewStudio": true, "languageTag": "oDHOKcP5", "namespace": "qA7J8Znk", "roleId": "frtFkkCT"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminInviteUserNewV4' test.out

#- 369 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "RgFtKXER", "country": "j9lDhIPi", "dateOfBirth": "pADXCIvP", "displayName": "gnENCh8Z", "languageTag": "H7OktfbJ", "skipLoginQueue": true, "uniqueDisplayName": "UOHKc3ZY", "userName": "ZZmAMsH0"}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateMyUserV4' test.out

#- 370 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "9bsgg906", "mfaToken": "RlOUPsNy"}' \
    > test.out 2>&1
eval_tap $? 370 'AdminDisableMyAuthenticatorV4' test.out

#- 371 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'tX4FmZcm' \
    > test.out 2>&1
eval_tap $? 371 'AdminEnableMyAuthenticatorV4' test.out

#- 372 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 372 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 373 AdminGetMyBackupCodesV4
eval_tap 0 373 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 374 AdminGenerateMyBackupCodesV4
eval_tap 0 374 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 375 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "5oMKBMt9", "mfaToken": "GJJtCbvO"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminDisableMyBackupCodesV4' test.out

#- 376 AdminDownloadMyBackupCodesV4
eval_tap 0 376 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 377 AdminEnableMyBackupCodesV4
eval_tap 0 377 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 378 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'C1zUBTTI' \
    > test.out 2>&1
eval_tap $? 378 'AdminGetBackupCodesV4' test.out

#- 379 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'S68dsGEG' \
    > test.out 2>&1
eval_tap $? 379 'AdminGenerateBackupCodesV4' test.out

#- 380 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'XcNLoq0J' \
    > test.out 2>&1
eval_tap $? 380 'AdminEnableBackupCodesV4' test.out

#- 381 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'FX9OwA2P' \
    --factor 'ocRfLwGj' \
    > test.out 2>&1
eval_tap $? 381 'AdminChallengeMyMFAV4' test.out

#- 382 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'cXvfSmbv' \
    --languageTag 'v5E8bZiy' \
    > test.out 2>&1
eval_tap $? 382 'AdminSendMyMFAEmailCodeV4' test.out

#- 383 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "GTgnBOom", "mfaToken": "JODyB3tu"}' \
    > test.out 2>&1
eval_tap $? 383 'AdminDisableMyEmailV4' test.out

#- 384 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'kyJnhc2i' \
    > test.out 2>&1
eval_tap $? 384 'AdminEnableMyEmailV4' test.out

#- 385 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 385 'AdminGetMyEnabledFactorsV4' test.out

#- 386 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'j830ipNR' \
    > test.out 2>&1
eval_tap $? 386 'AdminMakeFactorMyDefaultV4' test.out

#- 387 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 387 'AdminGetMyOwnMFAStatusV4' test.out

#- 388 AdminGetMyMFAStatusV4
eval_tap 0 388 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 389 AdminInviteUserV4
eval_tap 0 389 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 390 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'VBok5O1f' \
    --linkingToken '2VgUT1MQ' \
    --password 'w05z01BW' \
    --username 'NHIxHxmL' \
    > test.out 2>&1
eval_tap $? 390 'AuthenticationWithPlatformLinkV4' test.out

#- 391 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'UwEutw4a' \
    --extendExp 'false' \
    --linkingToken 'PeHKLSS1' \
    > test.out 2>&1
eval_tap $? 391 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 392 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'kWDaec05' \
    --factor 'Qb9an1I0' \
    --mfaToken 'Nk9lyZQS' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 392 'Verify2faCodeV4' test.out

#- 393 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId '4FlAJnfD' \
    --codeChallenge 'fa0lsa3U' \
    --codeChallengeMethod 'plain' \
    --additionalData 'R4E1Fnox' \
    --clientId 'T4cI7els' \
    --createHeadless 'true' \
    --deviceId 'A9rwKzvF' \
    --macAddress 'Ucn5i85W' \
    --platformToken 'Cc30ckms' \
    --serviceLabel '0.08383450713555773' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 393 'PlatformTokenGrantV4' test.out

#- 394 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'ZsCusT7y' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'SVGnj6VT' \
    --simultaneousTicket 'MINIMyyU' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'uduO3MOZ' \
    > test.out 2>&1
eval_tap $? 394 'SimultaneousLoginV4' test.out

#- 395 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'Z22nHl4S' \
    --codeChallengeMethod 'S256' \
    --additionalData 'SvGhB2uJ' \
    --clientId 'bm60oErF' \
    --clientSecret 'WEa0ceK3' \
    --code 'sbyrIvru' \
    --codeVerifier 'Q5edqG6P' \
    --extendNamespace 'GeS5rXgX' \
    --extendExp 'false' \
    --loginQueueTicket '9oLQlxAG' \
    --password 'vmXM1H8h' \
    --redirectUri '1ioaeAwP' \
    --refreshToken 'mMD4OiIF' \
    --username 'cY6gO1PE' \
    --grantType 'urn:ietf:params:oauth:grant-type:login_queue_ticket' \
    > test.out 2>&1
eval_tap $? 395 'TokenGrantV4' test.out

#- 396 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'kHRsE8oi' \
    --code '0sgbHncj' \
    > test.out 2>&1
eval_tap $? 396 'RequestTargetTokenResponseV4' test.out

#- 397 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'msbsgQoW' \
    --rawPUID 'false' \
    --body '{"pidType": "94nmyzoV", "platformUserIds": ["yGG1q2td", "pKPamznA", "7oryIprE"]}' \
    > test.out 2>&1
eval_tap $? 397 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 398 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'wCN4jh0H' \
    --platformUserId 'uiymbdHX' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserByPlatformUserIDV4' test.out

#- 399 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ubmNIQJ7", "policyId": "pH9yVWIT", "policyVersionId": "Ewzmu7mK"}, {"isAccepted": true, "localizedPolicyVersionId": "ztxFgTau", "policyId": "kQsN8WWx", "policyVersionId": "EU0h331z"}, {"isAccepted": true, "localizedPolicyVersionId": "FTmJSqgH", "policyId": "jr7KKKQg", "policyVersionId": "qvpwbqqL"}], "authType": "EMAILPASSWD", "country": "lgJyTWLg", "dateOfBirth": "R60SIMxC", "displayName": "kLkh4O3b", "emailAddress": "E7pOkoNn", "password": "jCKpXwXH", "passwordMD5Sum": "8rb6C5tK", "uniqueDisplayName": "r1VHBg1w", "username": "07dvXOkS", "verified": false}' \
    > test.out 2>&1
eval_tap $? 399 'PublicCreateTestUserV4' test.out

#- 400 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "FhyozRgA", "policyId": "TyQ1RKi3", "policyVersionId": "pUgCHGBs"}, {"isAccepted": false, "localizedPolicyVersionId": "8g9SPEJZ", "policyId": "9F4uFesQ", "policyVersionId": "n5Yt1h60"}, {"isAccepted": false, "localizedPolicyVersionId": "WuWKziXh", "policyId": "lOantx1E", "policyVersionId": "45AF6O5g"}], "authType": "EMAILPASSWD", "code": "WBJXm505", "country": "as8BWXvI", "dateOfBirth": "JEYTuWcO", "displayName": "7P0E8iyt", "emailAddress": "lQ1Zi3Gi", "password": "xMw73E58", "passwordMD5Sum": "6hxB4cei", "reachMinimumAge": true, "uniqueDisplayName": "m8fS6vYv", "username": "bdOdFaUS"}' \
    > test.out 2>&1
eval_tap $? 400 'PublicCreateUserV4' test.out

#- 401 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'r5CyiIVN' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "dqyJSGuM", "policyId": "Y9zwXJbd", "policyVersionId": "mPKV37FU"}, {"isAccepted": false, "localizedPolicyVersionId": "unzyBy9Z", "policyId": "t6CeTdjA", "policyVersionId": "CXP28PIJ"}, {"isAccepted": false, "localizedPolicyVersionId": "PpKN8YgF", "policyId": "igQUQx3U", "policyVersionId": "pAY5vXRX"}], "authType": "EMAILPASSWD", "code": "UF4h8hz3", "country": "dgPri0DZ", "dateOfBirth": "JTWFxT6j", "displayName": "wWM0zqUV", "emailAddress": "PsrF3DPx", "password": "DAggpMyQ", "passwordMD5Sum": "fIjF5VWo", "reachMinimumAge": true, "uniqueDisplayName": "RRLllCej", "username": "0LOloG1t"}' \
    > test.out 2>&1
eval_tap $? 401 'CreateUserFromInvitationV4' test.out

#- 402 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "mFkY6Np7", "country": "2Duynyaw", "dateOfBirth": "CUsW0rtd", "displayName": "auWRDEX4", "languageTag": "0bR4wETJ", "uniqueDisplayName": "vx3Rvelg", "userName": "r6dYTUdw"}' \
    > test.out 2>&1
eval_tap $? 402 'PublicUpdateUserV4' test.out

#- 403 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "txmZ96nJ", "emailAddress": "MmL3YxYD"}' \
    > test.out 2>&1
eval_tap $? 403 'PublicUpdateUserEmailAddressV4' test.out

#- 404 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ptLQDlce", "country": "qV7UGUOk", "dateOfBirth": "FYOBwVmH", "displayName": "RfQpn0EW", "emailAddress": "oAmalwYO", "password": "UZJxS2Fi", "reachMinimumAge": false, "uniqueDisplayName": "H5s0xVtY", "username": "1723lwyU", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 404 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 405 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "hlb6rJwN", "displayName": "PvicNqad", "emailAddress": "m2yKN8XB", "password": "OKrrgnbR", "uniqueDisplayName": "EoDwtYLI", "username": "V1fKRJg7"}' \
    > test.out 2>&1
eval_tap $? 405 'PublicUpgradeHeadlessAccountV4' test.out

#- 406 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "5uHfdb2l", "mfaToken": "FOJGwGpm"}' \
    > test.out 2>&1
eval_tap $? 406 'PublicDisableMyAuthenticatorV4' test.out

#- 407 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'N6F7cuxk' \
    > test.out 2>&1
eval_tap $? 407 'PublicEnableMyAuthenticatorV4' test.out

#- 408 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 408 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 409 PublicGetMyBackupCodesV4
eval_tap 0 409 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 410 PublicGenerateMyBackupCodesV4
eval_tap 0 410 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 411 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "WDlitE4X", "mfaToken": "7t41A1XC"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicDisableMyBackupCodesV4' test.out

#- 412 PublicDownloadMyBackupCodesV4
eval_tap 0 412 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 413 PublicEnableMyBackupCodesV4
eval_tap 0 413 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 414 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'acbEO24X' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetBackupCodesV4' test.out

#- 415 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'w1UBQ5v9' \
    > test.out 2>&1
eval_tap $? 415 'PublicGenerateBackupCodesV4' test.out

#- 416 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '7LKVTBGf' \
    > test.out 2>&1
eval_tap $? 416 'PublicEnableBackupCodesV4' test.out

#- 417 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code '9eprLgZn' \
    --factor 'IzwPEIyg' \
    > test.out 2>&1
eval_tap $? 417 'PublicChallengeMyMFAV4' test.out

#- 418 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 418 'PublicRemoveTrustedDeviceV4' test.out

#- 419 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'Wo8yoN9Z' \
    --languageTag 't0jXPXMN' \
    > test.out 2>&1
eval_tap $? 419 'PublicSendMyMFAEmailCodeV4' test.out

#- 420 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "S0bzj0Gg", "mfaToken": "pGtTnMsN"}' \
    > test.out 2>&1
eval_tap $? 420 'PublicDisableMyEmailV4' test.out

#- 421 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'GVDs3XXf' \
    > test.out 2>&1
eval_tap $? 421 'PublicEnableMyEmailV4' test.out

#- 422 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 422 'PublicGetMyEnabledFactorsV4' test.out

#- 423 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'o4sp1eOT' \
    > test.out 2>&1
eval_tap $? 423 'PublicMakeFactorMyDefaultV4' test.out

#- 424 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 424 'PublicGetMyOwnMFAStatusV4' test.out

#- 425 PublicGetMyMFAStatusV4
eval_tap 0 425 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 426 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId '5F4qp9kt' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 427 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "rTmuiFxr", "emailAddress": "msNanFH4", "languageTag": "pxRtLyEs", "namespace": "4MWIe3Dk", "namespaceDisplayName": "owxr15gB"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicInviteUserV4' test.out

#- 428 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "4PcwY7pH", "policyId": "79mOqllI", "policyVersionId": "tSg7xRk3"}, {"isAccepted": true, "localizedPolicyVersionId": "FXXyZ8iC", "policyId": "yRQdHGsZ", "policyVersionId": "5qkeHqcG"}, {"isAccepted": true, "localizedPolicyVersionId": "ORO1SPc2", "policyId": "Qu7hQ4pz", "policyVersionId": "TxkcTdMS"}], "code": "mp45aHZb", "country": "MZl4SCoq", "dateOfBirth": "BFh5DIU9", "displayName": "aJJkRfD3", "emailAddress": "XEU9CRZK", "password": "G5FLyviR", "reachMinimumAge": false, "uniqueDisplayName": "o6BlNoQv", "username": "AFt79Tug", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 428 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE