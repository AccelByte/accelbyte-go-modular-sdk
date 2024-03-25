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
    --limit '43' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "bBXm6Wr7", "description": "D72jzc9L", "globalRules": [{"allowedAction": "ukVfYsg1", "ruleDetail": [{"ruleAttribute": "CLvSvX0M", "ruleCriteria": "MINIMUM", "ruleValue": 0.055975268621406005}, {"ruleAttribute": "HxhgsXUb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4975410732078679}, {"ruleAttribute": "9AgbGj70", "ruleCriteria": "MINIMUM", "ruleValue": 0.08507472989689313}]}, {"allowedAction": "YwvApSM9", "ruleDetail": [{"ruleAttribute": "ZaHGzoaY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8170325869167886}, {"ruleAttribute": "mVoIwu3t", "ruleCriteria": "EQUAL", "ruleValue": 0.31633998311124034}, {"ruleAttribute": "5mVY6leE", "ruleCriteria": "EQUAL", "ruleValue": 0.5312927123814071}]}, {"allowedAction": "C9qg90Ez", "ruleDetail": [{"ruleAttribute": "MqRd6CBV", "ruleCriteria": "MINIMUM", "ruleValue": 0.01517981718050121}, {"ruleAttribute": "inSaYjbq", "ruleCriteria": "EQUAL", "ruleValue": 0.09655611733825065}, {"ruleAttribute": "UM1CUkN3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.44564532614735075}]}], "groupAdminRoleId": "Iji6eU6O", "groupMaxMember": 40, "groupMemberRoleId": "JSsqOiwO", "name": "Gh7m2Kge"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'jXlMwyfY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'bWjnqYil' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'lVtFWN9d' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "PKXCtweu", "groupMaxMember": 2, "name": "h2tMajeO"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '4BzswX0I' \
    --configurationCode 'Sc94tHTL' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Lez8XqxT", "ruleCriteria": "EQUAL", "ruleValue": 0.7645417747778959}, {"ruleAttribute": "v2rRvOkf", "ruleCriteria": "EQUAL", "ruleValue": 0.26367538885567043}, {"ruleAttribute": "SmeFGSxM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.42058857776623704}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'lr2LMqz9' \
    --configurationCode 'BvX5zxJ4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'hNeX4B2N' \
    --groupName 'V7ic2nB7' \
    --groupRegion 'o1aJ1jIa' \
    --limit '37' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'Do4rWUhF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'QYnyfufw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '6XsOM0Ir' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '35' \
    --order 'oBqSMDTM' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "h7lXoYZg", "memberRolePermissions": [{"action": 2, "resourceName": "4JUQRb8e"}, {"action": 8, "resourceName": "Xcb6R64G"}, {"action": 38, "resourceName": "6Gw2X0Dv"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'hJI0BfNu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'zv2DyUMp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '6JJgiPyT' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "dIJub1Xt"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'VQ6rQhnI' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 23, "resourceName": "LGhE4jU6"}, {"action": 30, "resourceName": "87oTaWYz"}, {"action": 31, "resourceName": "Vh8W75m6"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'XNDgpRLp' \
    --groupRegion 'JS0M7eNk' \
    --limit '75' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "0rz9noCp", "customAttributes": {"TdVk9a4j": {}, "OoGWzgCe": {}, "Kr2yDc8n": {}}, "groupDescription": "KdvUdptc", "groupIcon": "fZKUqTAg", "groupMaxMember": 73, "groupName": "Yj53WUrb", "groupRegion": "LWjysoPJ", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "BLPZDJBw", "ruleDetail": [{"ruleAttribute": "SSXuThXh", "ruleCriteria": "MINIMUM", "ruleValue": 0.2495552752291984}, {"ruleAttribute": "c5FeucSY", "ruleCriteria": "MINIMUM", "ruleValue": 0.3819254293551939}, {"ruleAttribute": "SpOWZKkM", "ruleCriteria": "MINIMUM", "ruleValue": 0.2656548381338918}]}, {"allowedAction": "zXIs75OT", "ruleDetail": [{"ruleAttribute": "aSSsUKFB", "ruleCriteria": "MINIMUM", "ruleValue": 0.6466994437792372}, {"ruleAttribute": "TMYDvkh0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6007744706719506}, {"ruleAttribute": "NXcDkmD4", "ruleCriteria": "EQUAL", "ruleValue": 0.49567280076255127}]}, {"allowedAction": "jWn3hAjm", "ruleDetail": [{"ruleAttribute": "x0O0zBOn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4408590378175987}, {"ruleAttribute": "GLx5r4te", "ruleCriteria": "EQUAL", "ruleValue": 0.0985388314287563}, {"ruleAttribute": "UB77YmT5", "ruleCriteria": "EQUAL", "ruleValue": 0.6329926942615698}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '4XYtoIzd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'HPaEhkSV' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "NnG3AVce", "groupIcon": "3wK3yZny", "groupName": "0Cf9Whb0", "groupRegion": "tDFDDIez", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'UG1YbRtY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'e7qJGPUM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "FOlslp65", "groupIcon": "53K2rCG9", "groupName": "6VELB5dy", "groupRegion": "YhOwS4S8", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'Bvb1O3sM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"B3CFzNGH": {}, "zeyDOqXN": {}, "Od5aLZir": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'SEnFHOrR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'cRY3NYMl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'AEOnJbFx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'cvq3uEGW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'HGciOJeu' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'TK4UkFs0' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '37' \
    --order 'MLpTuLOH' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'isgAaRj9' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"qpnNfuVd": {}, "Dzh4UEtc": {}, "KyUkkJY8": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'gNhxxyQs' \
    --groupId 'BImtk8QK' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "eAEGpmCT", "ruleCriteria": "EQUAL", "ruleValue": 0.5645570765931971}, {"ruleAttribute": "rlr6WSDa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47338878950043173}, {"ruleAttribute": "tJVCuYUh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9267251290277838}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'A4KMxjnx' \
    --groupId 'ujfm38Mj' \
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
    --limit '47' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'DSzUmxNu' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "tSfvwDHK"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'gjN6xR6c' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "12W4xGm5"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EnYiTCwq' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Qa7oaEWt' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '9wsIhUFL' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '3bnSbjKp' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vVRuHgDc' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["01dx9bbO", "XNPo7mDG", "6PrZeNpV"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'woxTUVRp' \
    --limit '1' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'zdCEMCUE' \
    --namespace $AB_NAMESPACE \
    --userId 'Dck4XuFq' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "AuCPUi3V", "customAttributes": {"fwRPyJ31": {}, "sL7pVQSX": {}, "A9rWwKzx": {}}, "groupDescription": "9qAlOxyg", "groupIcon": "8NkzoKb8", "groupMaxMember": 63, "groupName": "3XCDefyB", "groupRegion": "broIstaw", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Pm6ow3yG", "ruleDetail": [{"ruleAttribute": "fd996ciB", "ruleCriteria": "EQUAL", "ruleValue": 0.16673311214380893}, {"ruleAttribute": "YP67CHiB", "ruleCriteria": "MINIMUM", "ruleValue": 0.32251908409227625}, {"ruleAttribute": "BHdPYuqE", "ruleCriteria": "EQUAL", "ruleValue": 0.9655109611086305}]}, {"allowedAction": "tOdjVqOf", "ruleDetail": [{"ruleAttribute": "7Rshdub5", "ruleCriteria": "EQUAL", "ruleValue": 0.41527720150553227}, {"ruleAttribute": "MtaZAKZn", "ruleCriteria": "EQUAL", "ruleValue": 0.9447133631835964}, {"ruleAttribute": "sXps8fRi", "ruleCriteria": "EQUAL", "ruleValue": 0.11035337034204551}]}, {"allowedAction": "RUayRAVR", "ruleDetail": [{"ruleAttribute": "sPM8qQOK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.13649265203975403}, {"ruleAttribute": "MlkXkg1Y", "ruleCriteria": "MINIMUM", "ruleValue": 0.25404652230107216}, {"ruleAttribute": "qUwK76Cd", "ruleCriteria": "MINIMUM", "ruleValue": 0.9723147015926761}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["cMCBjyCj", "D1o3Eujp", "EaPwj1o7"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'iAMNJjlH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "RztxmqmZ", "groupIcon": "HFq7Um7H", "groupName": "zcWpUICd", "groupRegion": "Stqfauzd", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'lWKCYdNZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 't5Eu65b7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "2S9EkPEV", "groupIcon": "LQTnkL6w", "groupName": "OrNDr4o2", "groupRegion": "J8gJZ5lV", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'rEBlbYY9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"rffxifHW": {}, "kS1tnD4Z": {}, "cKaFWU0S": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'hnBtb5KH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'eTGkgWR4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'aJ8NwtEH' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'kJqKComK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '1PkUn37i' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'zxmyzMFu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'DWTTAoOP' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Z9fq63dG": {}, "QsczTIsw": {}, "F2RUeY6f": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'H2zmZV9M' \
    --groupId 'cUT5n2dt' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "6VhZfuok", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3471233820079832}, {"ruleAttribute": "Y2zLFC2e", "ruleCriteria": "MINIMUM", "ruleValue": 0.662697041536896}, {"ruleAttribute": "qNPS3699", "ruleCriteria": "MINIMUM", "ruleValue": 0.82227422427116}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'hWafGSqL' \
    --groupId 'RmYAAmBx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'iOy9wPvd' \
    --memberRoleId 'jcVUxkHg' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "T6kqz3lF"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'esNkjRqN' \
    --memberRoleId 'DaWMsikS' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "QYQf1vy1"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'EgWkvmLD' \
    --namespace $AB_NAMESPACE \
    --userId 'HKajhebU' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'ZXSsR61O' \
    --namespace $AB_NAMESPACE \
    --userId 'zQ49ZahT' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'BHahEESn' \
    --namespace $AB_NAMESPACE \
    --userId '5lCDg5jB' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'e3okGzaE' \
    --namespace $AB_NAMESPACE \
    --userId 'XPMJOl6k' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'a84EQR6u' \
    --namespace $AB_NAMESPACE \
    --userId 'Z6oBgWn8' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'fYs9xiWp' \
    --namespace $AB_NAMESPACE \
    --userId 'azOwXm6E' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE