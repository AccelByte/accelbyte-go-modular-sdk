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
echo "1..73"

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
    --limit '57' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "youmn4jME9Ilg3sm", "description": "C1V02EP3UhcpWOdL", "globalRules": [{"allowedAction": "h6HpPhrLkCgEZKwj", "ruleDetail": [{"ruleAttribute": "2UnynMxQlCmO5Ddn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.19824681431756863}, {"ruleAttribute": "pX7M2XIvT3wL8kVS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7428445094835617}, {"ruleAttribute": "tkw2iUnHm7fgnONq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6238730284791023}]}, {"allowedAction": "ibpk5DjbdXeVoCbf", "ruleDetail": [{"ruleAttribute": "mctafRJawNUXTYW8", "ruleCriteria": "MINIMUM", "ruleValue": 0.9578929297333982}, {"ruleAttribute": "YMv4Chy2KR2CEAMW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4623978933604692}, {"ruleAttribute": "8qxhWK7GYYGGm6Nv", "ruleCriteria": "MINIMUM", "ruleValue": 0.648005162652621}]}, {"allowedAction": "kH1ypzuyu4g6Hhn4", "ruleDetail": [{"ruleAttribute": "n24wtZBtYS1u6KP0", "ruleCriteria": "MINIMUM", "ruleValue": 0.09583590502315875}, {"ruleAttribute": "J77I3b1hpi3EBSaH", "ruleCriteria": "MINIMUM", "ruleValue": 0.5612709875598026}, {"ruleAttribute": "ijpAqyhGPPlVgzZx", "ruleCriteria": "MINIMUM", "ruleValue": 0.2273234945746362}]}], "groupAdminRoleId": "4CWX5k9QaoPS8B6t", "groupMaxMember": 11, "groupMemberRoleId": "709JtdX8pDYiyQpY", "name": "C91bU76I9nm5RRps"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '7gxdqZSaoLomc1x0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'lZifIbj9kZX2MO5j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'bpcmEpi7Wbyv1SV5' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "CYcq87vp24iFXn2e", "groupMaxMember": 52, "name": "HGDZYTWsI5CLhXI2"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'gLZvgYcPpFKdQrux' \
    --configurationCode '2NxdRreAPf0Oktgu' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "6vU3YEj4ToUwuCEB", "ruleCriteria": "EQUAL", "ruleValue": 0.20603556913937338}, {"ruleAttribute": "aqzzwE7zWUOt4cqa", "ruleCriteria": "MINIMUM", "ruleValue": 0.15188569063253}, {"ruleAttribute": "8cP78O8vcwkFWbhh", "ruleCriteria": "EQUAL", "ruleValue": 0.6183617382537342}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'y2ZNGsbxE81f2yYo' \
    --configurationCode 'JSwmJB0DEpl7SY9x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'ULE8AyxlUqE1lxaB' \
    --groupName 'DQM1EJuq4y1WyL7e' \
    --groupRegion 'pLkJaRJQQi2vK08G' \
    --limit '100' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '4xILDzbw97vUpXIO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'WdDC1YLnRf3RosKV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '9um3jfOzoayYxSua' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '77' \
    --order '36XiFBvGcmxoZXyf' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Ohr4nVbHlJtJsT3E", "memberRolePermissions": [{"action": 31, "resourceName": "VFDSB3F0BikhwG7d"}, {"action": 9, "resourceName": "Bq3voJDfMHDXIGUX"}, {"action": 25, "resourceName": "Qs97s7IG0zO8DtcJ"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '4OGbuzNUeljqHEEm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '4pcfnGuxOcece0o1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'Q4NPDorEm59kLYGC' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "3mki8DJzGEFpCc6R"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '84kGLj7k0cmTKHcu' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 9, "resourceName": "yNgRhfyDlr2CFxFm"}, {"action": 56, "resourceName": "bzsPEAOOYVq2a6T8"}, {"action": 82, "resourceName": "w18LvWMkKOZuclpL"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'B2hIpRDOrzvT0JPo' \
    --groupRegion 'sV6t6YhPbWTHlnW1' \
    --limit '38' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "RofAIIEPNpLyblr6", "customAttributes": {"UMrECu8IrjU79ybJ": {}, "OS5XPjY0mCBNreoN": {}, "DHJyQhI127l7TDdR": {}}, "groupDescription": "4yd5aQoafSQ5HmKd", "groupIcon": "IZ9b62ID5hh8OUN3", "groupMaxMember": 76, "groupName": "vw1QA2YpHzp0t4qb", "groupRegion": "KqfHi8QaX66CHZO5", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "bJNrQarT5JwkLqDB", "ruleDetail": [{"ruleAttribute": "3xkasfufhsqRwTLA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8214939035831929}, {"ruleAttribute": "rScRdxy7CNGWPZm6", "ruleCriteria": "EQUAL", "ruleValue": 0.9313238658649241}, {"ruleAttribute": "YHS2TL32C0Zjuxzl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06973955421370126}]}, {"allowedAction": "9EVFZwraUpOHanGk", "ruleDetail": [{"ruleAttribute": "sqIv7VIPwMol6vtB", "ruleCriteria": "MINIMUM", "ruleValue": 0.011326525359316775}, {"ruleAttribute": "TOfK9d6RdydMnBrt", "ruleCriteria": "EQUAL", "ruleValue": 0.42658048493117184}, {"ruleAttribute": "uwg5UjXPB6RIUHxX", "ruleCriteria": "EQUAL", "ruleValue": 0.15610294548882897}]}, {"allowedAction": "5UnY0s0Cj7R8dUZ1", "ruleDetail": [{"ruleAttribute": "aOOqW6cCeVhruaFJ", "ruleCriteria": "EQUAL", "ruleValue": 0.054210663770902556}, {"ruleAttribute": "JHjcL8V9CEVTwaBr", "ruleCriteria": "MINIMUM", "ruleValue": 0.27643874989021655}, {"ruleAttribute": "Ez2MLsaQFiAv3G1s", "ruleCriteria": "MAXIMUM", "ruleValue": 0.46463535001138423}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'xHhFZwoTXuPrdKne' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'EzqYYLBRnP5HxsoH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "937ZsPdEFqQp9WnA", "groupIcon": "FbgdVMPI6cwI16hr", "groupName": "xsn0ZeqiL15JaTu7", "groupRegion": "pFN5TrzfxOZwtJmw", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'DhFTSSaXRpo0jlgP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'gyyRw0AhO9kRyIer' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "ptsdI15gfvJ5wPue", "groupIcon": "wEr4hYXkoZfnRW1f", "groupName": "C19K3aM7r0pOyI6P", "groupRegion": "ZCeBJ4Ohk9Z7Qs2m", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'b1TYpxM8cHbV2j2U' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"4ZWfna3b2ydGamfI": {}, "RZKSc6oT41ZRf9hD": {}, "ngWADKVf8nCp1PaK": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'fbKEZlfEsayw8yzc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'XxqOo6akUScBFt27' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'STd6pXC1sXIVTgCD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'AdmZDlvXNI27HbxA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'NmPMLVGdzLZp9OUF' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'eMW2HJEGzjPnJvC1' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '16' \
    --order '2tBLhPwxgoxyyXVx' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'aUnipqanOsLxinjr' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"bZGxfO1lYQXSbx5G": {}, "TLqDKAN2BFDvTqP1": {}, "iZLbLL7xdkfgulah": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'RYriLBOO9zuqxJ57' \
    --groupId 'aB7L9x3rDPGi0Ph8' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "NKQySj3DC0RYJLo4", "ruleCriteria": "MINIMUM", "ruleValue": 0.9742986234845891}, {"ruleAttribute": "5BkRDLx5PYi65T3t", "ruleCriteria": "MINIMUM", "ruleValue": 0.9087451061474122}, {"ruleAttribute": "1GT3LkNc9Y4HTOvE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5420048921513293}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'AcbeT9aY4KNwQfh9' \
    --groupId '5aXNsRqUdxc3DpCf' \
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
    --limit '42' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'DGEWHfAEzsGAufkC' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "orGQu9qT4UaX8rvf"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'disS6vN7yha6cwCV' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "YXX68fKwDBkJk8Ht"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'a524lX9qleWwEmcp' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qXLrFdd32GV5rouC' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gdpmb4x0xvx69SWt' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'j1F3dxTYUpRWTUfu' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IIFdmzWi3UOSlyx7' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["urGtu1PfL4VDguyk", "R2XcObeAd1dBStTO", "GvCWQq8O8fqPpo5H"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'IE9J6DHRl8RCT3MQ' \
    --limit '72' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "DfwarpXYjfom4jQt", "customAttributes": {"sKG3cKYdIFf0ePCH": {}, "zbPrnrg6rDkNqGl2": {}, "ajnpPCHwBuwLqk4U": {}}, "groupDescription": "Y7I6px58xNWV3fdi", "groupIcon": "IxiPvTdpMobFnLR6", "groupMaxMember": 60, "groupName": "rkJyQ6TFWdR533yr", "groupRegion": "ZqFlykWd0PlCoxEo", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "wbiXnB3GMocJUVvm", "ruleDetail": [{"ruleAttribute": "5AjeDnoIV60ouoP2", "ruleCriteria": "EQUAL", "ruleValue": 0.019701127407883767}, {"ruleAttribute": "FoHWQ88copQR0qXn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6743085188798049}, {"ruleAttribute": "2FHI0H37mOMJQXMM", "ruleCriteria": "MINIMUM", "ruleValue": 0.6849399970936446}]}, {"allowedAction": "c0ZBDKg7yyvuIaVw", "ruleDetail": [{"ruleAttribute": "iloNf6dWgkkuiQE3", "ruleCriteria": "EQUAL", "ruleValue": 0.13145032280958158}, {"ruleAttribute": "6uVI0EtrPst9ZfNz", "ruleCriteria": "MINIMUM", "ruleValue": 0.3185891649025745}, {"ruleAttribute": "icR8mR8vUOTTGpdr", "ruleCriteria": "EQUAL", "ruleValue": 0.2089848329770203}]}, {"allowedAction": "US4ifzIwzyY86Zjy", "ruleDetail": [{"ruleAttribute": "lnRTPIlU1oBPUR5i", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09802850400553553}, {"ruleAttribute": "czTGyRRegpYFjiMq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8007120700164096}, {"ruleAttribute": "am3yWgORVTA9QgRO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9802079430002054}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 48 'CreateNewGroupPublicV2' test.out

#- 49 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["91ow3ISOlQGVtmu3", "IKRWcQcJMS7Mu1N0", "QiUIGmHvlEAkP3k4"]}' \
    > test.out 2>&1
eval_tap $? 49 'GetListGroupByIDsV2' test.out

#- 50 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'Ctv031ey0eUThcoX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "dNIsUUprh0KhoJwq", "groupIcon": "ffZ1CpbMZg7bw4Wi", "groupName": "VjfjaAGeCP40QoUR", "groupRegion": "Ab8u4hxsAs49mk4y", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdatePutSingleGroupPublicV2' test.out

#- 51 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'NKANIBAF0bzgESdH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteGroupPublicV2' test.out

#- 52 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '0qxYdaGaQqk5Ywm5' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "c9VDzOvpToVqPfTM", "groupIcon": "MpJLWc9WT7Vhdr80", "groupName": "JfwNCmsiDfharpFD", "groupRegion": "cwomR0LluqTZXaD5", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdatePatchSingleGroupPublicV2' test.out

#- 53 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'KKbesnGu4s4nOMgg' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"voYnK8gniG5cgndR": {}, "FpMGVSV7f7biGTmO": {}, "GEYBzPqSU8XvQRNH": {}}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateGroupCustomAttributesPublicV2' test.out

#- 54 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'sgElBLgkheuqAksU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AcceptGroupInvitationPublicV2' test.out

#- 55 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'dgfGLQTRo2Fmv6GQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'RejectGroupInvitationPublicV2' test.out

#- 56 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'BRRoj9w8BlFCM00d' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 56 'GetGroupInviteRequestPublicV2' test.out

#- 57 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'mpJU8twtyw851fQV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'JoinGroupV2' test.out

#- 58 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'J048p5VYiSCZkctV' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 58 'GetGroupJoinRequestPublicV2' test.out

#- 59 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '3JPO6ux8jJlHMci0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'LeaveGroupPublicV2' test.out

#- 60 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'ntJrcrQsKvgtHOxy' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"MJaNv9uqiVTbcW8m": {}, "UK6qiroBsYdOpU0Q": {}, "RPHhVX8ZDQR07Xj5": {}}}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupCustomRulePublicV2' test.out

#- 61 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'MFdliDiIlLilgWQ1' \
    --groupId 'c880NRgDAJFwRi2e' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Q63SUV2VYfJeijLf", "ruleCriteria": "EQUAL", "ruleValue": 0.7221106248006275}, {"ruleAttribute": "q2Uw8mjGrWtYEu1k", "ruleCriteria": "MINIMUM", "ruleValue": 0.2504290984015787}, {"ruleAttribute": "yzuxLJ1mIaGJHY3T", "ruleCriteria": "MINIMUM", "ruleValue": 0.29246190521803417}]}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupPredefinedRulePublicV2' test.out

#- 62 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'uO47teN3AIQnXprX' \
    --groupId 'Q3H6PFZcs5M5ejap' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGroupPredefinedRulePublicV2' test.out

#- 63 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 63 'GetMemberRolesListPublicV2' test.out

#- 64 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'e2zipyqWlTX57lCs' \
    --memberRoleId 'fhFhtvNGKAOdhfaE' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "IiDGWuFZyrMRrzqY"}' \
    > test.out 2>&1
eval_tap $? 64 'UpdateMemberRolePublicV2' test.out

#- 65 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'DgKmUmQAteVxPbtp' \
    --memberRoleId 'hLGFIfPuSuNOn0Yn' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "WaNtQsX8zEpgdAjk"}' \
    > test.out 2>&1
eval_tap $? 65 'DeleteMemberRolePublicV2' test.out

#- 66 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 66 'GetUserGroupInformationPublicV2' test.out

#- 67 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 67 'GetMyGroupJoinRequestV2' test.out

#- 68 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'ea6ovTe7CDejPFsV' \
    --namespace $AB_NAMESPACE \
    --userId 'UZw690pgiF6ks3Lf' \
    > test.out 2>&1
eval_tap $? 68 'InviteGroupPublicV2' test.out

#- 69 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'NgKMO3IPwF08KUCg' \
    --namespace $AB_NAMESPACE \
    --userId 'NuK141InedCZTraq' \
    > test.out 2>&1
eval_tap $? 69 'CancelInvitationGroupMemberV2' test.out

#- 70 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'bgWynVU1ChNJNLAo' \
    --namespace $AB_NAMESPACE \
    --userId 'oqNKcGrMHg6nlSjx' \
    > test.out 2>&1
eval_tap $? 70 'AcceptGroupJoinRequestPublicV2' test.out

#- 71 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'e2JklH0E8etxc6eV' \
    --namespace $AB_NAMESPACE \
    --userId 'lVvfIvtLBPQP97NI' \
    > test.out 2>&1
eval_tap $? 71 'RejectGroupJoinRequestPublicV2' test.out

#- 72 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'AGYajqzwszVqVtLy' \
    --namespace $AB_NAMESPACE \
    --userId 'DKHTqWPCbQLxGA9r' \
    > test.out 2>&1
eval_tap $? 72 'KickGroupMemberPublicV2' test.out

#- 73 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'SnjbV9WQfPQn8F8T' \
    --namespace $AB_NAMESPACE \
    --userId 'BCAG0q7gCrhxKnWx' \
    > test.out 2>&1
eval_tap $? 73 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE