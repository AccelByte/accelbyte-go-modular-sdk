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
    --limit '80' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "RRL71wWZ", "description": "9msUbYNL", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "L3Y8QoBL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.12095552696435918}, {"ruleAttribute": "dvC09Ydr", "ruleCriteria": "MINIMUM", "ruleValue": 0.5582690696379707}, {"ruleAttribute": "3NtW7dS7", "ruleCriteria": "EQUAL", "ruleValue": 0.40968991106433683}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "dXR3xhoR", "ruleCriteria": "EQUAL", "ruleValue": 0.879882941600242}, {"ruleAttribute": "bvR6XmCD", "ruleCriteria": "EQUAL", "ruleValue": 0.4374184779364665}, {"ruleAttribute": "xiGt7XuW", "ruleCriteria": "MINIMUM", "ruleValue": 0.901821721251188}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "tuTXG7QC", "ruleCriteria": "MINIMUM", "ruleValue": 0.7270480312349282}, {"ruleAttribute": "pXeaHrhn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9720128396457137}, {"ruleAttribute": "YdGpxkI5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7441081798118884}]}], "groupAdminRoleId": "ZKJeIkbn", "groupMaxMember": 95, "groupMemberRoleId": "9bINLaKz", "name": "Op0wRUmR"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'yYY0mBwk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'XajnkXaX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'jEV5sVUU' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5k5d3Ah2", "groupMaxMember": 56, "name": "W32mgEPf"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'bPRMva9K' \
    --configurationCode 'cPaEQZCj' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "RE6gyh8M", "ruleCriteria": "MAXIMUM", "ruleValue": 0.761654788179487}, {"ruleAttribute": "tgGoBnVO", "ruleCriteria": "MINIMUM", "ruleValue": 0.33749234004237805}, {"ruleAttribute": "a8RTiE6e", "ruleCriteria": "MINIMUM", "ruleValue": 0.8439358190875335}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'kDcwnvyb' \
    --configurationCode 'mWPJzLAD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '34f8sOM4' \
    --groupName 'TdRw0EGN' \
    --groupRegion 'jIt4GqM7' \
    --limit '55' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'ePZtEd4Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'ztmvU960' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'tBwMLoDE' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '95' \
    --order '79pW5LIu' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "65bK0sT8", "memberRolePermissions": [{"action": 93, "resourceName": "YyaUcc0M"}, {"action": 62, "resourceName": "DNZwq941"}, {"action": 98, "resourceName": "4lfKAVrp"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'Ixe1rK6k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'wsIGcfOU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '7jXypIqD' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Z9R0FNRD"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '1Ewjddlh' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 31, "resourceName": "dedzCQtr"}, {"action": 19, "resourceName": "H4YCZ74b"}, {"action": 29, "resourceName": "W2czirKh"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'hLDjAHK9' \
    --groupRegion '9pE5je9o' \
    --limit '88' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "VmxjDRXv", "customAttributes": {"v24gQR7k": {}, "TkxGOER6": {}, "I3EGVnHd": {}}, "groupDescription": "I3DG5D9w", "groupIcon": "D0HffpMz", "groupMaxMember": 39, "groupName": "rdv3lcUO", "groupRegion": "UlKN7MHS", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "AC5wqaPw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.960073565509337}, {"ruleAttribute": "MB64Zjpm", "ruleCriteria": "EQUAL", "ruleValue": 0.10090266308707108}, {"ruleAttribute": "NtcyVv5L", "ruleCriteria": "MINIMUM", "ruleValue": 0.9372579722943521}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "VJ4rAhp8", "ruleCriteria": "MINIMUM", "ruleValue": 0.9815709685713674}, {"ruleAttribute": "LB0FuY5L", "ruleCriteria": "EQUAL", "ruleValue": 0.3614382299360369}, {"ruleAttribute": "7DqSvJCb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.41806403589061325}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "punUCDZu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21506616417462254}, {"ruleAttribute": "rZlfdk0U", "ruleCriteria": "EQUAL", "ruleValue": 0.11729528042535697}, {"ruleAttribute": "7DWMJoom", "ruleCriteria": "MINIMUM", "ruleValue": 0.28130833325337745}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'nIkpLX17' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'Y5y6rAvO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "4f6MVFkO", "groupIcon": "YLmQgia2", "groupName": "WCmjNzmS", "groupRegion": "ZWUldbvU", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'TmXnSiRS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'BpghzFul' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "1XH8LIrk", "groupIcon": "Ao73T7hP", "groupName": "jckHAteY", "groupRegion": "az3TM2FT", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'TPrNDIvj' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ahaMf8wK": {}, "dYvIoIv7": {}, "feJbCSy4": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'awTBNnbc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'eq1i4zZ7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'fi7aUZLw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'v9SEJwf7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'bDu2TpLv' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'kfkie0fU' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '63' \
    --order 'bTIrhFCR' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '9Pv25SWy' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"TX4DbBbr": {}, "E2jJMfxs": {}, "OOdgnA5Y": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'x4jVbmhY' \
    --groupId 'pZyjZ3K2' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "6oEYWW0w", "ruleCriteria": "EQUAL", "ruleValue": 0.4484125411062}, {"ruleAttribute": "bEYlzfLW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7468915999417288}, {"ruleAttribute": "fj44BS9r", "ruleCriteria": "EQUAL", "ruleValue": 0.23373384482580162}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'FlY1PMjO' \
    --groupId '6ghq3Cni' \
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
    --limit '41' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'q7QbbtPM' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "OmMhjGlK"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'tyFghFW9' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "wUUfl1os"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xmWxD85N' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'E53i1iex' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XAwDqwWi' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'uMOSN3vr' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'bVjNDSEC' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["a7bMUtpc", "tmXKasX5", "2atzsmFq"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'zr8QumLa' \
    --limit '47' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'R9RBcNvJ' \
    --namespace $AB_NAMESPACE \
    --userId 'OiuKKiWl' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "6cMIG1NG", "customAttributes": {"MueNAycd": {}, "84ycmOeK": {}, "LkpEeCwc": {}}, "groupDescription": "eRMGm9PP", "groupIcon": "7DZhxggj", "groupMaxMember": 27, "groupName": "EtdufArg", "groupRegion": "xcqZBzg4", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "SVilbBhP", "ruleCriteria": "MINIMUM", "ruleValue": 0.014553596493311671}, {"ruleAttribute": "HpGhRa9z", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11073289971081302}, {"ruleAttribute": "RaX2gNE0", "ruleCriteria": "EQUAL", "ruleValue": 0.365041918897695}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "vFhYR0PN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.02728150467935697}, {"ruleAttribute": "9bNfNeOA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9709618232999414}, {"ruleAttribute": "sscN6ynR", "ruleCriteria": "EQUAL", "ruleValue": 0.918492943035154}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "QardNnsi", "ruleCriteria": "MINIMUM", "ruleValue": 0.7488539003450603}, {"ruleAttribute": "RvSbqVRl", "ruleCriteria": "EQUAL", "ruleValue": 0.029373323994917988}, {"ruleAttribute": "KfWCprkf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6840910723778426}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["xXRrHZ5z", "lI9P78Mr", "YO3DJijW"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'UghCtZyl' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "7g5s70SH", "groupIcon": "e8rAyyFG", "groupName": "XEwd5UNV", "groupRegion": "N03C5eZn", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'PJwaezMh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'mbK4Pvf4' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "eQJsPAVE", "groupIcon": "8SkglaXy", "groupName": "fynhukOj", "groupRegion": "pTyUBomw", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'hOCFTlCP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"FK8WbViw": {}, "2d4Dtp5Q": {}, "A6DeqDbS": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'QDOqLkQ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'i0YjfeG7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'XXf0zKTP' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'N4cmfhOe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'KXUq2mPP' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '3D8Zlaws' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '0JnpDTOY' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"F87FeNtg": {}, "cuCGA5nX": {}, "9bPm7eTt": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'dwldOSBt' \
    --groupId 'gi7KXlBL' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "TehPnULu", "ruleCriteria": "MINIMUM", "ruleValue": 0.06236423493034615}, {"ruleAttribute": "wMis07Oq", "ruleCriteria": "MINIMUM", "ruleValue": 0.2518615611490487}, {"ruleAttribute": "VeDgCSjK", "ruleCriteria": "EQUAL", "ruleValue": 0.9197573771436708}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'wi6cllS2' \
    --groupId 'KyVSMGcd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'MlUl9c0U' \
    --memberRoleId 'yAN5cW9x' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "EXJzqYhN"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'gelUFZc2' \
    --memberRoleId 'SxKLy9Xn' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "HuLprWuV"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'vOJ5Rsw1' \
    --namespace $AB_NAMESPACE \
    --userId 'jFHJmGpf' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '1PsbLQZK' \
    --namespace $AB_NAMESPACE \
    --userId 'QZ7tw0Wh' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'DO2IB7KV' \
    --namespace $AB_NAMESPACE \
    --userId 'x2qEaZyS' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'Yk5Evlnj' \
    --namespace $AB_NAMESPACE \
    --userId 'R4nII3v1' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'TIyUO0wj' \
    --namespace $AB_NAMESPACE \
    --userId 'DLAgZZs1' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '5wygBpG8' \
    --namespace $AB_NAMESPACE \
    --userId 'exPog3Qy' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE