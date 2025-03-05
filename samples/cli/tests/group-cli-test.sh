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
    --limit '12' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "DXShJpCw", "description": "JfBHgFQ2", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "TDGlOK9A", "ruleCriteria": "EQUAL", "ruleValue": 0.5323232671042205}, {"ruleAttribute": "ZS4hpKwJ", "ruleCriteria": "EQUAL", "ruleValue": 0.3533524161376269}, {"ruleAttribute": "R087OjD5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9821273614344701}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "5sqZVl2p", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8929780112570507}, {"ruleAttribute": "56L2nFww", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3268871766522289}, {"ruleAttribute": "GYqep5QD", "ruleCriteria": "MINIMUM", "ruleValue": 0.7874122383262412}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "JBCz0hBN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18730109097217318}, {"ruleAttribute": "6XAPDtDD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9213272184458614}, {"ruleAttribute": "FMPgz9Y0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6411744727185198}]}], "groupAdminRoleId": "7JalXfpL", "groupMaxMember": 19, "groupMemberRoleId": "6AAPxmVa", "name": "XemJZNrS"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'cK29YsjL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'vAvilKas' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '84oj5Dda' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6qeRXUTz", "groupMaxMember": 32, "name": "AAwjT45K"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '7h0zWW6m' \
    --configurationCode 'WHvZ1HYF' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ehMZP6rL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.30378975226755744}, {"ruleAttribute": "0GgkobeI", "ruleCriteria": "MINIMUM", "ruleValue": 0.08635980523358866}, {"ruleAttribute": "K1QECR9k", "ruleCriteria": "MINIMUM", "ruleValue": 0.8970720891277573}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'S2BwO6LH' \
    --configurationCode 'Mqdb1HZf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'KQ67IB43' \
    --groupName 'rC4hCFeS' \
    --groupRegion 'TZXoQzDb' \
    --limit '12' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'mSoDZ7GB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'QKRq6RSM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'nMKaXg16' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '61' \
    --order '7c3JSqnA' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "awIPE7en", "memberRolePermissions": [{"action": 2, "resourceName": "hwi6OZ2w"}, {"action": 92, "resourceName": "M2SKhyFa"}, {"action": 33, "resourceName": "RcPdMQtT"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '4OEjSom7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'djUGY3Vf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '4IlqAPoc' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "ZWeIyYJD"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'VoOn4QaQ' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 92, "resourceName": "Vpb7bC09"}, {"action": 75, "resourceName": "QsmyDII7"}, {"action": 8, "resourceName": "4wilEvJa"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'a38bVM2c' \
    --groupRegion 'r4K3xZdf' \
    --limit '45' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "5xh6G9Ws", "customAttributes": {"Q9KTZiSe": {}, "RhjAIG6W": {}, "l9OGJCu0": {}}, "groupDescription": "JnRrYiHI", "groupIcon": "4NWqtCon", "groupMaxMember": 39, "groupName": "e6bLMerJ", "groupRegion": "KB4RCNck", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "dDz0jvcW", "ruleCriteria": "MINIMUM", "ruleValue": 0.11319036421553497}, {"ruleAttribute": "7ASwJqbd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8172580589063436}, {"ruleAttribute": "YBBM6zNF", "ruleCriteria": "MINIMUM", "ruleValue": 0.29938793341932424}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "ojemkJ2m", "ruleCriteria": "MINIMUM", "ruleValue": 0.5716391685811625}, {"ruleAttribute": "5TtAfMwY", "ruleCriteria": "MINIMUM", "ruleValue": 0.6993250689784556}, {"ruleAttribute": "78ofrFnm", "ruleCriteria": "EQUAL", "ruleValue": 0.6329489452108771}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "UKMTEHAS", "ruleCriteria": "EQUAL", "ruleValue": 0.9543082085198631}, {"ruleAttribute": "7GjlYKVC", "ruleCriteria": "MINIMUM", "ruleValue": 0.5465348426151747}, {"ruleAttribute": "cTfZafxV", "ruleCriteria": "EQUAL", "ruleValue": 0.5002888829416798}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'kA3AbgFP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'yyUFofZQ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "5lbB2I00", "groupIcon": "DTaQfcYk", "groupName": "Op5Zaqkq", "groupRegion": "CxTCbeLd", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'ZbRtOhHI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '5dL54BEY' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "qxBqyImr", "groupIcon": "JxlEFQhj", "groupName": "Cm7VDsEw", "groupRegion": "QhgPzrjk", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'Qlsbxy65' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"CXwYb2l5": {}, "pZcAMbAm": {}, "bNzzODqL": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId '53x96KXX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'nblwK1r2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '8EBycHnO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'XyBxUQi9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'uCLpxNdz' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'dyg3k0ud' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '17' \
    --order 'epLB815J' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'o3TuUheO' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"pYK23jIm": {}, "29qh1NsO": {}, "nSOkrkgV": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'ZJzhsicg' \
    --groupId 'JHgLWBqJ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "b7W2Stwd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.12281983330508628}, {"ruleAttribute": "t6V0WwbB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7763344041659447}, {"ruleAttribute": "OkQqo6xY", "ruleCriteria": "EQUAL", "ruleValue": 0.6616981870273835}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'qbmJSDgV' \
    --groupId 'Fu2qFRr1' \
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
    --limit '58' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'VXmpYZlf' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "EG6Uce7A"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'B3hsmdIo' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "fEWCc66B"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LdzRiBvh' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NpEYRkRX' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z5xPx23B' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wtC7EXAi' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '2wIyYgK6' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["KLXXgp8o", "EZSRncnS", "NTceZEtc"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'QJe9Avwc' \
    --limit '26' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'V2reNUPh' \
    --namespace $AB_NAMESPACE \
    --userId 'He8FI5qV' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "xVRcgzoM", "customAttributes": {"pKqLQova": {}, "OOVJRan1": {}, "tZ19JhCP": {}}, "groupDescription": "L4wIzBI4", "groupIcon": "C9nuvwoK", "groupMaxMember": 36, "groupName": "AoYR3Od4", "groupRegion": "Jh0Ir0uw", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "J4Xe6h0z", "ruleCriteria": "MINIMUM", "ruleValue": 0.9930628337068977}, {"ruleAttribute": "yFEwfIsZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.8796591177944966}, {"ruleAttribute": "UyhNLv3s", "ruleCriteria": "MAXIMUM", "ruleValue": 0.35651158703815955}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "KpqgmHDf", "ruleCriteria": "EQUAL", "ruleValue": 0.48835727146881946}, {"ruleAttribute": "CbtBy8w6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7165085724867958}, {"ruleAttribute": "JkzWbWbi", "ruleCriteria": "MINIMUM", "ruleValue": 0.43354788194362504}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "L18Ho4ks", "ruleCriteria": "MINIMUM", "ruleValue": 0.6943987340093258}, {"ruleAttribute": "GLha2JkN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2943372076549343}, {"ruleAttribute": "hRUKthzs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.15158590778791503}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["lfBmng6M", "C69qsue7", "dF50a7ir"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'ZsfZ0VIn' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "KQamSsjo", "groupIcon": "b9MeTh74", "groupName": "ejxqgkoM", "groupRegion": "1saGIhaq", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'jdaHsY9x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'x6LP7TlT' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "DWA0O9RH", "groupIcon": "HAnAps9L", "groupName": "ilMij6Tk", "groupRegion": "fIRr0gUB", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'v7RIEL77' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"VoI8Zy1U": {}, "3hak2cCJ": {}, "UT3BLAcM": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'YXNzeCBY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'W3BiLxAF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'iE4AzEC4' \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'RuDM1nAN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'VzFlj6VJ' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'H5kOyQ60' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'VL99vvI2' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"QSURdEJ0": {}, "bNLlFh5S": {}, "6HmuwD3R": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'HVArjQrn' \
    --groupId 'k2E1v1Hi' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "udY3dFwc", "ruleCriteria": "MINIMUM", "ruleValue": 0.5727517709307538}, {"ruleAttribute": "1h53psZp", "ruleCriteria": "MINIMUM", "ruleValue": 0.3247655350170481}, {"ruleAttribute": "a9JLsSyl", "ruleCriteria": "MINIMUM", "ruleValue": 0.48938879204484154}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'Dx1Ajjcr' \
    --groupId 'B43eWif2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'A4Bp7Kut' \
    --memberRoleId 'jgTJUTrX' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "JyfFnh4g"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'B7ahtdus' \
    --memberRoleId 'E7pomyDG' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "sz7QFE8j"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'BEyQotaO' \
    --namespace $AB_NAMESPACE \
    --userId 'AE0i7Pct' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'YfK1TyaD' \
    --namespace $AB_NAMESPACE \
    --userId 'oOgzzNzZ' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'cGd9Nvy7' \
    --namespace $AB_NAMESPACE \
    --userId 'CtTFzLbS' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'TaRDlq7f' \
    --namespace $AB_NAMESPACE \
    --userId 'd3XXUrLq' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'nj3BVlSF' \
    --namespace $AB_NAMESPACE \
    --userId 'jHDQk0UK' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '19SIgw37' \
    --namespace $AB_NAMESPACE \
    --userId 'irLWQIjc' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE