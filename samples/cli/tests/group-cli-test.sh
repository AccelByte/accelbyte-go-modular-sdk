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
echo "1..74"

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

#- 2 ListGroupConfigurationAdminV1
samples/cli/sample-apps Group listGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "z3HiAcnjgOVPsOBj", "description": "5FwsyPRi0GUPgnIY", "globalRules": [{"allowedAction": "N9X3uCbptJfYhsm9", "ruleDetail": [{"ruleAttribute": "oCha1KxKrJEFbYHb", "ruleCriteria": "EQUAL", "ruleValue": 0.2663513516788154}, {"ruleAttribute": "Ad154Y5D7gq4hNV4", "ruleCriteria": "MINIMUM", "ruleValue": 0.49625828058875643}, {"ruleAttribute": "QM57aUg0xVf1xa6b", "ruleCriteria": "MINIMUM", "ruleValue": 0.14532773463989435}]}, {"allowedAction": "f7sNtUTLSHZMJdUo", "ruleDetail": [{"ruleAttribute": "iAK8hGyg0s0M9qLE", "ruleCriteria": "MINIMUM", "ruleValue": 0.29918733261001473}, {"ruleAttribute": "qCa0b6OBs7LjobuT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7147684709634419}, {"ruleAttribute": "mQe25tccaqy51anR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.675552491029025}]}, {"allowedAction": "0M4fGStfmqLwp2vF", "ruleDetail": [{"ruleAttribute": "oKb2v3T7dNdfw0QL", "ruleCriteria": "MINIMUM", "ruleValue": 0.46415704702095173}, {"ruleAttribute": "J8OX9yCQQ2lBYT1E", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9140264973019274}, {"ruleAttribute": "qmX0FZDezh1ZT3dd", "ruleCriteria": "MINIMUM", "ruleValue": 0.13812805347519308}]}], "groupAdminRoleId": "dX9BEVwCoxBOeaZj", "groupMaxMember": 11, "groupMemberRoleId": "Tj04uHJHi5lvXTuG", "name": "fqezppc6HGvuibcR"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'qOrxBH4t7SaKWi5F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'A9XEdJIJCLVkARKs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'Wmqpx4a8PeAddlcP' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "O1LEXHZKnfHO6B1k", "groupMaxMember": 8, "name": "KsjFUUhc51e8jgPr"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '8WpntFBfIWkadjvd' \
    --configurationCode 'A5vVfTrheJ4NhIoU' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "A1yrsix3x7AkUE9n", "ruleCriteria": "MINIMUM", "ruleValue": 0.8409712047900538}, {"ruleAttribute": "YktaRVkzWvRDSrWP", "ruleCriteria": "MINIMUM", "ruleValue": 0.9641959462359072}, {"ruleAttribute": "YoZRAUXY8pAudyde", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6483624002016322}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'eLgOsrhuH6dQJ9kp' \
    --configurationCode 'tx2kv1QyGypJyv0x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '45NKyhbZ25atpCnD' \
    --groupName 'RZDtFOHSIpJzjia4' \
    --groupRegion 'jKNTKLiawV01Ijv0' \
    --limit '15' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'gWbPWsNPq1jQJPak' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'BjvHKmrXgHAFvxMh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'gVuBg02XltNHwaBK' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '48' \
    --order 'Lcgov05yCJKGLBdo' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "9auwP3RaQgL5DpSb", "memberRolePermissions": [{"action": 57, "resourceName": "0zWMfoAIQKbxoYYD"}, {"action": 13, "resourceName": "jK9o76zfCbbY7zSp"}, {"action": 8, "resourceName": "BBAks41hRBKy74mt"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'SdjGDShUW3HixVXK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'HIA82pXsqqtxu3J7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'VDFD6ub43z8VZaYT' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "rF1MXZUVR3dGOED7"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'FX9yKLF7MYYoYezP' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 85, "resourceName": "qXuBmbmymkKjV4bN"}, {"action": 3, "resourceName": "PyV0JDA8XGhLCp6f"}, {"action": 39, "resourceName": "HgHpNDQDDNaJUidy"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'm9aBNj7eSTgSDOVv' \
    --groupRegion 'QWywovDZcBinVIGg' \
    --limit '57' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "Pf4WrVgkunDDcj8T", "customAttributes": {"XrMQ75s458KAoqmy": {}, "9mdfzFwQi3XRny5E": {}, "DjXaCOnicIFnMHg2": {}}, "groupDescription": "9mlCJ0ltTtlD2R0t", "groupIcon": "I5n14Mez8aFVR6gF", "groupMaxMember": 5, "groupName": "8bn3BVw22GFVRiy8", "groupRegion": "ZMeFUZCVXO42JmH4", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "9TT2btHLZApOlRp4", "ruleDetail": [{"ruleAttribute": "b7taH8KtTseHAO1r", "ruleCriteria": "EQUAL", "ruleValue": 0.4258221274964843}, {"ruleAttribute": "9paaug3gi51Yppmu", "ruleCriteria": "EQUAL", "ruleValue": 0.061780717139667596}, {"ruleAttribute": "2o3D93axDtd39aYW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.48719163255279474}]}, {"allowedAction": "V4lSxyB4cr2dFUuv", "ruleDetail": [{"ruleAttribute": "6fGm6YT4c32Km8um", "ruleCriteria": "MINIMUM", "ruleValue": 0.03046794734397451}, {"ruleAttribute": "n9AXwoxPe9x7TPve", "ruleCriteria": "MINIMUM", "ruleValue": 0.49545843032174774}, {"ruleAttribute": "SSt8ah2RF3XITtBV", "ruleCriteria": "EQUAL", "ruleValue": 0.16663127369740727}]}, {"allowedAction": "JMbrxCUJxFVVwh13", "ruleDetail": [{"ruleAttribute": "vKdD0XBpRr4ZQqcI", "ruleCriteria": "MINIMUM", "ruleValue": 0.5045792870143375}, {"ruleAttribute": "fdqWqLzLasW93a0l", "ruleCriteria": "EQUAL", "ruleValue": 0.8217960021991361}, {"ruleAttribute": "VSCM6SsofIYCjhWQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.6778603633485946}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'G4QCooSE44svoNZ3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'KYOqbcKzH6KImLId' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "4K5jwSdFBHY5l1kg", "groupIcon": "K4eJJdcAfm0MdA1M", "groupName": "L34rIZ73sZfj6s6y", "groupRegion": "YprsJmvhKSmFPjFy", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'wITj0oURXaVt1q2B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'MZz8CbyVXPNof7Xv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "WvcgK9bCZ9jgzSKH", "groupIcon": "XCr8DWABM6lYoIsf", "groupName": "q3OUwjznFYjLTRr0", "groupRegion": "M8wLen3EzkeNgRLx", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'OQFP9OBreutS6W2G' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"eeU1PqXuniV7dHs6": {}, "OoDaAUNkTIYO0AxC": {}, "j1BkcFJA8x9KzKqA": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'h3N2FcqzbgEde3KV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '7XE42d3i94ajXIlZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'x7VuLVV5us5cgedi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'EyS2GDJSSZYjStG3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'lxoN6MU66xT4vglz' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'pV63OwmSIW289F4u' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '3' \
    --order 'IaNN1lhF6A8kBcF1' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'K8OyR7IL8BBHJfXM' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"r3KGrbi0H2PTiswS": {}, "uiUcA0JASH7LkmKk": {}, "IBC66TEqzl03usgL": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'BoPnuHlsTElAYrmC' \
    --groupId '3K68eX4BPvFuysbB' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "p6aUmw0WPdfVP0Pa", "ruleCriteria": "EQUAL", "ruleValue": 0.10330201371383674}, {"ruleAttribute": "GpI2fs5Z42ryMOy4", "ruleCriteria": "EQUAL", "ruleValue": 0.06497238929628268}, {"ruleAttribute": "hrYwqkYgcCTsja0D", "ruleCriteria": "MAXIMUM", "ruleValue": 0.44860257522960045}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'QlfVU8iDg6ANKJz1' \
    --groupId 'rITV7odLELIEEBaO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteGroupPredefinedRulePublicV1' test.out

#- 36 LeaveGroupPublicV1
samples/cli/sample-apps Group leaveGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'LeaveGroupPublicV1' test.out

#- 37 GetMemberRolesListPublicV1
samples/cli/sample-apps Group getMemberRolesListPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'A2BxgnNHwG8SHmUI' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "FMJk7eHRv6g6eb2L"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'TxfyThRCCw9KrDbK' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "PuYSshUONQSB44N4"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5x7xFSt76ixPpP4U' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'E2xqyiF7SCRZi00R' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hXOaYCTEJKaGOLJB' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'n71xyuYKH8juFSHg' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SyX2PwHSYmV9Xd1K' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["w9kdVgGsu3ox6zMA", "msz8DqR66cRQnMSA", "FkEtuQSdRKG0YzOu"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'nce3hNAp2sjG0MqU' \
    --limit '64' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'yxO0jQWaWwQ4D9wV' \
    --namespace $AB_NAMESPACE \
    --userId 'WQvTcu9fZ7ostBn7' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "yzI4edBmRNhEQnSd", "customAttributes": {"uF8iAIAOxtKkRCKV": {}, "4LMA9SrLM6rKAMSY": {}, "tWkhnRLfgWndT9bb": {}}, "groupDescription": "aQ5gTyXPY6dMCYmh", "groupIcon": "A7JZqNgMIyc1ugJk", "groupMaxMember": 18, "groupName": "KrxIiO4bMlK9tafg", "groupRegion": "72h3IcxWd89vlLos", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "St5cbVqGr5pe3xB8", "ruleDetail": [{"ruleAttribute": "QZUAz9v9t1IVzxIl", "ruleCriteria": "EQUAL", "ruleValue": 0.18833619790133171}, {"ruleAttribute": "kGhCoQ6lmtNjnPvd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.989667309143684}, {"ruleAttribute": "qbFVajkwBXC8hkFD", "ruleCriteria": "MINIMUM", "ruleValue": 0.8955978117389936}]}, {"allowedAction": "59kY6xDJ8wRvgpbE", "ruleDetail": [{"ruleAttribute": "v8fjrLT6Cubzsm8T", "ruleCriteria": "EQUAL", "ruleValue": 0.047474217301208266}, {"ruleAttribute": "eEC1YjFdLGHWP1DY", "ruleCriteria": "EQUAL", "ruleValue": 0.7997931727136894}, {"ruleAttribute": "tV5M97nmEAORWNgF", "ruleCriteria": "EQUAL", "ruleValue": 0.04137870373659269}]}, {"allowedAction": "Q7F6ulNtRmKY41py", "ruleDetail": [{"ruleAttribute": "WpKcBHNzYJEAsqwh", "ruleCriteria": "EQUAL", "ruleValue": 0.7828665048965656}, {"ruleAttribute": "jDMsXKSLZ72mgD9W", "ruleCriteria": "EQUAL", "ruleValue": 0.1422078355512988}, {"ruleAttribute": "w20qAAq7F8Im2J9D", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9301606000935725}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["GpUOA5VRaLShAWSA", "gDflCFEVoduHPgTX", "fx7W7UeExw2lEoXR"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '6hzwuMNiqx1RLGVu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "7YYXmGiFbwL1vQ2G", "groupIcon": "XOouJbNWDXBxLp8Z", "groupName": "agly9nlEU3a26Nl4", "groupRegion": "x06AxgItJaJrfd1O", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'vYLJPfHkIwTLnx1p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'XPm8z4wbGNNbhBXe' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "guUBxaTgAPDVY66o", "groupIcon": "EXUrDOCYk40O63aY", "groupName": "PIN3D8u1qeATJrCC", "groupRegion": "Ss9v5P4Nnr9rBqiY", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'IexoTM4kOD5ZsvhC' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"R5ujI3gtNnrD4yQG": {}, "Xjd1BVzSXUUeduRS": {}, "am9l8QDRwiM4JLdr": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'pBmrh7h0Fwr0siHO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '4u7MVTxA4djeaK35' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'idb1NuasNtCEtj63' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'wymTDPgVtWKFSNMc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'F98EfsuD2JB4oVkj' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '7ASiK2ppAfBNeqmi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'dCksytQkaSwjlwFC' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"RTEpHviZ5GnMXU4d": {}, "KWYwYRnbsWAn22g9": {}, "fsbpwlfbXjjWCYUM": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'aLTwOLNObaLS1Itt' \
    --groupId 'vuyqiGGeDvPfILo1' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "pNDpNIYLP5HsoNS9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6649282563656373}, {"ruleAttribute": "ulyPB1gnCWCVVIlB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9835580062449041}, {"ruleAttribute": "2hEbl796LeMhXnki", "ruleCriteria": "MINIMUM", "ruleValue": 0.7195756677807418}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'HnK6IKVbK67JhLsf' \
    --groupId 'mjFCBbXMnXv3rBbx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'vLlxRTC7QmVL17tJ' \
    --memberRoleId 'csk5QMixNPxy6v9j' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "3RvkHU5ncyfFs4XW"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'XZNNmyy5axtb5J1o' \
    --memberRoleId '6XxrpRYx9milEVNK' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "kme4zTN8I37kUJh7"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'KG6vKnuM5wODwC3l' \
    --namespace $AB_NAMESPACE \
    --userId 'FWLhKlXc4Nl73vwx' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'R2Up4yk8Oj39zZ5p' \
    --namespace $AB_NAMESPACE \
    --userId 'mqMIgfO2j3sjJMUX' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'VadkWDsdNW3SmkXa' \
    --namespace $AB_NAMESPACE \
    --userId 'PJ7WMgI5qKEYuv8W' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'lY4xiqUpoI2Pw0BY' \
    --namespace $AB_NAMESPACE \
    --userId 'FMCgpr1UFjRp3h0P' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'Uiblp0ujgkOZbefK' \
    --namespace $AB_NAMESPACE \
    --userId 'ki03Cp2JP0Ylk1Fl' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '23JxAs9nUk9zmloB' \
    --namespace $AB_NAMESPACE \
    --userId 'hlhnKvn40Iv8ufOq' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE