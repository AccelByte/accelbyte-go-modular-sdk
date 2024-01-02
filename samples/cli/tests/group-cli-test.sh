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
    --limit '15' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "NoDcAYeA", "description": "jU6pw5QN", "globalRules": [{"allowedAction": "XErLi6X6", "ruleDetail": [{"ruleAttribute": "aHZhHbkj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.888571455778946}, {"ruleAttribute": "PD3Clnz7", "ruleCriteria": "MINIMUM", "ruleValue": 0.6796754875150838}, {"ruleAttribute": "gbIdtklK", "ruleCriteria": "EQUAL", "ruleValue": 0.2436447426790449}]}, {"allowedAction": "t4Py9gCx", "ruleDetail": [{"ruleAttribute": "Hqgd9qCE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8761070178885114}, {"ruleAttribute": "7poKt4lH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9616613119132794}, {"ruleAttribute": "5sWCfzpB", "ruleCriteria": "MINIMUM", "ruleValue": 0.8171004061708049}]}, {"allowedAction": "w5RB4Ejp", "ruleDetail": [{"ruleAttribute": "jKThg8nF", "ruleCriteria": "EQUAL", "ruleValue": 0.8597055012199505}, {"ruleAttribute": "xQLvF8Pu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.121773452780363}, {"ruleAttribute": "RvwGgz5p", "ruleCriteria": "MINIMUM", "ruleValue": 0.4059098606755005}]}], "groupAdminRoleId": "R6Xs6VFj", "groupMaxMember": 13, "groupMemberRoleId": "bdJRIJCn", "name": "vV1XLmav"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'dHtw3tqj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'wAiSDJ5l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'pTR3JADN' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ew10L7s0", "groupMaxMember": 2, "name": "nDmiXJb7"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'B5D4YJSj' \
    --configurationCode 'B2ORg4qf' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "B1PzS3vi", "ruleCriteria": "MINIMUM", "ruleValue": 0.5316237748636843}, {"ruleAttribute": "8XOaABHx", "ruleCriteria": "EQUAL", "ruleValue": 0.772341848505985}, {"ruleAttribute": "8km6Mdl0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.960036991996282}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'y95LBfkA' \
    --configurationCode 'OnKbWzej' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'yyyEj980' \
    --groupName 'kuekhiIn' \
    --groupRegion '48wwTpmD' \
    --limit '61' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'CLi0Oyd0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'rXEMF13D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '6d61VFl1' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '99' \
    --order 'yDPrzPPA' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "FDu3bob0", "memberRolePermissions": [{"action": 80, "resourceName": "pUSzMJdm"}, {"action": 33, "resourceName": "zq3TXhNY"}, {"action": 58, "resourceName": "TYExGaKv"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'YxEurkby' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '1qyLNyLE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'QLTr4czY' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "fOXFVL6v"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'cAYzy9pH' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 60, "resourceName": "rmSk4Nik"}, {"action": 84, "resourceName": "8c0Jxn85"}, {"action": 6, "resourceName": "SSxLhhZp"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'bImvRq32' \
    --groupRegion 'Q22LtsKl' \
    --limit '10' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "4caVpxYb", "customAttributes": {"yGHsIC1m": {}, "AvTBYFfq": {}, "XZwcnLY1": {}}, "groupDescription": "juUkt6q2", "groupIcon": "8Fm925s9", "groupMaxMember": 94, "groupName": "zvtQe5Xf", "groupRegion": "yTAb2D1w", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "oUzfCxbG", "ruleDetail": [{"ruleAttribute": "dbdhriZn", "ruleCriteria": "MINIMUM", "ruleValue": 0.357084208687512}, {"ruleAttribute": "Qv4sTgz2", "ruleCriteria": "MINIMUM", "ruleValue": 0.9750928107774145}, {"ruleAttribute": "CNDOlQMv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5748037414165272}]}, {"allowedAction": "PgBbP77h", "ruleDetail": [{"ruleAttribute": "hNhSkOE6", "ruleCriteria": "MINIMUM", "ruleValue": 0.7447784599766926}, {"ruleAttribute": "TkB0jhoE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8401041820974455}, {"ruleAttribute": "CCYJQhZn", "ruleCriteria": "MINIMUM", "ruleValue": 0.4625021736044387}]}, {"allowedAction": "EwHHdJ4P", "ruleDetail": [{"ruleAttribute": "hgxThZFj", "ruleCriteria": "EQUAL", "ruleValue": 0.3468613070059222}, {"ruleAttribute": "QSOSlOej", "ruleCriteria": "MINIMUM", "ruleValue": 0.6590459855653913}, {"ruleAttribute": "HZ7RGCI5", "ruleCriteria": "EQUAL", "ruleValue": 0.7217133396614732}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'raEqr23i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '982MZgbP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "c9XPbEfR", "groupIcon": "rZLbbmHC", "groupName": "tyhVOSrQ", "groupRegion": "2FWuHDqm", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'x8W96ubi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '2s2Wpe4a' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "uoc1mx5q", "groupIcon": "BFNyCJJs", "groupName": "VN2AvvQO", "groupRegion": "SKVYg1dT", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'fJF8z8fv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"MOy0AlaN": {}, "jAx8FFOe": {}, "thwhdmpS": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'baGvEpVZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'kYbwEwyz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'ZOE17MAR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'vsFsbQIc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'lScm1sJv' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '3HNmVTnq' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '77' \
    --order 'cR7aH5Vz' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'IuEGJ9cG' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"5W8tFr3O": {}, "lKZmw8pJ": {}, "RM0Hchm7": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'mLX90dQV' \
    --groupId 'tAiPb3tV' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "TwPVKncL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.786709394198167}, {"ruleAttribute": "Cb96WejA", "ruleCriteria": "MINIMUM", "ruleValue": 0.8087033167672835}, {"ruleAttribute": "GYz9urza", "ruleCriteria": "MAXIMUM", "ruleValue": 0.32491974078133334}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'udTkN1pR' \
    --groupId 'ZSj67KHF' \
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
    --limit '75' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'htGVLrms' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "HWGIE9CF"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId '2FTeRQuB' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "DYXfPlHy"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fPcREgle' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Av4Zpq7r' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'L3keYpNY' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'd7UaeSPZ' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FrMRepSf' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["ERT7t05E", "QzJ7wMIN", "7sipuMkx"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'g5z5LNwB' \
    --limit '7' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'I3Dpw6Fw' \
    --namespace $AB_NAMESPACE \
    --userId 'fOjuob5E' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "XDCeFxot", "customAttributes": {"awvUFSc3": {}, "LJDLyaMI": {}, "wL3KgA8V": {}}, "groupDescription": "pLL1cM7P", "groupIcon": "1iz2bVkU", "groupMaxMember": 52, "groupName": "WIEIPMfH", "groupRegion": "VAujXZCd", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "gJd8c8BP", "ruleDetail": [{"ruleAttribute": "TfrZRwKD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18955639663172508}, {"ruleAttribute": "KIjRbJhA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.706650203989057}, {"ruleAttribute": "t0ImLBr0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6969165815190934}]}, {"allowedAction": "A7LUsMOD", "ruleDetail": [{"ruleAttribute": "MabzDsmR", "ruleCriteria": "EQUAL", "ruleValue": 0.7580484560514102}, {"ruleAttribute": "PFJxlicI", "ruleCriteria": "EQUAL", "ruleValue": 0.5964763949626924}, {"ruleAttribute": "qCJg9zOr", "ruleCriteria": "MINIMUM", "ruleValue": 0.8035654121975364}]}, {"allowedAction": "teGYlRf4", "ruleDetail": [{"ruleAttribute": "BhajzQFK", "ruleCriteria": "EQUAL", "ruleValue": 0.3215959982715325}, {"ruleAttribute": "L6X4Vfas", "ruleCriteria": "EQUAL", "ruleValue": 0.8360810279301049}, {"ruleAttribute": "2mV1k1Xa", "ruleCriteria": "MINIMUM", "ruleValue": 0.03484304864433785}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["9BcuWFO6", "TnnsJzEX", "rdkHtJh9"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '9uKCxAHn' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "K2xGFxJv", "groupIcon": "O6COpaDq", "groupName": "VtA9Mk6B", "groupRegion": "YTdCruDK", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'is0r2Act' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'PC2Tt1ey' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "4EAfpHB4", "groupIcon": "F3RybC3N", "groupName": "mjObbtbe", "groupRegion": "EkPcM7xs", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'fx66LZl5' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"MeIboMi8": {}, "vfZAgjAH": {}, "Yemhai4r": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '3sN33V2L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'kHbFnkYc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '3wJbQWTx' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'N20eFMwm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'cZmV2BZQ' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'V5CqQJrJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'B9REryQj' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"ntQSNMdc": {}, "u78nGUjk": {}, "HSKUbX94": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'BpsAeyKy' \
    --groupId 'dJ1op4u8' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ysiiba0O", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18487883808719352}, {"ruleAttribute": "1fhTzXAz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.23196347178329213}, {"ruleAttribute": "gwrpnCSt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24389799548187796}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'CDXJDBQh' \
    --groupId 'O3aR8j3f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'Yrb70ifF' \
    --memberRoleId 'wk812UrJ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "nrtA4iN1"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'v03use18' \
    --memberRoleId '2mLndBEf' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "VHqpMKlm"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'CYjb0GwV' \
    --namespace $AB_NAMESPACE \
    --userId 'Orhbv4YK' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'i3C70pNU' \
    --namespace $AB_NAMESPACE \
    --userId 'OsZTxTp1' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'M1FYEdRz' \
    --namespace $AB_NAMESPACE \
    --userId 'HsSFgyTj' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'RHItREtV' \
    --namespace $AB_NAMESPACE \
    --userId 'NgHEMHV6' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'PP3FUCwK' \
    --namespace $AB_NAMESPACE \
    --userId '2jhJvzP1' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'mHlNdmO9' \
    --namespace $AB_NAMESPACE \
    --userId '3EmZr8Mq' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE