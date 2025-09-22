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
    --limit '71' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "s239jBwP", "description": "8Oyw9nO0", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "lZ4iSQzh", "ruleCriteria": "EQUAL", "ruleValue": 0.6305803898611491}, {"ruleAttribute": "b8weNmWJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7404273113308737}, {"ruleAttribute": "ldvzA81p", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3733047410099921}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "5UG9z6Ji", "ruleCriteria": "MINIMUM", "ruleValue": 0.06171100759533832}, {"ruleAttribute": "xpCtgeor", "ruleCriteria": "MINIMUM", "ruleValue": 0.9866503478930018}, {"ruleAttribute": "9PDLUVMo", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47891247095165057}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "mqjRJTqb", "ruleCriteria": "MINIMUM", "ruleValue": 0.23820489716358262}, {"ruleAttribute": "1iGgoyQR", "ruleCriteria": "MINIMUM", "ruleValue": 0.8960667655293069}, {"ruleAttribute": "3XkyGNEv", "ruleCriteria": "MINIMUM", "ruleValue": 0.9717592044499909}]}], "groupAdminRoleId": "v5RrhCoF", "groupMaxMember": 24, "groupMemberRoleId": "aDIuxSLp", "name": "pqE0cwfa"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'I9fTYhws' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'tjAowGPn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '3XwoxXI6' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "oXcRRYAu", "groupMaxMember": 49, "name": "0hHyJKp7"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'WLsPsJ4o' \
    --configurationCode 'Unl4ZR99' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ToXKhD8J", "ruleCriteria": "MINIMUM", "ruleValue": 0.7189196127146821}, {"ruleAttribute": "K8C5TOZ1", "ruleCriteria": "MINIMUM", "ruleValue": 0.9280440852599672}, {"ruleAttribute": "b2Gzr5El", "ruleCriteria": "EQUAL", "ruleValue": 0.5148202884254767}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'VAq0NVXY' \
    --configurationCode 'Wg0LCqQl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'i6jh78Z0' \
    --groupName 'J3spPHLC' \
    --groupRegion 'KjjsGssm' \
    --limit '68' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'jS4ErPvU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'AMklZE33' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'qQFOWAZH' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '60' \
    --order 'fZ1JZaur' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "7YXz934P", "memberRolePermissions": [{"action": 36, "resourceName": "9BK7u6WS"}, {"action": 59, "resourceName": "0oy5uNfX"}, {"action": 9, "resourceName": "l5UNDZ9m"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'Kktpc1ma' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'ga60yHq3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'G52uk6OM' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "PgnYuJTN"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'bU3zKQQo' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 89, "resourceName": "zKd8NVvK"}, {"action": 59, "resourceName": "A5GuDkZC"}, {"action": 49, "resourceName": "NRQZFAho"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'C2RIvcSn' \
    --groupRegion '1FXvzGLH' \
    --limit '12' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "PjTX0Htb", "customAttributes": {"nRrOUTwQ": {}, "HUojtQjR": {}, "qf7McgWM": {}}, "groupDescription": "4yntTOh1", "groupIcon": "46tWPKAd", "groupMaxMember": 44, "groupName": "0TK77WpW", "groupRegion": "r6EREKlw", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "GHyjUutv", "ruleCriteria": "MINIMUM", "ruleValue": 0.4424365859675876}, {"ruleAttribute": "ZSlm2AuE", "ruleCriteria": "EQUAL", "ruleValue": 0.3250157786035077}, {"ruleAttribute": "fyBo8As4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5626487928263589}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "fkoRmBcJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5028546929995495}, {"ruleAttribute": "IeLzVtxr", "ruleCriteria": "EQUAL", "ruleValue": 0.08720587558506998}, {"ruleAttribute": "OxU3jEo1", "ruleCriteria": "EQUAL", "ruleValue": 0.4121157574265357}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "kIrssSuX", "ruleCriteria": "MINIMUM", "ruleValue": 0.6507958546686997}, {"ruleAttribute": "QqY3UjZj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6141381225161581}, {"ruleAttribute": "QkPmvJVS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07333744502210249}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'SPAHqEKD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'k8kzJpoN' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "D6FoY32D", "groupIcon": "WUUGhEpP", "groupName": "CDKNHc6U", "groupRegion": "eFwMA8df", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'YkGcWFhn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'hMidAhIO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "h0pHIMjd", "groupIcon": "WQHrRRtd", "groupName": "FcoB3CmE", "groupRegion": "XLVaTNQe", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'VAdj0yAd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"0EWHDf88": {}, "lOUWTYJ7": {}, "SnrlXX5L": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'XdcEdtWE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '3W7kf772' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'YhZSRHMn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'GCGgH3Ba' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'kJ9Y11b5' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'IEe896GQ' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '80' \
    --order 'CXj82wBF' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'JHA4p1s2' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"5H6uuVz0": {}, "WucZmnZ9": {}, "eO5I7LHD": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'sCFdiHUN' \
    --groupId 'AxZ1Fh7h' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "6h13hmML", "ruleCriteria": "EQUAL", "ruleValue": 0.6817995580926434}, {"ruleAttribute": "czXCeM5X", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6767619988117144}, {"ruleAttribute": "fCOLN97f", "ruleCriteria": "MINIMUM", "ruleValue": 0.8246487327517005}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '9mYOHNyB' \
    --groupId 'WqPwapXS' \
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
    --limit '34' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'KZnFvRQ3' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "L6t5aCLv"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'nyoZIHBW' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "uVp1IZ8C"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ptNBhOX4' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HRDllfAr' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'psKnF0Ah' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '0PtXy7QO' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'AjLoWqlb' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["H0iHfD5x", "Mta60s4B", "0guRmXXB"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'WNcvDXbG' \
    --limit '73' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'SdKdPoM3' \
    --namespace $AB_NAMESPACE \
    --userId 'lzeJa2bO' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "iSfn84AO", "customAttributes": {"46DeO02k": {}, "5YSfPEa3": {}, "Gq8roYj9": {}}, "groupDescription": "hIPcO34Y", "groupIcon": "1OuUj9sa", "groupMaxMember": 46, "groupName": "jc7isg35", "groupRegion": "Mc2kOk6V", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "sA48e0Bs", "ruleCriteria": "MINIMUM", "ruleValue": 0.96265605625588}, {"ruleAttribute": "8z0J6t0q", "ruleCriteria": "MINIMUM", "ruleValue": 0.2038078393784022}, {"ruleAttribute": "NKFr99Q7", "ruleCriteria": "EQUAL", "ruleValue": 0.8229373023767367}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "Ti0BDKZr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14483500855685805}, {"ruleAttribute": "e8rPeVCw", "ruleCriteria": "EQUAL", "ruleValue": 0.42129791174854947}, {"ruleAttribute": "cCQdDMSH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2001124995482646}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "rvFNbpsM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6116157504323627}, {"ruleAttribute": "aeU9mdbA", "ruleCriteria": "MINIMUM", "ruleValue": 0.24168704212997583}, {"ruleAttribute": "eadF64hB", "ruleCriteria": "EQUAL", "ruleValue": 0.8476798754485058}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["83AKvZ2t", "Pn6V8Edb", "cKt4wwIA"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '2jauLMpL' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "dhIOuNFb", "groupIcon": "uAQqTAAm", "groupName": "Ow8ZXmHu", "groupRegion": "PfjYDh5H", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'IiyjADvr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'Iut059sC' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "1Hd7a6zd", "groupIcon": "ZfxbnBsg", "groupName": "tnOPnbqA", "groupRegion": "nqDf0CV3", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'e1152BZ6' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"IwQ5qoYQ": {}, "Mvc3h1JV": {}, "nblJrELG": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '6sS2cPaT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'K6p7qxHh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'jbZswpT3' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'BFx974gg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'SU4tnDAx' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'b52ckCya' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'yJ0EanVd' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"jJ0IICwb": {}, "6uSxP1O1": {}, "E4eWMO73": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'GsBlgHsF' \
    --groupId 'yHqxIMZV' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "GbDNvMOG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.49280315095215266}, {"ruleAttribute": "Ar7nBk7v", "ruleCriteria": "EQUAL", "ruleValue": 0.5129909428769827}, {"ruleAttribute": "p0gMmHzv", "ruleCriteria": "MINIMUM", "ruleValue": 0.2278390978114354}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'TTC2t5C1' \
    --groupId '33VCh563' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'hSPryaHK' \
    --memberRoleId 'uTm2cb0V' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "2k6w5Ne3"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'ej3uhxHF' \
    --memberRoleId 'LvJGsPLJ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "zj91yMez"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'qbfebTmg' \
    --namespace $AB_NAMESPACE \
    --userId 'qDLyjoYl' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'IXHP6SrK' \
    --namespace $AB_NAMESPACE \
    --userId 'DTPm0R6V' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'J2E12czS' \
    --namespace $AB_NAMESPACE \
    --userId 'i4zF9mdt' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'dUWPmmpY' \
    --namespace $AB_NAMESPACE \
    --userId 'eCtkYvBG' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'di3EF25i' \
    --namespace $AB_NAMESPACE \
    --userId 'Niw5Goac' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'npuwE9nJ' \
    --namespace $AB_NAMESPACE \
    --userId 'XPXhigTr' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE