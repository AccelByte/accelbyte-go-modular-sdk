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
    --limit '40' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "dicDosNZ", "description": "VVTTGCIL", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "tCpaTbXP", "ruleCriteria": "EQUAL", "ruleValue": 0.24873181315596105}, {"ruleAttribute": "1RGxsyx1", "ruleCriteria": "EQUAL", "ruleValue": 0.5408662708267822}, {"ruleAttribute": "Pdjhg7X5", "ruleCriteria": "MINIMUM", "ruleValue": 0.8400943181978767}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "6pqSkcjs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7009960862281097}, {"ruleAttribute": "n6aT33tz", "ruleCriteria": "EQUAL", "ruleValue": 0.13361545286276844}, {"ruleAttribute": "m2bPz8jY", "ruleCriteria": "EQUAL", "ruleValue": 0.2638410663644766}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "5Zay3O8z", "ruleCriteria": "MINIMUM", "ruleValue": 0.4933796282676418}, {"ruleAttribute": "4Oih32Jh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.449082417874356}, {"ruleAttribute": "WGCNxlWR", "ruleCriteria": "EQUAL", "ruleValue": 0.8053278682323165}]}], "groupAdminRoleId": "j5dA1e5f", "groupMaxMember": 52, "groupMemberRoleId": "qsbULBcf", "name": "1BEu8RMG"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'tMDsstdG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'M3IYk1r3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'Nc1JzZHu' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "shsv1hSf", "groupMaxMember": 62, "name": "yZ4eFxn7"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'FgTx70Nd' \
    --configurationCode 'VcgUNBPj' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "czbzdzUs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.013423778923974616}, {"ruleAttribute": "nVMhYR4f", "ruleCriteria": "MINIMUM", "ruleValue": 0.6503756516491213}, {"ruleAttribute": "q6MQffd9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.36273651462483947}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'JzzTZBGo' \
    --configurationCode 'kmL7EtVC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'zIF8kC7x' \
    --groupName 'sKNoIxwW' \
    --groupRegion 'dwQnVMsZ' \
    --limit '22' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'VW18klkr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'faCs9asm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '9g0rSwSd' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '59' \
    --order 'dhZ5BOaf' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "enxKszli", "memberRolePermissions": [{"action": 36, "resourceName": "bBDaWxW6"}, {"action": 94, "resourceName": "4hHohWCf"}, {"action": 38, "resourceName": "gBGLjMDQ"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'uaCoCngQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'a4qFB8Ab' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'sTJsBniz' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "2xJ50x98"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'Hcsq3cnt' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 100, "resourceName": "POzQWsE7"}, {"action": 64, "resourceName": "0rpBZnVN"}, {"action": 4, "resourceName": "AUsyRkBd"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'SU0TtniP' \
    --groupRegion 'uKYG4YG9' \
    --limit '65' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "S72vYye6", "customAttributes": {"oisLsYSH": {}, "qvu6pDov": {}, "Aw0lXJ28": {}}, "groupDescription": "k591UevQ", "groupIcon": "1J75l4Pl", "groupMaxMember": 20, "groupName": "cfNywMtA", "groupRegion": "Ea6GIW3A", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "Sbmk7xPM", "ruleCriteria": "MINIMUM", "ruleValue": 0.9057475539650625}, {"ruleAttribute": "QgZIddUQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.003869691491947158}, {"ruleAttribute": "oVxUzI1Y", "ruleCriteria": "EQUAL", "ruleValue": 0.04561731152727477}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "q8fGd7fh", "ruleCriteria": "MINIMUM", "ruleValue": 0.0831194700868263}, {"ruleAttribute": "HEqmrZHS", "ruleCriteria": "EQUAL", "ruleValue": 0.5672707264525377}, {"ruleAttribute": "EWmm2YNR", "ruleCriteria": "EQUAL", "ruleValue": 0.7080054932236342}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "Oevcw5tz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8090411095293151}, {"ruleAttribute": "dKKOfc8B", "ruleCriteria": "MINIMUM", "ruleValue": 0.5840315833661173}, {"ruleAttribute": "0yeZAb30", "ruleCriteria": "EQUAL", "ruleValue": 0.3142504437597784}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '66c36Jix' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'orjl9QSd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "CmhL9sZz", "groupIcon": "fvNQdMcU", "groupName": "ks5Z5JyI", "groupRegion": "ATyk2Wcp", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'VXPd6xhG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'snqG2ZPa' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "9nZ9mDTA", "groupIcon": "rNF1oJb7", "groupName": "WFsd5Afl", "groupRegion": "6D9LlXGx", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'PcBu0zNr' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"xAN6aCTu": {}, "33upLz1l": {}, "troqsh4r": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'Ti8fKGue' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'CeYHf62L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'EdEHdWhm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'CYoh0nIb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'bHFbkRDP' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'GdDluYq4' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '4' \
    --order 'iKVXUnzu' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '5v7wM5mL' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"VeXRQ9oe": {}, "93Nct02d": {}, "7pNMxaCB": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'vjpzBMe7' \
    --groupId '2OgTLM8z' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "q1v2Mj0Y", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5159100673500111}, {"ruleAttribute": "2UejnS1O", "ruleCriteria": "EQUAL", "ruleValue": 0.6555675129427593}, {"ruleAttribute": "U4UvwQDo", "ruleCriteria": "MINIMUM", "ruleValue": 0.9969999553331506}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '9pd1kyXx' \
    --groupId 'AX4oOD6W' \
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
    --limit '16' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'S7gpyZgM' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "8LSsJXab"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'KHDpsxfe' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "o4MR5FPl"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '4FJrd6CK' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'miG9Xrqw' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'GV9j7XIc' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QxNb7GLj' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JLDMCDVT' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["WiVhsBTu", "woelBO6j", "C6RbWgl5"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'jrymgUoB' \
    --limit '98' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '1nr1Tv4D' \
    --namespace $AB_NAMESPACE \
    --userId 'LkYZ2VW7' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "AYfOPdeN", "customAttributes": {"LoRGhdaP": {}, "UV1pHiEW": {}, "xbzpFRpG": {}}, "groupDescription": "pSguz6NJ", "groupIcon": "jRwsjyVr", "groupMaxMember": 14, "groupName": "LItKkcX5", "groupRegion": "iHZTeDo1", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "uH21misJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.43407975685522504}, {"ruleAttribute": "6hExTfoH", "ruleCriteria": "MINIMUM", "ruleValue": 0.467685954585912}, {"ruleAttribute": "xE2HBfuZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4970412867941052}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "mEu3DPLU", "ruleCriteria": "MINIMUM", "ruleValue": 0.22956701157762716}, {"ruleAttribute": "kQ7ez35z", "ruleCriteria": "MINIMUM", "ruleValue": 0.05599039729672928}, {"ruleAttribute": "eD79zbgt", "ruleCriteria": "EQUAL", "ruleValue": 0.837084119461712}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "EXEJKiZw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8184384468553708}, {"ruleAttribute": "JHD0jU5E", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8894746156186961}, {"ruleAttribute": "dwIcGJvI", "ruleCriteria": "EQUAL", "ruleValue": 0.2580714968803698}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["f8ztAteQ", "FDRJxlPk", "nONxhBoU"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '8TyLV8Ao' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "q5xGsKhW", "groupIcon": "Mxjc3Uil", "groupName": "Py6g9skS", "groupRegion": "Kpz5U8DX", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'I80QAsRb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'FaqaqJRw' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "zknGELie", "groupIcon": "H8etK0A4", "groupName": "RiD51sLB", "groupRegion": "y6KlR9vv", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'NmAJhund' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"xBMN1hZc": {}, "PUSfKJfc": {}, "mttm1TQv": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'roxwR2E9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '5PoxGYvw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'dxvF7zJT' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'SEJvtgRD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'JYIX7T9Z' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'e7itzVo6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'mxU9UbBk' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"xQ1GCwf6": {}, "Mie8h8RS": {}, "1kGsj1QD": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'VojbHSKD' \
    --groupId 'E70UMcPG' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "A4K67xdF", "ruleCriteria": "EQUAL", "ruleValue": 0.8888138794389798}, {"ruleAttribute": "Hw9yUjZC", "ruleCriteria": "MINIMUM", "ruleValue": 0.6784380368837775}, {"ruleAttribute": "eZ8pUCOg", "ruleCriteria": "EQUAL", "ruleValue": 0.40577604667017875}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'Ilv0Tz3i' \
    --groupId '5f7HanhT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'hRTOIa6d' \
    --memberRoleId 'CoJmgtl7' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "pWzOifio"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId '6SMzYVYh' \
    --memberRoleId 'XRznYChN' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "d43ULXIh"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'JyaVyAld' \
    --namespace $AB_NAMESPACE \
    --userId 'HpCRvcT6' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'BqpxhNJu' \
    --namespace $AB_NAMESPACE \
    --userId 'XXyZXM6L' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'i58szgm3' \
    --namespace $AB_NAMESPACE \
    --userId 'iHSkYpu2' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'NrjUoTbJ' \
    --namespace $AB_NAMESPACE \
    --userId 'ArxdpBub' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '20h6CN4a' \
    --namespace $AB_NAMESPACE \
    --userId 'UBIiGyqi' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'rVRYYFQJ' \
    --namespace $AB_NAMESPACE \
    --userId 'q7CdYvZf' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE