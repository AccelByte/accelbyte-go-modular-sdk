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
    --limit '5' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "NN1WeUd0", "description": "6DiCdek1", "globalRules": [{"allowedAction": "jasKw30U", "ruleDetail": [{"ruleAttribute": "MYK1zs2u", "ruleCriteria": "EQUAL", "ruleValue": 0.27855638294719676}, {"ruleAttribute": "AmyJJhQb", "ruleCriteria": "EQUAL", "ruleValue": 0.41903741373903725}, {"ruleAttribute": "MZ5aYbif", "ruleCriteria": "MINIMUM", "ruleValue": 0.9880902630487325}]}, {"allowedAction": "BVfC8deR", "ruleDetail": [{"ruleAttribute": "bhZEpUjy", "ruleCriteria": "MINIMUM", "ruleValue": 0.026549372791298875}, {"ruleAttribute": "3kkJIL1s", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5037942614130231}, {"ruleAttribute": "ygsHoVLe", "ruleCriteria": "MINIMUM", "ruleValue": 0.6355499476952317}]}, {"allowedAction": "bcozvd6V", "ruleDetail": [{"ruleAttribute": "VakFdY47", "ruleCriteria": "MAXIMUM", "ruleValue": 0.639066721346089}, {"ruleAttribute": "bSBrvwI2", "ruleCriteria": "EQUAL", "ruleValue": 0.8191514894338663}, {"ruleAttribute": "d5eXIbmR", "ruleCriteria": "MINIMUM", "ruleValue": 0.4227354794427861}]}], "groupAdminRoleId": "0VW3Abku", "groupMaxMember": 19, "groupMemberRoleId": "KpWQQMdR", "name": "Q9QxqLMy"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'djmLhMPr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'ExPwxr9S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'bERBoxXz' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "XCGTXx4I", "groupMaxMember": 74, "name": "rK56ZMsJ"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'OiEso4Fk' \
    --configurationCode 'SyBfOGyF' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "sci2uGZ5", "ruleCriteria": "EQUAL", "ruleValue": 0.9794847444524397}, {"ruleAttribute": "0S3gK94y", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6926376802602171}, {"ruleAttribute": "ISA8xhTw", "ruleCriteria": "MINIMUM", "ruleValue": 0.031978227495316536}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '7enXH0S7' \
    --configurationCode 'GPFhW7LV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'P4JnshhK' \
    --groupName 'SYBdOuPm' \
    --groupRegion 'fuMBdIrI' \
    --limit '48' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '8UT853Uu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'sKVjSOCz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'hgAl2t5B' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '93' \
    --order 'VPAbyXy5' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "DCeHlj7K", "memberRolePermissions": [{"action": 77, "resourceName": "QyB5OD1k"}, {"action": 34, "resourceName": "lvkbIl5J"}, {"action": 41, "resourceName": "nqTvm4nu"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'jfF4SxHx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'Jm2uf1DN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'OIqoddAl' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Aw9yxnuG"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'Rdw7ImTJ' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 86, "resourceName": "ezJVlbKk"}, {"action": 46, "resourceName": "vMkLq3QS"}, {"action": 85, "resourceName": "pgPnmPa8"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '1oCTERbW' \
    --groupRegion 'YTwAHsd5' \
    --limit '4' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "oJ3D79Xw", "customAttributes": {"XJoDtcss": {}, "G2pzxCRs": {}, "SsEhnZuE": {}}, "groupDescription": "NHSbl5Dx", "groupIcon": "AEdqryFe", "groupMaxMember": 76, "groupName": "6yqcs46x", "groupRegion": "0SY5Veue", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "N61SYKzi", "ruleDetail": [{"ruleAttribute": "QjUpDSKR", "ruleCriteria": "MINIMUM", "ruleValue": 0.5878597301310728}, {"ruleAttribute": "JtjJ8l3E", "ruleCriteria": "EQUAL", "ruleValue": 0.6699376316175764}, {"ruleAttribute": "wgySx8jW", "ruleCriteria": "MINIMUM", "ruleValue": 0.8141149293915092}]}, {"allowedAction": "0YGTi7gG", "ruleDetail": [{"ruleAttribute": "1aqHXVkR", "ruleCriteria": "MINIMUM", "ruleValue": 0.34095792111681666}, {"ruleAttribute": "rVtgB5Dc", "ruleCriteria": "EQUAL", "ruleValue": 0.2924922790837834}, {"ruleAttribute": "tk2pQlru", "ruleCriteria": "EQUAL", "ruleValue": 0.6686244586711192}]}, {"allowedAction": "qnsoK4RW", "ruleDetail": [{"ruleAttribute": "r2G9JlUS", "ruleCriteria": "MINIMUM", "ruleValue": 0.326228764593429}, {"ruleAttribute": "pmW4SbfM", "ruleCriteria": "MINIMUM", "ruleValue": 0.9524670851466372}, {"ruleAttribute": "KhexuAP3", "ruleCriteria": "EQUAL", "ruleValue": 0.4275458117438874}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'Ne3cmvUS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'lC5TP0sw' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "0hAVY9W9", "groupIcon": "nno2KIiV", "groupName": "68VqRExY", "groupRegion": "oeXZA3CE", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'X6TeIAA3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '6T3v3InO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "f9fUeM3q", "groupIcon": "4mrdZxXh", "groupName": "YEidHKC9", "groupRegion": "iSBcsvTo", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '8kuEeHnI' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"XfsIC8UP": {}, "xZJE2yON": {}, "AOugX0cy": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'nHHWPos2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'qzkZQM0L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'lGq61bl3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'zyNvM67S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'xzssOD3H' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'gSYM0KyG' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '36' \
    --order '0ikIQErZ' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'AEq1QwiR' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"eVUB49ME": {}, "Yx1oIXwm": {}, "ZpgyZRo8": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'jtKzuNPO' \
    --groupId 'AJF3Ip2C' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "MLeyPwkk", "ruleCriteria": "MINIMUM", "ruleValue": 0.7970763604334218}, {"ruleAttribute": "RBaJHJ5m", "ruleCriteria": "EQUAL", "ruleValue": 0.8018958120847551}, {"ruleAttribute": "HiMRqQ4x", "ruleCriteria": "EQUAL", "ruleValue": 0.051284666210808516}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'FNDegYhy' \
    --groupId 'IznkYgZd' \
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
    --offset '60' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId '7OmVCjOO' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "u6rBmXF9"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'uxuHFVlN' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "zcFgvbTm"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'o0N7qb9L' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aSVYe0jk' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qgkiQohC' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NAAJLXxM' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'MvFonFTz' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["H20hdhu0", "8Jzp3moD", "MYANHrCG"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'LwZOIvhx' \
    --limit '69' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'y294V5r9' \
    --namespace $AB_NAMESPACE \
    --userId 'kLNfZA5y' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "fTIvs8m6", "customAttributes": {"HN7EHjDe": {}, "INYbIvM1": {}, "ugM8NHWY": {}}, "groupDescription": "f2elBzmK", "groupIcon": "B0UlAADi", "groupMaxMember": 6, "groupName": "dGFo5vng", "groupRegion": "TRsbZxos", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "VfNYrzP3", "ruleDetail": [{"ruleAttribute": "qjqzypZP", "ruleCriteria": "EQUAL", "ruleValue": 0.9294802109477227}, {"ruleAttribute": "YI7SyaK4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.038015963312225676}, {"ruleAttribute": "VRtVUHqV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5470231006087574}]}, {"allowedAction": "BPx1kgjl", "ruleDetail": [{"ruleAttribute": "Cs88JWU8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9064064566391163}, {"ruleAttribute": "gcc4ELlw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6437110021609239}, {"ruleAttribute": "OFyJbjbi", "ruleCriteria": "EQUAL", "ruleValue": 0.5491097508449949}]}, {"allowedAction": "sWIXwtFW", "ruleDetail": [{"ruleAttribute": "bQPWZrrM", "ruleCriteria": "MINIMUM", "ruleValue": 0.2203732447129313}, {"ruleAttribute": "vk9qU2Rx", "ruleCriteria": "MINIMUM", "ruleValue": 0.4848054529978316}, {"ruleAttribute": "dTq8I1Ns", "ruleCriteria": "MINIMUM", "ruleValue": 0.4422700470632921}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["GQ3HLDBG", "kJBPIL6G", "zn1qgvZ9"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '8yqmVnGg' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "pvWcodam", "groupIcon": "EqOdwTZ9", "groupName": "Ozzac7TI", "groupRegion": "XZLyGRYj", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'mxrU4ZCA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'VHkgQDuT' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "ApGOWutx", "groupIcon": "x5KrJbYi", "groupName": "rDG5t7bO", "groupRegion": "duRMxNtV", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'AT4UTbCi' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"mGfPyfsE": {}, "xx9QGL2U": {}, "Vn6KFxpg": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'hsdEU67U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'j3CPvL2G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'zqvMFXK5' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'rlCTyfxC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'GsQ9H0aO' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '1jQiAGln' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'I7OaIpQP' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"xO4SpJAo": {}, "rpuFVmnL": {}, "SKXw6rt2": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '3DuEK3KV' \
    --groupId 'Tvd1IYWi' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "G80Fyiwx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7348893741580629}, {"ruleAttribute": "mbek4Wwg", "ruleCriteria": "EQUAL", "ruleValue": 0.44182784510370454}, {"ruleAttribute": "mPC4ZWUu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3307760520467953}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'FQODFLVX' \
    --groupId 'Buh3ok0r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'jpqD82Zf' \
    --memberRoleId 'SHOLbsl4' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "7oUrmF4G"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'wkvMa78E' \
    --memberRoleId '1nNcEchw' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "yc8IoM8r"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'nYqK3zTR' \
    --namespace $AB_NAMESPACE \
    --userId 'c082DOt5' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'Vrxa2K6e' \
    --namespace $AB_NAMESPACE \
    --userId 'f0rhsYgY' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'lBDwGbNV' \
    --namespace $AB_NAMESPACE \
    --userId 'nwEc77og' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'GrduMre9' \
    --namespace $AB_NAMESPACE \
    --userId 'EbojvH8e' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'WyAagbRW' \
    --namespace $AB_NAMESPACE \
    --userId 'FG6y8xJG' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'jKFVsHgP' \
    --namespace $AB_NAMESPACE \
    --userId 'qkCxnlJZ' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE