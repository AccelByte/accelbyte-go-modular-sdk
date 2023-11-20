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
    --limit '67' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "yWgL4Y1G", "description": "smUyMa7v", "globalRules": [{"allowedAction": "Kp92lV8F", "ruleDetail": [{"ruleAttribute": "RDC3kTdI", "ruleCriteria": "EQUAL", "ruleValue": 0.45330191072329096}, {"ruleAttribute": "lMe9Kxrc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8932910938545245}, {"ruleAttribute": "dOjmu9hh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6335958607800065}]}, {"allowedAction": "gGk4nZTG", "ruleDetail": [{"ruleAttribute": "iWk1PsSl", "ruleCriteria": "EQUAL", "ruleValue": 0.5688713967577324}, {"ruleAttribute": "t3oxb8eQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.33518292456631826}, {"ruleAttribute": "iKFaJXip", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6185280671075755}]}, {"allowedAction": "wy9d7kAe", "ruleDetail": [{"ruleAttribute": "tD1YvzHd", "ruleCriteria": "EQUAL", "ruleValue": 0.6700748798357665}, {"ruleAttribute": "PlAINkjh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7127168439178047}, {"ruleAttribute": "RoONfvcp", "ruleCriteria": "EQUAL", "ruleValue": 0.03625548618834307}]}], "groupAdminRoleId": "iJZ2tvuK", "groupMaxMember": 7, "groupMemberRoleId": "C21QE49B", "name": "o6xoMKIq"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '92XhlHPL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'SoqSNZpW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'ipB0TmL8' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "xmO0IJBk", "groupMaxMember": 48, "name": "6Yd5PxEE"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'Nebd4vWD' \
    --configurationCode 'bWgVSdLW' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "xyWlBvzY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14933882342575655}, {"ruleAttribute": "5q6tfTh0", "ruleCriteria": "EQUAL", "ruleValue": 0.5014071328936572}, {"ruleAttribute": "ckPg13bL", "ruleCriteria": "EQUAL", "ruleValue": 0.0006909803877432896}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'wAxunheW' \
    --configurationCode 'Kzy4a9Rq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'QzGX4EJG' \
    --groupName 'FirBleS2' \
    --groupRegion 'bAc1UsG9' \
    --limit '63' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'iqbIpM0U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'a5N1HorV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'aYqzxdBB' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '37' \
    --order 'mXvGGs8Y' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "rmewRmqo", "memberRolePermissions": [{"action": 9, "resourceName": "H5gOKICI"}, {"action": 15, "resourceName": "5UjhE6Z1"}, {"action": 60, "resourceName": "OGzEUyoC"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'p4dgPrI7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '85U49t1J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '9zzuiRqL' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "H6Omn9iS"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'qC19jRg7' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 13, "resourceName": "VmCcA1sc"}, {"action": 56, "resourceName": "iZYSnY9n"}, {"action": 39, "resourceName": "40Saa1Ya"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'PSic74mI' \
    --groupRegion 'uRbusH8c' \
    --limit '72' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "B86qItQn", "customAttributes": {"QNeHQg8L": {}, "Zh9DptC7": {}, "Nk0OQ8Vl": {}}, "groupDescription": "z8zBSJUu", "groupIcon": "FcK5Xx5r", "groupMaxMember": 47, "groupName": "qnRs0D07", "groupRegion": "i70YcDYY", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "UDC0mKIR", "ruleDetail": [{"ruleAttribute": "3j8nhkpT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.32149798302416877}, {"ruleAttribute": "18horgL4", "ruleCriteria": "EQUAL", "ruleValue": 0.6363160373938918}, {"ruleAttribute": "0KCXqCqm", "ruleCriteria": "MINIMUM", "ruleValue": 0.12105275939683091}]}, {"allowedAction": "MxPhOhbR", "ruleDetail": [{"ruleAttribute": "WKxhfJNA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5648737457383316}, {"ruleAttribute": "pRa6ktLh", "ruleCriteria": "MINIMUM", "ruleValue": 0.6123239529384156}, {"ruleAttribute": "rJ2J6Atr", "ruleCriteria": "EQUAL", "ruleValue": 0.7191532232098815}]}, {"allowedAction": "TQUkPEgg", "ruleDetail": [{"ruleAttribute": "LPFuIS6g", "ruleCriteria": "MINIMUM", "ruleValue": 0.4331502153857405}, {"ruleAttribute": "mWp3npeh", "ruleCriteria": "MINIMUM", "ruleValue": 0.7450609000776648}, {"ruleAttribute": "21AOOp3O", "ruleCriteria": "MAXIMUM", "ruleValue": 0.12436890881503526}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'mVFhy4aT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'ncbGwHtf' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "OhEBEiCF", "groupIcon": "yuOZU8Iy", "groupName": "mZarDUQK", "groupRegion": "urMmc3qS", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'QgoqcSgi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'tQvQmZ3N' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "eQJ944Gi", "groupIcon": "NT0nZe1C", "groupName": "eLA893KI", "groupRegion": "mPl1JMlG", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'WmbKocps' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"hVooVqrK": {}, "8UkPcL0Y": {}, "kZgUlSsj": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'rYP4EVNX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'd0MbqlkZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'E0lC9JUi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '1XYfupmC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'W6mBiXGz' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'kF6vpWFA' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '41' \
    --order 'tWEzXzmk' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'uqFaQ7qA' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"IUksRAxT": {}, "VYeJ8HmY": {}, "KKXT7XzL": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'HF51XkRr' \
    --groupId 'osDpOX8k' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "W4p1cEEs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6315013556968699}, {"ruleAttribute": "nW2uspwT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8895006046700077}, {"ruleAttribute": "jlSRjGTU", "ruleCriteria": "EQUAL", "ruleValue": 0.977029356725716}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'rhhCJGVo' \
    --groupId 'uzW6GfmT' \
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
    --limit '29' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'UyBBNxy9' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "GdXa1qPc"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'PjhrWd4E' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "t4crbmYD"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'AcWpfMge' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DEmpjTkb' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'AxW7F5Gg' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LtU2b395' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aGEaiZIm' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["lN2TOaW0", "WXqkrGkX", "nHoVfl58"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'jFyyYR6v' \
    --limit '57' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'HFVmKsck' \
    --namespace $AB_NAMESPACE \
    --userId '3EFMvWAH' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "proCYZSg", "customAttributes": {"99iA0DMf": {}, "XICHDKCg": {}, "3vGlBRLd": {}}, "groupDescription": "1ktFkCLd", "groupIcon": "TppEmIvj", "groupMaxMember": 46, "groupName": "LopDUPLX", "groupRegion": "06XlROcG", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "klZRBC8S", "ruleDetail": [{"ruleAttribute": "BBZKuXNr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.539331663079203}, {"ruleAttribute": "PcE2JlVS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3086474458040377}, {"ruleAttribute": "fR9JYcut", "ruleCriteria": "MINIMUM", "ruleValue": 0.5170671101289239}]}, {"allowedAction": "rVZmfLUY", "ruleDetail": [{"ruleAttribute": "G9dGqKA1", "ruleCriteria": "MINIMUM", "ruleValue": 0.5980380800209717}, {"ruleAttribute": "MrQdrpmi", "ruleCriteria": "MINIMUM", "ruleValue": 0.43792616085014013}, {"ruleAttribute": "DAreklrb", "ruleCriteria": "MINIMUM", "ruleValue": 0.9829540583368163}]}, {"allowedAction": "JjRQGcWF", "ruleDetail": [{"ruleAttribute": "pnsmLWFi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.04282316230558203}, {"ruleAttribute": "NcFmrhrs", "ruleCriteria": "MINIMUM", "ruleValue": 0.4300695873675513}, {"ruleAttribute": "EoooZWOP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8128052602745576}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["iWSxs7Eu", "pNY7bHHS", "SPqc3924"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'S8bS1vAQ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "GGGa9c9n", "groupIcon": "OFd5ZtM5", "groupName": "OEqzDt7s", "groupRegion": "qyImZOz3", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'wa8ufJIx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '7JlK1GFc' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "BQMqxuFE", "groupIcon": "flYPqIJU", "groupName": "AeMd7PAV", "groupRegion": "zL3gXIXp", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'sHOLfEbE' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"MeEZ6PWl": {}, "XmQZ8gMO": {}, "RODcD6Qm": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'ZEmXK9fO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'p0t5xHgt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'rV0T9puc' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'DOERboem' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'Fi2yydjS' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'rUuU22yx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'mK9AWipe' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"D9SwMXpF": {}, "RXPCh58K": {}, "7RvJ8cks": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'IyUuvE1n' \
    --groupId 'HxE6xdeB' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "WcyGyGVh", "ruleCriteria": "EQUAL", "ruleValue": 0.3618921508526439}, {"ruleAttribute": "p6uGCAhf", "ruleCriteria": "MINIMUM", "ruleValue": 0.07512439863703346}, {"ruleAttribute": "wWym9512", "ruleCriteria": "EQUAL", "ruleValue": 0.38420924516825605}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '6dVrhXS9' \
    --groupId 'HSXfkoqi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '5bEZSGss' \
    --memberRoleId 'LMPlbQCQ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "beRq8ylU"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'tMD0YnjW' \
    --memberRoleId 'UB9oghMq' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "r9ioyECD"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 're9LXvO7' \
    --namespace $AB_NAMESPACE \
    --userId 'fwgLM3TA' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'TlURmCgF' \
    --namespace $AB_NAMESPACE \
    --userId '7g9wxd7a' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'Qcall54B' \
    --namespace $AB_NAMESPACE \
    --userId 'duVfR0bq' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'RqoEnTNH' \
    --namespace $AB_NAMESPACE \
    --userId 'znrzE05l' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'pZGrA4tu' \
    --namespace $AB_NAMESPACE \
    --userId 'c1K2XuGA' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'jcuHacg9' \
    --namespace $AB_NAMESPACE \
    --userId 'Nl4wqCye' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE