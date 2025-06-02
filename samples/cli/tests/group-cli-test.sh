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
    --limit '70' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "AlBM3X2m", "description": "OiGGijzW", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "ZQlCTNSU", "ruleCriteria": "MINIMUM", "ruleValue": 0.4218580582502842}, {"ruleAttribute": "fZwOgsRR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9619809991526258}, {"ruleAttribute": "uG3qQS9A", "ruleCriteria": "MINIMUM", "ruleValue": 0.4596990706248639}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "wpkA0piF", "ruleCriteria": "MINIMUM", "ruleValue": 0.1413960826905979}, {"ruleAttribute": "pqKxmaM9", "ruleCriteria": "MINIMUM", "ruleValue": 0.628354469984016}, {"ruleAttribute": "0aMrhttR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5713562367868212}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "1vTUK45f", "ruleCriteria": "MINIMUM", "ruleValue": 0.20221159563479174}, {"ruleAttribute": "W3S59zPN", "ruleCriteria": "MINIMUM", "ruleValue": 0.518819384208923}, {"ruleAttribute": "EQXhly9I", "ruleCriteria": "EQUAL", "ruleValue": 0.19001650186283592}]}], "groupAdminRoleId": "iXSsX4hm", "groupMaxMember": 52, "groupMemberRoleId": "TpCoqznj", "name": "vAqU5RRH"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'lVDWXvJw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'XbdfR9M8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'NP2fsWs0' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wVAewaxq", "groupMaxMember": 74, "name": "a2KJxsPV"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'xDPCTvba' \
    --configurationCode '4EFk4TDR' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Dblh7SsW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9866821779927959}, {"ruleAttribute": "hmoZqYPz", "ruleCriteria": "EQUAL", "ruleValue": 0.43157866076501183}, {"ruleAttribute": "bg3Yyc4k", "ruleCriteria": "MAXIMUM", "ruleValue": 0.033150581542280344}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'NHHHxFxs' \
    --configurationCode '5NrvMZok' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'k5fwNUfF' \
    --groupName 'y0VBydQN' \
    --groupRegion '2XG24udx' \
    --limit '25' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'z6rkqUfn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'YdXac589' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'AdStQUpa' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '36' \
    --order 'axZcldco' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "cS4Kd2tm", "memberRolePermissions": [{"action": 23, "resourceName": "niquJuze"}, {"action": 37, "resourceName": "K9zBGOBB"}, {"action": 79, "resourceName": "5bKE9vzK"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '7spvEteE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '1HLHnrTk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'E6cXAMl0' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "L2wth1Cs"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '8mjZfKh8' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 94, "resourceName": "26LC39TS"}, {"action": 24, "resourceName": "1FqHsfuQ"}, {"action": 33, "resourceName": "Pp3vS51W"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'nklif6yg' \
    --groupRegion 'NjDa6aJN' \
    --limit '78' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "wqIQ1EBF", "customAttributes": {"LghFj8w4": {}, "pzHyloeC": {}, "cUW1bn6N": {}}, "groupDescription": "LJm3ojTP", "groupIcon": "qZpZV2Qb", "groupMaxMember": 73, "groupName": "pA0iFeeu", "groupRegion": "TisBkRpx", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "7B6BTHnR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9292576464692226}, {"ruleAttribute": "9vnzAFjR", "ruleCriteria": "EQUAL", "ruleValue": 0.0922538535131997}, {"ruleAttribute": "qmxZYzS9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.34422850797791094}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "k15dTZSg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10599835218734532}, {"ruleAttribute": "QxZUBn0b", "ruleCriteria": "EQUAL", "ruleValue": 0.2952900160187435}, {"ruleAttribute": "aGIMvkLB", "ruleCriteria": "MINIMUM", "ruleValue": 0.9997388159759738}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "EezLeIiq", "ruleCriteria": "MINIMUM", "ruleValue": 0.5911877669949043}, {"ruleAttribute": "bNiEuw0X", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1236380669143411}, {"ruleAttribute": "7B1u7bMV", "ruleCriteria": "MINIMUM", "ruleValue": 0.23804256107253463}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'iiv0NQ3K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'uq8rBssM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "GdcKVJ9T", "groupIcon": "EFd31SOE", "groupName": "eGiHouOq", "groupRegion": "Tt64xTtW", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'BY2pZImX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'c5fTCWeU' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "VhgbWmGx", "groupIcon": "N2K7o5Sz", "groupName": "lyBRMQmD", "groupRegion": "uGWlL6mO", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '1uqRmSoe' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"T3TZ5qU1": {}, "xpLFrsWL": {}, "89d0XCjY": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'i27NEKUx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'ezKfS60y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'dAcoA0d1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'bp2ivMzp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'zXjkXkwd' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'mZuKqFXp' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '25' \
    --order 'rH08OLgA' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'azNpcv6n' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Hi7Wn7O3": {}, "J9AgiO7X": {}, "Lg6Zjdy5": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'dxNZrLY5' \
    --groupId 'gL6ZyOxf' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Cf1W9ZYN", "ruleCriteria": "EQUAL", "ruleValue": 0.005533479470810843}, {"ruleAttribute": "oN44vcnd", "ruleCriteria": "MINIMUM", "ruleValue": 0.01367443430959192}, {"ruleAttribute": "ADNFDLoQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.709793338705609}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'Pr4oIYTS' \
    --groupId 'w6ndNpGe' \
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
    --limit '0' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'UoasBXxV' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "VzxA6yU6"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId '9GDUQQaT' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "nWGUlGVN"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ho24WcZ2' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5qaKVdHW' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'L5tWlICs' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DCmG7oz7' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PJkAD6B6' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["HN86eWo0", "pxc0oVhB", "ai7nKzr6"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'fNTaKsbE' \
    --limit '58' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'YXFXqpzC' \
    --namespace $AB_NAMESPACE \
    --userId 'MCi2hamA' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "EGNPKYXj", "customAttributes": {"y8H67VrJ": {}, "Gzxn2jVd": {}, "0zBik6hx": {}}, "groupDescription": "mpGLTAEw", "groupIcon": "izoaVi6W", "groupMaxMember": 77, "groupName": "ZBDNJXUM", "groupRegion": "bpOHXbyC", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "2z5IQ7RT", "ruleCriteria": "MINIMUM", "ruleValue": 0.17760543988212507}, {"ruleAttribute": "g40Nmr5q", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2719320600567068}, {"ruleAttribute": "5hj6OT0Q", "ruleCriteria": "MINIMUM", "ruleValue": 0.2688577636417119}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "2UriHRAS", "ruleCriteria": "MINIMUM", "ruleValue": 0.6836257669031429}, {"ruleAttribute": "Ay1zZrib", "ruleCriteria": "MAXIMUM", "ruleValue": 0.22724874714171095}, {"ruleAttribute": "hCKOKCyg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5299920394277294}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "HAMd5cZd", "ruleCriteria": "EQUAL", "ruleValue": 0.14724232605892307}, {"ruleAttribute": "LZrGpEaQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.829473280616255}, {"ruleAttribute": "kjzmo98f", "ruleCriteria": "MINIMUM", "ruleValue": 0.9015686066814624}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["SVZVYyAS", "AMLR55A9", "vEgkGWLy"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'rUksIeaX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Lbx7iwXL", "groupIcon": "QUEfuWVM", "groupName": "C4R4k1PD", "groupRegion": "PtMzvZ3I", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'SMp8uggf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'bIPtY7J7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "B0qd6q1E", "groupIcon": "5sIC9fbX", "groupName": "FSQbqhfP", "groupRegion": "8CNwF9UE", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '6AJCv8iv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"XVEdIZO8": {}, "M2RfdFKN": {}, "P8TI1zN1": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'nNbeTE7D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'sQldOxGH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'YVS1Inmf' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'fVioN46n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'bXeSlzdQ' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'B7M6Tjwm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '6etsixtH' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"JU2TBUMy": {}, "ewfh1Hkc": {}, "sXl7lu7B": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'wcGWvwVU' \
    --groupId 'J2mVXy4L' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "rGxYSagB", "ruleCriteria": "EQUAL", "ruleValue": 0.3762922795154938}, {"ruleAttribute": "HRbSdYaU", "ruleCriteria": "EQUAL", "ruleValue": 0.6539546694546567}, {"ruleAttribute": "saO1DBlv", "ruleCriteria": "EQUAL", "ruleValue": 0.6003613564937997}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'yejHl0kA' \
    --groupId 'Luqett8p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'kcPu21Rl' \
    --memberRoleId 'VIbDupl3' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "zl0JRR15"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'o4cUjKnZ' \
    --memberRoleId 'Dk55YO9q' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "CNsfu3WZ"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'U5ah1jgm' \
    --namespace $AB_NAMESPACE \
    --userId 'MigXnAdH' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'NuQg1IVN' \
    --namespace $AB_NAMESPACE \
    --userId 'dtKO3OC3' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'grK8pLWR' \
    --namespace $AB_NAMESPACE \
    --userId '06hlL73V' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '22p6duNI' \
    --namespace $AB_NAMESPACE \
    --userId 'WGV5Wr8g' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'HrpdC0Iq' \
    --namespace $AB_NAMESPACE \
    --userId 'S36fq4ZK' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'DhfTpUhV' \
    --namespace $AB_NAMESPACE \
    --userId 'e80l9Ebe' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE