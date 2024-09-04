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
echo "1..411"

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
    --body '{"modules": [{"docLink": "NLKDkkDQ", "groups": [{"group": "nHymlulq", "groupId": "Evemx5ZW", "permissions": [{"allowedActions": [16, 53, 24], "resource": "LC5uGFgB"}, {"allowedActions": [62, 36, 17], "resource": "szoSZvFH"}, {"allowedActions": [71, 63, 79], "resource": "iXpVx7MO"}]}, {"group": "SgoSyfDO", "groupId": "RDG7m8JZ", "permissions": [{"allowedActions": [98, 85, 27], "resource": "cvDuUJIn"}, {"allowedActions": [18, 52, 51], "resource": "mxEgJ2wI"}, {"allowedActions": [20, 41, 23], "resource": "cwt3fIGI"}]}, {"group": "FmpNd48l", "groupId": "u6USt9sO", "permissions": [{"allowedActions": [27, 7, 37], "resource": "5xHrmFbF"}, {"allowedActions": [62, 44, 37], "resource": "5OKQ9lRI"}, {"allowedActions": [62, 85, 58], "resource": "S4r6Wmok"}]}], "module": "46WNwhEr", "moduleId": "eLVLLZWh"}, {"docLink": "zLz2AFiY", "groups": [{"group": "QtXznH4H", "groupId": "9an91xgV", "permissions": [{"allowedActions": [96, 93, 50], "resource": "QcdRVt6q"}, {"allowedActions": [49, 26, 31], "resource": "w8no02ZB"}, {"allowedActions": [33, 70, 93], "resource": "wxqEIbGO"}]}, {"group": "52UgpSYe", "groupId": "YXybxYWj", "permissions": [{"allowedActions": [24, 30, 38], "resource": "36A3kXcB"}, {"allowedActions": [32, 64, 0], "resource": "H1FLcQoP"}, {"allowedActions": [14, 15, 100], "resource": "M2O61xPY"}]}, {"group": "CIeCZ0Yq", "groupId": "GFNCwcES", "permissions": [{"allowedActions": [73, 35, 56], "resource": "GA0B02eB"}, {"allowedActions": [58, 46, 62], "resource": "8lwMerW2"}, {"allowedActions": [52, 85, 90], "resource": "IatCNOe6"}]}], "module": "gJVsmMRH", "moduleId": "3UA6RVkN"}, {"docLink": "OHIBPIUt", "groups": [{"group": "BwiLHcex", "groupId": "moK8EsiL", "permissions": [{"allowedActions": [82, 78, 15], "resource": "x1IAhpI3"}, {"allowedActions": [89, 1, 76], "resource": "Lt3WA9AS"}, {"allowedActions": [50, 31, 3], "resource": "u8XK0vT6"}]}, {"group": "460Z7ZjH", "groupId": "6uqccr8o", "permissions": [{"allowedActions": [92, 29, 16], "resource": "Y6rUlSRW"}, {"allowedActions": [94, 79, 19], "resource": "mT2Lnvu3"}, {"allowedActions": [59, 27, 82], "resource": "mbuMEEyd"}]}, {"group": "yeBqJ2x6", "groupId": "O3E27QJf", "permissions": [{"allowedActions": [73, 60, 45], "resource": "ZiC1UUPB"}, {"allowedActions": [47, 85, 88], "resource": "FCOWQCnU"}, {"allowedActions": [81, 6, 80], "resource": "cFYruwA7"}]}], "module": "Dxu9zIpY", "moduleId": "lKQFkC8H"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "YhRJXE3h", "moduleId": "aXsmmfpR"}' \
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
    --body '[{"field": "4nuJPJ9p", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["fmwOwzcA", "C6tWwvpm", "MD3nveNW"], "preferRegex": true, "regex": "XapsWDVJ"}, "blockedWord": ["5zditzzd", "wvdwWoya", "1Q9zHGyA"], "description": [{"language": "s37MmhLR", "message": ["4iOKRzdW", "q4HLxPnx", "mRDsQqmJ"]}, {"language": "c1E5g8lD", "message": ["6hzjuzpP", "FjpgONjo", "ftuq2w0u"]}, {"language": "yVTEFKWf", "message": ["5oWrs8i6", "wh4iFity", "gsYUzZcY"]}], "isCustomRegex": true, "letterCase": "wSRqR76J", "maxLength": 7, "maxRepeatingAlphaNum": 14, "maxRepeatingSpecialCharacter": 25, "minCharType": 53, "minLength": 56, "profanityFilter": "MSjFrCIf", "regex": "r6W4gi41", "specialCharacterLocation": "jNv4svfu", "specialCharacters": ["6YluUMjH", "5DBaixk5", "25qxrVDt"]}}, {"field": "t1mhkb7g", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["PNUauxod", "kwrrai5l", "XrlMKnSf"], "preferRegex": true, "regex": "TcN5k1gn"}, "blockedWord": ["HOn5EAVV", "ID3EEEDN", "dqkduCgM"], "description": [{"language": "CRHJ0sJn", "message": ["7sz2fu3L", "IgaoJe7N", "vKCBh1h9"]}, {"language": "AiPnHg3K", "message": ["FirwWZiN", "cxNguczS", "pSrLUYBT"]}, {"language": "h4HZhJb0", "message": ["LvKg3ods", "jrKTzFoq", "tZqovMOW"]}], "isCustomRegex": false, "letterCase": "uLJ4aoSm", "maxLength": 63, "maxRepeatingAlphaNum": 54, "maxRepeatingSpecialCharacter": 8, "minCharType": 49, "minLength": 83, "profanityFilter": "MFNAQUkT", "regex": "Y0WJ8PDR", "specialCharacterLocation": "0MLogN9F", "specialCharacters": ["PVSr0WiM", "pI0I3sA9", "4Bsae9j0"]}}, {"field": "8NBEsgJF", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["NDbt7I1S", "LlUGmIeu", "w3tIdOKT"], "preferRegex": true, "regex": "NItr8UvN"}, "blockedWord": ["VUHXTQVz", "6wcOg40X", "Zz4WfUwz"], "description": [{"language": "KtDPF4on", "message": ["CZWnUiTk", "wsvDXdKW", "g29xcLbU"]}, {"language": "blpYvmew", "message": ["NyP21UdB", "X9uBdbv4", "bQJwUiFG"]}, {"language": "P8lu52qL", "message": ["7ZFs2Ea7", "V5nbGmv9", "WVYZdp2C"]}], "isCustomRegex": true, "letterCase": "QrM2PZOO", "maxLength": 45, "maxRepeatingAlphaNum": 92, "maxRepeatingSpecialCharacter": 84, "minCharType": 11, "minLength": 44, "profanityFilter": "tZoAG0Kb", "regex": "HS85M65k", "specialCharacterLocation": "RYHwYWs2", "specialCharacters": ["NPKevPvp", "piqne9GQ", "zLtB0nv3"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'PeL9tbFm' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'wecfJ2Zl' \
    --before 'Q6HTKYTt' \
    --endDate 'qGn1Eofr' \
    --limit '96' \
    --query 'XGe14YS7' \
    --roleId 'kSpeMgOD' \
    --startDate '9nlezMGq' \
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
    --body '{"ageRestriction": 54, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '76B2lIU2' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 45}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '2tBWl0wG' \
    --limit '78' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "Yy1hcUJY", "comment": "TJiVHat5", "endDate": "a1FoJu6s", "reason": "uyhjviq5", "skipNotif": true, "userIds": ["gaTmakIk", "xQ5PGiLy", "FEvdCnv2"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "L3yjF5we", "userId": "MwVzJgri"}, {"banId": "lS9WUOmd", "userId": "B4kGL15B"}, {"banId": "hDeO9xhh", "userId": "Lg8rhdn5"}]}' \
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
    --clientId 'bC5MFz88' \
    --clientName 'yfoa98M0' \
    --clientType 'rdDy07cd' \
    --limit '33' \
    --offset '65' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["Jln0XUkm", "z3R9UqM2", "gybv3el0"], "clientUpdateRequest": {"audiences": ["q9mTOQXC", "YEXo7IgO", "OYwiJIPe"], "baseUri": "0HJM5C7e", "clientName": "jkI6RaWD", "clientPermissions": [{"action": 69, "resource": "Y407WQvT", "schedAction": 38, "schedCron": "i4idEcGM", "schedRange": ["JhvSnGPb", "ag0BCFGf", "p1lLf0bk"]}, {"action": 90, "resource": "AauzPWpn", "schedAction": 20, "schedCron": "CNnyC1Gg", "schedRange": ["A4Xt4ZwS", "EGbgFw3u", "XQ59FNt0"]}, {"action": 38, "resource": "mYv1GXq5", "schedAction": 100, "schedCron": "NDtFeWSs", "schedRange": ["Jl25hwc8", "7kLi4t33", "MYIaho84"]}], "clientPlatform": "AdlleOLh", "deletable": true, "description": "Ty8jGOWV", "modulePermissions": [{"moduleId": "90S7gnUn", "selectedGroups": [{"groupId": "gnpltUe9", "selectedActions": [13, 83, 99]}, {"groupId": "36Wt9zpo", "selectedActions": [95, 52, 60]}, {"groupId": "7132NZ0I", "selectedActions": [72, 2, 6]}]}, {"moduleId": "qrfp5rf8", "selectedGroups": [{"groupId": "sTP4eYRe", "selectedActions": [10, 24, 31]}, {"groupId": "A2yvAKVn", "selectedActions": [93, 22, 72]}, {"groupId": "oTLNrfOB", "selectedActions": [54, 64, 83]}]}, {"moduleId": "m9dEaXgI", "selectedGroups": [{"groupId": "d39ZczQE", "selectedActions": [0, 37, 36]}, {"groupId": "ZBH6lIr3", "selectedActions": [96, 24, 0]}, {"groupId": "hJ2A0nyF", "selectedActions": [87, 30, 16]}]}], "namespace": "3gIURuDB", "oauthAccessTokenExpiration": 50, "oauthAccessTokenExpirationTimeUnit": "wJcsTN55", "oauthRefreshTokenExpiration": 73, "oauthRefreshTokenExpirationTimeUnit": "i1mkXV80", "redirectUri": "hpbrIEm2", "scopes": ["Hr4GKpjZ", "ptxkJ3jW", "NTBGEbz6"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["uu6Cubqu", "E9gL172N", "ZIxNXzhN"], "baseUri": "6OT0MvbO", "clientId": "a3hgFIhr", "clientName": "46K9xeQn", "clientPermissions": [{"action": 24, "resource": "4nILIT4K", "schedAction": 19, "schedCron": "HUtjQmpp", "schedRange": ["8W6D1mnn", "IbRINhI1", "2O1OPeVB"]}, {"action": 37, "resource": "RvbwVF8w", "schedAction": 73, "schedCron": "ryktFPyO", "schedRange": ["Nd9NaE18", "FY4krNTk", "uzTZCM7q"]}, {"action": 88, "resource": "yDGZ7ndr", "schedAction": 63, "schedCron": "B5nmkWf1", "schedRange": ["Wyiufgh5", "b9D3Z2nG", "FyqS02Ea"]}], "clientPlatform": "tduUTXuT", "deletable": false, "description": "0vS3BEPa", "modulePermissions": [{"moduleId": "PSwgO0fG", "selectedGroups": [{"groupId": "j6kXFB8C", "selectedActions": [77, 51, 93]}, {"groupId": "92wCN2dG", "selectedActions": [59, 89, 29]}, {"groupId": "PoJAZJTF", "selectedActions": [24, 74, 85]}]}, {"moduleId": "1qbKokGY", "selectedGroups": [{"groupId": "U4KVdYlT", "selectedActions": [94, 81, 94]}, {"groupId": "pqydBErT", "selectedActions": [53, 53, 6]}, {"groupId": "vjWr15Dw", "selectedActions": [46, 41, 44]}]}, {"moduleId": "vCGpMMIB", "selectedGroups": [{"groupId": "eF34pyqv", "selectedActions": [15, 35, 10]}, {"groupId": "i1UHBRvN", "selectedActions": [74, 64, 42]}, {"groupId": "New8D4pB", "selectedActions": [20, 95, 0]}]}], "namespace": "1svsEhZx", "oauthAccessTokenExpiration": 16, "oauthAccessTokenExpirationTimeUnit": "1Dshr0Nm", "oauthClientType": "OqsGNjbO", "oauthRefreshTokenExpiration": 4, "oauthRefreshTokenExpirationTimeUnit": "qMkBgpNh", "parentNamespace": "yGMtK0Fl", "redirectUri": "VIVHG5FY", "scopes": ["1Y0wfrMU", "WqvuNA2Q", "dRUi1D33"], "secret": "G4mDGQYh", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'LW6nyCGJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'veRQ9CB8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '41NF0odw' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["EWwONgfq", "lmtkqH73", "WsLra5Y5"], "baseUri": "xVqgrP5H", "clientName": "Rbx2mlVW", "clientPermissions": [{"action": 93, "resource": "larv3T6x", "schedAction": 54, "schedCron": "8Ft1rRql", "schedRange": ["yzxTz7FV", "g1pt5K8e", "ItG7mKQm"]}, {"action": 48, "resource": "i4X9oJ2Q", "schedAction": 80, "schedCron": "v25Wnpul", "schedRange": ["sLtU38pF", "UODjsb7v", "zwRu5J74"]}, {"action": 73, "resource": "GwCX1prp", "schedAction": 80, "schedCron": "UKiUlDSr", "schedRange": ["Gpp0Djat", "aP7d7ZTH", "pfEPpmKH"]}], "clientPlatform": "06MkyDI9", "deletable": true, "description": "1n1oxi5F", "modulePermissions": [{"moduleId": "lQr4HxEQ", "selectedGroups": [{"groupId": "hAU5HmOV", "selectedActions": [68, 17, 89]}, {"groupId": "E42OOlO9", "selectedActions": [3, 50, 42]}, {"groupId": "Pvc4gLwi", "selectedActions": [2, 3, 32]}]}, {"moduleId": "TmnuO1py", "selectedGroups": [{"groupId": "FV3nlrDL", "selectedActions": [37, 100, 55]}, {"groupId": "yUSEGgZc", "selectedActions": [86, 42, 50]}, {"groupId": "QpY4ncAr", "selectedActions": [39, 55, 9]}]}, {"moduleId": "H1qqJAFC", "selectedGroups": [{"groupId": "Qd33IRd1", "selectedActions": [35, 86, 66]}, {"groupId": "hcHe0lBp", "selectedActions": [20, 58, 83]}, {"groupId": "5SBJfcSQ", "selectedActions": [75, 76, 79]}]}], "namespace": "JZbrWPK3", "oauthAccessTokenExpiration": 55, "oauthAccessTokenExpirationTimeUnit": "qsvOL0Xo", "oauthRefreshTokenExpiration": 55, "oauthRefreshTokenExpirationTimeUnit": "zYLEcgRf", "redirectUri": "waVc9Tdt", "scopes": ["AUejepSG", "BaU9Q5dX", "eRh1z83P"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'CbBjcKYc' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 60, "resource": "W0z7AuOG"}, {"action": 2, "resource": "famWejDa"}, {"action": 98, "resource": "4KhijBE2"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'nj8UVZmV' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 88, "resource": "XSoh2kV5"}, {"action": 97, "resource": "k2bY6sDj"}, {"action": 71, "resource": "xHbbPe0Z"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '85' \
    --clientId 'jWSnfQXL' \
    --namespace $AB_NAMESPACE \
    --resource 'uukiMTku' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'qvK7Zy8D' \
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
    --body '{"blacklist": ["mOVWZY95", "2pAXm4Dq", "qUSYuKm9"]}' \
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
    --limit '40' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 140 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FZXt4zpd' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tJnKKAJq' \
    --body '{"ACSURL": "5fbLTUvC", "AWSCognitoRegion": "cbI6cbm0", "AWSCognitoUserPool": "iwBgw6lo", "AllowedClients": ["7J50mck2", "9vHTUj3x", "B0GBOTvC"], "AppId": "r5POZaUK", "AuthorizationEndpoint": "mGCg1KB9", "ClientId": "H8ezyASV", "EmptyStrFieldList": ["8EKDeNoW", "Y4unnd1w", "h1jrjUkM"], "EnableServerLicenseValidation": false, "Environment": "DrZ1gQAC", "FederationMetadataURL": "ajRKRzmb", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "FxpW8JCD", "JWKSEndpoint": "K85VAaEk", "KeyID": "jOwIawRL", "LogoURL": "piqT5mok", "NetflixCertificates": {"encryptedPrivateKey": "0ArYbdiU", "encryptedPrivateKeyName": "Gej8tjks", "publicCertificate": "FaI43KcZ", "publicCertificateName": "EehChNgr", "rootCertificate": "72BqIrBP", "rootCertificateName": "YZqtYfKY"}, "OrganizationId": "eY4jBCkp", "PlatformName": "DBDkzLwT", "RedirectUri": "X5wsp1la", "RegisteredDomains": [{"affectedClientIDs": ["XeZhnSxI", "RDIIV2er", "PKFSQmy4"], "domain": "XdKtW54i", "namespaces": ["J7zV2Gld", "NuUgZfMw", "Vk6wK20J"], "roleId": "NYA17KUz"}, {"affectedClientIDs": ["UVFbfTbh", "qjGA5pgM", "gwfyzo8N"], "domain": "OGmhj4aG", "namespaces": ["bMElPdd1", "2hMOoS8j", "w9gFSWCO"], "roleId": "961zTQIr"}, {"affectedClientIDs": ["oJLTKf0J", "6vX9mvm6", "hZeQFqIC"], "domain": "k2Ni7DvU", "namespaces": ["RAScujkd", "59s65NDv", "nRaPp52O"], "roleId": "Xn45A7cm"}], "Secret": "M4PPWlmr", "TeamID": "r5EHLzi8", "TokenAuthenticationType": "IEHnMyYs", "TokenClaimsMapping": {"yEEG7ZW2": "RCx76WQ4", "BbRpcCgQ": "YQZ5L6KV", "gxRqnldy": "nFpcnLB4"}, "TokenEndpoint": "8nw0hxlq", "UserInfoEndpoint": "pfOyWfDE", "UserInfoHTTPMethod": "6gnmUNhJ", "scopes": ["g4LsUGcK", "m7juHiKg", "eRTi97ON"]}' \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8iqE0Too' \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MMXksLr4' \
    --body '{"ACSURL": "vdub4vjn", "AWSCognitoRegion": "prG6dk1S", "AWSCognitoUserPool": "jRIIP4sb", "AllowedClients": ["RcV5XKRw", "cEmITnZ3", "tJIK9Jat"], "AppId": "dEtd59T3", "AuthorizationEndpoint": "H9Dv446r", "ClientId": "xwGquX1G", "EmptyStrFieldList": ["I2tFDM6c", "qQ56PE8t", "FOZLunpS"], "EnableServerLicenseValidation": false, "Environment": "gRDbLExJ", "FederationMetadataURL": "i4OtJRJV", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "sfYNd4Dx", "JWKSEndpoint": "7tkfUS16", "KeyID": "0GciTJVF", "LogoURL": "wPDvChNS", "NetflixCertificates": {"encryptedPrivateKey": "FKqC5UCj", "encryptedPrivateKeyName": "WdHyu1u2", "publicCertificate": "ec78ogfX", "publicCertificateName": "SHeXwS1J", "rootCertificate": "4nfCftsd", "rootCertificateName": "86TN6HXV"}, "OrganizationId": "ucw2u9J3", "PlatformName": "WuqPWpIh", "RedirectUri": "8w2lU2R3", "RegisteredDomains": [{"affectedClientIDs": ["LrYsGu4p", "7owo5vUN", "tOY0wQR5"], "domain": "OFNUNL03", "namespaces": ["JGewFWwr", "yn7K82sI", "UeGSIOfX"], "roleId": "o22YWRRR"}, {"affectedClientIDs": ["zxTmV1Ct", "M9vcuxz8", "UTkhfF79"], "domain": "N6bJkXYr", "namespaces": ["uYJfdHMT", "0ktf6Riy", "J0JsjctA"], "roleId": "Bnh7w85B"}, {"affectedClientIDs": ["J6EPLELh", "mRPHHUpw", "ffBef0U9"], "domain": "LKp1BBsz", "namespaces": ["ioDpgyxP", "4IbWGVnk", "ss90Ozml"], "roleId": "ufZGWnvH"}], "Secret": "MFc9Hh7a", "TeamID": "PtH0hqrn", "TokenAuthenticationType": "dLwJdDwl", "TokenClaimsMapping": {"TnNi1rAE": "6w0xvFtV", "5pnfHpYE": "uq5NVp6p", "jwW8gPbt": "j5ZNxiqA"}, "TokenEndpoint": "ISfSsehW", "UserInfoEndpoint": "1CdsTyWC", "UserInfoHTTPMethod": "QHRXx1Kt", "scopes": ["La5ibKzN", "yNxAipyb", "8QzWaqjQ"]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SqK0XRLZ' \
    --body '{"affectedClientIDs": ["zVThzaha", "R5FzJlH5", "mkYpaCqA"], "assignedNamespaces": ["uXCNRoAq", "TThCV7Yk", "S0kvMakm"], "domain": "NjxnRMbF", "roleId": "muzKDzte"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vZ5xXZbn' \
    --body '{"domain": "tvbdd3nG"}' \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'l4kFnqgE' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'lbDdO1rK' \
    --body '{"acsUrl": "dZVNqlMg", "apiKey": "KrmnzBBx", "appId": "QELR0yZV", "federationMetadataUrl": "EYaQnRmy", "isActive": true, "redirectUri": "JKKylg2u", "secret": "Hxafl364", "ssoUrl": "jC45hGki"}' \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WK8h1QCY' \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '3C8fA3C9' \
    --body '{"acsUrl": "vMu6nntF", "apiKey": "Lw41AU7Z", "appId": "ulIApksO", "federationMetadataUrl": "MAF3OM4Q", "isActive": true, "redirectUri": "ECRr2Zpz", "secret": "Xcz5cL4Q", "ssoUrl": "Zvp6CmXC"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SY0hgpen' \
    --rawPID 'false' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["zoTGRP34", "H8DdSGb1", "kc1uwV55"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hBkCuUTT' \
    --platformUserId 'T3OKJzR9' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetRoleOverrideConfigV3' test.out

#- 153 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"additions": [{"actions": [19, 72, 23], "resource": "w0RXhWAq"}, {"actions": [0, 89, 76], "resource": "56RrTeI2"}, {"actions": [65, 89, 76], "resource": "xW8WxAm0"}], "exclusions": [{"actions": [49, 14, 64], "resource": "ing3cOI2"}, {"actions": [69, 69, 20], "resource": "1yplaedy"}, {"actions": [39, 68, 34], "resource": "gK7Jfy2b"}], "overrides": [{"actions": [61, 20, 67], "resource": "jO96P9k4"}, {"actions": [100, 32, 76], "resource": "EcvlEP8R"}, {"actions": [80, 73, 12], "resource": "ajsQsAgC"}], "replacements": [{"replacement": {"actions": [33, 92, 54], "resource": "zmy3LJeX"}, "target": "g9NV46U2"}, {"replacement": {"actions": [49, 80, 8], "resource": "H9CzMAxW"}, "target": "VBHkCFB1"}, {"replacement": {"actions": [23, 6, 53], "resource": "T5l9oV3V"}, "target": "ajtXmmn8"}]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateRoleOverrideConfigV3' test.out

#- 154 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetRoleSourceV3' test.out

#- 155 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 155 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 156 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'LJHxVfKR' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetRoleNamespacePermissionV3' test.out

#- 157 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '1zOFU1D5' \
    --after '19' \
    --before '55' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 157 'GetAdminUsersByRoleIdV3' test.out

#- 158 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'RsepEkB4' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserByEmailAddressV3' test.out

#- 159 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["ppQyPlbw", "DmOQXgVz", "Lg1OkC47"]}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBulkUpdateUsersV3' test.out

#- 160 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'SRDpKksr' \
    --body '{"bulkUserId": ["8hx42Rqt", "VKNOoG3t", "GjmR8geq"]}' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetBulkUserBanV3' test.out

#- 161 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["bCZcZUAW", "My7JpCvS", "7yCclzlG"]}' \
    > test.out 2>&1
eval_tap $? 161 'AdminListUserIDByUserIDsV3' test.out

#- 162 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["dDcCSIuv", "Bgj2iFaS", "tLo2WRHP"]}' \
    > test.out 2>&1
eval_tap $? 162 'AdminBulkGetUsersPlatform' test.out

#- 163 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["HQ7e8Qxa", "R3qlGPQI", "VMomQUmE"], "isAdmin": true, "languageTag": "mnVEVkN9", "namespace": "qFoLR8Ai", "roles": ["hWtThUor", "wq27G2RB", "VUzbOwQ6"]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminInviteUserV3' test.out

#- 164 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '28' \
    --platformUserId 'qzdsEoBD' \
    --platformId 'ZTrn2z3t' \
    > test.out 2>&1
eval_tap $? 164 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 165 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 165 'AdminListUsersV3' test.out

#- 166 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'rs0ZbYd3' \
    --endDate 'RxjDpyzf' \
    --includeTotal 'true' \
    --limit '70' \
    --offset '4' \
    --platformBy 'jTDWwUyV' \
    --platformId 'VaYdYhdx' \
    --query 'N4nvyE8K' \
    --roleIds 'c2ClGYoq' \
    --skipLoginQueue 'false' \
    --startDate 'TLBImESJ' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 166 'AdminSearchUserV3' test.out

#- 167 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["UIAlWPQg", "xQMyKAgw", "AOxDgtG5"]}' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetBulkUserByEmailAddressV3' test.out

#- 168 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '9kP9Cx8K' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserByUserIdV3' test.out

#- 169 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'k5B9Kgvi' \
    --body '{"avatarUrl": "ZMJAkN00", "country": "mSCpOnqc", "dateOfBirth": "mao80Lgf", "displayName": "jrNq5vSv", "languageTag": "gxvS37zc", "skipLoginQueue": false, "uniqueDisplayName": "MmSahrsY", "userName": "i2QOte5v"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminUpdateUserV3' test.out

#- 170 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId '3GNpSWtW' \
    --activeOnly 'false' \
    --after 'dziCISwb' \
    --before '0opSQ0xj' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserBanV3' test.out

#- 171 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EFecUDRh' \
    --body '{"ban": "VqIDeT1P", "comment": "kpdDapn8", "endDate": "Je5LpZkm", "reason": "tCC062Zg", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBanUserV3' test.out

#- 172 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId '0BijF9Xt' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserBanSummaryV3' test.out

#- 173 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'mb1YfHF5' \
    --namespace $AB_NAMESPACE \
    --userId 'sF5hm4iD' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserBanV3' test.out

#- 174 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iWeG2eME' \
    --body '{"context": "Mf6wCOzI", "emailAddress": "Ulx2bwdz", "languageTag": "FjEAF9ZG"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminSendVerificationCodeV3' test.out

#- 175 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LqxucqIl' \
    --body '{"Code": "viPxvKwy", "ContactType": "YtsuFq9M", "LanguageTag": "wsrdxqok", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyAccountV3' test.out

#- 176 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'HWgmoo7o' \
    > test.out 2>&1
eval_tap $? 176 'GetUserVerificationCode' test.out

#- 177 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rpyCCK2U' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserDeletionStatusV3' test.out

#- 178 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PhQUQ9la' \
    --body '{"deletionDate": 57, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserDeletionStatusV3' test.out

#- 179 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WtFJK9lx' \
    > test.out 2>&1
eval_tap $? 179 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 180 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '2aqFsIrz' \
    --body '{"code": "IPeC4uyA", "country": "8ncEawkQ", "dateOfBirth": "dyXqMzWB", "displayName": "0RK0Puy8", "emailAddress": "ruYUUsoo", "password": "1TnyXlRh", "uniqueDisplayName": "kmQqx09l", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpgradeHeadlessAccountV3' test.out

#- 181 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '1DX6WkyP' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserInformationV3' test.out

#- 182 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qNOHhiG6' \
    --after '0.9256744237620432' \
    --before '0.18703210435879958' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserLoginHistoriesV3' test.out

#- 183 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'd9Jaw0SZ' \
    --body '{"languageTag": "s7bwn5S4", "mfaToken": "Cl26rG00", "newPassword": "AreeEW0a", "oldPassword": "kSOmcaqJ"}' \
    > test.out 2>&1
eval_tap $? 183 'AdminResetPasswordV3' test.out

#- 184 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '9uSVdRsI' \
    --body '{"Permissions": [{"Action": 40, "Resource": "BRxHTVmw", "SchedAction": 15, "SchedCron": "vwF0sv4l", "SchedRange": ["LUXDgGFq", "zgODNvxq", "QOrrWOaE"]}, {"Action": 47, "Resource": "XdRkeZV2", "SchedAction": 71, "SchedCron": "Pu3HqMbY", "SchedRange": ["bYfEGFGz", "3cvHmmYE", "v9wV8IDc"]}, {"Action": 80, "Resource": "H5t9Ceee", "SchedAction": 68, "SchedCron": "y4jVXRIz", "SchedRange": ["tJT5rsXo", "5oFlsSRb", "E90yVmgN"]}]}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateUserPermissionV3' test.out

#- 185 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VsdFndSA' \
    --body '{"Permissions": [{"Action": 50, "Resource": "Rz8TdUjJ", "SchedAction": 96, "SchedCron": "MKe5fSnm", "SchedRange": ["dzJZdy5D", "rr1gZb8z", "ZmkvgW0A"]}, {"Action": 17, "Resource": "cdaGVK88", "SchedAction": 98, "SchedCron": "ts2j2Dsz", "SchedRange": ["ooWDMjh2", "pbGscMEH", "At80EgW4"]}, {"Action": 11, "Resource": "w2TvHU1i", "SchedAction": 0, "SchedCron": "8V7aGsub", "SchedRange": ["luT5V8PV", "b7A7R2Cd", "gwKH0jcX"]}]}' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserPermissionsV3' test.out

#- 186 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wx8i0AlR' \
    --body '[{"Action": 22, "Resource": "W3gDrUzM"}, {"Action": 95, "Resource": "a1gZAX1T"}, {"Action": 61, "Resource": "jJiUENdt"}]' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserPermissionBulkV3' test.out

#- 187 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '21' \
    --namespace $AB_NAMESPACE \
    --resource 'eVzLBnCV' \
    --userId 'ktrkn4Mm' \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteUserPermissionV3' test.out

#- 188 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yOOM8iZF' \
    --after '7RBjisF1' \
    --before 'gUoAsraC' \
    --limit '66' \
    --platformId 'WzvXagUn' \
    --targetNamespace 'FhByt2jt' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetUserPlatformAccountsV3' test.out

#- 189 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'u3MiXRwP' \
    --status 'bJQsqeAK' \
    > test.out 2>&1
eval_tap $? 189 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 190 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'mUN3x8E9' \
    > test.out 2>&1
eval_tap $? 190 'AdminGetListJusticePlatformAccounts' test.out

#- 191 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'rkPzR1ze' \
    --userId 'AwvDgffD' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetUserMapping' test.out

#- 192 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'lPFsKPoj' \
    --userId 'CPAMkDka' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateJusticeUser' test.out

#- 193 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'ckgxHoWW' \
    --skipConflict 'true' \
    --body '{"platformId": "PFkQhgE0", "platformUserId": "vPv6eGnj"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminLinkPlatformAccount' test.out

#- 194 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uofW2Sll' \
    --platformId 'MBz78fDi' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetUserLinkHistoriesV3' test.out

#- 195 AdminPlatformUnlinkV3
eval_tap 0 195 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 196 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hl75q3LO' \
    --userId 'WfOPGkny' \
    > test.out 2>&1
eval_tap $? 196 'AdminPlatformUnlinkAllV3' test.out

#- 197 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AThisPrm' \
    --userId 'ubg7B4B2' \
    --ticket 'MyptioPh' \
    > test.out 2>&1
eval_tap $? 197 'AdminPlatformLinkV3' test.out

#- 198 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 198 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 199 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TfkoeWXe' \
    --userId 'Gdi5EOdZ' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 200 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2oLPCc4e' \
    --userId 'W4Gyv6eQ' \
    --platformToken 'xAvZ0TxT' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 201 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'NPEQsFnd' \
    --userId 'gaLgi1IW' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserSinglePlatformAccount' test.out

#- 202 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZELJt2CO' \
    --body '["EY1mxshG", "WVZ8wbGV", "4lJI9j7M"]' \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteUserRolesV3' test.out

#- 203 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PrC6Ywtt' \
    --body '[{"namespace": "JjDel6tT", "roleId": "SGDjzHHC"}, {"namespace": "ohygEz3c", "roleId": "dG7FVPaD"}, {"namespace": "JfCV8ZGt", "roleId": "inYjya7m"}]' \
    > test.out 2>&1
eval_tap $? 203 'AdminSaveUserRoleV3' test.out

#- 204 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'YGkd6J8C' \
    --userId 'NGT9JLLx' \
    > test.out 2>&1
eval_tap $? 204 'AdminAddUserRoleV3' test.out

#- 205 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'OlMt4qUW' \
    --userId 'XwLccfNe' \
    > test.out 2>&1
eval_tap $? 205 'AdminDeleteUserRoleV3' test.out

#- 206 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SfBaVe8n' \
    --body '{"enabled": false, "reason": "LLDkGXZm"}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateUserStatusV3' test.out

#- 207 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId '4aumf13C' \
    --body '{"emailAddress": "71AgJw62", "password": "VXGrdoxj"}' \
    > test.out 2>&1
eval_tap $? 207 'AdminTrustlyUpdateUserIdentity' test.out

#- 208 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dY82ZEXm' \
    > test.out 2>&1
eval_tap $? 208 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 209 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '5YbY33e3' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "qkdqwZB8"}' \
    > test.out 2>&1
eval_tap $? 209 'AdminUpdateClientSecretV3' test.out

#- 210 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId '039L533U' \
    > test.out 2>&1
eval_tap $? 210 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 211 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'rZhTAb6L' \
    --before 'AVU1ZB76' \
    --isWildcard 'true' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetRolesV3' test.out

#- 212 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "hkFffOWN", "namespace": "GwvxgBvJ", "userId": "yfPiJskf"}, {"displayName": "OYeYolFN", "namespace": "tUmjrzhG", "userId": "WzlBl8Ql"}, {"displayName": "zzGVU49V", "namespace": "RxgX5jCg", "userId": "9UWJnjzo"}], "members": [{"displayName": "HWOzrQGU", "namespace": "AG5yKfD6", "userId": "TFeXSJOI"}, {"displayName": "J9FXY4ja", "namespace": "HAtBY6AY", "userId": "ic8fn5TK"}, {"displayName": "MIbpzqsm", "namespace": "m3hJg2Zl", "userId": "2jfiRN1t"}], "permissions": [{"action": 44, "resource": "wt7mcYE8", "schedAction": 70, "schedCron": "lGncZYaB", "schedRange": ["ihqGs4Bm", "VtN7S6pz", "KQ3Qgkk8"]}, {"action": 100, "resource": "RC8VY6dD", "schedAction": 36, "schedCron": "jaip3hPr", "schedRange": ["ljMPt4dU", "rd8cjetB", "q14hf1NO"]}, {"action": 76, "resource": "C52hQhYv", "schedAction": 50, "schedCron": "w6RLEdm4", "schedRange": ["U4Ykz1VT", "grLEUWmn", "sf1hvwEI"]}], "roleName": "zf0010B6"}' \
    > test.out 2>&1
eval_tap $? 212 'AdminCreateRoleV3' test.out

#- 213 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'IbI95MCm' \
    > test.out 2>&1
eval_tap $? 213 'AdminGetRoleV3' test.out

#- 214 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'N5y0KZIi' \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteRoleV3' test.out

#- 215 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'Gld7Us4g' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "tlKXasTK"}' \
    > test.out 2>&1
eval_tap $? 215 'AdminUpdateRoleV3' test.out

#- 216 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'A1zP0rbB' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetRoleAdminStatusV3' test.out

#- 217 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'yupgdcSM' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateAdminRoleStatusV3' test.out

#- 218 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'qFftjqFw' \
    > test.out 2>&1
eval_tap $? 218 'AdminRemoveRoleAdminV3' test.out

#- 219 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'lLGUnW1X' \
    --after 'y0NFwSGM' \
    --before 'OkeYGyKV' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 219 'AdminGetRoleManagersV3' test.out

#- 220 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'XYdMdCI1' \
    --body '{"managers": [{"displayName": "6NGykKlH", "namespace": "YRzyjVA4", "userId": "417fezII"}, {"displayName": "zd0k5yvo", "namespace": "TkXmXVFz", "userId": "d8ZhxtgQ"}, {"displayName": "6DyZ7D4f", "namespace": "xC6EI0NU", "userId": "hhflVNh6"}]}' \
    > test.out 2>&1
eval_tap $? 220 'AdminAddRoleManagersV3' test.out

#- 221 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'vCwRhb44' \
    --body '{"managers": [{"displayName": "KYA0noJG", "namespace": "Dd1dOn3S", "userId": "WES8kRXc"}, {"displayName": "sMj3N1dm", "namespace": "skEXWJ0s", "userId": "YF0lYeuT"}, {"displayName": "smHaCqyr", "namespace": "8CGiSzi2", "userId": "U7bjCKk2"}]}' \
    > test.out 2>&1
eval_tap $? 221 'AdminRemoveRoleManagersV3' test.out

#- 222 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'o8yTYLh6' \
    --after 'sm9RM88G' \
    --before '1fmLevAi' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRoleMembersV3' test.out

#- 223 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '0TqGpvX8' \
    --body '{"members": [{"displayName": "fzj1KsxK", "namespace": "JeTvtRwN", "userId": "v2bNAyym"}, {"displayName": "OOs0DggK", "namespace": "onM0IyYP", "userId": "ldP50pWA"}, {"displayName": "XgveWJhM", "namespace": "ESX1YAEE", "userId": "F2PMIKqe"}]}' \
    > test.out 2>&1
eval_tap $? 223 'AdminAddRoleMembersV3' test.out

#- 224 AdminRemoveRoleMembersV3
eval_tap 0 224 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 225 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'CP12GF8f' \
    --body '{"permissions": [{"action": 94, "resource": "km7xrx9z", "schedAction": 16, "schedCron": "WNiwmm4b", "schedRange": ["2jY0lBoW", "k5fNFbhY", "P9y1Ce0H"]}, {"action": 100, "resource": "FobErtGb", "schedAction": 16, "schedCron": "T1MoUMta", "schedRange": ["i9SXTK1h", "TaHhO2Yo", "5bP5hgQl"]}, {"action": 47, "resource": "m6kouUXn", "schedAction": 52, "schedCron": "cOZvtjg7", "schedRange": ["s8L6aFex", "z3dt0IHp", "7lEGvmAD"]}]}' \
    > test.out 2>&1
eval_tap $? 225 'AdminUpdateRolePermissionsV3' test.out

#- 226 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'Fx74UZMZ' \
    --body '{"permissions": [{"action": 1, "resource": "KRFZWVWV", "schedAction": 56, "schedCron": "Bg2qHnmB", "schedRange": ["A192V6rF", "aLSvxNTA", "P2pbChn5"]}, {"action": 86, "resource": "dGpWF8qt", "schedAction": 82, "schedCron": "9xITFN44", "schedRange": ["RfuuJv81", "EqHNlhPA", "WOMd3rFP"]}, {"action": 99, "resource": "RR3hbreL", "schedAction": 88, "schedCron": "j1yiOJnY", "schedRange": ["qLvFQJoI", "7Rp1iDX6", "R53I8Vlf"]}]}' \
    > test.out 2>&1
eval_tap $? 226 'AdminAddRolePermissionsV3' test.out

#- 227 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'LnwRjAiW' \
    --body '["YdHWuYmK", "eERqOP1l", "6NzfN8WC"]' \
    > test.out 2>&1
eval_tap $? 227 'AdminDeleteRolePermissionsV3' test.out

#- 228 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '85' \
    --resource 'juQO6rA5' \
    --roleId 'mEjOhf0V' \
    > test.out 2>&1
eval_tap $? 228 'AdminDeleteRolePermissionV3' test.out

#- 229 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 229 'AdminGetMyUserV3' test.out

#- 230 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'kjhjuqpd' \
    --extendExp 'true' \
    --redirectUri 'qW0od7lG' \
    --password 'RdPtbK59' \
    --requestId 'NfK2QjLk' \
    --userName 'dTXAvmAo' \
    > test.out 2>&1
eval_tap $? 230 'UserAuthenticationV3' test.out

#- 231 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'F9yuRfkq' \
    --linkingToken 'FIpN7Zer' \
    --password 'HbHZYdky' \
    --username 'xzIdpGOi' \
    > test.out 2>&1
eval_tap $? 231 'AuthenticationWithPlatformLinkV3' test.out

#- 232 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData '65Tyamd2' \
    --extendExp 'false' \
    --linkingToken 'G4p1DRDn' \
    > test.out 2>&1
eval_tap $? 232 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 233 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'MT2F0PIU' \
    > test.out 2>&1
eval_tap $? 233 'RequestOneTimeLinkingCodeV3' test.out

#- 234 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'CvFjzgBT' \
    > test.out 2>&1
eval_tap $? 234 'ValidateOneTimeLinkingCodeV3' test.out

#- 235 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData '38siSdHA' \
    --isTransient 'true' \
    --clientId '4a74cZam' \
    --oneTimeLinkCode 'QpkwKbrn' \
    > test.out 2>&1
eval_tap $? 235 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 236 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 236 'GetCountryLocationV3' test.out

#- 237 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 237 'Logout' test.out

#- 238 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge '7E7i4CVf' \
    --codeChallengeMethod 'S256' \
    --clientId 'YIzr0gt3' \
    > test.out 2>&1
eval_tap $? 238 'RequestTokenExchangeCodeV3' test.out

#- 239 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EWQSp2hP' \
    --userId 'Toq5TGGc' \
    --platformUserId 'cSgd36J2' \
    > test.out 2>&1
eval_tap $? 239 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 240 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '0NvTYasM' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 240 'RevokeUserV3' test.out

#- 241 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'bZljP1mk' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'bTXZhO9I' \
    --redirectUri '4gPVLRTI' \
    --scope 'PIR6DRlx' \
    --state 'AwyCpuqs' \
    --targetAuthPage 'Wpoi6WA6' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'f5UTjz4o' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 241 'AuthorizeV3' test.out

#- 242 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'tC4XE1RH' \
    > test.out 2>&1
eval_tap $? 242 'TokenIntrospectionV3' test.out

#- 243 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 243 'GetJWKSV3' test.out

#- 244 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'BYFhvDpQ' \
    --factor 'RdTtGnUO' \
    --mfaToken 'OZpHY9zV' \
    > test.out 2>&1
eval_tap $? 244 'SendMFAAuthenticationCode' test.out

#- 245 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'hwnEHPUN' \
    --mfaToken 'j9h3oanA' \
    > test.out 2>&1
eval_tap $? 245 'Change2faMethod' test.out

#- 246 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'IW8DNoVR' \
    --factor 'JcZRtKbB' \
    --mfaToken 'OKTh44VX' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 246 'Verify2faCode' test.out

#- 247 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hsaAwUJK' \
    --userId 'pA47CnMU' \
    > test.out 2>&1
eval_tap $? 247 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 248 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'qmT1aUjg' \
    --clientId 'UDJUV9Ui' \
    --redirectUri 'fupyJuUh' \
    --requestId 'TMw1I9LD' \
    > test.out 2>&1
eval_tap $? 248 'AuthCodeRequestV3' test.out

#- 249 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '6uBmfgG1' \
    --additionalData 'FDe3tVML' \
    --clientId 'ehc4wf5J' \
    --createHeadless 'true' \
    --deviceId 'xcsO7TzA' \
    --macAddress 'BB3kG4Ll' \
    --platformToken 'MA7MZ8Nu' \
    --serviceLabel '0.5891715925709639' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 249 'PlatformTokenGrantV3' test.out

#- 250 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 250 'GetRevocationListV3' test.out

#- 251 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'j6s6SrWh' \
    > test.out 2>&1
eval_tap $? 251 'TokenRevocationV3' test.out

#- 252 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'lw36GrP0' \
    --simultaneousTicket 'fwdfSlOv' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'cGGSpWE6' \
    > test.out 2>&1
eval_tap $? 252 'SimultaneousLoginV3' test.out

#- 253 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'u1OdA1bG' \
    --clientId 'SqQmJah3' \
    --clientSecret 'D8R96xcP' \
    --code 'dtTweY04' \
    --codeVerifier 'l0XwI35Q' \
    --extendNamespace 'efoVcIIK' \
    --extendExp 'false' \
    --password 'HmKA0Kvv' \
    --redirectUri 'JquVHfSo' \
    --refreshToken 'WqUJeoQf' \
    --username 'drSQR7e0' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 253 'TokenGrantV3' test.out

#- 254 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'EGOcC2YM' \
    > test.out 2>&1
eval_tap $? 254 'VerifyTokenV3' test.out

#- 255 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'Qt0AAiqW' \
    --code 'CkLecSty' \
    --error 'FhkoRylm' \
    --openidAssocHandle 'nwikUahr' \
    --openidClaimedId 'SIWj8AcJ' \
    --openidIdentity 'OiVYF61c' \
    --openidMode 'Aav5e9ad' \
    --openidNs 'Jo03Amjx' \
    --openidOpEndpoint 'B11JmGBZ' \
    --openidResponseNonce 'r3qSGCvp' \
    --openidReturnTo 'TZKw7NZC' \
    --openidSig 'ger882Dt' \
    --openidSigned 'AvAftvxp' \
    --state '9tgmw2np' \
    > test.out 2>&1
eval_tap $? 255 'PlatformAuthenticationV3' test.out

#- 256 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'gawkKLiZ' \
    --platformToken 'uu4i98Yd' \
    > test.out 2>&1
eval_tap $? 256 'PlatformTokenRefreshV3' test.out

#- 257 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'zlGo6wIL' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetInputValidations' test.out

#- 258 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'EenMsytZ' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetInputValidationByField' test.out

#- 259 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'TOAxzCP3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 259 'PublicGetCountryAgeRestrictionV3' test.out

#- 260 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'LZaQTVnd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 260 'PublicGetConfigValueV3' test.out

#- 261 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 261 'PublicGetCountryListV3' test.out

#- 262 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 262 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 263 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'z1Vm3ZVw' \
    > test.out 2>&1
eval_tap $? 263 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 264 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 264 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 265 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'H2u5uTO1' \
    --platformUserId 'lsyyFpmI' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserByPlatformUserIDV3' test.out

#- 266 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'qOyyap88' \
    > test.out 2>&1
eval_tap $? 266 'PublicGetAsyncStatus' test.out

#- 267 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'wJW7Ovwy' \
    --limit '57' \
    --offset '74' \
    --platformBy 'SEGXYptT' \
    --platformId 'KgLdWZ9X' \
    --query 'virhGrZX' \
    > test.out 2>&1
eval_tap $? 267 'PublicSearchUserV3' test.out

#- 268 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "MwU8uMc8", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "YxJsewz8", "policyId": "55QEA7j8", "policyVersionId": "y9NU6ghv"}, {"isAccepted": false, "localizedPolicyVersionId": "uuYSgDka", "policyId": "svdULbzw", "policyVersionId": "9qYrJIAx"}, {"isAccepted": false, "localizedPolicyVersionId": "shmoah8t", "policyId": "noibhQvt", "policyVersionId": "K5tHWdPS"}], "authType": "1RgVYBRg", "code": "NhhrDk6e", "country": "KVIfRBKh", "dateOfBirth": "n2hU2CEd", "displayName": "vZGpQaj9", "emailAddress": "bjZ2ttyo", "password": "u6SkdVZZ", "reachMinimumAge": true, "uniqueDisplayName": "gaHM5qjB"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicCreateUserV3' test.out

#- 269 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'QnQOWfyR' \
    --query 's97fsUe1' \
    > test.out 2>&1
eval_tap $? 269 'CheckUserAvailability' test.out

#- 270 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["7spOkWE4", "UCRk2Nxa", "QF0Wy0C3"]}' \
    > test.out 2>&1
eval_tap $? 270 'PublicBulkGetUsers' test.out

#- 271 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "VI4kycrm", "languageTag": "Gkg4j8ae"}' \
    > test.out 2>&1
eval_tap $? 271 'PublicSendRegistrationCode' test.out

#- 272 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "y6MJbkvF", "emailAddress": "M78YAMwR"}' \
    > test.out 2>&1
eval_tap $? 272 'PublicVerifyRegistrationCode' test.out

#- 273 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "NAGg1dIJ", "languageTag": "D3Fu2mKl"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicForgotPasswordV3' test.out

#- 274 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "RoHAlNlD", "password": "MQzyytvH", "uniqueDisplayName": "OSnLEQh8", "username": "3Y38BHCn"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicValidateUserInput' test.out

#- 275 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '8WnfPT5n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 275 'GetAdminInvitationV3' test.out

#- 276 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'cOwG1CYq' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "Bs6shVGS", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3xcj1z3z", "policyId": "6xBeyGC3", "policyVersionId": "5dlg4mPR"}, {"isAccepted": false, "localizedPolicyVersionId": "yIosuCkO", "policyId": "XdCutEsi", "policyVersionId": "hLiEb5V9"}, {"isAccepted": false, "localizedPolicyVersionId": "lkqhLl76", "policyId": "RKRSuN4b", "policyVersionId": "dNVdR0UQ"}], "authType": "mcgXCDoT", "code": "BsBI7Pxk", "country": "rUKPibw6", "dateOfBirth": "k2vmsWLN", "displayName": "OdBwFNvA", "emailAddress": "y1kjJisa", "password": "MpmKMwVu", "reachMinimumAge": false, "uniqueDisplayName": "Zp00vnrt"}' \
    > test.out 2>&1
eval_tap $? 276 'CreateUserFromInvitationV3' test.out

#- 277 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "Zjtwrxu9", "country": "wTyiHFzt", "dateOfBirth": "I1h9nsSO", "displayName": "WAtUwKDj", "languageTag": "JFEFVZJo", "uniqueDisplayName": "N7ApolEb", "userName": "PqN8Vqx9"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserV3' test.out

#- 278 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "tag0jgOf", "country": "JPpPRvGK", "dateOfBirth": "z1sdHN8s", "displayName": "ESPAP5px", "languageTag": "qBsEh7zM", "uniqueDisplayName": "FMD6OlCA", "userName": "0VkIVfeZ"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicPartialUpdateUserV3' test.out

#- 279 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "BK7q07Mi", "emailAddress": "jhUnyxAk", "languageTag": "u7BRN9G5"}' \
    > test.out 2>&1
eval_tap $? 279 'PublicSendVerificationCodeV3' test.out

#- 280 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MiXgxmc5", "contactType": "YIloMWpa", "languageTag": "1sRJoVEj", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 280 'PublicUserVerificationV3' test.out

#- 281 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "OMrRhqj3", "country": "eg0Lnb16", "dateOfBirth": "YyukelwS", "displayName": "XPCBu2Z0", "emailAddress": "MPqXIIvc", "password": "ibFjhw9i", "uniqueDisplayName": "ygXxjoWt", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 281 'PublicUpgradeHeadlessAccountV3' test.out

#- 282 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "If2dkaSg", "password": "6zcoCY9P"}' \
    > test.out 2>&1
eval_tap $? 282 'PublicVerifyHeadlessAccountV3' test.out

#- 283 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "X8mSKXu4", "mfaToken": "EumkCawY", "newPassword": "zQBKRFTc", "oldPassword": "kwEDJg89"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicUpdatePasswordV3' test.out

#- 284 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'CiV0eW4K' \
    > test.out 2>&1
eval_tap $? 284 'PublicCreateJusticeUser' test.out

#- 285 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ApyEpCQu' \
    --redirectUri 'bKLADEmS' \
    --ticket 'Nkvjzv7D' \
    > test.out 2>&1
eval_tap $? 285 'PublicPlatformLinkV3' test.out

#- 286 PublicPlatformUnlinkV3
eval_tap 0 286 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 287 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1GtaaHTp' \
    > test.out 2>&1
eval_tap $? 287 'PublicPlatformUnlinkAllV3' test.out

#- 288 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'P8kw4uad' \
    --ticket 'pnp2qBgo' \
    > test.out 2>&1
eval_tap $? 288 'PublicForcePlatformLinkV3' test.out

#- 289 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'x2aIFIkq' \
    --clientId 'hWDPgQw9' \
    --redirectUri 'Q66Ydg1n' \
    > test.out 2>&1
eval_tap $? 289 'PublicWebLinkPlatform' test.out

#- 290 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'eehVmrvz' \
    --code 'ZkZNHI0Q' \
    --state 'RnBzmAVM' \
    > test.out 2>&1
eval_tap $? 290 'PublicWebLinkPlatformEstablish' test.out

#- 291 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IhZ6DHrI' \
    --code 'GPaIccq6' \
    --state 'GczSzYuE' \
    > test.out 2>&1
eval_tap $? 291 'PublicProcessWebLinkPlatformV3' test.out

#- 292 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "yzhWuc0X", "userIds": ["1WLsWZXn", "8sFEkkNR", "HXmoxoFr"]}' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetUsersPlatformInfosV3' test.out

#- 293 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "YFCzcNLi", "code": "p0fcBXBt", "emailAddress": "CNkmvn9y", "languageTag": "zrAxqMX3", "newPassword": "1wGiVNFz"}' \
    > test.out 2>&1
eval_tap $? 293 'ResetPasswordV3' test.out

#- 294 PublicGetUserByUserIdV3
eval_tap 0 294 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 295 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jE2LGFUg' \
    --activeOnly 'true' \
    --after 'RGfKmci2' \
    --before 'E1r7a44Y' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetUserBanHistoryV3' test.out

#- 296 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xvysu2xI' \
    > test.out 2>&1
eval_tap $? 296 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 297 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MLK2mXzr' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUserInformationV3' test.out

#- 298 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z4jqPUIA' \
    --after '0.08512089961927782' \
    --before '0.7061348404045755' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetUserLoginHistoriesV3' test.out

#- 299 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QDh1xTKB' \
    --after 'Of4qFlqn' \
    --before 'AjEzaLpU' \
    --limit '50' \
    --platformId 'G6WZ3jx4' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetUserPlatformAccountsV3' test.out

#- 300 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ngL6fRtY' \
    > test.out 2>&1
eval_tap $? 300 'PublicListJusticePlatformAccountsV3' test.out

#- 301 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'YtQsa5MK' \
    --body '{"platformId": "aPuiUiPH", "platformUserId": "bxUjaYkj"}' \
    > test.out 2>&1
eval_tap $? 301 'PublicLinkPlatformAccount' test.out

#- 302 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '5CE1CpVk' \
    --body '{"chosenNamespaces": ["Yz9dEblq", "v6yDVYbn", "0wlHLRFl"], "requestId": "cYnGYnrj"}' \
    > test.out 2>&1
eval_tap $? 302 'PublicForceLinkPlatformWithProgression' test.out

#- 303 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '0IMnI6Ka' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetPublisherUserV3' test.out

#- 304 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kEoS2Qbb' \
    --password 'U1SVyjEx' \
    > test.out 2>&1
eval_tap $? 304 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 305 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'tys2b0xU' \
    --before 'BUZDwQYM' \
    --isWildcard 'true' \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetRolesV3' test.out

#- 306 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'r99tk3WR' \
    > test.out 2>&1
eval_tap $? 306 'PublicGetRoleV3' test.out

#- 307 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetMyUserV3' test.out

#- 308 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'do6FBkTN' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 309 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["lwb10I7Z", "X39mzV1I", "1GNYZjZx"], "oneTimeLinkCode": "0BduRuHO"}' \
    > test.out 2>&1
eval_tap $? 309 'LinkHeadlessAccountToMyAccountV3' test.out

#- 310 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "r8qEd937"}' \
    > test.out 2>&1
eval_tap $? 310 'PublicSendVerificationLinkV3' test.out

#- 311 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '4zsd78zX' \
    > test.out 2>&1
eval_tap $? 311 'PublicVerifyUserByLinkV3' test.out

#- 312 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '8Ee0pG9b' \
    --code 'yIy7S0pA' \
    --error '8SP8jJYI' \
    --state 'mtznmcjT' \
    > test.out 2>&1
eval_tap $? 312 'PlatformAuthenticateSAMLV3Handler' test.out

#- 313 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'k0RSa5NS' \
    --payload 'hbMr5p7s' \
    > test.out 2>&1
eval_tap $? 313 'LoginSSOClient' test.out

#- 314 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'c6agoGT7' \
    > test.out 2>&1
eval_tap $? 314 'LogoutSSOClient' test.out

#- 315 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'vvjeNeUh' \
    --code '8Ob52d56' \
    > test.out 2>&1
eval_tap $? 315 'RequestTargetTokenResponseV3' test.out

#- 316 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '32' \
    --namespace 'rfcFjHiU' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 316 'AdminListInvitationHistoriesV4' test.out

#- 317 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '6eqWrLo1' \
    > test.out 2>&1
eval_tap $? 317 'AdminGetDevicesByUserV4' test.out

#- 318 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'wx6XkvBS' \
    --endDate '9wjHhtMc' \
    --limit '27' \
    --offset '100' \
    --startDate 'Hfgo1UN3' \
    > test.out 2>&1
eval_tap $? 318 'AdminGetBannedDevicesV4' test.out

#- 319 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OmQFFocU' \
    > test.out 2>&1
eval_tap $? 319 'AdminGetUserDeviceBansV4' test.out

#- 320 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "8GoRLAW8", "deviceId": "0iVRH6Nq", "deviceType": "B2Zci0uE", "enabled": false, "endDate": "nggA5yG7", "ext": {"Lvl0CN9w": {}, "5qtMJKZl": {}, "0LlvQLlw": {}}, "reason": "lypM9Ia6"}' \
    > test.out 2>&1
eval_tap $? 320 'AdminBanDeviceV4' test.out

#- 321 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'pA9FvYzG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 321 'AdminGetDeviceBanV4' test.out

#- 322 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'GTZiDfke' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 322 'AdminUpdateDeviceBanV4' test.out

#- 323 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'AEmJRgVV' \
    --startDate 'nkb2EolN' \
    --deviceType '9ETQNxH8' \
    > test.out 2>&1
eval_tap $? 323 'AdminGenerateReportV4' test.out

#- 324 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 324 'AdminGetDeviceTypesV4' test.out

#- 325 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '7Y6cAqTa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 325 'AdminGetDeviceBansV4' test.out

#- 326 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId '6Fk6JsZb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 326 'AdminDecryptDeviceV4' test.out

#- 327 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'i7x8rTj0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 327 'AdminUnbanDeviceV4' test.out

#- 328 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'r760OluT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 328 'AdminGetUsersByDeviceV4' test.out

#- 329 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 329 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 330 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 330 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 331 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 98}' \
    > test.out 2>&1
eval_tap $? 331 'AdminCreateTestUsersV4' test.out

#- 332 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "6hMutGFO", "policyId": "jCuGD8GU", "policyVersionId": "zihX1pT3"}, {"isAccepted": false, "localizedPolicyVersionId": "axplR8T3", "policyId": "jTLiDktN", "policyVersionId": "tiF86dbd"}, {"isAccepted": true, "localizedPolicyVersionId": "61S8ApxB", "policyId": "pIzinWlR", "policyVersionId": "EgMcXztp"}], "authType": "EMAILPASSWD", "code": "YObMCS4m", "country": "SsveW1QF", "dateOfBirth": "8ydGBVRo", "displayName": "oiZ3Ym2D", "emailAddress": "LYsBHX4r", "password": "DJ53T4YS", "passwordMD5Sum": "7m2sPZXA", "reachMinimumAge": true, "uniqueDisplayName": "pPbhRGij", "username": "dvpbuYqu"}' \
    > test.out 2>&1
eval_tap $? 332 'AdminCreateUserV4' test.out

#- 333 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["xsDc8IlJ", "uiHrnwOP", "MtPIHWLJ"]}' \
    > test.out 2>&1
eval_tap $? 333 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 334 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["CjEo8Loi", "XuxeXKrn", "8CFQroxg"]}' \
    > test.out 2>&1
eval_tap $? 334 'AdminBulkCheckValidUserIDV4' test.out

#- 335 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'V89peGGh' \
    --body '{"avatarUrl": "f5N3RPIJ", "country": "jKIVltc3", "dateOfBirth": "mmKFvpKe", "displayName": "0T7b6v6v", "languageTag": "v6ykLGpo", "skipLoginQueue": true, "uniqueDisplayName": "odPhPvPy", "userName": "9G0UtpUr"}' \
    > test.out 2>&1
eval_tap $? 335 'AdminUpdateUserV4' test.out

#- 336 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '8BkpQc8n' \
    --body '{"code": "ykoZ1vG7", "emailAddress": "tF6jDb2K"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateUserEmailAddressV4' test.out

#- 337 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'EC4cvage' \
    > test.out 2>&1
eval_tap $? 337 'AdminDisableUserMFAV4' test.out

#- 338 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'prs5eFyY' \
    > test.out 2>&1
eval_tap $? 338 'AdminListUserRolesV4' test.out

#- 339 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NFUafvn6' \
    --body '{"assignedNamespaces": ["LpHgPyEQ", "anaFRPUy", "BzT0uFNj"], "roleId": "uQXZwE4b"}' \
    > test.out 2>&1
eval_tap $? 339 'AdminUpdateUserRoleV4' test.out

#- 340 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vznASbhH' \
    --body '{"assignedNamespaces": ["yoMEXx5u", "DutN44tH", "oo7ETXsc"], "roleId": "t6kZV2yj"}' \
    > test.out 2>&1
eval_tap $? 340 'AdminAddUserRoleV4' test.out

#- 341 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RheICoLE' \
    --body '{"assignedNamespaces": ["YKGT1ioR", "k5p148m0", "XFpyMs6j"], "roleId": "NeqBAJwi"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminRemoveUserRoleV4' test.out

#- 342 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '64' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 342 'AdminGetRolesV4' test.out

#- 343 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "VVCU3Snw"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminCreateRoleV4' test.out

#- 344 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'M0gATUZq' \
    > test.out 2>&1
eval_tap $? 344 'AdminGetRoleV4' test.out

#- 345 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '5Uv1y7Sf' \
    > test.out 2>&1
eval_tap $? 345 'AdminDeleteRoleV4' test.out

#- 346 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'wtIeSSBr' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "pllSapG8"}' \
    > test.out 2>&1
eval_tap $? 346 'AdminUpdateRoleV4' test.out

#- 347 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'GC7Ai2bn' \
    --body '{"permissions": [{"action": 64, "resource": "BXX1fczg", "schedAction": 40, "schedCron": "uGusbden", "schedRange": ["obqnEZzf", "phgLBQm2", "fYHxTiwC"]}, {"action": 59, "resource": "8eNnw6IL", "schedAction": 27, "schedCron": "00MdKW9W", "schedRange": ["NGm7iEo2", "XC8kTyWP", "3iqjxFOC"]}, {"action": 0, "resource": "AFSzqyda", "schedAction": 4, "schedCron": "bFhmTfbE", "schedRange": ["QCcHtw6u", "EEgF2ZRn", "ZI5hLsLy"]}]}' \
    > test.out 2>&1
eval_tap $? 347 'AdminUpdateRolePermissionsV4' test.out

#- 348 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 't3O8T5g6' \
    --body '{"permissions": [{"action": 67, "resource": "pLKWusV1", "schedAction": 6, "schedCron": "7q5irP2U", "schedRange": ["MemgaKBj", "IkJG4UD3", "4RrmR06f"]}, {"action": 10, "resource": "WVcHBzYx", "schedAction": 50, "schedCron": "wef2n7eI", "schedRange": ["sOWyFd3D", "JX42E9Qy", "RiBMuAr7"]}, {"action": 87, "resource": "IZMm7ZZx", "schedAction": 31, "schedCron": "jO8ZtfwH", "schedRange": ["6PYzuJj8", "PlqgqBK3", "opCgTdP8"]}]}' \
    > test.out 2>&1
eval_tap $? 348 'AdminAddRolePermissionsV4' test.out

#- 349 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'X0bKdBGa' \
    --body '["97H6SfGS", "rZOKYmy6", "BVUYujzL"]' \
    > test.out 2>&1
eval_tap $? 349 'AdminDeleteRolePermissionsV4' test.out

#- 350 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'hYkShE7O' \
    --after 'SdOevk08' \
    --before 'wr2SPTAo' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 350 'AdminListAssignedUsersV4' test.out

#- 351 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'gB2Yp4he' \
    --body '{"assignedNamespaces": ["eDnMxVSr", "pwHQqYEF", "umNBJUIo"], "namespace": "C2lAWENZ", "userId": "z3KEdfbo"}' \
    > test.out 2>&1
eval_tap $? 351 'AdminAssignUserToRoleV4' test.out

#- 352 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'fnhRgkq2' \
    --body '{"namespace": "JAQllg5l", "userId": "vqUCw8l8"}' \
    > test.out 2>&1
eval_tap $? 352 'AdminRevokeUserFromRoleV4' test.out

#- 353 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["YRCH0KUL", "6UdTfCLg", "sXSntGJW"], "emailAddresses": ["GwOYk9Oo", "YXfwV10x", "Sav1NePa"], "isAdmin": true, "isNewStudio": false, "languageTag": "FkwnUbAA", "namespace": "QzSLSbKV", "roleId": "lBP6fsDX"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminInviteUserNewV4' test.out

#- 354 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "xnVxUE7c", "country": "ljr4DFL2", "dateOfBirth": "VVJomfcI", "displayName": "5UCxF7vg", "languageTag": "YrdGqsCM", "skipLoginQueue": true, "uniqueDisplayName": "GziXJObA", "userName": "nbgI9v8U"}' \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateMyUserV4' test.out

#- 355 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"mfaToken": "QUm5FWgR"}' \
    > test.out 2>&1
eval_tap $? 355 'AdminDisableMyAuthenticatorV4' test.out

#- 356 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'Nc88jNOR' \
    > test.out 2>&1
eval_tap $? 356 'AdminEnableMyAuthenticatorV4' test.out

#- 357 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 357 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 358 AdminGetMyBackupCodesV4
eval_tap 0 358 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 359 AdminGenerateMyBackupCodesV4
eval_tap 0 359 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 360 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"mfaToken": "2uF4i40Z"}' \
    > test.out 2>&1
eval_tap $? 360 'AdminDisableMyBackupCodesV4' test.out

#- 361 AdminDownloadMyBackupCodesV4
eval_tap 0 361 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 362 AdminEnableMyBackupCodesV4
eval_tap 0 362 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 363 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'V770titA' \
    > test.out 2>&1
eval_tap $? 363 'AdminGetBackupCodesV4' test.out

#- 364 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'uKH6a2QD' \
    > test.out 2>&1
eval_tap $? 364 'AdminGenerateBackupCodesV4' test.out

#- 365 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'KdCYRiAa' \
    > test.out 2>&1
eval_tap $? 365 'AdminEnableBackupCodesV4' test.out

#- 366 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'vTd6Nlvt' \
    --factor 'YSv947Tn' \
    > test.out 2>&1
eval_tap $? 366 'AdminChallengeMyMFAV4' test.out

#- 367 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'fTWNcC5b' \
    --languageTag 'pD8zpmEs' \
    > test.out 2>&1
eval_tap $? 367 'AdminSendMyMFAEmailCodeV4' test.out

#- 368 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"mfaToken": "rSzsFX01"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminDisableMyEmailV4' test.out

#- 369 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'cEo3jTMK' \
    > test.out 2>&1
eval_tap $? 369 'AdminEnableMyEmailV4' test.out

#- 370 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 370 'AdminGetMyEnabledFactorsV4' test.out

#- 371 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '4Tw3dIym' \
    > test.out 2>&1
eval_tap $? 371 'AdminMakeFactorMyDefaultV4' test.out

#- 372 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 372 'AdminGetMyOwnMFAStatusV4' test.out

#- 373 AdminGetMyMFAStatusV4
eval_tap 0 373 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 374 AdminInviteUserV4
eval_tap 0 374 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 375 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'HRQs6Y4n' \
    --linkingToken 'ZRAcLdvV' \
    --password 'ZQdVvaF0' \
    --username 'i3f9rbaL' \
    > test.out 2>&1
eval_tap $? 375 'AuthenticationWithPlatformLinkV4' test.out

#- 376 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'gmKdRLoi' \
    --extendExp 'true' \
    --linkingToken 'XQnYTx4o' \
    > test.out 2>&1
eval_tap $? 376 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 377 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'UQdfjw2s' \
    --factor 'zgSvGdym' \
    --mfaToken 'qDc3vQkH' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 377 'Verify2faCodeV4' test.out

#- 378 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'W0LVOYra' \
    --codeChallenge 'P2IjlVZ5' \
    --codeChallengeMethod 'S256' \
    --additionalData 'ymuxyWw6' \
    --clientId 'yhsU1fco' \
    --createHeadless 'true' \
    --deviceId 'DaD4mDHZ' \
    --macAddress 'iO0fF5FD' \
    --platformToken '33bEpsNj' \
    --serviceLabel '0.4529603857411395' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 378 'PlatformTokenGrantV4' test.out

#- 379 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'UXw6H727' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'bAj8NDv0' \
    --simultaneousTicket 'pP4l6GBc' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'sOdg1rEJ' \
    > test.out 2>&1
eval_tap $? 379 'SimultaneousLoginV4' test.out

#- 380 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'q2KZabmE' \
    --codeChallengeMethod 'plain' \
    --additionalData 'JegZTT4q' \
    --clientId '8saN6hee' \
    --clientSecret 'fxIP9xoz' \
    --code 'AM5OmEPx' \
    --codeVerifier 'mGtWccHa' \
    --extendNamespace '0Wjl6FeA' \
    --extendExp 'false' \
    --loginQueueTicket 'pTClfuzt' \
    --password 'V7gXu6L8' \
    --redirectUri 'c27w3mRt' \
    --refreshToken 'YTGiTnZE' \
    --username 'eNXnB3vW' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 380 'TokenGrantV4' test.out

#- 381 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'sdiylexl' \
    --code 'O8KnHvvE' \
    > test.out 2>&1
eval_tap $? 381 'RequestTargetTokenResponseV4' test.out

#- 382 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'OxSLkETO' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["0eUszwXl", "eONsSiHu", "4lM6bLrW"]}' \
    > test.out 2>&1
eval_tap $? 382 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 383 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "djIUu05b", "policyId": "UrGC3ZRo", "policyVersionId": "zxxjLqYB"}, {"isAccepted": false, "localizedPolicyVersionId": "5mw5f4kT", "policyId": "R0jQJIo5", "policyVersionId": "OC3TUNKW"}, {"isAccepted": true, "localizedPolicyVersionId": "Wsj1pke0", "policyId": "pBGdI8TL", "policyVersionId": "SOkNDX72"}], "authType": "EMAILPASSWD", "country": "1oFFYIhj", "dateOfBirth": "62IPvkAD", "displayName": "39yAfBrv", "emailAddress": "xNVc1dWi", "password": "0Miblvyx", "passwordMD5Sum": "sQJroLC4", "uniqueDisplayName": "8m1iEOPy", "username": "XgEBxqrB", "verified": true}' \
    > test.out 2>&1
eval_tap $? 383 'PublicCreateTestUserV4' test.out

#- 384 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "q30JyA34", "policyId": "Tlt7jypV", "policyVersionId": "9Uebn3Vi"}, {"isAccepted": false, "localizedPolicyVersionId": "uHobThiw", "policyId": "ec0RFnu2", "policyVersionId": "zW56Srqa"}, {"isAccepted": true, "localizedPolicyVersionId": "CtjUSGB0", "policyId": "cPJPw3cG", "policyVersionId": "bsayO7pL"}], "authType": "EMAILPASSWD", "code": "kW4HEpuT", "country": "8QiJrwhy", "dateOfBirth": "A4DxABKo", "displayName": "wTh6SZ3y", "emailAddress": "7GsNeLdz", "password": "pwo3mZV4", "passwordMD5Sum": "YTHlVq0E", "reachMinimumAge": false, "uniqueDisplayName": "oo9BKVN4", "username": "NDhGzJO5"}' \
    > test.out 2>&1
eval_tap $? 384 'PublicCreateUserV4' test.out

#- 385 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'SXCYysEw' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "FkaclXNC", "policyId": "nteYxPxr", "policyVersionId": "E4BvtCzH"}, {"isAccepted": false, "localizedPolicyVersionId": "YLRfCqvc", "policyId": "pdTp4VLT", "policyVersionId": "Gad24rRs"}, {"isAccepted": true, "localizedPolicyVersionId": "etjjc8oc", "policyId": "edYEIkUz", "policyVersionId": "o7naN6AR"}], "authType": "EMAILPASSWD", "code": "spLm8N9K", "country": "HcrXY7gq", "dateOfBirth": "KogVBGpg", "displayName": "dHIZZKHv", "emailAddress": "CGrXSEGU", "password": "XxuixpNy", "passwordMD5Sum": "7bGkcMtT", "reachMinimumAge": false, "uniqueDisplayName": "8N6GNvRT", "username": "5XTnPeDP"}' \
    > test.out 2>&1
eval_tap $? 385 'CreateUserFromInvitationV4' test.out

#- 386 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "MnZwLDvx", "country": "8yT5eeK5", "dateOfBirth": "agwwlRp2", "displayName": "hk6RgROG", "languageTag": "BRK1Hx7u", "uniqueDisplayName": "2uBj1cd3", "userName": "vFDqNM21"}' \
    > test.out 2>&1
eval_tap $? 386 'PublicUpdateUserV4' test.out

#- 387 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "PYUHBJvV", "emailAddress": "q2RsbBwO"}' \
    > test.out 2>&1
eval_tap $? 387 'PublicUpdateUserEmailAddressV4' test.out

#- 388 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "PrUfAlc7", "country": "pTD4yDhJ", "dateOfBirth": "oESIjHkR", "displayName": "5JDkKN10", "emailAddress": "JAHC5hNI", "password": "H8wJLszf", "reachMinimumAge": false, "uniqueDisplayName": "P1xCGGZI", "username": "oIkNv0gU", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 388 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 389 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "AyvlMclv", "password": "odNdjZoZ", "username": "jVvI9Kvs"}' \
    > test.out 2>&1
eval_tap $? 389 'PublicUpgradeHeadlessAccountV4' test.out

#- 390 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "UEKeq1ej"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicDisableMyAuthenticatorV4' test.out

#- 391 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'm2bmWO78' \
    > test.out 2>&1
eval_tap $? 391 'PublicEnableMyAuthenticatorV4' test.out

#- 392 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 392 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 393 PublicGetMyBackupCodesV4
eval_tap 0 393 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 394 PublicGenerateMyBackupCodesV4
eval_tap 0 394 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 395 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "kj4Sy5EG"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicDisableMyBackupCodesV4' test.out

#- 396 PublicDownloadMyBackupCodesV4
eval_tap 0 396 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 397 PublicEnableMyBackupCodesV4
eval_tap 0 397 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 398 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'Xsr0UbX5' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetBackupCodesV4' test.out

#- 399 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '21f5gC9M' \
    > test.out 2>&1
eval_tap $? 399 'PublicGenerateBackupCodesV4' test.out

#- 400 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'eZ10A9SA' \
    > test.out 2>&1
eval_tap $? 400 'PublicEnableBackupCodesV4' test.out

#- 401 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'yYXH0I8j' \
    --factor 'A8KiZeWa' \
    > test.out 2>&1
eval_tap $? 401 'PublicChallengeMyMFAV4' test.out

#- 402 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 402 'PublicRemoveTrustedDeviceV4' test.out

#- 403 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'Zv6i4xy1' \
    --languageTag 'uV6bl3cR' \
    > test.out 2>&1
eval_tap $? 403 'PublicSendMyMFAEmailCodeV4' test.out

#- 404 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "uJyeBGvE"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicDisableMyEmailV4' test.out

#- 405 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'DqJi1pHi' \
    > test.out 2>&1
eval_tap $? 405 'PublicEnableMyEmailV4' test.out

#- 406 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 406 'PublicGetMyEnabledFactorsV4' test.out

#- 407 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'MIfBcU6K' \
    > test.out 2>&1
eval_tap $? 407 'PublicMakeFactorMyDefaultV4' test.out

#- 408 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 408 'PublicGetMyOwnMFAStatusV4' test.out

#- 409 PublicGetMyMFAStatusV4
eval_tap 0 409 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 410 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Jm99PBVE' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 411 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "C5wirJbA", "emailAddress": "1FNdWKu8", "languageTag": "BeVmMjgu", "namespace": "1dccMuBd", "namespaceDisplayName": "eaXj9gCM"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE