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
    --limit '69' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "zOvSNQDc", "description": "N0o8YSfE", "globalRules": [{"allowedAction": "o9Pz9QTz", "ruleDetail": [{"ruleAttribute": "svBvV5js", "ruleCriteria": "EQUAL", "ruleValue": 0.11411909103345896}, {"ruleAttribute": "Vj1LpQbu", "ruleCriteria": "EQUAL", "ruleValue": 0.12830151246178567}, {"ruleAttribute": "HJ8QVeTi", "ruleCriteria": "EQUAL", "ruleValue": 0.05704531793977685}]}, {"allowedAction": "huMJXhJe", "ruleDetail": [{"ruleAttribute": "f1ubIKcj", "ruleCriteria": "EQUAL", "ruleValue": 0.9626062443368745}, {"ruleAttribute": "GhynlBcS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.39660315705713844}, {"ruleAttribute": "YuwKDr5W", "ruleCriteria": "MINIMUM", "ruleValue": 0.8953570742590302}]}, {"allowedAction": "oGrbepuD", "ruleDetail": [{"ruleAttribute": "f3WZTz15", "ruleCriteria": "MINIMUM", "ruleValue": 0.09205068547821715}, {"ruleAttribute": "6AsGVVeQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.023589564609615254}, {"ruleAttribute": "lZk5TT50", "ruleCriteria": "MINIMUM", "ruleValue": 0.7856457454387077}]}], "groupAdminRoleId": "lvdeiff5", "groupMaxMember": 87, "groupMemberRoleId": "tbVzSMor", "name": "5MkzEpGW"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '5Z81lmNj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'QHusbg7p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'KnVmkdYh' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "czTvqp5P", "groupMaxMember": 61, "name": "nAQ0z1p6"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'FPdv3X98' \
    --configurationCode 'e0b9uTgY' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "b4wD8trM", "ruleCriteria": "MINIMUM", "ruleValue": 0.26231519623246313}, {"ruleAttribute": "3TIYXuUP", "ruleCriteria": "MINIMUM", "ruleValue": 0.6164588436393567}, {"ruleAttribute": "lLjOhdQ1", "ruleCriteria": "MINIMUM", "ruleValue": 0.5200018526036675}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'KWvRWqFd' \
    --configurationCode 'v8CCw1cY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 't8vUh6Do' \
    --groupName 'Syadn0bN' \
    --groupRegion 'MXv8b9kD' \
    --limit '59' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'aBe8b048' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '7UBZajxW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '9SpHdyQ7' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '90' \
    --order 'Iu5Y9oYX' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "D9DqFyo1", "memberRolePermissions": [{"action": 33, "resourceName": "6v0chxdT"}, {"action": 24, "resourceName": "kWmKhfN0"}, {"action": 76, "resourceName": "bvWq7lon"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'vtwvlDqy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'YQMS1Zu8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'ogGESogN' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "2fKXPgD4"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'wdDpo4Ou' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 14, "resourceName": "iHSOdXvY"}, {"action": 53, "resourceName": "IWm2kLeC"}, {"action": 16, "resourceName": "zF7QvFn8"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'vZ7bv3jA' \
    --groupRegion '6gWZixJj' \
    --limit '23' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "lu1BcnyN", "customAttributes": {"rPh8NWHM": {}, "0NtFiDMC": {}, "ykWPU2kD": {}}, "groupDescription": "i5BSUJVP", "groupIcon": "0AfrBrZW", "groupMaxMember": 76, "groupName": "rN1fWkEk", "groupRegion": "KRS2Gz2r", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "tWnO8vJG", "ruleDetail": [{"ruleAttribute": "7E9L0eSp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.23416963383341838}, {"ruleAttribute": "hDdoaZ7y", "ruleCriteria": "MINIMUM", "ruleValue": 0.7143758130899478}, {"ruleAttribute": "0y2F8H1U", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9579798259693637}]}, {"allowedAction": "vlnorMg7", "ruleDetail": [{"ruleAttribute": "pwyQImvl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.668493675304983}, {"ruleAttribute": "IgL6K9gJ", "ruleCriteria": "EQUAL", "ruleValue": 0.2116592175735469}, {"ruleAttribute": "aMJADeZI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8063203355494255}]}, {"allowedAction": "77Kn1kn3", "ruleDetail": [{"ruleAttribute": "AJdSEBJB", "ruleCriteria": "EQUAL", "ruleValue": 0.6615001345694014}, {"ruleAttribute": "AVkJYlDJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7364472295934874}, {"ruleAttribute": "BKNCaoor", "ruleCriteria": "MINIMUM", "ruleValue": 0.5770020544495218}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'McvixCqL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'yDjIif6X' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "dELcW2b5", "groupIcon": "nZ9Y8JeZ", "groupName": "PbW8Kj1y", "groupRegion": "Ex5JTSex", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 't1Sp63uq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'LNegkkeq' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "2YE63yOJ", "groupIcon": "kX2P8D3l", "groupName": "7JhjXjDs", "groupRegion": "HdwETg3E", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'C8NX35AC' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zeSLThqg": {}, "xa7J1mVW": {}, "xuDNRdHd": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'NEGylIGp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'fDFqXt6k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'AJ9x1fGE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'zR0k8gDm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'J1nk7dxy' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'ddzm0wpy' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '33' \
    --order 'uRJXuc9b' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'EjBKYx0g' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"T6QBtVmH": {}, "d11c4jT4": {}, "2UBsTNG3": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'wIlvp37v' \
    --groupId 'eHAYUMtg' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "6wSIsrY9", "ruleCriteria": "MINIMUM", "ruleValue": 0.7195106465205112}, {"ruleAttribute": "xngGR9xD", "ruleCriteria": "EQUAL", "ruleValue": 0.05289645260890352}, {"ruleAttribute": "muJlzlmV", "ruleCriteria": "MINIMUM", "ruleValue": 0.8784462582460227}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'K5m06t3q' \
    --groupId '74t0pvVY' \
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
    --limit '69' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId '8vVYCYEv' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "uiZwFsnq"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId '5NO4hIrl' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Nf6oLsFR"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'sNpQhslW' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '8wdZHRI4' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kdz7vOKV' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IMki4uEY' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'YYKPYPbI' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["dkyTtyGO", "ZIyX62RJ", "sdNfv8F0"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'W3yhM9Jj' \
    --limit '47' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'RveQuKBB' \
    --namespace $AB_NAMESPACE \
    --userId 'vAKOjNUh' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "LwL3aaYm", "customAttributes": {"ka2OlDGB": {}, "BZa9q8JK": {}, "G7IrHPAm": {}}, "groupDescription": "dbeBvYR7", "groupIcon": "vxEjfmNr", "groupMaxMember": 13, "groupName": "6XrYMdYN", "groupRegion": "P9sKx5bD", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Hkc2oR3o", "ruleDetail": [{"ruleAttribute": "sLezO14H", "ruleCriteria": "MAXIMUM", "ruleValue": 0.04971058083055824}, {"ruleAttribute": "QVw4PiuV", "ruleCriteria": "EQUAL", "ruleValue": 0.6787358467755376}, {"ruleAttribute": "R9mB5ogX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5820778734547749}]}, {"allowedAction": "Nv0zymQU", "ruleDetail": [{"ruleAttribute": "nrbQFVRO", "ruleCriteria": "EQUAL", "ruleValue": 0.024703991218511634}, {"ruleAttribute": "lbjWj4ZH", "ruleCriteria": "MINIMUM", "ruleValue": 0.7761454513421571}, {"ruleAttribute": "rxCdpFjP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9954341432054984}]}, {"allowedAction": "deEjLez3", "ruleDetail": [{"ruleAttribute": "vmcLOL7S", "ruleCriteria": "EQUAL", "ruleValue": 0.4055563329643709}, {"ruleAttribute": "nhRCnU8b", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6234373354984312}, {"ruleAttribute": "9TZuj5KL", "ruleCriteria": "MINIMUM", "ruleValue": 0.975379678046475}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["sDqkitmF", "wd8KAaZQ", "1Iv9TJi6"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'sdxZNSjY' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "FzLVr4XV", "groupIcon": "HIHML0mD", "groupName": "l0D7w8Vm", "groupRegion": "KhsPgEI7", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'NzzFqBaC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'umVkmmU1' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "8KOK3Rhn", "groupIcon": "LAk2OPT2", "groupName": "4WRqDTyw", "groupRegion": "yKFSd35q", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'QIJUuFac' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"REmNxRMy": {}, "423Z5GEk": {}, "sZBjzVpH": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'r6I1pLAJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'wxeabHkt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '38aJoQJQ' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'qAbRFLdy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'BSViAhIF' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'tjKp3aB0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'pjhWk2p9' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"p0CkLWBT": {}, "WrTljRex": {}, "P7YQ1sgb": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'frYGllnJ' \
    --groupId 'Jon8oFcc' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "MeSZafUZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.5726197368093466}, {"ruleAttribute": "2c9ODJPV", "ruleCriteria": "EQUAL", "ruleValue": 0.20617142469775263}, {"ruleAttribute": "xTPTiOEY", "ruleCriteria": "EQUAL", "ruleValue": 0.2458103394259813}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'Vgkp17zu' \
    --groupId 'tuyFh1qz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'ygkvKEMk' \
    --memberRoleId '1ASrZMcW' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "52Mtxqfr"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'Eakhir2V' \
    --memberRoleId 'v0SY8LwS' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "HpqUN6He"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'OCCDAw3q' \
    --namespace $AB_NAMESPACE \
    --userId 'pNEpg8fo' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 's4utt1Mk' \
    --namespace $AB_NAMESPACE \
    --userId '6zLUJMwT' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'U7dT35EK' \
    --namespace $AB_NAMESPACE \
    --userId '70WMPy1q' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'NfZT9wF7' \
    --namespace $AB_NAMESPACE \
    --userId 'zV99qAKB' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 's6YBiTRE' \
    --namespace $AB_NAMESPACE \
    --userId 'icHhQ8IO' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'Aq5oLCXx' \
    --namespace $AB_NAMESPACE \
    --userId '8eDVq451' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE