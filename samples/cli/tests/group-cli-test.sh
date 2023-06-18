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
    --limit '67' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "mBeXOcQrA8bSBsue", "description": "WgOSbaV1WuPGqurZ", "globalRules": [{"allowedAction": "dhdmZDZK1xOK4bg8", "ruleDetail": [{"ruleAttribute": "zab7L1xSrdUB4O2W", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6150857228090573}, {"ruleAttribute": "eUhb25ucXl5x1dKV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9956592268582368}, {"ruleAttribute": "917Wo9JFSQbFyrAP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6327223926441863}]}, {"allowedAction": "Hi96Qt4rDP8vHWeU", "ruleDetail": [{"ruleAttribute": "ElzODdiEW6HVaJMw", "ruleCriteria": "MINIMUM", "ruleValue": 0.9812881018973104}, {"ruleAttribute": "yLkHeSyb6nE1kOW0", "ruleCriteria": "MINIMUM", "ruleValue": 0.6085491262789217}, {"ruleAttribute": "GPBogF1oetptRwFQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.333295868205041}]}, {"allowedAction": "kn15cz5Byp1Sq93Q", "ruleDetail": [{"ruleAttribute": "TylSsMfRINmQUiHh", "ruleCriteria": "MINIMUM", "ruleValue": 0.1899953480516562}, {"ruleAttribute": "d78wQazuDGziRBi2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.05774753427167145}, {"ruleAttribute": "PUAGEDstn5Dd8rJb", "ruleCriteria": "MINIMUM", "ruleValue": 0.3119023694761225}]}], "groupAdminRoleId": "7weZQisqt5IToo0p", "groupMaxMember": 66, "groupMemberRoleId": "4AwKSs662sqMKXwp", "name": "cqlQF423JG6upw1K"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'rEgsZNovVbznsrCq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'AwrhBEoHfjG5U9TN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'kGgH6zRkqN1bi6eK' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zcUMuZyF704xjolG", "groupMaxMember": 29, "name": "CYxw3lu0krZkfEr9"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'TWd5Yyfjh7fAwytr' \
    --configurationCode 'oFGXLYHTX4kIh6cd' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "kQ3BbAKDr2XkXnV7", "ruleCriteria": "MINIMUM", "ruleValue": 0.6399364727014438}, {"ruleAttribute": "ispeLocT14fof1fV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8788703967686805}, {"ruleAttribute": "0dPL3sWcwNT6AUTv", "ruleCriteria": "MINIMUM", "ruleValue": 0.5835283602960684}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'aww3wQA1MYaQLp80' \
    --configurationCode '7RxWmm9iIadoFKkn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'D2VU3wNrk8cCyjpa' \
    --groupName '8dn0uPl4IG2HMOqi' \
    --groupRegion 'qPou7bGceuuchinr' \
    --limit '6' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '7qz2pQmQjBmjz5me' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'BUlSW7zdEZcI5qvO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'wQgnEjxwI4raJQnL' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '43' \
    --order 'k65JqEl0CK2Yq3Po' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "MTlH0m8nSGxRU5Ju", "memberRolePermissions": [{"action": 33, "resourceName": "Lv1KCLZU5aZEbszD"}, {"action": 9, "resourceName": "f0M5O5R0gfNeVFi3"}, {"action": 19, "resourceName": "zovXvwy54hEP3NIW"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 't7kw2NdzcdPYFJeX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'Qov4Ld80kaCVzRfA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'JTQ5wQubmrWwCPKE' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "9mbOUZX9b6kC3k3W"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'nwmPEQzPtaq9yMfP' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 66, "resourceName": "oTnJUkoyzUapXhz7"}, {"action": 8, "resourceName": "2WnuqDS6KNAgopU1"}, {"action": 46, "resourceName": "SD9LiBqxDva07wjp"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'wGJJqtD9Y0SqHXwE' \
    --groupRegion 'l9pEwo50ZrbL1OwX' \
    --limit '62' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "GOkhJN9P0SXsSU2O", "customAttributes": {"jvlfirpGGvdMEVtl": {}, "im0ufRkVv2MTs9eT": {}, "NiGH7UXkSIO9Ej2t": {}}, "groupDescription": "xmo8V7pQ4mNViqEt", "groupIcon": "9jTGXle5oCjB7wEp", "groupMaxMember": 78, "groupName": "AhFQpuxnOPYXSboD", "groupRegion": "t2YNSbuPsKes8yUk", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "w0sY3pZXy5ddAPic", "ruleDetail": [{"ruleAttribute": "kZLdIJKCkX8Ivcpk", "ruleCriteria": "MINIMUM", "ruleValue": 0.5638913988363908}, {"ruleAttribute": "Sz951xXS4XV61txG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9530635744826996}, {"ruleAttribute": "0AyDNYmUjQybWkZU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.01762769606464676}]}, {"allowedAction": "pxmQ9nIaf7x5PrXi", "ruleDetail": [{"ruleAttribute": "eGyj4XhwXkfPZY4L", "ruleCriteria": "MINIMUM", "ruleValue": 0.36855391079815336}, {"ruleAttribute": "WWIUUuwtfHJgwk10", "ruleCriteria": "MINIMUM", "ruleValue": 0.0818638767013814}, {"ruleAttribute": "95482Lhn4qixPr1u", "ruleCriteria": "MAXIMUM", "ruleValue": 0.29867979431631897}]}, {"allowedAction": "32ZI6F5W74i46L8M", "ruleDetail": [{"ruleAttribute": "MbhmBXfe32lO34Wi", "ruleCriteria": "MINIMUM", "ruleValue": 0.5447822654987869}, {"ruleAttribute": "O5FKFVh4Cf2j9F6N", "ruleCriteria": "MINIMUM", "ruleValue": 0.9128611283216667}, {"ruleAttribute": "UiLPbQFlEplV7WDh", "ruleCriteria": "MINIMUM", "ruleValue": 0.1310446137804664}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'pCVmXTe8beJCl2ca' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '4PBQqsUyrBTOOanZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "QFhf8ZRhVF8v4gQn", "groupIcon": "FW5L0cy6HmVbkE52", "groupName": "t0nua4l2jo2IjT7P", "groupRegion": "64yPVghLGZT33zxz", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'MWA06uebBt1XJq7p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '3RPKB2A5FsB9vL93' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "KaVHtFGM0TOGe9mI", "groupIcon": "Qvk4hHsdUcPMRhU4", "groupName": "t6FzA2D045a4lgF8", "groupRegion": "iajKRVfcuDbvJPnc", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'ekyiWb1bkMeudCng' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"kXElugbYZhS2NVTh": {}, "mKbC0UwVvSMtJvn5": {}, "TesIzPYOziWJhuTA": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'eNXHd3LnTCkKIPgs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'M733n9BpfpKvM0l4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'zDNoida5fOa5LwQb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'gerjz0IZqC4TkPa9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '7l1Q0ul9MWC0Am8B' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'lgV4ZyfrB38sMKUf' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '2' \
    --order 'dHO6qn1QueqehOAq' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '1FmlWA9qsg9KjrVa' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"kTKXSAN337DYTIK6": {}, "VIqOMpBJggDXtX0n": {}, "gQn2EDJZfveW4tjy": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'DGb4GLTcB68lgmVD' \
    --groupId 'lSRCYKAM6Ivogzdk' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "GSBRTc1saOHc7f1u", "ruleCriteria": "MINIMUM", "ruleValue": 0.5255778570317452}, {"ruleAttribute": "52D41IwdEFAGubs1", "ruleCriteria": "MINIMUM", "ruleValue": 0.38080043952227627}, {"ruleAttribute": "zVXif3vvIQETD2Ru", "ruleCriteria": "MINIMUM", "ruleValue": 0.15326456160390822}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'DeOIuMENJ9ACG2Jc' \
    --groupId 'gxRm80kT7a5UWvIE' \
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
    --limit '18' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'naKmL7M6ZkxP6P4B' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "fgDuFdYsupcWm4EC"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'c4ThLPUTV2UvUxnu' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "X9beKGj63QF9esVg"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'AbopEcSyDDRRXf5v' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'H18TRqSt8wJ979ZE' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '756twnPm88PAGph0' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FA4bPCPlKHXDdY6y' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'b81MJGNqlfmtYmZ8' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["wzWf9DO2I4uJoRuS", "BQZTGeNgfLuxOl50", "LR3buVT4od2ncvAl"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'pHcONW7ultzOcot4' \
    --limit '54' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '7m89TjkmgC0Nylrc' \
    --namespace $AB_NAMESPACE \
    --userId 'sTa0h0JgZEmaGKRD' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "peZA5qflyxBOz6q2", "customAttributes": {"lEyADnUZhKUQ7mR0": {}, "uVRy1Z44KclnnWkJ": {}, "rmAMsjfPU1VFnuw4": {}}, "groupDescription": "24BQjMRTDQJmsceL", "groupIcon": "B3oRt8mXXk4il4zp", "groupMaxMember": 34, "groupName": "oWPa8bbTF1xmHP0e", "groupRegion": "a2RYvrNeWq61GgrB", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "7sRnxqFu25fTeSMB", "ruleDetail": [{"ruleAttribute": "YtZJT4U0eymu1N6U", "ruleCriteria": "EQUAL", "ruleValue": 0.9911902115964816}, {"ruleAttribute": "VNcTfxcQZOtYXvct", "ruleCriteria": "EQUAL", "ruleValue": 0.01917563168590275}, {"ruleAttribute": "VJudksacMvzC64c6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.786076716273906}]}, {"allowedAction": "cvrjp0mI5AJwfrFO", "ruleDetail": [{"ruleAttribute": "qd9lNB4V1brPN85Z", "ruleCriteria": "MAXIMUM", "ruleValue": 0.810171165061648}, {"ruleAttribute": "76s5FCu9ObVdejnO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8375946991569635}, {"ruleAttribute": "rdsQaA6CeKqSHzso", "ruleCriteria": "EQUAL", "ruleValue": 0.8767238451831222}]}, {"allowedAction": "B3cJfYdjO5hUjS8l", "ruleDetail": [{"ruleAttribute": "ps0W7WMLClE6wIKt", "ruleCriteria": "MINIMUM", "ruleValue": 0.3587800694841533}, {"ruleAttribute": "Yn4LFHQPleCyAu5E", "ruleCriteria": "EQUAL", "ruleValue": 0.47117396732510064}, {"ruleAttribute": "kGgCl8MjzrPKx1Za", "ruleCriteria": "EQUAL", "ruleValue": 0.17928997284611636}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["eBq5DuKTR3Ktsq54", "09JoLPUhXtbLzxUp", "5z2204j0Ims4bD5z"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '80WWnBbhS01McpaZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "dcy8Hr6WqOWbhEgo", "groupIcon": "WAZNcII2QpLnWoNP", "groupName": "mbFLD4kxYMYCwSJT", "groupRegion": "ylkz51MxqHcCM0mn", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'g9T9tCMGcuVFGo8R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '2gxuDSbO7yqXQk22' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "PGsWziTsBTaVmAIs", "groupIcon": "fHFf442fGiztptG6", "groupName": "A4jAEGRIiiE02kuL", "groupRegion": "jq3XvxYUiMZDG0RR", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'lDzAQQM8MFMFdGBP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"PPpnVttwUyyroBTT": {}, "JieeDU8yDc6tsfhV": {}, "Ko3JjD0vU9uGyNDY": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'N5Gor2iYvcLfeWQY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'SK9XeBH7CBc2hn3k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'YZ9iOP10RBR3G28F' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'aA5I8QL5n0F7bpD3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'dajwkP6qH0QVjnBS' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'b03wPa6K7h4iOxM6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'gbNor34tjGLrU06I' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"o2nM0EvbNX1OuXK1": {}, "tOShay5q7BQTX4O5": {}, "zHCdX3DcLfGWPoZO": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'xKNMtTCppBmWp1JP' \
    --groupId 'TSiKaOKIg7LHYLh6' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ptKIsc9volwBwlts", "ruleCriteria": "MAXIMUM", "ruleValue": 0.27650506296510835}, {"ruleAttribute": "wWO8RrqKZpAOfcPs", "ruleCriteria": "EQUAL", "ruleValue": 0.9394389696897664}, {"ruleAttribute": "f5lct7duaOuzaCZG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4138013099451867}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'Ub1Xt00esp8JAf3s' \
    --groupId 'ri77LTncNRFzn5fC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'IaHaEHSDtuV3lkjF' \
    --memberRoleId 'KcFNjz9u9u46pdcL' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "DDG40nAjjHcWKuRn"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId '5PsIS7SX8XFivhDT' \
    --memberRoleId 'fZzoHGx8S5AxU9CL' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "AHY7W5hX8f6dMOlm"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId '79fJEiFHQ6yQsjP5' \
    --namespace $AB_NAMESPACE \
    --userId 'KaXiFlQR9cmkqjzM' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'GFvOC5aZZfYxAmXC' \
    --namespace $AB_NAMESPACE \
    --userId '5BA3jEecTXJtDc3c' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'YUTdyOoNJ9Hbxa42' \
    --namespace $AB_NAMESPACE \
    --userId 'covkn3UbxdCS4jwV' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'zg8Lw9OfavESaYj7' \
    --namespace $AB_NAMESPACE \
    --userId 'fzT7P6tVKthUUz10' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'ekyWHKUxorCOOE8A' \
    --namespace $AB_NAMESPACE \
    --userId 'zShMsZtnRjtjs02t' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'GnWE4nab4ur3hdse' \
    --namespace $AB_NAMESPACE \
    --userId 'nXYDIpbTPzhFZiKo' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE