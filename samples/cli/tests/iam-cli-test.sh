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
    --forceDelete 'false' \
    --body '{"modules": [{"docLink": "MgmmRiaF", "groups": [{"group": "xXhSLbG5", "groupId": "IAQEal32", "permissions": [{"allowedActions": [10, 15, 29], "resource": "zXY47y7F"}, {"allowedActions": [51, 19, 40], "resource": "HtP0kQdy"}, {"allowedActions": [40, 39, 77], "resource": "wt4NSK6Y"}]}, {"group": "b0y2q1Dv", "groupId": "eqta80U4", "permissions": [{"allowedActions": [42, 60, 88], "resource": "Q6GIzhmY"}, {"allowedActions": [87, 42, 35], "resource": "DEPY763W"}, {"allowedActions": [22, 12, 26], "resource": "3K9VzpiK"}]}, {"group": "v3RnP4Aa", "groupId": "XeMa9dw4", "permissions": [{"allowedActions": [55, 54, 86], "resource": "cIiKcDO4"}, {"allowedActions": [67, 90, 18], "resource": "geIHPWQP"}, {"allowedActions": [45, 8, 59], "resource": "RDDEwlSK"}]}], "module": "tsJRSa5D", "moduleId": "eNwxkyTC"}, {"docLink": "o7k389jq", "groups": [{"group": "JT14UyL2", "groupId": "CVYY7EcV", "permissions": [{"allowedActions": [68, 65, 98], "resource": "wsK5wwmc"}, {"allowedActions": [43, 28, 100], "resource": "hqIfkPca"}, {"allowedActions": [29, 68, 93], "resource": "Yh6cUzZB"}]}, {"group": "wulGGi8R", "groupId": "fuYAPcLA", "permissions": [{"allowedActions": [73, 21, 60], "resource": "ertDYP9q"}, {"allowedActions": [4, 56, 66], "resource": "beGHrnrK"}, {"allowedActions": [24, 5, 25], "resource": "QhyCuYb6"}]}, {"group": "BbvnMx3m", "groupId": "yWzHQtxK", "permissions": [{"allowedActions": [22, 12, 54], "resource": "SEH7IOgG"}, {"allowedActions": [65, 54, 14], "resource": "23hOqHYz"}, {"allowedActions": [98, 94, 93], "resource": "rPVgXTVV"}]}], "module": "VWRBTx4N", "moduleId": "DsjME24f"}, {"docLink": "Xj9cPkwe", "groups": [{"group": "16cl0viw", "groupId": "jDpXfLyV", "permissions": [{"allowedActions": [8, 6, 37], "resource": "AL4Inu91"}, {"allowedActions": [71, 43, 20], "resource": "wv0T843t"}, {"allowedActions": [6, 49, 68], "resource": "fnqk5Mh0"}]}, {"group": "Y1TvXjRX", "groupId": "RdIaxQOX", "permissions": [{"allowedActions": [0, 47, 15], "resource": "oIRIul9a"}, {"allowedActions": [86, 55, 61], "resource": "yQCuqvzf"}, {"allowedActions": [90, 48, 94], "resource": "vi2lXHCI"}]}, {"group": "ofXoIDt5", "groupId": "Cw3xR9CP", "permissions": [{"allowedActions": [99, 66, 75], "resource": "AoC7zBks"}, {"allowedActions": [64, 91, 15], "resource": "Fv8wKVHa"}, {"allowedActions": [39, 58, 28], "resource": "gSHo9Juh"}]}], "module": "xbDnC2Kz", "moduleId": "StTzJDzo"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "BnJqjozU", "moduleId": "g5Xt6cLw"}' \
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
    --body '[{"field": "b6jhYPkX", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["bHanw4T9", "4F1VLxdR", "yblcwL8S"], "preferRegex": true, "regex": "7DKbISvd"}, "blockedWord": ["yvc4tEhB", "qaVpJYe6", "e3WfWb7t"], "description": [{"language": "M76aCG7X", "message": ["WTtfXtQl", "MmgHj31R", "V1qL4Z4D"]}, {"language": "g3szGI1x", "message": ["8ndAR7ML", "ny2ClH8e", "Hf2J4KY0"]}, {"language": "qzrWbz8I", "message": ["QAjkriod", "62b928n6", "CSOogGJI"]}], "isCustomRegex": true, "letterCase": "UmtKD2pM", "maxLength": 62, "maxRepeatingAlphaNum": 43, "maxRepeatingSpecialCharacter": 28, "minCharType": 35, "minLength": 75, "regex": "pPb5wlnO", "specialCharacterLocation": "24jZLMFz", "specialCharacters": ["wFc2uZ9K", "GYXAEqJe", "WQzkLt2R"]}}, {"field": "HqkToogc", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["bvo4HeNQ", "JhmvhNtj", "0LtL7Clv"], "preferRegex": false, "regex": "HeW72q2C"}, "blockedWord": ["b9TEydyD", "cWhtNAwL", "DxXwLJDO"], "description": [{"language": "MBhKtF5k", "message": ["ELRoFa02", "4j98avrn", "5RKO88t7"]}, {"language": "F8SudgLU", "message": ["wNE1hjrF", "mscxTTP8", "YYynEpYj"]}, {"language": "FFWHhG3L", "message": ["dXAtlJMt", "b4guWizE", "cVWT9R5d"]}], "isCustomRegex": true, "letterCase": "1Z4l6aSt", "maxLength": 44, "maxRepeatingAlphaNum": 32, "maxRepeatingSpecialCharacter": 1, "minCharType": 94, "minLength": 12, "regex": "tVSoJqmq", "specialCharacterLocation": "tWUhNnXs", "specialCharacters": ["L7oM90Jh", "tScS7ypv", "bz6YXux5"]}}, {"field": "nVDpSk8q", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["X07RtYkp", "DiRe2pCx", "X4qA7AkL"], "preferRegex": true, "regex": "2CFvTfDL"}, "blockedWord": ["HcaJxAic", "TpaGwQXJ", "At0EAAHL"], "description": [{"language": "cTG5OEIn", "message": ["IrZLPiG3", "sEkCmi7B", "Lsi1rkJL"]}, {"language": "J5AJCcHo", "message": ["sX2AWz46", "LAU5bTPy", "2mvPhodw"]}, {"language": "2LjhDDWn", "message": ["s8h03uYu", "XKPOePFz", "S0RlcwnG"]}], "isCustomRegex": false, "letterCase": "7ys9QKDh", "maxLength": 40, "maxRepeatingAlphaNum": 9, "maxRepeatingSpecialCharacter": 6, "minCharType": 56, "minLength": 36, "regex": "Kc1wLEZF", "specialCharacterLocation": "DAczbxZp", "specialCharacters": ["bNWYohIf", "6hC7VZMe", "IjZhPxKv"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field '94fY93RO' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'TOph6Eqs' \
    --before 'KSc1sa8f' \
    --endDate 'nTC0tHha' \
    --limit '77' \
    --query 'OCDO28iK' \
    --roleId 'yV977rF2' \
    --startDate 'N55iE8q3' \
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
    --body '{"ageRestriction": 48, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'uCMckA3N' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 63}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'hSNXn6wW' \
    --limit '64' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "tLChSNGV", "comment": "DVs9n173", "endDate": "f9Ymo0Jt", "reason": "kyKLMCK1", "skipNotif": false, "userIds": ["g8ybcuba", "ksQoFg8z", "EfjaKMCX"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "cG2AtxdK", "userId": "H1VzI650"}, {"banId": "AdJfihOb", "userId": "ykOl7SU7"}, {"banId": "OeGYZc2j", "userId": "waL4JQ97"}]}' \
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
    --clientId 'x12PFnFZ' \
    --clientName '9fBuAHes' \
    --clientType 'rUt8TE5i' \
    --limit '12' \
    --offset '31' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["NMvTRdag", "hYa2hyCl", "wqZOeX3G"], "clientUpdateRequest": {"audiences": ["vI6LRWS2", "41MXLbSX", "VVOledLr"], "baseUri": "WdGHEvdI", "clientName": "dFF0i56r", "clientPermissions": [{"action": 48, "resource": "4m9ytTqs", "schedAction": 35, "schedCron": "ZFZ9B3br", "schedRange": ["NRQGL1kH", "te1KLTth", "s0P4BbHg"]}, {"action": 66, "resource": "rf6Qw2xR", "schedAction": 35, "schedCron": "yoSxTL22", "schedRange": ["qjE3xN2Y", "IXlUMkCy", "RX1AN5eH"]}, {"action": 20, "resource": "oBUTd5kh", "schedAction": 40, "schedCron": "0IolLEi4", "schedRange": ["H87PNGsP", "VKoL9bF7", "vJzP5qmN"]}], "clientPlatform": "qHCuWr7N", "deletable": false, "description": "2CaXIyEM", "modulePermissions": [{"moduleId": "gDSAEds4", "selectedGroups": [{"groupId": "gDsga1Of", "selectedActions": [77, 81, 27]}, {"groupId": "SIppcKiE", "selectedActions": [0, 31, 16]}, {"groupId": "FMGdOzMK", "selectedActions": [49, 60, 45]}]}, {"moduleId": "z5zgdKW1", "selectedGroups": [{"groupId": "hUYbmEyS", "selectedActions": [70, 62, 37]}, {"groupId": "2KTuIDQT", "selectedActions": [79, 31, 80]}, {"groupId": "TUrKz4W5", "selectedActions": [89, 33, 48]}]}, {"moduleId": "KuqYah75", "selectedGroups": [{"groupId": "xAtqGRFm", "selectedActions": [5, 19, 37]}, {"groupId": "pIHgIyGp", "selectedActions": [92, 12, 4]}, {"groupId": "vnNhVAh9", "selectedActions": [68, 39, 41]}]}], "namespace": "JrA5zt7w", "oauthAccessTokenExpiration": 50, "oauthAccessTokenExpirationTimeUnit": "3tsFQgjN", "oauthRefreshTokenExpiration": 95, "oauthRefreshTokenExpirationTimeUnit": "6OvccNyU", "redirectUri": "BIYWbkWb", "scopes": ["UUkv8DvF", "HFbMnGtR", "PjxnmMzc"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["JfK1YlXF", "htNYrtat", "8kut36X5"], "baseUri": "x0hV07Uy", "clientId": "BuOrhI9k", "clientName": "mKQGHhFL", "clientPermissions": [{"action": 24, "resource": "JOI9fpaH", "schedAction": 26, "schedCron": "IRGzl18i", "schedRange": ["o8Mxnf64", "1SQH0esO", "dgW9MF5e"]}, {"action": 18, "resource": "QIDUkvSN", "schedAction": 27, "schedCron": "Al8M7ckr", "schedRange": ["zh9tDNo9", "DjTxzOk0", "3IiyXEJi"]}, {"action": 93, "resource": "Rt3jv8eP", "schedAction": 93, "schedCron": "3sbj5Riz", "schedRange": ["tdeA5xFe", "Bg1yvfcP", "ojsxRVsP"]}], "clientPlatform": "XtxgnRK8", "deletable": true, "description": "paSDX1L7", "modulePermissions": [{"moduleId": "wdskHoUu", "selectedGroups": [{"groupId": "YD9pQln4", "selectedActions": [10, 3, 17]}, {"groupId": "yOuGk4PI", "selectedActions": [1, 71, 24]}, {"groupId": "N0Sf8Epz", "selectedActions": [38, 86, 30]}]}, {"moduleId": "afejJ6Bc", "selectedGroups": [{"groupId": "dQ0ePZu6", "selectedActions": [55, 61, 33]}, {"groupId": "b6u0IOwa", "selectedActions": [50, 85, 63]}, {"groupId": "8DFElqyO", "selectedActions": [16, 40, 4]}]}, {"moduleId": "EsLiKzy6", "selectedGroups": [{"groupId": "Sx0AIgc4", "selectedActions": [98, 12, 88]}, {"groupId": "LHKeQSXN", "selectedActions": [31, 7, 13]}, {"groupId": "HUZPOz2d", "selectedActions": [48, 60, 39]}]}], "namespace": "abyGNlgC", "oauthAccessTokenExpiration": 37, "oauthAccessTokenExpirationTimeUnit": "KA9O6G1Z", "oauthClientType": "4Opeqtjt", "oauthRefreshTokenExpiration": 5, "oauthRefreshTokenExpirationTimeUnit": "GuHFoyc8", "parentNamespace": "p5yG42cP", "redirectUri": "mZyK05Zi", "scopes": ["8teBjxbs", "mNG9JO6D", "oWmRXLBW"], "secret": "RwEqaF9t", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'BeW99OeO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '95HGdtdr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'sd2r9eQN' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["8m2VlKCg", "afmdUkxK", "2WJGTR2J"], "baseUri": "f351tDRX", "clientName": "y98C7ROa", "clientPermissions": [{"action": 10, "resource": "ULRfVdc6", "schedAction": 98, "schedCron": "4dDQjMv6", "schedRange": ["3S8VRrfG", "zaekwI6p", "Hd9FBdN9"]}, {"action": 97, "resource": "zHLEim5D", "schedAction": 59, "schedCron": "Gycctf0l", "schedRange": ["jozu2MhP", "g7xBt858", "GpJ973Sb"]}, {"action": 4, "resource": "1CuwmCQv", "schedAction": 63, "schedCron": "EkWgc1p1", "schedRange": ["OrfBOaSB", "ZFhSOJzh", "jn2Hsyqt"]}], "clientPlatform": "ebjEQrhT", "deletable": true, "description": "AyZkPrXZ", "modulePermissions": [{"moduleId": "o5kuv5MY", "selectedGroups": [{"groupId": "Qh5uUKzp", "selectedActions": [49, 34, 68]}, {"groupId": "49hn26yt", "selectedActions": [8, 73, 13]}, {"groupId": "Z9BxwUlV", "selectedActions": [38, 48, 99]}]}, {"moduleId": "chKcnW14", "selectedGroups": [{"groupId": "Gd8vWvKj", "selectedActions": [82, 21, 37]}, {"groupId": "SCx0RwIG", "selectedActions": [2, 78, 72]}, {"groupId": "679rwGQg", "selectedActions": [64, 33, 45]}]}, {"moduleId": "CEq2HRNd", "selectedGroups": [{"groupId": "0OFDujWw", "selectedActions": [94, 20, 93]}, {"groupId": "KURTy37c", "selectedActions": [21, 11, 79]}, {"groupId": "IqusxA6H", "selectedActions": [36, 4, 4]}]}], "namespace": "2vHtkt4b", "oauthAccessTokenExpiration": 3, "oauthAccessTokenExpirationTimeUnit": "SM6HWpqD", "oauthRefreshTokenExpiration": 31, "oauthRefreshTokenExpirationTimeUnit": "J0sqtFiD", "redirectUri": "EfT7lkoV", "scopes": ["puiVU95b", "F39nxM53", "lTUclZoj"], "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'qxuOPcSv' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 94, "resource": "UCgfgZNO"}, {"action": 37, "resource": "CnZPNK0M"}, {"action": 83, "resource": "XGbaIj5b"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '8NL0wQtl' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 95, "resource": "YgDocjUq"}, {"action": 97, "resource": "XpzQ39Z8"}, {"action": 60, "resource": "XHibsJ0Y"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '5' \
    --clientId 'sxRK4412' \
    --namespace $AB_NAMESPACE \
    --resource 'QnYhDnGm' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'KJfDluy2' \
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
    --body '{"blacklist": ["pDuAx1bx", "3MCjNIkw", "q2DnQo9o"]}' \
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
    --limit '0' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 140 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZTJAm3qz' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nEX7x2MX' \
    --body '{"ACSURL": "EA9LVMwu", "AWSCognitoRegion": "3j1S8zxw", "AWSCognitoUserPool": "qmivxrk3", "AllowedClients": ["PgFIMJBZ", "YWPKBlu2", "X8xaBMc8"], "AppId": "6nroZqZX", "AuthorizationEndpoint": "15xaPcZb", "ClientId": "x4Bpnx5d", "Environment": "qZlAoW5w", "FederationMetadataURL": "7fTG5FdS", "GenericOauthFlow": true, "IsActive": true, "Issuer": "f1mwaUmu", "JWKSEndpoint": "1SYDtLLb", "KeyID": "wgO85ZsL", "NetflixCertificates": {"encryptedPrivateKey": "GIjgiPrB", "encryptedPrivateKeyName": "n3HQ5SxO", "publicCertificate": "HXZ6EWuf", "publicCertificateName": "ytWap0bp", "rootCertificate": "uNtJaqzL", "rootCertificateName": "Iufc073p"}, "OrganizationId": "zvq6v492", "PlatformName": "aTsDIJAp", "RedirectUri": "x4a51Rwl", "RegisteredDomains": [{"affectedClientIDs": ["PkItjcrI", "kSbAMzD5", "Ld9Kw4dC"], "domain": "qkXuSNN9", "namespaces": ["M2iJuECN", "6yF47RnY", "YSWRTQXr"], "roleId": "lFXmfEsb"}, {"affectedClientIDs": ["iGcpU7ZG", "lMVmRA31", "0PmoNCwB"], "domain": "ssqwazRC", "namespaces": ["FcPs2AV6", "LAAH0O0R", "ghIA3j7N"], "roleId": "oQGWEkAj"}, {"affectedClientIDs": ["XKeQtah8", "hAQqQzUt", "oHLjBK8c"], "domain": "WyQfhUXl", "namespaces": ["xyn5ljwP", "d3hBeXBz", "0SlKGmb3"], "roleId": "dWpPbfvq"}], "Secret": "Ez8xpj2c", "TeamID": "1WOD7RON", "TokenAuthenticationType": "6PHA2ceR", "TokenClaimsMapping": {"9EgrRy4a": "Px2lnkRO", "W4NpNvme": "MDyQ5NYj", "5lFs5irI": "ylQz1AU4"}, "TokenEndpoint": "4BcFlwSr", "UserInfoEndpoint": "6rmhyy3s", "UserInfoHTTPMethod": "nd15NWgl", "scopes": ["Of4ANArH", "OXFlmEoW", "1Or5hn1l"]}' \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'h9srosvQ' \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lQzWpN4q' \
    --body '{"ACSURL": "EoB6UUqz", "AWSCognitoRegion": "5Igomj4K", "AWSCognitoUserPool": "YF5Oks8p", "AllowedClients": ["WMcSgEBl", "EC92whuN", "WM99GH8s"], "AppId": "ojBVrskk", "AuthorizationEndpoint": "xRFEPf5S", "ClientId": "xRuSSZKQ", "Environment": "eWlDFtQZ", "FederationMetadataURL": "VeAynPYB", "GenericOauthFlow": true, "IsActive": true, "Issuer": "HYYMnEQY", "JWKSEndpoint": "SWg6iF0x", "KeyID": "8kSqVcdd", "NetflixCertificates": {"encryptedPrivateKey": "ux3iwe5P", "encryptedPrivateKeyName": "w5lz7PTb", "publicCertificate": "dmiRucRJ", "publicCertificateName": "yBXp4K0D", "rootCertificate": "DQhLSEbu", "rootCertificateName": "PaKG7JsZ"}, "OrganizationId": "AUILTtue", "PlatformName": "EtsCpTWt", "RedirectUri": "Ldil4t5Z", "RegisteredDomains": [{"affectedClientIDs": ["ptXSXwwd", "D1VBoGcE", "R4YK1Fp7"], "domain": "tmk6u3ov", "namespaces": ["PLZRnJX3", "J7fmCVHQ", "hRzYIki6"], "roleId": "kgFkf1wt"}, {"affectedClientIDs": ["O5HwSKPi", "sYsWKWTB", "7wAZ7DC5"], "domain": "IFGA0YCL", "namespaces": ["H8JP4dQU", "94fIFrGl", "Nq524k0c"], "roleId": "rNQGN9Cj"}, {"affectedClientIDs": ["U9HgZTzs", "Jzv9k6At", "uxaxQZ8D"], "domain": "eeqZFpTc", "namespaces": ["P0q4THWD", "7ZwcgNdE", "Isw956To"], "roleId": "1wiETAcU"}], "Secret": "iEukFWdC", "TeamID": "uccohmq7", "TokenAuthenticationType": "gR4PTIBm", "TokenClaimsMapping": {"aJ2yw7Y2": "2i2v2TdK", "OKSVPhGA": "dmEoHtoD", "SYHJpux2": "1MHQGdUQ"}, "TokenEndpoint": "3uJUVfpk", "UserInfoEndpoint": "yThi8f8v", "UserInfoHTTPMethod": "NwjOZ9Ap", "scopes": ["6j2gJMDn", "gMMm47ri", "zLSpTjTA"]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'e3fKwLZ7' \
    --body '{"affectedClientIDs": ["Q15TzG9q", "JgLqAvlG", "E2fVKSZE"], "assignedNamespaces": ["2Y4wwbmS", "CnaEuurz", "8RXfJFQn"], "domain": "NOyWM53Z", "roleId": "YRJYQe6d"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jfz3dTCj' \
    --body '{"domain": "R6IrvW5I"}' \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '03abrZIr' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'BJrkpPji' \
    --body '{"acsUrl": "VjUYmgno", "apiKey": "QRISWuab", "appId": "jnQIItYb", "federationMetadataUrl": "D5JiAxuC", "isActive": true, "redirectUri": "CBYX1O2k", "secret": "PFe9djnW", "ssoUrl": "WU0y47Cd"}' \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4u1uCsmD' \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'aulGk2cV' \
    --body '{"acsUrl": "n4cIirNf", "apiKey": "dCBQTRrl", "appId": "G61yaFOc", "federationMetadataUrl": "tpY6zSO6", "isActive": false, "redirectUri": "cgmRBnDG", "secret": "H3TxoRUj", "ssoUrl": "iWCXLkxy"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vOb6IyFo' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["6hNfYKFo", "C6nyORkJ", "WZDCvw6C"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ph4bsB4s' \
    --platformUserId 'nQtm2z1t' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'CP75ZCJF' \
    --after '69' \
    --before '30' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 152 'GetAdminUsersByRoleIdV3' test.out

#- 153 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'lc38Y5M3' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByEmailAddressV3' test.out

#- 154 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["VAFIMYCb", "PFOEa9af", "30UgBw6V"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBulkUpdateUsersV3' test.out

#- 155 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'bNzEnkJF' \
    --body '{"bulkUserId": ["5dDVXLnT", "pPF2zsK2", "MIFXkziJ"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserBanV3' test.out

#- 156 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["iJiRPiYE", "wXci0tWP", "LFPjpkMA"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminListUserIDByUserIDsV3' test.out

#- 157 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["5FWlZP53", "u2gZxr6y", "ElJTVOzk"]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminBulkGetUsersPlatform' test.out

#- 158 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["iDIJ6d3R", "Z5pS9Bzn", "4buMxOhg"], "isAdmin": false, "namespace": "0XEngJyM", "roles": ["IE1xBO9C", "7FQgRrX3", "YMYYJtKJ"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminInviteUserV3' test.out

#- 159 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '18' \
    --platformUserId 'xM5mG5pw' \
    --platformId 'z3SHkpjX' \
    > test.out 2>&1
eval_tap $? 159 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 160 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 160 'AdminListUsersV3' test.out

#- 161 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'myEZfhDt' \
    --endDate 'jtyRsccI' \
    --includeTotal 'false' \
    --limit '12' \
    --offset '53' \
    --platformBy 'ZmIftHnD' \
    --platformId 'iBkHhUza' \
    --query 'qEkNBVbd' \
    --roleIds '2lA3Oa2n' \
    --skipLoginQueue 'true' \
    --startDate 'uBPX9Zd5' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 161 'AdminSearchUserV3' test.out

#- 162 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["wClLyxvB", "8UIOgZ8s", "U2QU8Ser"]}' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetBulkUserByEmailAddressV3' test.out

#- 163 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ONRTr5Xo' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByUserIdV3' test.out

#- 164 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DyoJyqjv' \
    --body '{"avatarUrl": "quy9ThJH", "country": "CywI34ZX", "dateOfBirth": "ldMeIuuQ", "displayName": "EPoDqKM5", "languageTag": "edtMmITX", "skipLoginQueue": false, "uniqueDisplayName": "TM13TCyG", "userName": "jqVzfUEZ"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserV3' test.out

#- 165 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Vs7KxzuD' \
    --activeOnly 'true' \
    --after 'dlliwzKE' \
    --before 'SYoVYM6c' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserBanV3' test.out

#- 166 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hmdsrAVl' \
    --body '{"ban": "pTIKJqsV", "comment": "yrIijKS8", "endDate": "oEAaJYdr", "reason": "M6ONbA4Y", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBanUserV3' test.out

#- 167 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'r9kPvLGD' \
    --namespace $AB_NAMESPACE \
    --userId '8h1m7TJS' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 167 'AdminUpdateUserBanV3' test.out

#- 168 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ysKUqZPG' \
    --body '{"context": "Ek88hdwA", "emailAddress": "s95Bt4W9", "languageTag": "3oOVq94p"}' \
    > test.out 2>&1
eval_tap $? 168 'AdminSendVerificationCodeV3' test.out

#- 169 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yfu8vds9' \
    --body '{"Code": "DcNAQIVm", "ContactType": "H2fl09ax", "LanguageTag": "w5nsuBWr", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 169 'AdminVerifyAccountV3' test.out

#- 170 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'gY19K55g' \
    > test.out 2>&1
eval_tap $? 170 'GetUserVerificationCode' test.out

#- 171 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'v9n0cAsS' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserDeletionStatusV3' test.out

#- 172 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HILsCPL2' \
    --body '{"deletionDate": 20, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 172 'AdminUpdateUserDeletionStatusV3' test.out

#- 173 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GWDsumOd' \
    > test.out 2>&1
eval_tap $? 173 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 174 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cXHPvkHj' \
    --body '{"code": "5moWJKaB", "country": "hsjgoDx2", "dateOfBirth": "2rVq8hHn", "displayName": "ROMyre1J", "emailAddress": "HRraHZjl", "password": "LBjb2fTo", "uniqueDisplayName": "31IeTWv5", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpgradeHeadlessAccountV3' test.out

#- 175 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kdi0eVL6' \
    > test.out 2>&1
eval_tap $? 175 'AdminDeleteUserInformationV3' test.out

#- 176 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '8KKRQD8H' \
    --after '0.5790989073150705' \
    --before '0.8081135638288041' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserLoginHistoriesV3' test.out

#- 177 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c52JLJSY' \
    --body '{"languageTag": "HIZ4tvsA", "newPassword": "u2RK3XqJ", "oldPassword": "SHxKKtje"}' \
    > test.out 2>&1
eval_tap $? 177 'AdminResetPasswordV3' test.out

#- 178 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'n3hoNkbV' \
    --body '{"Permissions": [{"Action": 55, "Resource": "KFwo0MIn", "SchedAction": 0, "SchedCron": "RB3ddBaw", "SchedRange": ["kJFbrljQ", "6cY6qKbZ", "jGIfMrPO"]}, {"Action": 56, "Resource": "ozCLudYJ", "SchedAction": 58, "SchedCron": "a7bppGA7", "SchedRange": ["MEwBVZ2L", "vJGhxiuO", "5cCY8a3N"]}, {"Action": 79, "Resource": "RZasLAk8", "SchedAction": 11, "SchedCron": "vDG5RK08", "SchedRange": ["XreFq1yO", "9TYTiSrM", "Xmk8fuqW"]}]}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserPermissionV3' test.out

#- 179 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tRDoBjAd' \
    --body '{"Permissions": [{"Action": 37, "Resource": "HidDDZN3", "SchedAction": 55, "SchedCron": "Z3jMjqmT", "SchedRange": ["u1UTnX8G", "zka3KD1d", "AJ4BfNie"]}, {"Action": 90, "Resource": "hjNQPUpb", "SchedAction": 74, "SchedCron": "TXOEh4QQ", "SchedRange": ["KT6jJSAi", "Bywnw4j1", "cKsoiJUp"]}, {"Action": 46, "Resource": "KsbY4ymj", "SchedAction": 41, "SchedCron": "HjRwTUq3", "SchedRange": ["EGXwZxdv", "5iO8Yxad", "cFr2WMG3"]}]}' \
    > test.out 2>&1
eval_tap $? 179 'AdminAddUserPermissionsV3' test.out

#- 180 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kFgvq7Sv' \
    --body '[{"Action": 79, "Resource": "xYH3y6yh"}, {"Action": 38, "Resource": "L7T9vBxV"}, {"Action": 87, "Resource": "2v7Znv2e"}]' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteUserPermissionBulkV3' test.out

#- 181 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '89' \
    --namespace $AB_NAMESPACE \
    --resource 'kz9wa7jv' \
    --userId 'IfnNpmjm' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserPermissionV3' test.out

#- 182 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NlS2qrlt' \
    --after '38TnKZZl' \
    --before '63D9jl40' \
    --limit '21' \
    --platformId 'JDewLrJv' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserPlatformAccountsV3' test.out

#- 183 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'zhIM0HUW' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetListJusticePlatformAccounts' test.out

#- 184 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Pk3fPhry' \
    --userId 'gmGxn29a' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetUserMapping' test.out

#- 185 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'T2S3FdoN' \
    --userId '2UJtGjlW' \
    > test.out 2>&1
eval_tap $? 185 'AdminCreateJusticeUser' test.out

#- 186 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '1aQ2lYZS' \
    --skipConflict 'true' \
    --body '{"platformId": "1JC24RpQ", "platformUserId": "1uDTawzb"}' \
    > test.out 2>&1
eval_tap $? 186 'AdminLinkPlatformAccount' test.out

#- 187 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FJ8r7oFT' \
    --userId '0Prm1Yns' \
    --body '{"platformNamespace": "DMoPxUDM"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminPlatformUnlinkV3' test.out

#- 188 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iZr6pGTm' \
    --userId 'HakhtMUT' \
    > test.out 2>&1
eval_tap $? 188 'AdminPlatformUnlinkAllV3' test.out

#- 189 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '51UyGLoB' \
    --userId 'e1HLLpx8' \
    --ticket 'itY9YGa4' \
    > test.out 2>&1
eval_tap $? 189 'AdminPlatformLinkV3' test.out

#- 190 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xyYl2Jgl' \
    --userId 'tnem6Rb1' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 191 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mLDzmcsH' \
    --userId 'u9uCwhOe' \
    --platformToken 'Lq78s1rH' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 192 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'G3dSQ2H6' \
    --userId 'PcOqzRbV' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserSinglePlatformAccount' test.out

#- 193 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rorSPyRS' \
    --body '["bbINzdaf", "pFdd1KwU", "zDY5dgui"]' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteUserRolesV3' test.out

#- 194 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eFj5C44j' \
    --body '[{"namespace": "WPLvbULB", "roleId": "1GfNiwGh"}, {"namespace": "HHL3xs79", "roleId": "3pZIGbgF"}, {"namespace": "i0GKySwR", "roleId": "I4sZwY1f"}]' \
    > test.out 2>&1
eval_tap $? 194 'AdminSaveUserRoleV3' test.out

#- 195 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'm2dGFFcu' \
    --userId '8ly2KH82' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserRoleV3' test.out

#- 196 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ExnnC1Y4' \
    --userId 'U2xyOlzJ' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserRoleV3' test.out

#- 197 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '8NNMTtIM' \
    --body '{"enabled": true, "reason": "EP6y7qJV"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateUserStatusV3' test.out

#- 198 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'kWQEkYvE' \
    --body '{"emailAddress": "fjw7qnHL", "password": "EF8ie5dm"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminTrustlyUpdateUserIdentity' test.out

#- 199 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZuFcqeZj' \
    > test.out 2>&1
eval_tap $? 199 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 200 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'MTZlba4w' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "fW6zygly"}' \
    > test.out 2>&1
eval_tap $? 200 'AdminUpdateClientSecretV3' test.out

#- 201 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'qatcBO3A' \
    > test.out 2>&1
eval_tap $? 201 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 202 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'dYCne7iP' \
    --before 'nLvaDP2p' \
    --isWildcard 'false' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRolesV3' test.out

#- 203 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "kopPh5md", "namespace": "SR8MR2qt", "userId": "UOhKdEUP"}, {"displayName": "tdPwqdap", "namespace": "5UzJXk4U", "userId": "QjaFNaTy"}, {"displayName": "w8NlMADf", "namespace": "sBNqMXtb", "userId": "4JjOsYXa"}], "members": [{"displayName": "z6RjVyqy", "namespace": "aWb6RZDS", "userId": "6sOLKbyX"}, {"displayName": "AFVROwEg", "namespace": "ZyrEnYc8", "userId": "qSEOT627"}, {"displayName": "0nB4hZGL", "namespace": "QuGU8OoO", "userId": "NEo9JioK"}], "permissions": [{"action": 6, "resource": "yHfcyDjn", "schedAction": 18, "schedCron": "5BmXaJEm", "schedRange": ["mf1x5XJv", "8X7BSsD6", "cmpZWpTw"]}, {"action": 8, "resource": "ZgxLX2eB", "schedAction": 18, "schedCron": "rNR9X7bE", "schedRange": ["3HsQAnnb", "ClkVV1Ph", "g1hhwcI5"]}, {"action": 78, "resource": "fXHAyGtO", "schedAction": 9, "schedCron": "LGCR2VMA", "schedRange": ["mrg0DPCz", "Ln8Fcdbo", "07l3F5uE"]}], "roleName": "OUNSv8f8"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminCreateRoleV3' test.out

#- 204 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'Y1Zp7r0T' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetRoleV3' test.out

#- 205 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'KE270vcB' \
    > test.out 2>&1
eval_tap $? 205 'AdminDeleteRoleV3' test.out

#- 206 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'UgDoLfDz' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "ONuRypas"}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRoleV3' test.out

#- 207 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '4qTcFxoY' \
    > test.out 2>&1
eval_tap $? 207 'AdminGetRoleAdminStatusV3' test.out

#- 208 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'OP2D92mR' \
    > test.out 2>&1
eval_tap $? 208 'AdminUpdateAdminRoleStatusV3' test.out

#- 209 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'ELSugNrq' \
    > test.out 2>&1
eval_tap $? 209 'AdminRemoveRoleAdminV3' test.out

#- 210 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'BdAqYPQV' \
    --after 'ATmtwKXm' \
    --before '2IkCA0EQ' \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetRoleManagersV3' test.out

#- 211 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'dmCbGvMP' \
    --body '{"managers": [{"displayName": "Q26fkwNi", "namespace": "jA4BtcUy", "userId": "hErJ26FE"}, {"displayName": "i4xBb1x6", "namespace": "WSL7OaBy", "userId": "4GYXyW7l"}, {"displayName": "j4bqiin4", "namespace": "QlEJP41G", "userId": "b1sPDg0C"}]}' \
    > test.out 2>&1
eval_tap $? 211 'AdminAddRoleManagersV3' test.out

#- 212 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'bTWEuweZ' \
    --body '{"managers": [{"displayName": "3aHbwTG5", "namespace": "xc6kg0ii", "userId": "f91JP3PC"}, {"displayName": "9XSmApjV", "namespace": "oP7pnjik", "userId": "y8RkjoKt"}, {"displayName": "IY1yzmKP", "namespace": "kahUM7DB", "userId": "OPruBVHf"}]}' \
    > test.out 2>&1
eval_tap $? 212 'AdminRemoveRoleManagersV3' test.out

#- 213 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'ORMBfiAF' \
    --after 'lghtcQmj' \
    --before 'DQVWndFc' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 213 'AdminGetRoleMembersV3' test.out

#- 214 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '9jcngYyX' \
    --body '{"members": [{"displayName": "GDvvtCGW", "namespace": "S4uFr3dC", "userId": "MXEygwWr"}, {"displayName": "EcPJYiQA", "namespace": "6PA1gd8T", "userId": "vMrneyL7"}, {"displayName": "6MJ3i7XB", "namespace": "D9fljPzG", "userId": "PktmRI9E"}]}' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddRoleMembersV3' test.out

#- 215 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'gr9xN0Kp' \
    --body '{"members": [{"displayName": "Vw0pIEiu", "namespace": "rXZ53Dzm", "userId": "HGlhYIX3"}, {"displayName": "ew55Ab4v", "namespace": "CAnaoNL9", "userId": "mK4a5sIL"}, {"displayName": "Etmq6fC6", "namespace": "8wpTmRtr", "userId": "6bFxWf04"}]}' \
    > test.out 2>&1
eval_tap $? 215 'AdminRemoveRoleMembersV3' test.out

#- 216 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '10flMTYD' \
    --body '{"permissions": [{"action": 50, "resource": "yMGjtyvJ", "schedAction": 37, "schedCron": "D0vjmfEu", "schedRange": ["5xJi1h6V", "Rnu4UtJO", "4TlO2KJx"]}, {"action": 11, "resource": "t2CIA2to", "schedAction": 19, "schedCron": "JvvWXd8c", "schedRange": ["emXzmPud", "7vz0NX2u", "jbJEHO0q"]}, {"action": 28, "resource": "4kkWCNMl", "schedAction": 34, "schedCron": "3unyUu2U", "schedRange": ["JNMdjxQD", "IdMp7yIE", "PpDUX0SP"]}]}' \
    > test.out 2>&1
eval_tap $? 216 'AdminUpdateRolePermissionsV3' test.out

#- 217 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '9w51k2Es' \
    --body '{"permissions": [{"action": 75, "resource": "93dGDqkI", "schedAction": 26, "schedCron": "mXKv63qT", "schedRange": ["16cA6roO", "4knUnYzv", "aV9tioTl"]}, {"action": 32, "resource": "2xf1sV8e", "schedAction": 62, "schedCron": "HwyfkRQc", "schedRange": ["MZ7TxieA", "2DioeuCG", "MP9pan7a"]}, {"action": 29, "resource": "wxlanLHz", "schedAction": 4, "schedCron": "A6QpKlB6", "schedRange": ["WAVU2G9M", "cNIZql35", "bjBdsQPY"]}]}' \
    > test.out 2>&1
eval_tap $? 217 'AdminAddRolePermissionsV3' test.out

#- 218 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'w275uPqI' \
    --body '["XVjKh1Yw", "VUGOjKOZ", "qTblB9Av"]' \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRolePermissionsV3' test.out

#- 219 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '75' \
    --resource 'Lxn1R7Tu' \
    --roleId 'ljLtvYLo' \
    > test.out 2>&1
eval_tap $? 219 'AdminDeleteRolePermissionV3' test.out

#- 220 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 220 'AdminGetMyUserV3' test.out

#- 221 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '64c0pToQ' \
    --extendExp 'true' \
    --redirectUri 'Pt72lk4E' \
    --password 'WhTMicOV' \
    --requestId 'EIkx4Sqn' \
    --userName 'rEjQKkcH' \
    > test.out 2>&1
eval_tap $? 221 'UserAuthenticationV3' test.out

#- 222 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId '8rGYqDPb' \
    --linkingToken 'fiBBWznF' \
    --password 'zVp97YEB' \
    --username 'dtZHoO12' \
    > test.out 2>&1
eval_tap $? 222 'AuthenticationWithPlatformLinkV3' test.out

#- 223 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'iTUcdVbJ' \
    --extendExp 'false' \
    --linkingToken '8qLv3USY' \
    > test.out 2>&1
eval_tap $? 223 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 224 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'B6JZjpSc' \
    > test.out 2>&1
eval_tap $? 224 'RequestOneTimeLinkingCodeV3' test.out

#- 225 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'igqTKJTR' \
    > test.out 2>&1
eval_tap $? 225 'ValidateOneTimeLinkingCodeV3' test.out

#- 226 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'DLkYFnjp' \
    --isTransient 'false' \
    --clientId '3zF9bB87' \
    --oneTimeLinkCode 'NxeVyFOz' \
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
    --codeChallenge 'jiBx2LaW' \
    --codeChallengeMethod 'plain' \
    --clientId 'OK481QTK' \
    > test.out 2>&1
eval_tap $? 229 'RequestTokenExchangeCodeV3' test.out

#- 230 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'k4ZE5z4u' \
    --userId 'fWF0TpNp' \
    > test.out 2>&1
eval_tap $? 230 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 231 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TkNgL5KC' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 231 'RevokeUserV3' test.out

#- 232 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'nUwYgb2y' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'hGGJ7dtD' \
    --redirectUri 'MuytNvOr' \
    --scope 'DHwh3aQF' \
    --state 'dQyN5lxw' \
    --targetAuthPage 'hjS6loXT' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'CUhq4dj0' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 232 'AuthorizeV3' test.out

#- 233 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'jIYphsOg' \
    > test.out 2>&1
eval_tap $? 233 'TokenIntrospectionV3' test.out

#- 234 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 234 'GetJWKSV3' test.out

#- 235 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '4aWGbIYq' \
    --factor 'RftKiR8m' \
    --mfaToken 'VrxRqxvx' \
    > test.out 2>&1
eval_tap $? 235 'SendMFAAuthenticationCode' test.out

#- 236 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'jmin026a' \
    --mfaToken '1PqRTnNE' \
    > test.out 2>&1
eval_tap $? 236 'Change2faMethod' test.out

#- 237 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'jAwZdR6y' \
    --factor '73sVdyKf' \
    --mfaToken '1fYBfYgv' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 237 'Verify2faCode' test.out

#- 238 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ME93Scu5' \
    --userId '3xwZpU2B' \
    > test.out 2>&1
eval_tap $? 238 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 239 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'v4QvOEBF' \
    --clientId 'tqshT4yO' \
    --redirectUri 'llhA7A8W' \
    --requestId '0DRZll3X' \
    > test.out 2>&1
eval_tap $? 239 'AuthCodeRequestV3' test.out

#- 240 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'gMLG4Fye' \
    --additionalData 'IbuM9tEa' \
    --clientId 'BWICDZr7' \
    --createHeadless 'true' \
    --deviceId 'XnQ8q0uz' \
    --macAddress 'DGCQF5VK' \
    --platformToken 'JxfVOlmd' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 240 'PlatformTokenGrantV3' test.out

#- 241 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 241 'GetRevocationListV3' test.out

#- 242 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '20bR3Z1P' \
    > test.out 2>&1
eval_tap $? 242 'TokenRevocationV3' test.out

#- 243 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'zyGAlucr' \
    --simultaneousTicket 'Vf2wZKKm' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'jxnQe8DT' \
    > test.out 2>&1
eval_tap $? 243 'SimultaneousLoginV3' test.out

#- 244 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'Fw5Mp0hD' \
    --clientId 'L4UwAl0I' \
    --code 'n00u1GjI' \
    --codeVerifier 'nzK1sVWJ' \
    --extendNamespace '1NwlQy0b' \
    --extendExp 'true' \
    --password 'fGNa8TYD' \
    --redirectUri '5iAoVl3X' \
    --refreshToken 'BUwYALV0' \
    --username 'U84wnYdo' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 244 'TokenGrantV3' test.out

#- 245 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'rCC6TPYO' \
    > test.out 2>&1
eval_tap $? 245 'VerifyTokenV3' test.out

#- 246 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'agXzslGF' \
    --code 'CNtxLdIf' \
    --error 'pwpfLZWp' \
    --openidAssocHandle 'swTf4Of3' \
    --openidClaimedId 'LEpuirKK' \
    --openidIdentity '6WG88yzy' \
    --openidMode 'TpeEQqQw' \
    --openidNs 'aWbf384h' \
    --openidOpEndpoint '3nTuXZou' \
    --openidResponseNonce 'Ci4ZcViQ' \
    --openidReturnTo 'ki2Cz80a' \
    --openidSig 'UK41xpBb' \
    --openidSigned 't1MAKUn7' \
    --state 'BoHSdMvZ' \
    > test.out 2>&1
eval_tap $? 246 'PlatformAuthenticationV3' test.out

#- 247 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'V5mlNWlV' \
    --platformToken 'M7SUg5hM' \
    > test.out 2>&1
eval_tap $? 247 'PlatformTokenRefreshV3' test.out

#- 248 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'IHMUaxjb' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetInputValidations' test.out

#- 249 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'EBBSnOxe' \
    > test.out 2>&1
eval_tap $? 249 'PublicGetInputValidationByField' test.out

#- 250 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'yx9Dm0WR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 250 'PublicGetCountryAgeRestrictionV3' test.out

#- 251 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'PIJpaTHM' \
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
    --clientId '7e3OwGbX' \
    > test.out 2>&1
eval_tap $? 254 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 255 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ESUtts6i' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["mfNLXk0D", "wPUnY0JC", "ZB8BvnQu"]}' \
    > test.out 2>&1
eval_tap $? 255 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 256 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'i83VTUJ3' \
    --platformUserId 'MYojpulY' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserByPlatformUserIDV3' test.out

#- 257 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'N1biFP3y' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetAsyncStatus' test.out

#- 258 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'y1G4bYcs' \
    --limit '24' \
    --offset '15' \
    --platformBy 'LjQU3rvr' \
    --platformId '9cDV6muJ' \
    --query 'pTnW5sce' \
    > test.out 2>&1
eval_tap $? 258 'PublicSearchUserV3' test.out

#- 259 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "ppjO4zs4", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "G0yOlBvC", "policyId": "IhqUr6Wx", "policyVersionId": "OISlRWfs"}, {"isAccepted": true, "localizedPolicyVersionId": "cjJsahr2", "policyId": "7I5F93rz", "policyVersionId": "lxBrTV9G"}, {"isAccepted": true, "localizedPolicyVersionId": "czaubGsj", "policyId": "3H9Ep2kC", "policyVersionId": "HYgzyAqK"}], "authType": "0Msi6HTM", "code": "Dwe8mzZe", "country": "xMBJWXR6", "dateOfBirth": "v0mE1qiF", "displayName": "n6p2Cv5P", "emailAddress": "1OHkKGBA", "password": "4smpaALI", "reachMinimumAge": false, "uniqueDisplayName": "4ktxmCUg"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicCreateUserV3' test.out

#- 260 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'PPWu8is4' \
    --query 'efXQHQbL' \
    > test.out 2>&1
eval_tap $? 260 'CheckUserAvailability' test.out

#- 261 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["oW1rG3rH", "9s8cgS9E", "PYRo5FZu"]}' \
    > test.out 2>&1
eval_tap $? 261 'PublicBulkGetUsers' test.out

#- 262 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "bAAhoQQl", "languageTag": "kUoj7Sdr"}' \
    > test.out 2>&1
eval_tap $? 262 'PublicSendRegistrationCode' test.out

#- 263 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MTiMYN5g", "emailAddress": "SNMCSLeD"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicVerifyRegistrationCode' test.out

#- 264 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "UNeiC1sN", "languageTag": "0W3PvH7U"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicForgotPasswordV3' test.out

#- 265 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'CuSsHTqN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 265 'GetAdminInvitationV3' test.out

#- 266 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'Dicv2bv9' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "i925j3gd", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "SEtDieju", "policyId": "yE46x4o1", "policyVersionId": "TyiVUrq7"}, {"isAccepted": false, "localizedPolicyVersionId": "64Eot4lM", "policyId": "EojexLWR", "policyVersionId": "FvHbC8oB"}, {"isAccepted": true, "localizedPolicyVersionId": "bZxlhgpH", "policyId": "s7eAGj28", "policyVersionId": "lwlZoS97"}], "authType": "hWc4tEMM", "code": "d4sIqbol", "country": "Tx4YP3BW", "dateOfBirth": "Xg9dJBVs", "displayName": "kK23rOH3", "emailAddress": "8PoLCRhy", "password": "6yzjcyUU", "reachMinimumAge": true, "uniqueDisplayName": "NKY9x5cZ"}' \
    > test.out 2>&1
eval_tap $? 266 'CreateUserFromInvitationV3' test.out

#- 267 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "hjTowhd5", "country": "SqvfC5m4", "dateOfBirth": "dfBYlNwb", "displayName": "yMD3tFw6", "languageTag": "MSOJIL3w", "uniqueDisplayName": "Gj9DuxjV", "userName": "eiZOvROg"}' \
    > test.out 2>&1
eval_tap $? 267 'UpdateUserV3' test.out

#- 268 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "mMuJvv9R", "country": "SuTnVmGS", "dateOfBirth": "oswwSZND", "displayName": "pBHoLt1X", "languageTag": "PxAfWcVp", "uniqueDisplayName": "N9R1cov5", "userName": "Ek48NE5O"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicPartialUpdateUserV3' test.out

#- 269 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "pT33QPgk", "emailAddress": "nuYjWPCA", "languageTag": "sT2cjJ9I"}' \
    > test.out 2>&1
eval_tap $? 269 'PublicSendVerificationCodeV3' test.out

#- 270 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "eAkUXC4o", "contactType": "73QPfac4", "languageTag": "IQMRUq4Y", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 270 'PublicUserVerificationV3' test.out

#- 271 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "fBPdUNcs", "country": "m8l4hw73", "dateOfBirth": "B8m94dyL", "displayName": "jznNjPpH", "emailAddress": "NR1yLJkS", "password": "ZsQpdJrE", "uniqueDisplayName": "O1u8kRz1", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 271 'PublicUpgradeHeadlessAccountV3' test.out

#- 272 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "liJq6J5y", "password": "eGzlqZQ2"}' \
    > test.out 2>&1
eval_tap $? 272 'PublicVerifyHeadlessAccountV3' test.out

#- 273 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "byyw9WN5", "newPassword": "UQQDuExc", "oldPassword": "ZIvcnrMa"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicUpdatePasswordV3' test.out

#- 274 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '9GrtjKIe' \
    > test.out 2>&1
eval_tap $? 274 'PublicCreateJusticeUser' test.out

#- 275 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rQxl19I8' \
    --redirectUri '6oXuW8cj' \
    --ticket 'dBrisWFN' \
    > test.out 2>&1
eval_tap $? 275 'PublicPlatformLinkV3' test.out

#- 276 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6KtknXgq' \
    --body '{"platformNamespace": "7xFgUm5n"}' \
    > test.out 2>&1
eval_tap $? 276 'PublicPlatformUnlinkV3' test.out

#- 277 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5VayRtwV' \
    > test.out 2>&1
eval_tap $? 277 'PublicPlatformUnlinkAllV3' test.out

#- 278 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gH4VP9wD' \
    --ticket 'gewPftmY' \
    > test.out 2>&1
eval_tap $? 278 'PublicForcePlatformLinkV3' test.out

#- 279 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'ZZwJtT0A' \
    --clientId 'I6haziLe' \
    --redirectUri 'pfJqj9jP' \
    > test.out 2>&1
eval_tap $? 279 'PublicWebLinkPlatform' test.out

#- 280 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'qogkGr8r' \
    --code 'LyLGZvFy' \
    --state 'GhnGgua3' \
    > test.out 2>&1
eval_tap $? 280 'PublicWebLinkPlatformEstablish' test.out

#- 281 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gxYpdPRl' \
    --code 'Mjr4D48W' \
    --state 'mwG1mWUM' \
    > test.out 2>&1
eval_tap $? 281 'PublicProcessWebLinkPlatformV3' test.out

#- 282 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "8ZlOIAjz", "userIds": ["WhXG5Q2B", "GiXl5dyR", "TO2B2SWk"]}' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUsersPlatformInfosV3' test.out

#- 283 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "X13p5eW8", "emailAddress": "ImrAioHJ", "newPassword": "rsEDm4aa"}' \
    > test.out 2>&1
eval_tap $? 283 'ResetPasswordV3' test.out

#- 284 PublicGetUserByUserIdV3
eval_tap 0 284 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 285 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sx6tbyAb' \
    --activeOnly 'false' \
    --after 'nv1f8rmA' \
    --before 'DE0yuEFH' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetUserBanHistoryV3' test.out

#- 286 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CzxyhQE7' \
    > test.out 2>&1
eval_tap $? 286 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 287 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YbKm7puN' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetUserInformationV3' test.out

#- 288 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EmbrQ7CL' \
    --after '0.5900382838297686' \
    --before '0.4818911336047905' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUserLoginHistoriesV3' test.out

#- 289 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'am7Xk1Na' \
    --after 'yyJzl1SK' \
    --before '7fQat7Pj' \
    --limit '77' \
    --platformId 'bHHQ9Ylj' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUserPlatformAccountsV3' test.out

#- 290 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RtLv82Il' \
    > test.out 2>&1
eval_tap $? 290 'PublicListJusticePlatformAccountsV3' test.out

#- 291 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'WqtNq4iz' \
    --body '{"platformId": "QrdRjhIb", "platformUserId": "SM8jnVTU"}' \
    > test.out 2>&1
eval_tap $? 291 'PublicLinkPlatformAccount' test.out

#- 292 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'agufs1Du' \
    --body '{"chosenNamespaces": ["f8M0MUxc", "yj10ZWZn", "m7k59oX1"], "requestId": "1Hsdz9uL"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicForceLinkPlatformWithProgression' test.out

#- 293 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lGWUXVAP' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetPublisherUserV3' test.out

#- 294 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '4XJ9T3Tk' \
    --password 'gv9XEsTx' \
    > test.out 2>&1
eval_tap $? 294 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 295 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'LVqjn9co' \
    --before '6e4FZuFn' \
    --isWildcard 'false' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetRolesV3' test.out

#- 296 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'MYuCC6Te' \
    > test.out 2>&1
eval_tap $? 296 'PublicGetRoleV3' test.out

#- 297 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetMyUserV3' test.out

#- 298 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'BWK64Rk9' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 299 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["bl6O9THm", "UtG29qlZ", "MMab87Cj"], "oneTimeLinkCode": "VLXPIKAw"}' \
    > test.out 2>&1
eval_tap $? 299 'LinkHeadlessAccountToMyAccountV3' test.out

#- 300 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "RvTzp1EI"}' \
    > test.out 2>&1
eval_tap $? 300 'PublicSendVerificationLinkV3' test.out

#- 301 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '3rldwn6n' \
    > test.out 2>&1
eval_tap $? 301 'PublicVerifyUserByLinkV3' test.out

#- 302 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'yuUCUpDH' \
    --code 'Rtg1zIbt' \
    --error 'Wo7v0B8c' \
    --state 'qFsdHp14' \
    > test.out 2>&1
eval_tap $? 302 'PlatformAuthenticateSAMLV3Handler' test.out

#- 303 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'fKwXckMH' \
    --payload 'LeRxv4aA' \
    > test.out 2>&1
eval_tap $? 303 'LoginSSOClient' test.out

#- 304 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'sI21Ob2a' \
    > test.out 2>&1
eval_tap $? 304 'LogoutSSOClient' test.out

#- 305 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'UkfPaKon' \
    --code 'qR31I90C' \
    > test.out 2>&1
eval_tap $? 305 'RequestTargetTokenResponseV3' test.out

#- 306 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '63' \
    --namespace 'vXMqjm7N' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 306 'AdminListInvitationHistoriesV4' test.out

#- 307 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Q2XNqhjI' \
    > test.out 2>&1
eval_tap $? 307 'AdminGetDevicesByUserV4' test.out

#- 308 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'XvXu8dgu' \
    --endDate 'H4EeW999' \
    --limit '59' \
    --offset '76' \
    --startDate 'x2nrLKgw' \
    > test.out 2>&1
eval_tap $? 308 'AdminGetBannedDevicesV4' test.out

#- 309 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Eg30BMLR' \
    > test.out 2>&1
eval_tap $? 309 'AdminGetUserDeviceBansV4' test.out

#- 310 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "Rdf6cj89", "deviceId": "ZJNAeHyb", "deviceType": "MEiPfXkZ", "enabled": false, "endDate": "xtNCBzzt", "ext": {"a4S1Gf8p": {}, "MDFu9L5r": {}, "EHuZnOsx": {}}, "reason": "hVVgYvF5"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminBanDeviceV4' test.out

#- 311 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'ssctMFwi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'AdminGetDeviceBanV4' test.out

#- 312 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'hhnVO14j' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateDeviceBanV4' test.out

#- 313 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'FYjrPRvD' \
    --startDate 'G2l5cpGI' \
    --deviceType 'hCnUpC8F' \
    > test.out 2>&1
eval_tap $? 313 'AdminGenerateReportV4' test.out

#- 314 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'AdminGetDeviceTypesV4' test.out

#- 315 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'qQSmhfmP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'AdminGetDeviceBansV4' test.out

#- 316 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'q0Gtb2hY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 316 'AdminDecryptDeviceV4' test.out

#- 317 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'vbecZrHk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 317 'AdminUnbanDeviceV4' test.out

#- 318 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'iFAZoM5o' \
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
    --limit '8' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 320 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 321 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 55}' \
    > test.out 2>&1
eval_tap $? 321 'AdminCreateTestUsersV4' test.out

#- 322 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Rkf7jhZH", "policyId": "cwA82Rls", "policyVersionId": "Xc1f5AGK"}, {"isAccepted": false, "localizedPolicyVersionId": "q46Eo6pt", "policyId": "AdThtDD0", "policyVersionId": "HiGQUQZW"}, {"isAccepted": false, "localizedPolicyVersionId": "XTEKo5yo", "policyId": "T4pglF9M", "policyVersionId": "zzslPzkP"}], "authType": "EMAILPASSWD", "code": "e2fGuKpa", "country": "mIbbODul", "dateOfBirth": "7pqSwWcj", "displayName": "zSmaWdnY", "emailAddress": "XAMDEL7A", "password": "IOw56d3e", "passwordMD5Sum": "AZHKefh2", "reachMinimumAge": true, "uniqueDisplayName": "7OjuJE7y", "username": "mIquGNRu"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminCreateUserV4' test.out

#- 323 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["FGX8xWBL", "fgnYA01R", "68s2iFHT"]}' \
    > test.out 2>&1
eval_tap $? 323 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 324 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TePIPzIt", "AeVxLSap", "ayJSI7AB"]}' \
    > test.out 2>&1
eval_tap $? 324 'AdminBulkCheckValidUserIDV4' test.out

#- 325 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oC9XWUe5' \
    --body '{"avatarUrl": "HMGqbEPo", "country": "JeH5OPpm", "dateOfBirth": "GuFuPQfK", "displayName": "fW6Mblax", "languageTag": "XotDdh6I", "skipLoginQueue": true, "uniqueDisplayName": "V8i0yeZM", "userName": "oVgbMwdC"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminUpdateUserV4' test.out

#- 326 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '9eExwgx7' \
    --body '{"code": "ad8lSuDV", "emailAddress": "VrbZXRXR"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateUserEmailAddressV4' test.out

#- 327 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '8HxAP93X' \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableUserMFAV4' test.out

#- 328 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'LqVniLF4' \
    > test.out 2>&1
eval_tap $? 328 'AdminListUserRolesV4' test.out

#- 329 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 's6PHuDQh' \
    --body '{"assignedNamespaces": ["nkrIoATH", "9Jhug5Fz", "oGnSngHa"], "roleId": "CRA4VGJ5"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminUpdateUserRoleV4' test.out

#- 330 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jiRErQMl' \
    --body '{"assignedNamespaces": ["4ZxswXnC", "LhPul6Tj", "r6DQgAj5"], "roleId": "RM2OIMTY"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminAddUserRoleV4' test.out

#- 331 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'lBqjJg2s' \
    --body '{"assignedNamespaces": ["ITj5GfeU", "ZKUEiqHF", "GSxeAECT"], "roleId": "ESFwLfGg"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminRemoveUserRoleV4' test.out

#- 332 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '5' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 332 'AdminGetRolesV4' test.out

#- 333 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "4T0Ieb1R"}' \
    > test.out 2>&1
eval_tap $? 333 'AdminCreateRoleV4' test.out

#- 334 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'zZQJBAmS' \
    > test.out 2>&1
eval_tap $? 334 'AdminGetRoleV4' test.out

#- 335 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'iAmn5lJP' \
    > test.out 2>&1
eval_tap $? 335 'AdminDeleteRoleV4' test.out

#- 336 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '0POtWTpt' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "ACWRa8J6"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateRoleV4' test.out

#- 337 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '6W0qQ0c4' \
    --body '{"permissions": [{"action": 88, "resource": "k7i9Siyy", "schedAction": 11, "schedCron": "SzZulog3", "schedRange": ["NfGkKRMb", "1m5Jih5I", "QGg46yHe"]}, {"action": 78, "resource": "mieXXV85", "schedAction": 67, "schedCron": "UWCpu3Lb", "schedRange": ["zHITUWaa", "AdwrxPXo", "azxQuPcP"]}, {"action": 47, "resource": "DvfcpSuf", "schedAction": 66, "schedCron": "hf0YTI1p", "schedRange": ["CwbOBo8S", "VqtLiHit", "GkIdAnUI"]}]}' \
    > test.out 2>&1
eval_tap $? 337 'AdminUpdateRolePermissionsV4' test.out

#- 338 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'mHIQ8h1i' \
    --body '{"permissions": [{"action": 97, "resource": "A4vgJiZn", "schedAction": 4, "schedCron": "yLuq80jj", "schedRange": ["Awx1HBtZ", "YSMbVYAA", "kBzBiWsB"]}, {"action": 65, "resource": "YN0PmCwz", "schedAction": 0, "schedCron": "3D94i7oP", "schedRange": ["sjVmxaTk", "yziRkqzE", "8KDVB4bR"]}, {"action": 9, "resource": "ZyF91iIv", "schedAction": 10, "schedCron": "57T1OcSe", "schedRange": ["SpW7HDLm", "wEgCYvQi", "aXPm7hsW"]}]}' \
    > test.out 2>&1
eval_tap $? 338 'AdminAddRolePermissionsV4' test.out

#- 339 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'PHkiynMb' \
    --body '["sgsIxvMj", "QE3NhB2a", "mh7jflb4"]' \
    > test.out 2>&1
eval_tap $? 339 'AdminDeleteRolePermissionsV4' test.out

#- 340 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'plUmocIB' \
    --after 'yRdQXcY9' \
    --before 'OHwHGKfN' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 340 'AdminListAssignedUsersV4' test.out

#- 341 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'H8KmfGB9' \
    --body '{"assignedNamespaces": ["IMJI6ubZ", "SYxqyfF8", "whePrroC"], "namespace": "l1uND4Sf", "userId": "yyNSvul7"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminAssignUserToRoleV4' test.out

#- 342 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'oix6REXf' \
    --body '{"namespace": "H8tIj9I5", "userId": "5cD1IDXS"}' \
    > test.out 2>&1
eval_tap $? 342 'AdminRevokeUserFromRoleV4' test.out

#- 343 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["qskW8WpC", "wUoXbf68", "0Nc4Xp3F"], "emailAddresses": ["yNKuQylF", "cbs4Pqlk", "NK9pUXd5"], "isAdmin": false, "isNewStudio": false, "namespace": "v2ilgtgR", "roleId": "RzfSEBeT"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminInviteUserNewV4' test.out

#- 344 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "mJKCiBXn", "country": "ewso21Mc", "dateOfBirth": "OwjFdhxf", "displayName": "0DkXuzQL", "languageTag": "pmqeIJ1O", "skipLoginQueue": true, "uniqueDisplayName": "dScBsWxU", "userName": "1e9vDv9a"}' \
    > test.out 2>&1
eval_tap $? 344 'AdminUpdateMyUserV4' test.out

#- 345 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 345 'AdminDisableMyAuthenticatorV4' test.out

#- 346 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'J6YLx8rl' \
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
    --code 'wWY5oPjU' \
    > test.out 2>&1
eval_tap $? 358 'AdminEnableMyEmailV4' test.out

#- 359 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 359 'AdminGetMyEnabledFactorsV4' test.out

#- 360 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'vZCoPHzE' \
    > test.out 2>&1
eval_tap $? 360 'AdminMakeFactorMyDefaultV4' test.out

#- 361 AdminInviteUserV4
eval_tap 0 361 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 362 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'omiq0617' \
    --linkingToken '4StbbfXC' \
    --password 'DgJ3bkKj' \
    --username 'lbDKcKRs' \
    > test.out 2>&1
eval_tap $? 362 'AuthenticationWithPlatformLinkV4' test.out

#- 363 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'O4JRUHuN' \
    --extendExp 'false' \
    --linkingToken 'KkwEAirC' \
    > test.out 2>&1
eval_tap $? 363 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 364 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'g9Y4g2N6' \
    --factor 'CdrYioiL' \
    --mfaToken 'LHYotIte' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 364 'Verify2faCodeV4' test.out

#- 365 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'rQe7K4OC' \
    --codeChallenge 'qYL9VEbw' \
    --codeChallengeMethod 'S256' \
    --additionalData 'wyRWATcu' \
    --clientId 'BDuNLNc1' \
    --createHeadless 'true' \
    --deviceId 'ghyRUOhr' \
    --macAddress '5ZfTKWkj' \
    --platformToken 'NMQT7zLI' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 365 'PlatformTokenGrantV4' test.out

#- 366 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'ITaFbEgu' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'A9VpFMRI' \
    --simultaneousTicket 'U6BeFWYy' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'tmdT6ato' \
    > test.out 2>&1
eval_tap $? 366 'SimultaneousLoginV4' test.out

#- 367 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'p39dq9kY' \
    --codeChallengeMethod 'S256' \
    --additionalData 'AwpI9Lqt' \
    --clientId '3h777Var' \
    --code 'O8hvnL9x' \
    --codeVerifier 'oc6O1Dpv' \
    --extendNamespace 'q7Pgn87H' \
    --extendExp 'true' \
    --loginQueueTicket 'iqeNmLCs' \
    --password 'mdpZKXB2' \
    --redirectUri 'QxmrEP3W' \
    --refreshToken 'AJV89nDS' \
    --username 'YKr59qhc' \
    --grantType 'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    > test.out 2>&1
eval_tap $? 367 'TokenGrantV4' test.out

#- 368 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'DIs8feJB' \
    --code '03kGMtAm' \
    > test.out 2>&1
eval_tap $? 368 'RequestTargetTokenResponseV4' test.out

#- 369 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "hOZUEBSn", "policyId": "17Hx2ykw", "policyVersionId": "Lwd9o04e"}, {"isAccepted": false, "localizedPolicyVersionId": "hegdpcji", "policyId": "jmFg4MWf", "policyVersionId": "r8FqM3rd"}, {"isAccepted": false, "localizedPolicyVersionId": "QrXmqv7d", "policyId": "tdIr9jdP", "policyVersionId": "tyqzMaY7"}], "authType": "EMAILPASSWD", "country": "ZfaLoF2Q", "dateOfBirth": "SkurJjqM", "displayName": "29sMeUCn", "emailAddress": "Xy6JqFni", "password": "RMghZM01", "passwordMD5Sum": "TIV1aRWZ", "uniqueDisplayName": "z6VCyESx", "username": "7cRj7iHw", "verified": false}' \
    > test.out 2>&1
eval_tap $? 369 'PublicCreateTestUserV4' test.out

#- 370 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "FEEREQ4T", "policyId": "CVy9PpT9", "policyVersionId": "PySVQZPl"}, {"isAccepted": false, "localizedPolicyVersionId": "qHnyvoSE", "policyId": "niTAnJAZ", "policyVersionId": "03MIq48N"}, {"isAccepted": false, "localizedPolicyVersionId": "yCUkKJZ2", "policyId": "GM5yp6qK", "policyVersionId": "gkj6AbcQ"}], "authType": "EMAILPASSWD", "code": "oZL4ysuQ", "country": "9AbNv7WV", "dateOfBirth": "ctTvGuZ0", "displayName": "s8AYKrpd", "emailAddress": "xzWNZpas", "password": "h5bRXCDA", "passwordMD5Sum": "HJhEdYVv", "reachMinimumAge": true, "uniqueDisplayName": "s7vvNcBy", "username": "LZTj73ie"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicCreateUserV4' test.out

#- 371 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'vN4k9kDe' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "UbDwjfwt", "policyId": "4Gpe3VSm", "policyVersionId": "1NlJkNgM"}, {"isAccepted": true, "localizedPolicyVersionId": "xDODRaSt", "policyId": "Cxi4V0Is", "policyVersionId": "Qa1v5spN"}, {"isAccepted": false, "localizedPolicyVersionId": "yUMOBuqG", "policyId": "brYaHvKk", "policyVersionId": "XT5L0J5K"}], "authType": "EMAILPASSWD", "code": "Asao1dOT", "country": "95qcaDMO", "dateOfBirth": "NshTNvSa", "displayName": "RJYgFjf7", "emailAddress": "kgFVf3b8", "password": "y2yHqT5o", "passwordMD5Sum": "iR2rZCW8", "reachMinimumAge": false, "uniqueDisplayName": "43mAoN0R", "username": "UDWyK5Hs"}' \
    > test.out 2>&1
eval_tap $? 371 'CreateUserFromInvitationV4' test.out

#- 372 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "4Wcb7m8n", "country": "WaIEjZDu", "dateOfBirth": "pYT3Vhmg", "displayName": "R1qDIiWw", "languageTag": "ZPSvb3jP", "uniqueDisplayName": "hwatPhgi", "userName": "RHFfXChw"}' \
    > test.out 2>&1
eval_tap $? 372 'PublicUpdateUserV4' test.out

#- 373 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Sf8UzXuc", "emailAddress": "QnTSy9IW"}' \
    > test.out 2>&1
eval_tap $? 373 'PublicUpdateUserEmailAddressV4' test.out

#- 374 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jtd07yt6", "country": "lnxb71fH", "dateOfBirth": "rSBvLcxu", "displayName": "mVIU7wkL", "emailAddress": "p8s5B0vP", "password": "ZLhlgpBh", "reachMinimumAge": true, "uniqueDisplayName": "ZYp0gYyy", "username": "cAvF0e8B", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 374 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 375 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "aYDmsuGy", "password": "rm6wmCNU", "username": "DuBHqtiJ"}' \
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
    --code 'KfBSVE0E' \
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
    --code 'fvUgK5n7' \
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
    --factor 'oHaUakm5' \
    > test.out 2>&1
eval_tap $? 392 'PublicMakeFactorMyDefaultV4' test.out

#- 393 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OJOLs2Mm' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 394 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "3XjmM5np", "emailAddress": "JQq3cm04", "namespace": "0t8KtZyw", "namespaceDisplayName": "qpOxxRcC"}' \
    > test.out 2>&1
eval_tap $? 394 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE