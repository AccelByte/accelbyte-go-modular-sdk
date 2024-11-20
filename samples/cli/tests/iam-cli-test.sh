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
echo "1..418"

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
    --forceDelete 'false' \
    --body '{"modules": [{"docLink": "dVadUgPG", "groups": [{"group": "o4vARCm8", "groupId": "dbfZ52NO", "permissions": [{"allowedActions": [16, 14, 37], "resource": "UlihcO24"}, {"allowedActions": [52, 19, 41], "resource": "8l2iemDv"}, {"allowedActions": [10, 31, 26], "resource": "Mt79lhNR"}]}, {"group": "1cXsgnUS", "groupId": "7S7agzmc", "permissions": [{"allowedActions": [91, 5, 95], "resource": "ido5ZEPD"}, {"allowedActions": [79, 38, 38], "resource": "PCB2yuaw"}, {"allowedActions": [96, 66, 29], "resource": "7IPf4gKw"}]}, {"group": "9kI9BwDI", "groupId": "spXf5qjm", "permissions": [{"allowedActions": [81, 40, 62], "resource": "xXoias38"}, {"allowedActions": [92, 91, 27], "resource": "GjnPLLOO"}, {"allowedActions": [2, 61, 82], "resource": "slopLNBQ"}]}], "module": "3NPcCxUR", "moduleId": "qchfoREH"}, {"docLink": "fjiNEgyU", "groups": [{"group": "X2kWTGX2", "groupId": "uD4aG1tp", "permissions": [{"allowedActions": [39, 30, 21], "resource": "HcrjqgXq"}, {"allowedActions": [67, 42, 8], "resource": "FxQmSlYd"}, {"allowedActions": [80, 8, 3], "resource": "OraajWIK"}]}, {"group": "EifqTlui", "groupId": "PCinqj1K", "permissions": [{"allowedActions": [71, 87, 62], "resource": "NsQYgwKA"}, {"allowedActions": [35, 76, 87], "resource": "XJ8VrsBV"}, {"allowedActions": [91, 91, 57], "resource": "4NWh0Xfs"}]}, {"group": "TmSKAk8f", "groupId": "WdnEfVMB", "permissions": [{"allowedActions": [4, 91, 17], "resource": "guZgqWOq"}, {"allowedActions": [97, 11, 0], "resource": "wT6cZnw5"}, {"allowedActions": [61, 5, 31], "resource": "4EDaMaHv"}]}], "module": "NZVHfOJT", "moduleId": "j0gXXHDx"}, {"docLink": "jTtRYxRs", "groups": [{"group": "O4ZgZCli", "groupId": "uFfi9lZa", "permissions": [{"allowedActions": [100, 22, 9], "resource": "fiL1zVVk"}, {"allowedActions": [72, 59, 93], "resource": "VQE1kexS"}, {"allowedActions": [55, 96, 77], "resource": "E0w0n2yj"}]}, {"group": "oEgBdd1A", "groupId": "s52DrexQ", "permissions": [{"allowedActions": [90, 24, 75], "resource": "zKBvyR6a"}, {"allowedActions": [21, 95, 0], "resource": "SAoky7Ld"}, {"allowedActions": [53, 93, 15], "resource": "dHWZpAzR"}]}, {"group": "b6oT7U0d", "groupId": "Gjl5Z2SY", "permissions": [{"allowedActions": [19, 76, 50], "resource": "FJm1YCWW"}, {"allowedActions": [59, 47, 94], "resource": "NZ3OAyCV"}, {"allowedActions": [83, 15, 6], "resource": "L1IM8oMO"}]}], "module": "ckxTOx9G", "moduleId": "o5EWs8uc"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "xOjquszJ", "moduleId": "mqbBfSeB"}' \
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
    --body '[{"field": "tmvWoTQL", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["QXqLD2Hs", "hTNtYtkV", "rzxm4d3b"], "preferRegex": true, "regex": "dNJs42ib"}, "blockedWord": ["AXLjqO78", "rSjrFPcM", "eY3jvwhb"], "description": [{"language": "IEZeyRCz", "message": ["6Kzt4cld", "5LY9Ehgo", "TALDkgau"]}, {"language": "a79yXou0", "message": ["vEle5NuW", "80IHMlMS", "5OypoKm4"]}, {"language": "b0F9F6Ez", "message": ["CEz59piZ", "BglbaiOI", "ztpdDpzL"]}], "isCustomRegex": false, "letterCase": "eDmHqPhS", "maxLength": 10, "maxRepeatingAlphaNum": 68, "maxRepeatingSpecialCharacter": 59, "minCharType": 20, "minLength": 89, "profanityFilter": "mTTrnnS5", "regex": "pM9FiTY1", "specialCharacterLocation": "FF3leSeZ", "specialCharacters": ["5JMP2Bwt", "eJylAMA4", "ztvrKtk8"]}}, {"field": "APl0RQjV", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["xzpSrE8p", "yEP8xIie", "V4aWXuoz"], "preferRegex": false, "regex": "Qbel4plW"}, "blockedWord": ["1tj7S53p", "DUlCChu6", "ocXiJpz7"], "description": [{"language": "IKVeJk6V", "message": ["FKYojnAA", "kneuundB", "DhlaRR1b"]}, {"language": "ydacxCAp", "message": ["UhvWmYel", "Cf6xZssQ", "uANHAHwn"]}, {"language": "lDRznDTP", "message": ["NwNgpkmc", "TYeoiJWD", "tBU2wGvf"]}], "isCustomRegex": true, "letterCase": "dBBqrLoV", "maxLength": 15, "maxRepeatingAlphaNum": 23, "maxRepeatingSpecialCharacter": 23, "minCharType": 13, "minLength": 88, "profanityFilter": "hJ1dy6l7", "regex": "ePtbuTLj", "specialCharacterLocation": "0XEk53LU", "specialCharacters": ["5SsqEydb", "8lHCvmx8", "QGcPtLjt"]}}, {"field": "tKa986Mx", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["FH1QLgIV", "zfQA3VKe", "9GvKGg3K"], "preferRegex": false, "regex": "GYGFQKrf"}, "blockedWord": ["qcdSWEtW", "5EiabFhL", "PpQlAC8q"], "description": [{"language": "e028agPT", "message": ["uQwXhKIz", "oPE1cPwL", "g3ccc212"]}, {"language": "fFFfVzT7", "message": ["Y3DKSX3U", "0m2CYjBS", "iho7k6NJ"]}, {"language": "pCFDMLLI", "message": ["zvKoXoT0", "JwOa0i73", "IA8wOmuc"]}], "isCustomRegex": true, "letterCase": "lVpCfkW7", "maxLength": 28, "maxRepeatingAlphaNum": 25, "maxRepeatingSpecialCharacter": 43, "minCharType": 63, "minLength": 89, "profanityFilter": "RNL97esf", "regex": "5uVRDq3z", "specialCharacterLocation": "hN9MGgqD", "specialCharacters": ["v3IEq7rP", "SslXBSoY", "HH2n2uAg"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field '6SvWjaLu' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'VbeffdCh' \
    --before 'Hkhwtmu7' \
    --endDate '4Nsqm08T' \
    --limit '6' \
    --query 'sJV8tX4W' \
    --roleId '7lcoV1ha' \
    --startDate 'h2JQMyuq' \
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
    --body '{"ageRestriction": 84, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'juR2Q2ut' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 17}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'crw56G3o' \
    --limit '58' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "rLPLI7g5", "comment": "d2SCaAQs", "endDate": "tvjL2XOi", "reason": "RCuJ8AWr", "skipNotif": true, "userIds": ["dYCqg4ha", "YJvVHXUv", "SpKHM71x"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "euEfwiVr", "userId": "QsQL5JY8"}, {"banId": "gueea617", "userId": "k49AWqQI"}, {"banId": "GXxVEsYG", "userId": "EIbtLwMd"}]}' \
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
    --clientId 'ewPCbY46' \
    --clientName 'ri0YKHow' \
    --clientType 'vtqJ1yeV' \
    --limit '71' \
    --offset '93' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["duIW4LYB", "dKzPQCoE", "eZOf9prX"], "clientUpdateRequest": {"audiences": ["71UnW5p6", "rA7J3qSq", "chHbTPD4"], "baseUri": "YWMbT6Ix", "clientName": "JollCtgJ", "clientPermissions": [{"action": 91, "resource": "c6vZkLK4", "schedAction": 67, "schedCron": "hVEOzoN2", "schedRange": ["DW9GG6As", "VT5PrT28", "BA3wM8eg"]}, {"action": 13, "resource": "3p0pmTnA", "schedAction": 57, "schedCron": "YqnjJ7oZ", "schedRange": ["zVONiIQJ", "DLuwZsgw", "9b0ISp7o"]}, {"action": 74, "resource": "VFKEvXUu", "schedAction": 45, "schedCron": "5NUPmtYj", "schedRange": ["nkuQ0uHh", "l55KYjrp", "sWwlBy4Y"]}], "clientPlatform": "YnBINjLK", "deletable": false, "description": "vOgQjao9", "modulePermissions": [{"moduleId": "lk2Wi4m8", "selectedGroups": [{"groupId": "696mEwAQ", "selectedActions": [2, 77, 75]}, {"groupId": "g3X3LnhV", "selectedActions": [97, 97, 96]}, {"groupId": "CjYFlROt", "selectedActions": [6, 22, 27]}]}, {"moduleId": "l61tlo0l", "selectedGroups": [{"groupId": "ChQjZkdF", "selectedActions": [10, 63, 63]}, {"groupId": "Kf9ID2UV", "selectedActions": [73, 61, 16]}, {"groupId": "7ugbabvs", "selectedActions": [93, 89, 6]}]}, {"moduleId": "XkKjLkGs", "selectedGroups": [{"groupId": "80ZAzXtz", "selectedActions": [71, 20, 86]}, {"groupId": "17rouzSK", "selectedActions": [38, 26, 9]}, {"groupId": "TUlvY4Am", "selectedActions": [45, 58, 6]}]}], "namespace": "BKIQeLNy", "oauthAccessTokenExpiration": 22, "oauthAccessTokenExpirationTimeUnit": "g1f8OVru", "oauthRefreshTokenExpiration": 7, "oauthRefreshTokenExpirationTimeUnit": "YudFcnkz", "redirectUri": "QCyVXfFE", "scopes": ["12Agobka", "vDjLZEJa", "Cp2dWQCQ"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["xU139mOY", "NlWob2zO", "v6FTah2e"], "baseUri": "RuN7ElIk", "clientId": "zcl5Jaz8", "clientName": "QvKFl1Rs", "clientPermissions": [{"action": 5, "resource": "CCIAC4FA", "schedAction": 28, "schedCron": "Gmo0mmOC", "schedRange": ["uJOw0Olo", "kylhj8r3", "7StDlBoR"]}, {"action": 40, "resource": "1uqKoMx7", "schedAction": 7, "schedCron": "LdGTFlMd", "schedRange": ["g1XX0XeT", "cxd3dc4U", "CmB5TkxF"]}, {"action": 0, "resource": "3ZlOkrEi", "schedAction": 81, "schedCron": "P4P6sa8F", "schedRange": ["3xAIvkUs", "9W088AN6", "UiIQM2l7"]}], "clientPlatform": "zv6DVY5u", "deletable": true, "description": "cCjCFoUZ", "modulePermissions": [{"moduleId": "zol4xrY4", "selectedGroups": [{"groupId": "GWFfopEt", "selectedActions": [37, 70, 68]}, {"groupId": "iXnp50YL", "selectedActions": [48, 47, 39]}, {"groupId": "IagcPoH9", "selectedActions": [0, 73, 72]}]}, {"moduleId": "1hXTCBvq", "selectedGroups": [{"groupId": "qbuLEuhy", "selectedActions": [41, 68, 38]}, {"groupId": "pDG7aWio", "selectedActions": [52, 86, 84]}, {"groupId": "zLICJpXA", "selectedActions": [72, 89, 14]}]}, {"moduleId": "N1h15BXw", "selectedGroups": [{"groupId": "ILj6OdQK", "selectedActions": [94, 40, 37]}, {"groupId": "LX6PC89y", "selectedActions": [5, 57, 56]}, {"groupId": "7dYhcbLe", "selectedActions": [15, 72, 9]}]}], "namespace": "Hlg1ri5u", "oauthAccessTokenExpiration": 61, "oauthAccessTokenExpirationTimeUnit": "wWSIJroq", "oauthClientType": "CfZed905", "oauthRefreshTokenExpiration": 61, "oauthRefreshTokenExpirationTimeUnit": "PNXate6u", "parentNamespace": "v4PKSNfK", "redirectUri": "nnOasrg0", "scopes": ["WymmTY0L", "5wTXkco5", "kUb68q6P"], "secret": "cbYu66Jt", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '28CyufGL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'Kvn6EgFa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'l0Z8m3Oy' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["4iDvqx3W", "hI4OiNEV", "yXKENda7"], "baseUri": "dkxnKAOL", "clientName": "faFi4S5T", "clientPermissions": [{"action": 87, "resource": "99rRMsb9", "schedAction": 39, "schedCron": "7Px4ig9w", "schedRange": ["NFt8fPfP", "wd31MfBI", "9xI0Xwdl"]}, {"action": 93, "resource": "rujwHbB2", "schedAction": 63, "schedCron": "T2jrXnlr", "schedRange": ["K4emvBXV", "neH3PhVg", "kHadIqd3"]}, {"action": 2, "resource": "CY6Lrum1", "schedAction": 80, "schedCron": "63WUvYJu", "schedRange": ["GgOW8lKL", "NhyZwSPX", "AO6FuIQC"]}], "clientPlatform": "5LSPTM8J", "deletable": true, "description": "yX9UMfb7", "modulePermissions": [{"moduleId": "uGIiSMrj", "selectedGroups": [{"groupId": "vFZ2WP2l", "selectedActions": [52, 1, 79]}, {"groupId": "IJC9qMDu", "selectedActions": [16, 96, 12]}, {"groupId": "W72699Wk", "selectedActions": [41, 21, 45]}]}, {"moduleId": "I5cSeMPP", "selectedGroups": [{"groupId": "URE8kchR", "selectedActions": [25, 37, 75]}, {"groupId": "Pp7mc7wh", "selectedActions": [11, 92, 12]}, {"groupId": "jYqiXF6M", "selectedActions": [63, 1, 77]}]}, {"moduleId": "W8CmPtWM", "selectedGroups": [{"groupId": "JP37rPxO", "selectedActions": [1, 30, 13]}, {"groupId": "zD2HTv64", "selectedActions": [28, 31, 10]}, {"groupId": "nxnMaXkq", "selectedActions": [62, 12, 95]}]}], "namespace": "tG0AfOVl", "oauthAccessTokenExpiration": 73, "oauthAccessTokenExpirationTimeUnit": "8I2yjusG", "oauthRefreshTokenExpiration": 52, "oauthRefreshTokenExpirationTimeUnit": "mLX8bBtZ", "redirectUri": "o2iarKJ9", "scopes": ["gZHYRWUy", "LmnWA1v1", "cjwoYq1C"], "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'pO6OXDSg' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 60, "resource": "FBMnjpEX"}, {"action": 23, "resource": "Y0RxJxn0"}, {"action": 28, "resource": "hapKYhf9"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'aKxdOJ7K' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 16, "resource": "iPH6jEa6"}, {"action": 33, "resource": "Rqn19q9f"}, {"action": 18, "resource": "vwVwa8gC"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '58' \
    --clientId 'TxXsJc0I' \
    --namespace $AB_NAMESPACE \
    --resource 'BrYZtvS8' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey '1uXMIqqv' \
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
    --body '{"blacklist": ["4CSOQbX6", "BPuQWCj7", "tjdLEFnL"]}' \
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
    --body '{"active": true, "roleIds": ["ZwdUJLuf", "sHauci3O", "n6T0BqGP"]}' \
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
    --limit '8' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NGaRPfDv' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Jx9XrHhm' \
    --body '{"ACSURL": "TqBxQMBE", "AWSCognitoRegion": "9eSRWNtu", "AWSCognitoUserPool": "lCWtYk1n", "AllowedClients": ["aAJ350yb", "TlkynGkc", "sLQSYtt4"], "AppId": "8QapPfxg", "AuthorizationEndpoint": "iIk5hSx5", "ClientId": "mTWdhJJD", "EmptyStrFieldList": ["ySxmMDRm", "aJVljL3W", "X83jYdu1"], "EnableServerLicenseValidation": false, "Environment": "gnxmZoXy", "FederationMetadataURL": "4uGmaQdv", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "SXAVthqu", "JWKSEndpoint": "h4ip6ko4", "KeyID": "nWrg23he", "LogoURL": "q8RmuYzQ", "NetflixCertificates": {"encryptedPrivateKey": "86eSoKIg", "encryptedPrivateKeyName": "BwhOz0gv", "publicCertificate": "AeiiNZHj", "publicCertificateName": "A5KvhiBG", "rootCertificate": "PEhDh3tD", "rootCertificateName": "SaiyiRDV"}, "OrganizationId": "0nUsjzMV", "PlatformName": "dL8RpiyA", "RedirectUri": "cYDet61f", "RegisteredDomains": [{"affectedClientIDs": ["zbHi990X", "gM54IFEF", "PAHZGw8y"], "domain": "7Y9Z6WEU", "namespaces": ["OvseUJ1l", "Ye5PJwtj", "ZCJrYfRd"], "roleId": "wYFlFkAt"}, {"affectedClientIDs": ["yswZVALy", "uxArWXT2", "cY4H3Jy3"], "domain": "Xq4EzIgi", "namespaces": ["Jumh5Qj2", "ODTUksV6", "sFxAX6mz"], "roleId": "ChqRLc6k"}, {"affectedClientIDs": ["ILbZ9Db8", "rMUai5BZ", "Soi3TGPF"], "domain": "Bgznqdbq", "namespaces": ["tECiwelL", "h0PNI51M", "27f6ImpP"], "roleId": "OABEeP7h"}], "Secret": "pHtbu9bN", "TeamID": "nsUvZTOj", "TokenAuthenticationType": "yQzsZdxp", "TokenClaimsMapping": {"ZWJEd6gV": "E8dDbT9t", "9ft8pYmV": "i7dZbTdB", "hx2X27NL": "qLi0LEhn"}, "TokenEndpoint": "jcZJXOmC", "UserInfoEndpoint": "gvFU710K", "UserInfoHTTPMethod": "ewPOyVgZ", "scopes": ["hoYMplBH", "m2Zk6Lfe", "hgaq70i2"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OZ48aX4R' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8U1sfidX' \
    --body '{"ACSURL": "qNfSTomO", "AWSCognitoRegion": "lkeQ9qAO", "AWSCognitoUserPool": "FMrJOQYe", "AllowedClients": ["DVGLEtf3", "z4yRAK96", "EvhxR9df"], "AppId": "o8TGELlM", "AuthorizationEndpoint": "0VevxoLp", "ClientId": "aplytllK", "EmptyStrFieldList": ["mAg8HbYe", "lgCbVvof", "iQRGOvqS"], "EnableServerLicenseValidation": true, "Environment": "Bum3MCbK", "FederationMetadataURL": "eZ3FcRlh", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "qsJW7zGF", "JWKSEndpoint": "hUnwB4sZ", "KeyID": "4HEc3Be8", "LogoURL": "tyHA7tkc", "NetflixCertificates": {"encryptedPrivateKey": "KVLeDamp", "encryptedPrivateKeyName": "Soz3ozgp", "publicCertificate": "pjlRHhhf", "publicCertificateName": "EflRPB2x", "rootCertificate": "DOUlaVOr", "rootCertificateName": "U9WEPRRa"}, "OrganizationId": "zDs13Hpu", "PlatformName": "VfjBFLaZ", "RedirectUri": "7lIJac3Z", "RegisteredDomains": [{"affectedClientIDs": ["Ukz1qRB1", "chiAz87U", "FDjnXd3p"], "domain": "Pn7nSIr7", "namespaces": ["3iofXu2i", "p9XBb3od", "P0SNDwk0"], "roleId": "SrIsSeYn"}, {"affectedClientIDs": ["s9rF6C3Y", "oi4re1B7", "t3q1qEyq"], "domain": "61JosHSf", "namespaces": ["QdaK8oP2", "dl0DHMWn", "YjrxUqWH"], "roleId": "xPCboopF"}, {"affectedClientIDs": ["RmUle3U8", "ysg0ZhUH", "o31hvkQw"], "domain": "7hncSnId", "namespaces": ["ZdCdcAN2", "9UhsIRvD", "PDQxhg27"], "roleId": "3IVljCKF"}], "Secret": "gsTnpIRm", "TeamID": "ill3DRRN", "TokenAuthenticationType": "RHsOsQrl", "TokenClaimsMapping": {"RfWwhsxc": "8VON0JLu", "dZwSgMOR": "tixHxkIX", "QVzJ4uZb": "b61rdiNg"}, "TokenEndpoint": "3s9ooinX", "UserInfoEndpoint": "qQ6LNqmp", "UserInfoHTTPMethod": "eCoi9MOl", "scopes": ["zzSdbbwe", "mADZPszY", "A8X48yxZ"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'j2XCn53P' \
    --body '{"affectedClientIDs": ["HsZV1p0j", "jFDYKuIw", "vdOyR75F"], "assignedNamespaces": ["UpmuZUPh", "jsooQjeN", "1Pl4j7pK"], "domain": "SW3dWgQF", "roleId": "0LFO3G6k"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qIz2prQi' \
    --body '{"domain": "YqFNpmFP"}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '2xCgh04e' \
    > test.out 2>&1
eval_tap $? 148 'RetrieveSSOLoginPlatformCredential' test.out

#- 149 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '2Cb8D9IX' \
    --body '{"acsUrl": "YJ4ffK1e", "apiKey": "7T1gL2pL", "appId": "tq4Yms6j", "federationMetadataUrl": "P36H0zGl", "isActive": false, "redirectUri": "sbZK926w", "secret": "D5Ky3l4h", "ssoUrl": "NGoDvMYW"}' \
    > test.out 2>&1
eval_tap $? 149 'AddSSOLoginPlatformCredential' test.out

#- 150 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CmRodUfV' \
    > test.out 2>&1
eval_tap $? 150 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 151 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'GeR9EIvg' \
    --body '{"acsUrl": "2g5z7LWD", "apiKey": "Bkt0Yan5", "appId": "4KoXEhRB", "federationMetadataUrl": "AxEn5gsF", "isActive": false, "redirectUri": "bel0GxUt", "secret": "stVLxk48", "ssoUrl": "VFOshSQD"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateSSOPlatformCredential' test.out

#- 152 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2mGqA2f1' \
    --rawPID 'true' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["CVeq0g3a", "klIrKssy", "nBB2JHgq"]}' \
    > test.out 2>&1
eval_tap $? 152 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 153 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cTrQChTj' \
    --platformUserId 'iumOBx6N' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByPlatformUserIDV3' test.out

#- 154 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetProfileUpdateStrategyV3' test.out

#- 155 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    --body '{"config": {"minimumAllowedInterval": 80}, "type": "VOKq6Are"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 156 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetRoleOverrideConfigV3' test.out

#- 157 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"additions": [{"actions": [24, 45, 11], "resource": "Va2iG4z3"}, {"actions": [26, 98, 70], "resource": "xFD7VuaP"}, {"actions": [24, 76, 13], "resource": "9mLrPyct"}], "exclusions": [{"actions": [89, 48, 44], "resource": "uyYOyR7S"}, {"actions": [93, 58, 60], "resource": "ibAGpnmj"}, {"actions": [46, 64, 23], "resource": "nWJTYYyI"}], "overrides": [{"actions": [76, 78, 3], "resource": "eLJXURLb"}, {"actions": [6, 70, 30], "resource": "Tz1nTcDk"}, {"actions": [88, 72, 36], "resource": "3WOxfKTC"}], "replacements": [{"replacement": {"actions": [88, 65, 45], "resource": "JuhMwHxA"}, "target": "yFO1kJHu"}, {"replacement": {"actions": [54, 93, 17], "resource": "miNvQcEE"}, "target": "17Nx0OSM"}, {"replacement": {"actions": [67, 13, 71], "resource": "Mp2lbuAQ"}, "target": "vgLcB8OK"}]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateRoleOverrideConfigV3' test.out

#- 158 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetRoleSourceV3' test.out

#- 159 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 160 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'wHM4Agwh' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetRoleNamespacePermissionV3' test.out

#- 161 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'TAvjZSas' \
    --after '82' \
    --before '39' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 161 'GetAdminUsersByRoleIdV3' test.out

#- 162 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'Yy0gngFw' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserByEmailAddressV3' test.out

#- 163 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["wHKldihk", "CfzIYU4L", "2kWUyFcR"]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminBulkUpdateUsersV3' test.out

#- 164 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'fi2Z68QY' \
    --body '{"bulkUserId": ["GJqPKLhU", "LQyyJS80", "A4P16vta"]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetBulkUserBanV3' test.out

#- 165 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PCJ8R0SF", "HDOPddTf", "NayF8DMh"]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminListUserIDByUserIDsV3' test.out

#- 166 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["mxsmh6Fh", "HQMseP8q", "G0fOPnyN"]}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBulkGetUsersPlatform' test.out

#- 167 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["dmAi7UEy", "TEy9capC", "qck7qf7R"], "isAdmin": true, "languageTag": "908O8gq3", "namespace": "SxZM4L95", "roles": ["twwYWPMu", "01alHwPu", "CbEOcIk4"]}' \
    > test.out 2>&1
eval_tap $? 167 'AdminInviteUserV3' test.out

#- 168 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '62' \
    --platformUserId 'RYVSv993' \
    --platformId 'Lj1xHDNu' \
    > test.out 2>&1
eval_tap $? 168 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 169 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 169 'AdminListUsersV3' test.out

#- 170 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'lQg2swvP' \
    --endDate 'LSKe0ZC5' \
    --includeTotal 'false' \
    --limit '31' \
    --offset '73' \
    --platformBy 'pMM8NLmz' \
    --platformId 'MGijTx8z' \
    --query 'QdZ0sdh9' \
    --roleIds '4aFo94mx' \
    --skipLoginQueue 'false' \
    --startDate 'srbRrifs' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 170 'AdminSearchUserV3' test.out

#- 171 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["55QmxRWh", "r6pbJUOt", "2CjdU7dm"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetBulkUserByEmailAddressV3' test.out

#- 172 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kduZOxW3' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByUserIdV3' test.out

#- 173 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ihBNvPKq' \
    --body '{"avatarUrl": "EO5sSrYN", "country": "X2PcEOJq", "dateOfBirth": "RkQWIEzq", "displayName": "yBp8jqSZ", "languageTag": "9eM2qdsV", "skipLoginQueue": false, "uniqueDisplayName": "G0zzxhAa", "userName": "gjBxIy2Y"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserV3' test.out

#- 174 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UQh1So0n' \
    --activeOnly 'true' \
    --after 'sXeSm3MR' \
    --before 'MunVQPEp' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserBanV3' test.out

#- 175 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HLF2ZlkM' \
    --body '{"ban": "ffYkAnuc", "comment": "0N9vuXCv", "endDate": "ZXcBtybQ", "reason": "nVA6i0TS", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 175 'AdminBanUserV3' test.out

#- 176 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId '9jNyNElj' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserBanSummaryV3' test.out

#- 177 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '8WK2Ia87' \
    --namespace $AB_NAMESPACE \
    --userId 'lcGcGgDO' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 177 'AdminUpdateUserBanV3' test.out

#- 178 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eUa7CY0j' \
    --body '{"context": "QVxBgSl4", "emailAddress": "3Mcrsdkq", "languageTag": "QVM3FKxv"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminSendVerificationCodeV3' test.out

#- 179 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '5hBe4E3B' \
    --body '{"Code": "9o3HLQB5", "ContactType": "x4sn2GkQ", "LanguageTag": "OqZZTPEa", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyAccountV3' test.out

#- 180 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'I3aOEtwX' \
    > test.out 2>&1
eval_tap $? 180 'GetUserVerificationCode' test.out

#- 181 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'O1HBzDYc' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserDeletionStatusV3' test.out

#- 182 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RjLBWO6Z' \
    --body '{"deletionDate": 28, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserDeletionStatusV3' test.out

#- 183 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ckQXdDqX' \
    > test.out 2>&1
eval_tap $? 183 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 184 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '9tlHbZob' \
    --body '{"code": "RfRAqPHs", "country": "Udtqe4LI", "dateOfBirth": "DSDLvcy3", "displayName": "R7Zijv6w", "emailAddress": "jF9sRafE", "password": "DFvYXyHE", "uniqueDisplayName": "45zvUKnQ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpgradeHeadlessAccountV3' test.out

#- 185 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MOMYzQg2' \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteUserInformationV3' test.out

#- 186 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KjtEGk5U' \
    --after '0.7865870131876892' \
    --before '0.11467325887894608' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserLoginHistoriesV3' test.out

#- 187 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'egngeopy' \
    --body '{"languageTag": "ULYUc7zD", "mfaToken": "wVbSDi3T", "newPassword": "Pw3f0z7j", "oldPassword": "S8399fkl"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminResetPasswordV3' test.out

#- 188 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pVNwZ0wp' \
    --body '{"Permissions": [{"Action": 96, "Resource": "YmfVX9OJ", "SchedAction": 83, "SchedCron": "beP7eBlE", "SchedRange": ["DTUXJ1Rd", "ttVQU9L4", "6TGmMQcH"]}, {"Action": 36, "Resource": "QH8MdNk0", "SchedAction": 5, "SchedCron": "t1zYhHR3", "SchedRange": ["3RzztFJY", "kWRyATJq", "Q5oRNP0u"]}, {"Action": 52, "Resource": "v1optnVh", "SchedAction": 91, "SchedCron": "Sd3z81yC", "SchedRange": ["F4mgdV4o", "3XmAIefj", "nES2YJqP"]}]}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserPermissionV3' test.out

#- 189 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ns7ebuYa' \
    --body '{"Permissions": [{"Action": 42, "Resource": "j6s4aRIa", "SchedAction": 29, "SchedCron": "KgOOOlUn", "SchedRange": ["BxsJnc4p", "dPBla5mM", "7AJkP3Vu"]}, {"Action": 78, "Resource": "n5QkgVZl", "SchedAction": 21, "SchedCron": "zDJqfmyY", "SchedRange": ["XkjyHMXl", "i1EnNtCQ", "WIlTvQxn"]}, {"Action": 61, "Resource": "odo1ujHl", "SchedAction": 9, "SchedCron": "M10s8iNF", "SchedRange": ["rKFVo9bj", "Zp6eTdDC", "Y5xZEkjL"]}]}' \
    > test.out 2>&1
eval_tap $? 189 'AdminAddUserPermissionsV3' test.out

#- 190 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mTlSbGxO' \
    --body '[{"Action": 64, "Resource": "UnDv7d8l"}, {"Action": 3, "Resource": "4gaPLLPa"}, {"Action": 79, "Resource": "NVTWQYeS"}]' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserPermissionBulkV3' test.out

#- 191 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '40' \
    --namespace $AB_NAMESPACE \
    --resource 'bsTgkR1O' \
    --userId 'UkP68z51' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserPermissionV3' test.out

#- 192 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZNvRdJSk' \
    --after 'vbV3T9i2' \
    --before 'MDlCMLbq' \
    --limit '24' \
    --platformId 'Io6spcSF' \
    --targetNamespace 'a7FRDhNK' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserPlatformAccountsV3' test.out

#- 193 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '0BrgjAkq' \
    --status 'LwkY9ovs' \
    > test.out 2>&1
eval_tap $? 193 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 194 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'iXOeKS9p' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetListJusticePlatformAccounts' test.out

#- 195 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'y1Xi9ZPr' \
    --userId 'di9tTyg8' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetUserMapping' test.out

#- 196 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '02w3k6nS' \
    --userId 'PAJ0mI5T' \
    > test.out 2>&1
eval_tap $? 196 'AdminCreateJusticeUser' test.out

#- 197 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '5pP0IW9Q' \
    --skipConflict 'false' \
    --body '{"platformId": "gHoEuKGx", "platformUserId": "t41Vynoy"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminLinkPlatformAccount' test.out

#- 198 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sv8p4ESH' \
    --platformId 'mE4dKN04' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserLinkHistoriesV3' test.out

#- 199 AdminPlatformUnlinkV3
eval_tap 0 199 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 200 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TSf4WxVE' \
    --userId 'IyiA8Qn3' \
    > test.out 2>&1
eval_tap $? 200 'AdminPlatformUnlinkAllV3' test.out

#- 201 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wfwORjVP' \
    --userId 'HbNkqRVg' \
    --ticket 'SDQqXoby' \
    > test.out 2>&1
eval_tap $? 201 'AdminPlatformLinkV3' test.out

#- 202 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 202 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 203 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UVpHqcnU' \
    --userId '8AXgysbH' \
    > test.out 2>&1
eval_tap $? 203 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 204 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jFW6cHP9' \
    --userId 'O3BEcnc3' \
    --platformToken '8Q56szBy' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 205 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId '2ET4EqxC' \
    --userId 'rH3S3gDd' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetUserSinglePlatformAccount' test.out

#- 206 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'U3JF3gPT' \
    --body '["03PTOYQn", "hJmMw2PR", "pgp1SvB4"]' \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteUserRolesV3' test.out

#- 207 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '5NBXRHop' \
    --body '[{"namespace": "j9px73Eq", "roleId": "S6W7OPF5"}, {"namespace": "yRwca4eY", "roleId": "vmVtmQWd"}, {"namespace": "t4ywzUg0", "roleId": "2q55SFVp"}]' \
    > test.out 2>&1
eval_tap $? 207 'AdminSaveUserRoleV3' test.out

#- 208 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'O3HRyXcs' \
    --userId 'ivhy2Wuq' \
    > test.out 2>&1
eval_tap $? 208 'AdminAddUserRoleV3' test.out

#- 209 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'vZ1W5Tg0' \
    --userId 'Xk3Dw8tk' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserRoleV3' test.out

#- 210 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Zw8lTZtr' \
    --body '{"enabled": false, "reason": "pCHXK9rm"}' \
    > test.out 2>&1
eval_tap $? 210 'AdminUpdateUserStatusV3' test.out

#- 211 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'cMiztt75' \
    --body '{"emailAddress": "xKwbyOjc", "password": "9qJui0bc"}' \
    > test.out 2>&1
eval_tap $? 211 'AdminTrustlyUpdateUserIdentity' test.out

#- 212 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SjOr9TWL' \
    > test.out 2>&1
eval_tap $? 212 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 213 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'bp5oCfjB' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "csdZCoFz"}' \
    > test.out 2>&1
eval_tap $? 213 'AdminUpdateClientSecretV3' test.out

#- 214 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'LJDj9tVR' \
    > test.out 2>&1
eval_tap $? 214 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 215 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'FjElQY2M' \
    --before 'XUhUSJgp' \
    --isWildcard 'true' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 215 'AdminGetRolesV3' test.out

#- 216 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "NLYWiD9W", "namespace": "6RhsKxzb", "userId": "2eL1UVV9"}, {"displayName": "PUkisl68", "namespace": "fOkXBDXc", "userId": "jgcqQBnX"}, {"displayName": "TbEj7UdH", "namespace": "h7NyJPDG", "userId": "SzYVgjxm"}], "members": [{"displayName": "VR0qbLJ1", "namespace": "3VcDOZJG", "userId": "Qihftu9o"}, {"displayName": "doudrSU8", "namespace": "LBY5ITLg", "userId": "fAkYAeyr"}, {"displayName": "wl0mMXZk", "namespace": "6BegrBrJ", "userId": "KE8LUKs7"}], "permissions": [{"action": 0, "resource": "oBM8TtWK", "schedAction": 98, "schedCron": "X1UqXb7e", "schedRange": ["GyKPvl0J", "RP6TBjgM", "4OzNTbSV"]}, {"action": 68, "resource": "E01shq4R", "schedAction": 92, "schedCron": "3yYO9TDJ", "schedRange": ["uDZePQkJ", "Zd5Cupxm", "UTXqk09W"]}, {"action": 99, "resource": "rtqhllUi", "schedAction": 37, "schedCron": "2x1SDwWk", "schedRange": ["gRYKNljh", "fER8rEFG", "Ns7v2nGn"]}], "roleName": "sw5S7RX7"}' \
    > test.out 2>&1
eval_tap $? 216 'AdminCreateRoleV3' test.out

#- 217 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'H5JqEgCn' \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRoleV3' test.out

#- 218 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'yilSpcNc' \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRoleV3' test.out

#- 219 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '3t4eWdoD' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "FfmFxS99"}' \
    > test.out 2>&1
eval_tap $? 219 'AdminUpdateRoleV3' test.out

#- 220 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'eInIlsx4' \
    > test.out 2>&1
eval_tap $? 220 'AdminGetRoleAdminStatusV3' test.out

#- 221 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'VDFqKKr3' \
    > test.out 2>&1
eval_tap $? 221 'AdminUpdateAdminRoleStatusV3' test.out

#- 222 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'ucwiuJ00' \
    > test.out 2>&1
eval_tap $? 222 'AdminRemoveRoleAdminV3' test.out

#- 223 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'PVllXVOz' \
    --after 'r817VxK7' \
    --before 'x3kZ6a4y' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 223 'AdminGetRoleManagersV3' test.out

#- 224 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'Gwlwk3Fw' \
    --body '{"managers": [{"displayName": "ElCKGpk8", "namespace": "KkRuJqhU", "userId": "8whkyD60"}, {"displayName": "bZ4L9iOF", "namespace": "LFUSJ4nR", "userId": "2jh6P1MX"}, {"displayName": "NK82AqBk", "namespace": "3SCu0JTx", "userId": "sPVy0pd5"}]}' \
    > test.out 2>&1
eval_tap $? 224 'AdminAddRoleManagersV3' test.out

#- 225 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'Hbrt7lgu' \
    --body '{"managers": [{"displayName": "4LWxH3zd", "namespace": "HQzyK66b", "userId": "RPO0vH6f"}, {"displayName": "pA8Yw7MC", "namespace": "lasdDorN", "userId": "mOXXfgur"}, {"displayName": "PjUVOK4p", "namespace": "nF3aIXRx", "userId": "oqRVFbQE"}]}' \
    > test.out 2>&1
eval_tap $? 225 'AdminRemoveRoleManagersV3' test.out

#- 226 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'sv1axVv3' \
    --after 'E20YKg6s' \
    --before 'YHNl3uu4' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 226 'AdminGetRoleMembersV3' test.out

#- 227 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'nSCPcdAK' \
    --body '{"members": [{"displayName": "uvCAsPob", "namespace": "NVjEsVsA", "userId": "lbeSdET6"}, {"displayName": "0U1p9fEN", "namespace": "vLqyPU8z", "userId": "G4tIhtr9"}, {"displayName": "MzkkpRsI", "namespace": "DcUQAawZ", "userId": "EnZSYPAS"}]}' \
    > test.out 2>&1
eval_tap $? 227 'AdminAddRoleMembersV3' test.out

#- 228 AdminRemoveRoleMembersV3
eval_tap 0 228 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 229 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'x4KkDE9Z' \
    --body '{"permissions": [{"action": 31, "resource": "GDwYUtXW", "schedAction": 89, "schedCron": "kY2Djtyo", "schedRange": ["uDOSGsKW", "0s4oxnhu", "Uu2FcQua"]}, {"action": 67, "resource": "hszZhVOV", "schedAction": 63, "schedCron": "XRNRi4pH", "schedRange": ["0ZC1c7wP", "7MIHsY8O", "Q9KjDnCt"]}, {"action": 100, "resource": "jQOQ8ejB", "schedAction": 31, "schedCron": "JaybbrFM", "schedRange": ["5WPoyJxF", "a4j7RaVp", "t6h2SQwh"]}]}' \
    > test.out 2>&1
eval_tap $? 229 'AdminUpdateRolePermissionsV3' test.out

#- 230 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'W4OLgnYW' \
    --body '{"permissions": [{"action": 48, "resource": "LphBBJCW", "schedAction": 8, "schedCron": "bALTuIxY", "schedRange": ["ZDZzBFTg", "jn85CHYB", "cZlieYIf"]}, {"action": 15, "resource": "LquBrWyc", "schedAction": 98, "schedCron": "SurRTTUE", "schedRange": ["quWQ9Bi5", "nu5PiIAb", "58mHtVeK"]}, {"action": 83, "resource": "7wtdNJXD", "schedAction": 54, "schedCron": "BC6AuAx1", "schedRange": ["nYaeqwT5", "UHj5dYNC", "yx9yRgn7"]}]}' \
    > test.out 2>&1
eval_tap $? 230 'AdminAddRolePermissionsV3' test.out

#- 231 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '2wKTjATA' \
    --body '["DC8Ugfb6", "sUDpWsXn", "IdfK57he"]' \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRolePermissionsV3' test.out

#- 232 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '12' \
    --resource 'Ain2Z8Sy' \
    --roleId 'NrLRxUav' \
    > test.out 2>&1
eval_tap $? 232 'AdminDeleteRolePermissionV3' test.out

#- 233 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 233 'AdminGetMyUserV3' test.out

#- 234 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'TAnzQIfn' \
    --extendExp 'true' \
    --redirectUri 'nZSW4cPW' \
    --password 'I7vQIAxY' \
    --requestId 'ombnUJP3' \
    --userName 'j9klOnPB' \
    > test.out 2>&1
eval_tap $? 234 'UserAuthenticationV3' test.out

#- 235 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId '9EtJnHMs' \
    --linkingToken 'MlN4K5IR' \
    --password 'CLfSN2kO' \
    --username 'm85APsqG' \
    > test.out 2>&1
eval_tap $? 235 'AuthenticationWithPlatformLinkV3' test.out

#- 236 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData '6k9MGhNB' \
    --extendExp 'true' \
    --linkingToken 'HG5pt3QV' \
    > test.out 2>&1
eval_tap $? 236 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 237 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'FQV1u0yY' \
    > test.out 2>&1
eval_tap $? 237 'RequestOneTimeLinkingCodeV3' test.out

#- 238 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'efpzE4xZ' \
    > test.out 2>&1
eval_tap $? 238 'ValidateOneTimeLinkingCodeV3' test.out

#- 239 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'H0XBIIUO' \
    --isTransient 'false' \
    --clientId 'YDVDmFlu' \
    --oneTimeLinkCode 'WKw7CR8j' \
    > test.out 2>&1
eval_tap $? 239 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 240 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 240 'GetCountryLocationV3' test.out

#- 241 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 241 'Logout' test.out

#- 242 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'iPWlN25u' \
    --codeChallengeMethod 'plain' \
    --clientId 'LHtNyanP' \
    > test.out 2>&1
eval_tap $? 242 'RequestTokenExchangeCodeV3' test.out

#- 243 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jXhzjJb2' \
    --userId 'EWPhrrMz' \
    --platformUserId 'zDggrwN0' \
    > test.out 2>&1
eval_tap $? 243 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 244 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CmcsWNUe' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserV3' test.out

#- 245 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 't5q7LWDn' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'Fyl4VFFW' \
    --redirectUri 'lLjymMwZ' \
    --scope 'mssFd6KY' \
    --state 'b3fA2Wlc' \
    --targetAuthPage 'gyTyVg2V' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'pkAAPjU6' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 245 'AuthorizeV3' test.out

#- 246 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'QuWvrtXF' \
    > test.out 2>&1
eval_tap $? 246 'TokenIntrospectionV3' test.out

#- 247 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 247 'GetJWKSV3' test.out

#- 248 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '1Wo75IrS' \
    --factor '42x7BzZz' \
    --mfaToken '4O4PfVUW' \
    > test.out 2>&1
eval_tap $? 248 'SendMFAAuthenticationCode' test.out

#- 249 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'MgfXtBAT' \
    --mfaToken '10jjMvAR' \
    > test.out 2>&1
eval_tap $? 249 'Change2faMethod' test.out

#- 250 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'JmqHj3QP' \
    --factor 'DLr0cpNo' \
    --mfaToken '5v9GZY1V' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 250 'Verify2faCode' test.out

#- 251 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KICt81Az' \
    --userId 'MI4XHntm' \
    > test.out 2>&1
eval_tap $? 251 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 252 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'ttVHgkFx' \
    --clientId 'rZZ7OFDj' \
    --redirectUri 'ANA5k7zc' \
    --requestId 'gSmkCCeA' \
    > test.out 2>&1
eval_tap $? 252 'AuthCodeRequestV3' test.out

#- 253 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'afbbYByB' \
    --additionalData 'ALyDrl0z' \
    --clientId 'AAfbGQdI' \
    --createHeadless 'false' \
    --deviceId 'OqLGhTXt' \
    --macAddress '3xMJvOkX' \
    --platformToken 'am7Nz0jZ' \
    --serviceLabel '0.46442365626302484' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 253 'PlatformTokenGrantV3' test.out

#- 254 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 254 'GetRevocationListV3' test.out

#- 255 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'yjzV99fW' \
    > test.out 2>&1
eval_tap $? 255 'TokenRevocationV3' test.out

#- 256 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'KvUfCofW' \
    --simultaneousTicket 'FqXBEjQj' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'b8vveop0' \
    > test.out 2>&1
eval_tap $? 256 'SimultaneousLoginV3' test.out

#- 257 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'ypAMaf5r' \
    --clientId 'RVDc3gUj' \
    --clientSecret 'tTVM8omQ' \
    --code 'nEfrMxNr' \
    --codeVerifier 'vJN9yYCh' \
    --extendNamespace '7YL8V15f' \
    --extendExp 'false' \
    --password '5ojJXjoe' \
    --redirectUri 'PxjinJp0' \
    --refreshToken '62tVRemf' \
    --username 'h0b2s0cL' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 257 'TokenGrantV3' test.out

#- 258 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 's2YNwsJM' \
    > test.out 2>&1
eval_tap $? 258 'VerifyTokenV3' test.out

#- 259 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'JJnHyGCD' \
    --code 'QWST6mxv' \
    --error '8AStcjZQ' \
    --openidAssocHandle 'fPYbKC4m' \
    --openidClaimedId '5Zv9ADho' \
    --openidIdentity 'DAJ3pcAP' \
    --openidMode 'VHjGLvIi' \
    --openidNs 'A26ELNMF' \
    --openidOpEndpoint 'PYM9G2Yv' \
    --openidResponseNonce 'UkORM2hI' \
    --openidReturnTo 'YO187fnx' \
    --openidSig 'sOLDAukO' \
    --openidSigned 'Fn3e79Ef' \
    --state 'ECraHW6H' \
    > test.out 2>&1
eval_tap $? 259 'PlatformAuthenticationV3' test.out

#- 260 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'izfqxGvG' \
    --platformToken 'SSQkiskV' \
    > test.out 2>&1
eval_tap $? 260 'PlatformTokenRefreshV3' test.out

#- 261 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'GYMIZtXi' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetInputValidations' test.out

#- 262 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'qNOLqXzO' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetInputValidationByField' test.out

#- 263 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'ZCdqcxQG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 263 'PublicGetCountryAgeRestrictionV3' test.out

#- 264 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey '1i3VNbOR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 264 'PublicGetConfigValueV3' test.out

#- 265 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 265 'PublicGetCountryListV3' test.out

#- 266 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 266 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 267 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'QQtR8YjW' \
    > test.out 2>&1
eval_tap $? 267 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 268 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 268 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 269 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JYIJMEkX' \
    --platformUserId 'grQt4Fkw' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetUserByPlatformUserIDV3' test.out

#- 270 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetProfileUpdateStrategyV3' test.out

#- 271 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '3keVMLQk' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetAsyncStatus' test.out

#- 272 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'ZicZNh4A' \
    --limit '32' \
    --offset '54' \
    --platformBy 't9t46Blu' \
    --platformId 'suDRqtOo' \
    --query 'jefMZRYc' \
    > test.out 2>&1
eval_tap $? 272 'PublicSearchUserV3' test.out

#- 273 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "pt8TLmSv", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "YOd5mQGK", "policyId": "SuAEX39U", "policyVersionId": "HqaupfMk"}, {"isAccepted": true, "localizedPolicyVersionId": "TkfliP8M", "policyId": "Km5D2jGf", "policyVersionId": "RoLOeJlq"}, {"isAccepted": true, "localizedPolicyVersionId": "xRidW3jP", "policyId": "8KMMxGdw", "policyVersionId": "G1vu6zJg"}], "authType": "3eLribIq", "code": "Hul5zbjz", "country": "4dmCB5JZ", "dateOfBirth": "JA0kqwKP", "displayName": "RRLlYH3V", "emailAddress": "fyYbEc96", "password": "qisjlylW", "reachMinimumAge": false, "uniqueDisplayName": "liztt2Lb"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicCreateUserV3' test.out

#- 274 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'Jf9bEyGz' \
    --query 'wqMbwupu' \
    > test.out 2>&1
eval_tap $? 274 'CheckUserAvailability' test.out

#- 275 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["WI69j5EQ", "2CXXhP1d", "wmhj2FIE"]}' \
    > test.out 2>&1
eval_tap $? 275 'PublicBulkGetUsers' test.out

#- 276 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "kzgUbat6", "languageTag": "F5P4r3uI"}' \
    > test.out 2>&1
eval_tap $? 276 'PublicSendRegistrationCode' test.out

#- 277 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AtWaFSkU", "emailAddress": "7ZBTaqNW"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicVerifyRegistrationCode' test.out

#- 278 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "k0P0UPVZ", "languageTag": "8QV8pg3h"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForgotPasswordV3' test.out

#- 279 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "lRBm61lH", "password": "Uc6vc6U5", "uniqueDisplayName": "kdux12vO", "username": "JeSNXtFo"}' \
    > test.out 2>&1
eval_tap $? 279 'PublicValidateUserInput' test.out

#- 280 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'soff4rBR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 280 'GetAdminInvitationV3' test.out

#- 281 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'PzkqBNNI' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "VV7FSxtl", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "LfJSmmDt", "policyId": "EOo7nXwe", "policyVersionId": "L0Gj4b3f"}, {"isAccepted": true, "localizedPolicyVersionId": "CdFmAOsc", "policyId": "YoJwL80O", "policyVersionId": "h3RxmzN4"}, {"isAccepted": false, "localizedPolicyVersionId": "o2SZ0Ygj", "policyId": "QnvJcpdN", "policyVersionId": "Eenw7qBn"}], "authType": "Zrtj4s26", "code": "a2owG7Zl", "country": "9x1Zl93v", "dateOfBirth": "KRxBY9UD", "displayName": "2sJP5Jey", "emailAddress": "W7Bri8op", "password": "x8HIybcW", "reachMinimumAge": true, "uniqueDisplayName": "i30oalSZ"}' \
    > test.out 2>&1
eval_tap $? 281 'CreateUserFromInvitationV3' test.out

#- 282 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "ijIjk2FA", "country": "zULWfRrv", "dateOfBirth": "6WbFAURQ", "displayName": "SKiIK8tg", "languageTag": "k1Fugh3c", "uniqueDisplayName": "uetUhjra", "userName": "pr27qmjx"}' \
    > test.out 2>&1
eval_tap $? 282 'UpdateUserV3' test.out

#- 283 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "tIcFyiEz", "country": "ep66p9Kk", "dateOfBirth": "t583v4e2", "displayName": "Uq6fWGL8", "languageTag": "i7LicLJ2", "uniqueDisplayName": "ur8eXOjp", "userName": "aAxWZhHk"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicPartialUpdateUserV3' test.out

#- 284 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "dqeCj6bp", "emailAddress": "KcJI6q5k", "languageTag": "Se4Y58WV"}' \
    > test.out 2>&1
eval_tap $? 284 'PublicSendVerificationCodeV3' test.out

#- 285 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "7YMmEHRJ", "contactType": "6bgdMm67", "languageTag": "b0s5eZOG", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 285 'PublicUserVerificationV3' test.out

#- 286 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "DoswGx3Z", "country": "n9IYmsj1", "dateOfBirth": "VxMdD66l", "displayName": "8C6v7NzM", "emailAddress": "CdKoTUvZ", "password": "UerT2jQX", "uniqueDisplayName": "ks41CGrM", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 286 'PublicUpgradeHeadlessAccountV3' test.out

#- 287 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "kmmmkBXS", "password": "jMxIlJnb"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyHeadlessAccountV3' test.out

#- 288 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "9kIg0d7T", "mfaToken": "xtom24zj", "newPassword": "bpNHiUWJ", "oldPassword": "GD3qJtwD"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicUpdatePasswordV3' test.out

#- 289 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'c6114MZi' \
    > test.out 2>&1
eval_tap $? 289 'PublicCreateJusticeUser' test.out

#- 290 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XKAFwpVb' \
    --redirectUri 'qJqS2EnM' \
    --ticket 'AgaqxyJd' \
    > test.out 2>&1
eval_tap $? 290 'PublicPlatformLinkV3' test.out

#- 291 PublicPlatformUnlinkV3
eval_tap 0 291 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 292 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'oPBaLtT9' \
    > test.out 2>&1
eval_tap $? 292 'PublicPlatformUnlinkAllV3' test.out

#- 293 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Xk0zkQ10' \
    --ticket '1YofbbJH' \
    > test.out 2>&1
eval_tap $? 293 'PublicForcePlatformLinkV3' test.out

#- 294 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'BAfzbSwj' \
    --clientId 'dNQI5MJt' \
    --redirectUri 'ndRdJj5p' \
    > test.out 2>&1
eval_tap $? 294 'PublicWebLinkPlatform' test.out

#- 295 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'kzeOZyHU' \
    --code 'r3446h7T' \
    --state '0bjtZTzf' \
    > test.out 2>&1
eval_tap $? 295 'PublicWebLinkPlatformEstablish' test.out

#- 296 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1qVWDBCf' \
    --code '5iqZY5jF' \
    --state 'MftoUG6k' \
    > test.out 2>&1
eval_tap $? 296 'PublicProcessWebLinkPlatformV3' test.out

#- 297 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "5bLdj9nr", "userIds": ["Vj2lVYP2", "oq27DUyI", "PvlIsSlp"]}' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUsersPlatformInfosV3' test.out

#- 298 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "ZQA5T7GQ", "code": "dhsF6t8t", "emailAddress": "CCUVr7Oa", "languageTag": "9KWJNXge", "newPassword": "EeUSt9NU"}' \
    > test.out 2>&1
eval_tap $? 298 'ResetPasswordV3' test.out

#- 299 PublicGetUserByUserIdV3
eval_tap 0 299 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 300 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 't48zviHq' \
    --activeOnly 'false' \
    --after 'tKXeche3' \
    --before 'HM5kXze5' \
    --limit '69' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetUserBanHistoryV3' test.out

#- 301 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wusJMzoq' \
    > test.out 2>&1
eval_tap $? 301 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 302 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'g6pue2Jj' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetUserInformationV3' test.out

#- 303 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'C0RkEFOe' \
    --after '0.023903946715876367' \
    --before '0.7785835749893544' \
    --limit '14' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetUserLoginHistoriesV3' test.out

#- 304 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ryqQViLm' \
    --after 'lkF2SwHZ' \
    --before 'yxXpystu' \
    --limit '100' \
    --platformId 'O4iQrgUo' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetUserPlatformAccountsV3' test.out

#- 305 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '3OeNkCTE' \
    > test.out 2>&1
eval_tap $? 305 'PublicListJusticePlatformAccountsV3' test.out

#- 306 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'ykM34cB0' \
    --body '{"platformId": "sWA2Pxx9", "platformUserId": "Nkm2ZfXM"}' \
    > test.out 2>&1
eval_tap $? 306 'PublicLinkPlatformAccount' test.out

#- 307 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'zedpfk4j' \
    --body '{"chosenNamespaces": ["b20m1ODM", "dZxRVx8I", "0LbYSmAo"], "requestId": "8FjYVIPc"}' \
    > test.out 2>&1
eval_tap $? 307 'PublicForceLinkPlatformWithProgression' test.out

#- 308 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sG9CmXH1' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetPublisherUserV3' test.out

#- 309 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TP4BXexN' \
    --password 'VXUQ3cLX' \
    > test.out 2>&1
eval_tap $? 309 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 310 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'qzUgyi4R' \
    --before 'BGefVPcH' \
    --isWildcard 'false' \
    --limit '14' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetRolesV3' test.out

#- 311 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'fUQ6T7vL' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetRoleV3' test.out

#- 312 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyUserV3' test.out

#- 313 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'Qyt7MLSi' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 314 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["m5Z1vx7e", "HzHI5byO", "z8zdNlmj"], "oneTimeLinkCode": "r2zzGVYh"}' \
    > test.out 2>&1
eval_tap $? 314 'LinkHeadlessAccountToMyAccountV3' test.out

#- 315 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 316 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "eJ4lyRkg"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicSendVerificationLinkV3' test.out

#- 317 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'muycIyYx' \
    > test.out 2>&1
eval_tap $? 317 'PublicVerifyUserByLinkV3' test.out

#- 318 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'lg33z4wl' \
    --code 'vC1kxiwi' \
    --error 'cPw5Us24' \
    --state 'NqCuWoWB' \
    > test.out 2>&1
eval_tap $? 318 'PlatformAuthenticateSAMLV3Handler' test.out

#- 319 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'eDLfefce' \
    --payload 'wAjlxbIl' \
    > test.out 2>&1
eval_tap $? 319 'LoginSSOClient' test.out

#- 320 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'gXYllEIp' \
    > test.out 2>&1
eval_tap $? 320 'LogoutSSOClient' test.out

#- 321 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'NwbvnAot' \
    --code 'avl03H7F' \
    > test.out 2>&1
eval_tap $? 321 'RequestTargetTokenResponseV3' test.out

#- 322 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '68' \
    --namespace 'CLnYWLiU' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 322 'AdminListInvitationHistoriesV4' test.out

#- 323 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'gW33OTRk' \
    > test.out 2>&1
eval_tap $? 323 'AdminGetDevicesByUserV4' test.out

#- 324 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'wwABJQxL' \
    --endDate 'hb9IZNXG' \
    --limit '48' \
    --offset '40' \
    --startDate 'WOW9Cfxs' \
    > test.out 2>&1
eval_tap $? 324 'AdminGetBannedDevicesV4' test.out

#- 325 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'qYQolHPN' \
    > test.out 2>&1
eval_tap $? 325 'AdminGetUserDeviceBansV4' test.out

#- 326 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "lRW9mWbF", "deviceId": "AkdxAXvQ", "deviceType": "GnDAk4H0", "enabled": true, "endDate": "1ZbK0prc", "ext": {"q0s4XEmj": {}, "WQpqrX5V": {}, "rBkHNECs": {}}, "reason": "MyC2icb3"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminBanDeviceV4' test.out

#- 327 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'kf2qThnt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 327 'AdminGetDeviceBanV4' test.out

#- 328 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'd6ipFAnC' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 328 'AdminUpdateDeviceBanV4' test.out

#- 329 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'YZhxmxeo' \
    --startDate '7sL7YwOs' \
    --deviceType 'EQwvdx3T' \
    > test.out 2>&1
eval_tap $? 329 'AdminGenerateReportV4' test.out

#- 330 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 330 'AdminGetDeviceTypesV4' test.out

#- 331 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'Yd3X3b7Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 331 'AdminGetDeviceBansV4' test.out

#- 332 AdminDecryptDeviceV4
eval_tap 0 332 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 333 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'bWoEltYd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 333 'AdminUnbanDeviceV4' test.out

#- 334 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '3a9I4Yn7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 334 'AdminGetUsersByDeviceV4' test.out

#- 335 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 336 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 336 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 337 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 33, "userInfo": {"country": "ZZ1Apb2g"}}' \
    > test.out 2>&1
eval_tap $? 337 'AdminCreateTestUsersV4' test.out

#- 338 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "wJ6jndwU", "policyId": "rTGbWjE0", "policyVersionId": "RUT3ZGLK"}, {"isAccepted": false, "localizedPolicyVersionId": "tO91ioFK", "policyId": "pcZamz93", "policyVersionId": "bjhb4f6P"}, {"isAccepted": true, "localizedPolicyVersionId": "8RBjo1CC", "policyId": "v9ECBhsN", "policyVersionId": "xufnAQXi"}], "authType": "EMAILPASSWD", "code": "p5qc94pO", "country": "XDyfgOF2", "dateOfBirth": "G6kUdt5T", "displayName": "bW17Vy1f", "emailAddress": "00oXKRwm", "password": "0RGk2oj2", "passwordMD5Sum": "4hNCq7Us", "reachMinimumAge": true, "uniqueDisplayName": "TabJ6FEs", "username": "HjQoe24y"}' \
    > test.out 2>&1
eval_tap $? 338 'AdminCreateUserV4' test.out

#- 339 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["jSLA02Lr", "G1hvTSiZ", "cx5Flw3L"]}' \
    > test.out 2>&1
eval_tap $? 339 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 340 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jWwleqiI", "vqICRMsJ", "LrcAoWlp"]}' \
    > test.out 2>&1
eval_tap $? 340 'AdminBulkCheckValidUserIDV4' test.out

#- 341 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'TO4kROvR' \
    --body '{"avatarUrl": "MqNrlDbC", "country": "geiSVw3J", "dateOfBirth": "JmXIlOi5", "displayName": "LbE9b9vD", "languageTag": "vytHeXZx", "skipLoginQueue": false, "uniqueDisplayName": "QdUvRENa", "userName": "xUSTxiYf"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminUpdateUserV4' test.out

#- 342 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'FRxqDukw' \
    --body '{"code": "hKxNIwhZ", "emailAddress": "u46iYiPb"}' \
    > test.out 2>&1
eval_tap $? 342 'AdminUpdateUserEmailAddressV4' test.out

#- 343 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ixann5VK' \
    --body '{"factor": "RtDCfji9", "mfaToken": "yb300ipS"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminDisableUserMFAV4' test.out

#- 344 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RSdX4Ufi' \
    > test.out 2>&1
eval_tap $? 344 'AdminGetUserMFAStatusV4' test.out

#- 345 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ea5xUXpX' \
    > test.out 2>&1
eval_tap $? 345 'AdminListUserRolesV4' test.out

#- 346 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '4x2615lv' \
    --body '{"assignedNamespaces": ["eZi6Mqf5", "vwlsPDLA", "ZdeSQj9b"], "roleId": "2FH4UEk1"}' \
    > test.out 2>&1
eval_tap $? 346 'AdminUpdateUserRoleV4' test.out

#- 347 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '5XrFeLrm' \
    --body '{"assignedNamespaces": ["4NVO5vYA", "6xIDOekw", "hoYYhrO0"], "roleId": "wMLiWQHR"}' \
    > test.out 2>&1
eval_tap $? 347 'AdminAddUserRoleV4' test.out

#- 348 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kNj2P4wO' \
    --body '{"assignedNamespaces": ["6EUfh0nx", "6D63JEXb", "oRoVIyA9"], "roleId": "KoYFnQNy"}' \
    > test.out 2>&1
eval_tap $? 348 'AdminRemoveUserRoleV4' test.out

#- 349 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '48' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 349 'AdminGetRolesV4' test.out

#- 350 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "nWzTvB5y"}' \
    > test.out 2>&1
eval_tap $? 350 'AdminCreateRoleV4' test.out

#- 351 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'j8hzjjzV' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetRoleV4' test.out

#- 352 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'Coss4dVG' \
    > test.out 2>&1
eval_tap $? 352 'AdminDeleteRoleV4' test.out

#- 353 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'wgYVaggy' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "gDj0b9br"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminUpdateRoleV4' test.out

#- 354 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'bmy3TVa8' \
    --body '{"permissions": [{"action": 30, "resource": "XvWdCbht", "schedAction": 15, "schedCron": "2sGAaatH", "schedRange": ["FUAhT53L", "7McwStXF", "586lnK96"]}, {"action": 21, "resource": "VPs6o00R", "schedAction": 81, "schedCron": "ZXoupuWS", "schedRange": ["e1iWURZx", "LAVPAwj8", "gTizPdcI"]}, {"action": 20, "resource": "4L1bxAdD", "schedAction": 35, "schedCron": "u8Uu3ou8", "schedRange": ["hDAIrZ2u", "G72pGZWZ", "LhHYhGaE"]}]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateRolePermissionsV4' test.out

#- 355 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'iR2OZYcu' \
    --body '{"permissions": [{"action": 100, "resource": "1iEJ53cH", "schedAction": 92, "schedCron": "2wRHYQhD", "schedRange": ["SsaotR5X", "KcpbUd4y", "qIqXSR7f"]}, {"action": 60, "resource": "8wogMVTq", "schedAction": 31, "schedCron": "p2wIA6tj", "schedRange": ["kP6vKW1n", "hNzDFsy1", "a1jenbSq"]}, {"action": 15, "resource": "EH5jcfpW", "schedAction": 86, "schedCron": "mJDwrNhE", "schedRange": ["eF9dmnqi", "yHOorcIv", "OfroqqJ5"]}]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminAddRolePermissionsV4' test.out

#- 356 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'JkYGWqbF' \
    --body '["RO7Y4vwa", "Fi14fF62", "706fzBG8"]' \
    > test.out 2>&1
eval_tap $? 356 'AdminDeleteRolePermissionsV4' test.out

#- 357 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'NqbhJJz0' \
    --after 'jYdDbDpN' \
    --before 'dv9HxFiA' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 357 'AdminListAssignedUsersV4' test.out

#- 358 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'TWeWkZI2' \
    --body '{"assignedNamespaces": ["hrqO9He7", "zzdDFJkK", "dUnahPdw"], "namespace": "EZuAa1fc", "userId": "o8f9saMp"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminAssignUserToRoleV4' test.out

#- 359 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'BQeIfk0j' \
    --body '{"namespace": "I2rVUuzA", "userId": "MQBeUCss"}' \
    > test.out 2>&1
eval_tap $? 359 'AdminRevokeUserFromRoleV4' test.out

#- 360 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["qLfu1HXl", "oO6CXP5q", "LW87nG89"], "emailAddresses": ["gbFtfmzm", "svV2rVHQ", "Wl42al1F"], "isAdmin": false, "isNewStudio": false, "languageTag": "yfEjRHbk", "namespace": "dSLBB56R", "roleId": "DSIG2VEh"}' \
    > test.out 2>&1
eval_tap $? 360 'AdminInviteUserNewV4' test.out

#- 361 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "zJ51IkiK", "country": "1nTaKKPz", "dateOfBirth": "hlriYnDv", "displayName": "if6J9i6u", "languageTag": "aQ2ieUtH", "skipLoginQueue": true, "uniqueDisplayName": "iatvdtuQ", "userName": "xkVog4jG"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateMyUserV4' test.out

#- 362 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "ELneErTM", "mfaToken": "3r04BRwr"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminDisableMyAuthenticatorV4' test.out

#- 363 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'eJr8QlPZ' \
    > test.out 2>&1
eval_tap $? 363 'AdminEnableMyAuthenticatorV4' test.out

#- 364 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 364 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 365 AdminGetMyBackupCodesV4
eval_tap 0 365 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 366 AdminGenerateMyBackupCodesV4
eval_tap 0 366 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 367 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "3v1vWEqS", "mfaToken": "mMSgLGYK"}' \
    > test.out 2>&1
eval_tap $? 367 'AdminDisableMyBackupCodesV4' test.out

#- 368 AdminDownloadMyBackupCodesV4
eval_tap 0 368 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 369 AdminEnableMyBackupCodesV4
eval_tap 0 369 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 370 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag '9YjdrwYH' \
    > test.out 2>&1
eval_tap $? 370 'AdminGetBackupCodesV4' test.out

#- 371 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'y5Xiytxx' \
    > test.out 2>&1
eval_tap $? 371 'AdminGenerateBackupCodesV4' test.out

#- 372 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'IFidonXo' \
    > test.out 2>&1
eval_tap $? 372 'AdminEnableBackupCodesV4' test.out

#- 373 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'c1gHkGP6' \
    --factor 'aKcfioZY' \
    > test.out 2>&1
eval_tap $? 373 'AdminChallengeMyMFAV4' test.out

#- 374 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'vospPnlj' \
    --languageTag 'fmWeLjrs' \
    > test.out 2>&1
eval_tap $? 374 'AdminSendMyMFAEmailCodeV4' test.out

#- 375 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "5TiSLLxd", "mfaToken": "3rZD52YP"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminDisableMyEmailV4' test.out

#- 376 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'f2Hmd7MB' \
    > test.out 2>&1
eval_tap $? 376 'AdminEnableMyEmailV4' test.out

#- 377 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 377 'AdminGetMyEnabledFactorsV4' test.out

#- 378 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'WjJwdoXi' \
    > test.out 2>&1
eval_tap $? 378 'AdminMakeFactorMyDefaultV4' test.out

#- 379 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 379 'AdminGetMyOwnMFAStatusV4' test.out

#- 380 AdminGetMyMFAStatusV4
eval_tap 0 380 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 381 AdminInviteUserV4
eval_tap 0 381 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 382 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'ozShqEgg' \
    --linkingToken 'OWFKhg1C' \
    --password 'Bwz2XIlh' \
    --username '6UXEPRv3' \
    > test.out 2>&1
eval_tap $? 382 'AuthenticationWithPlatformLinkV4' test.out

#- 383 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'xFY6uPrB' \
    --extendExp 'false' \
    --linkingToken 'BaliYrOu' \
    > test.out 2>&1
eval_tap $? 383 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 384 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'H57eoksX' \
    --factor '2OGooXDa' \
    --mfaToken 'f5vS4aGw' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 384 'Verify2faCodeV4' test.out

#- 385 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'JOX48WOO' \
    --codeChallenge 'uiBg0sPi' \
    --codeChallengeMethod 'S256' \
    --additionalData 'WTbSnsH3' \
    --clientId 'JGxoYYnz' \
    --createHeadless 'true' \
    --deviceId 'lisZeU3H' \
    --macAddress 'UhoE10Bm' \
    --platformToken 'sPJxL5Wg' \
    --serviceLabel '0.8650244709241631' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 385 'PlatformTokenGrantV4' test.out

#- 386 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'IZ6tsqfS' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'BTIEoN28' \
    --simultaneousTicket 'ix0JMZ3L' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'Dp3MGr9x' \
    > test.out 2>&1
eval_tap $? 386 'SimultaneousLoginV4' test.out

#- 387 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'AtlXORBc' \
    --codeChallengeMethod 'S256' \
    --additionalData 'OYPzdXcy' \
    --clientId 't35oSve0' \
    --clientSecret 'GPEk10FK' \
    --code 'lpK0tPMi' \
    --codeVerifier 'BCjZMeVH' \
    --extendNamespace 'iwTZuy65' \
    --extendExp 'true' \
    --loginQueueTicket 'VY43VejG' \
    --password 'Jep5xHcS' \
    --redirectUri 'a2oq0WNt' \
    --refreshToken 'W3rPZnyc' \
    --username '7gW1v2l2' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 387 'TokenGrantV4' test.out

#- 388 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'T1WFzVHS' \
    --code 'Qemvr2oZ' \
    > test.out 2>&1
eval_tap $? 388 'RequestTargetTokenResponseV4' test.out

#- 389 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'ySd8256r' \
    --rawPUID 'true' \
    --body '{"pidType": "zK8kfceG", "platformUserIds": ["4Qhh5QgD", "9Z3Vbi98", "iAr4nPBn"]}' \
    > test.out 2>&1
eval_tap $? 389 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 390 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Q0wc3NTp", "policyId": "i0JoZdHt", "policyVersionId": "ni9B3WWS"}, {"isAccepted": true, "localizedPolicyVersionId": "liDmGEIU", "policyId": "pNFb3OVD", "policyVersionId": "1y3AYj9Y"}, {"isAccepted": false, "localizedPolicyVersionId": "YC8fJ79o", "policyId": "j0PaWGdV", "policyVersionId": "dmwL8qPx"}], "authType": "EMAILPASSWD", "country": "MVUSRnzK", "dateOfBirth": "lhHp1CIg", "displayName": "1jUjuzsc", "emailAddress": "MQ1POayq", "password": "GBdNBKsq", "passwordMD5Sum": "qgB8dg4B", "uniqueDisplayName": "a6VzsDXt", "username": "unEgcF3b", "verified": false}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCreateTestUserV4' test.out

#- 391 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "FsYWekIQ", "policyId": "wnDbQwwF", "policyVersionId": "6yJLU46K"}, {"isAccepted": true, "localizedPolicyVersionId": "01ye6zRS", "policyId": "ruIP0MEt", "policyVersionId": "9aVzjdlP"}, {"isAccepted": false, "localizedPolicyVersionId": "Dd5CsI1d", "policyId": "w67IwhcY", "policyVersionId": "dqcotpWz"}], "authType": "EMAILPASSWD", "code": "u1pSeDUH", "country": "x6HBpOUo", "dateOfBirth": "6kfQD2pI", "displayName": "JLstxWPK", "emailAddress": "Q1hdzwEn", "password": "dax7d4Ac", "passwordMD5Sum": "4R6HHXfD", "reachMinimumAge": false, "uniqueDisplayName": "t8t4oUbi", "username": "m0eRHMGO"}' \
    > test.out 2>&1
eval_tap $? 391 'PublicCreateUserV4' test.out

#- 392 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'N27CXch3' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2RMlefDb", "policyId": "OuerTOju", "policyVersionId": "kBqmBJxY"}, {"isAccepted": false, "localizedPolicyVersionId": "csWcqAHX", "policyId": "g491tpnD", "policyVersionId": "bqV8Ve6t"}, {"isAccepted": false, "localizedPolicyVersionId": "aSIrMIMF", "policyId": "eJ4fTsN0", "policyVersionId": "TBSRs7Ko"}], "authType": "EMAILPASSWD", "code": "frG1LFrB", "country": "NR9I86Rt", "dateOfBirth": "4rvGeaaW", "displayName": "yig3MrZD", "emailAddress": "gugro9om", "password": "0tc56LjJ", "passwordMD5Sum": "wA6ZB3fj", "reachMinimumAge": false, "uniqueDisplayName": "AuFeYD7R", "username": "8lQ95YSb"}' \
    > test.out 2>&1
eval_tap $? 392 'CreateUserFromInvitationV4' test.out

#- 393 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "LiYobfza", "country": "elrRsvcJ", "dateOfBirth": "9CKdE8pY", "displayName": "xK9pT675", "languageTag": "OXY42kAK", "uniqueDisplayName": "JyjXdmJv", "userName": "FzhJUh7w"}' \
    > test.out 2>&1
eval_tap $? 393 'PublicUpdateUserV4' test.out

#- 394 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6GNLNQrl", "emailAddress": "Pzl9FRtE"}' \
    > test.out 2>&1
eval_tap $? 394 'PublicUpdateUserEmailAddressV4' test.out

#- 395 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "cupTdrdB", "country": "qoAxKQiU", "dateOfBirth": "dClHMYhT", "displayName": "dfNVvVCY", "emailAddress": "nPe9gYdy", "password": "x7KLW8FS", "reachMinimumAge": true, "uniqueDisplayName": "ptc4I1zd", "username": "Z3NaD8lK", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 395 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 396 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "vQG1xx8j", "displayName": "tOpJtAMS", "emailAddress": "ZAw2pVL3", "password": "tebyhzel", "uniqueDisplayName": "WiAk74In", "username": "2ZLUDLEl"}' \
    > test.out 2>&1
eval_tap $? 396 'PublicUpgradeHeadlessAccountV4' test.out

#- 397 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "2caSEGpq", "mfaToken": "ecJMHO5g"}' \
    > test.out 2>&1
eval_tap $? 397 'PublicDisableMyAuthenticatorV4' test.out

#- 398 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code '466paFIu' \
    > test.out 2>&1
eval_tap $? 398 'PublicEnableMyAuthenticatorV4' test.out

#- 399 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 399 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 400 PublicGetMyBackupCodesV4
eval_tap 0 400 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 401 PublicGenerateMyBackupCodesV4
eval_tap 0 401 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 402 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "jJec2aG0", "mfaToken": "hBgfCRrp"}' \
    > test.out 2>&1
eval_tap $? 402 'PublicDisableMyBackupCodesV4' test.out

#- 403 PublicDownloadMyBackupCodesV4
eval_tap 0 403 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 404 PublicEnableMyBackupCodesV4
eval_tap 0 404 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 405 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '0IbjbahA' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetBackupCodesV4' test.out

#- 406 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'oOs5GBwa' \
    > test.out 2>&1
eval_tap $? 406 'PublicGenerateBackupCodesV4' test.out

#- 407 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '2D3YBDUY' \
    > test.out 2>&1
eval_tap $? 407 'PublicEnableBackupCodesV4' test.out

#- 408 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'EofQyOXw' \
    --factor 'aD0cKIWw' \
    > test.out 2>&1
eval_tap $? 408 'PublicChallengeMyMFAV4' test.out

#- 409 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 409 'PublicRemoveTrustedDeviceV4' test.out

#- 410 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'KToIjzf4' \
    --languageTag 'OdPzXyzt' \
    > test.out 2>&1
eval_tap $? 410 'PublicSendMyMFAEmailCodeV4' test.out

#- 411 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "1asW5q7p", "mfaToken": "SiYKuubI"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicDisableMyEmailV4' test.out

#- 412 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'afVwJOpD' \
    > test.out 2>&1
eval_tap $? 412 'PublicEnableMyEmailV4' test.out

#- 413 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 413 'PublicGetMyEnabledFactorsV4' test.out

#- 414 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'bXSf4w4G' \
    > test.out 2>&1
eval_tap $? 414 'PublicMakeFactorMyDefaultV4' test.out

#- 415 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGetMyOwnMFAStatusV4' test.out

#- 416 PublicGetMyMFAStatusV4
eval_tap 0 416 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 417 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Tbjrguom' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 418 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "KUEA6JlT", "emailAddress": "h4gapbEW", "languageTag": "ATKKKTue", "namespace": "7EpeoaAF", "namespaceDisplayName": "BO4G7bxY"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE