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
    --limit '13' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "sMutxIxhzwO5m1rE", "description": "9eUeKri8q9YU1Qsr", "globalRules": [{"allowedAction": "osF2xzLNpLRjCG22", "ruleDetail": [{"ruleAttribute": "BFdLYRTvOdCkPN4h", "ruleCriteria": "MINIMUM", "ruleValue": 0.8243183767275614}, {"ruleAttribute": "tsy3cQM5KVcdyLCB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.05892671135633132}, {"ruleAttribute": "eH6pDa8KAtk0bhzn", "ruleCriteria": "MINIMUM", "ruleValue": 0.032404899824068134}]}, {"allowedAction": "5wNC8wVUPwUhcRWu", "ruleDetail": [{"ruleAttribute": "qpc81809CVCf1eh1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.16218553404459346}, {"ruleAttribute": "ao88tx8Ob1bD1vuo", "ruleCriteria": "MINIMUM", "ruleValue": 0.930907008167714}, {"ruleAttribute": "lrHMS74UsySRDinG", "ruleCriteria": "EQUAL", "ruleValue": 0.8783636392520341}]}, {"allowedAction": "JSUtJEpV1ftkrQjx", "ruleDetail": [{"ruleAttribute": "IPvrye5wrMWctgLq", "ruleCriteria": "MINIMUM", "ruleValue": 0.2932235748983162}, {"ruleAttribute": "1SvP1oUPN1p8aGdX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5541284225596419}, {"ruleAttribute": "o7607wov4WZK6CxO", "ruleCriteria": "MINIMUM", "ruleValue": 0.7815923369831153}]}], "groupAdminRoleId": "pot7z2ng6RFTvhOX", "groupMaxMember": 0, "groupMemberRoleId": "I2hgM7eFGjl4WaL2", "name": "lRZGtzA43J4D4Zd0"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'Ru9ihmIghbUJCIgl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'xfpIar5lfIoiI5tZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '1SDdOINFonyXlFwU' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "CULpyn90LR4nUwdI", "groupMaxMember": 31, "name": "03UiRmtXtlUYiAab"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'gm6VsR3Eqtu3PgYV' \
    --configurationCode '2tJXcLoGMTsSn39x' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "jhaOoTP876Yvudiy", "ruleCriteria": "MINIMUM", "ruleValue": 0.544281662002815}, {"ruleAttribute": "MyDEy2sZhkOop1zt", "ruleCriteria": "EQUAL", "ruleValue": 0.8758680237844085}, {"ruleAttribute": "gPVeyt9Ov1fndssk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.29522652754036227}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'y8KHb8AJRtXiNlZc' \
    --configurationCode 'XfQp0NlDmDyaJfvy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'SpuxNjwEYeNtFBbN' \
    --groupName 'ku6QZAvo6NLJVmad' \
    --groupRegion 'Fal7Bp5wHIDrxNYa' \
    --limit '31' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'TAPfnNXtL2HSMRs3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'npfTcnXybGUVZh0I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'twBDJn2BgZ5nsf5Z' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '30' \
    --order 'u1x9faOpF5RngPXE' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "wl77q5AGCXrWaDtc", "memberRolePermissions": [{"action": 28, "resourceName": "GVBvorwdmSbW55Jj"}, {"action": 34, "resourceName": "QzQeNhQF0pqoPSmu"}, {"action": 55, "resourceName": "TPPt4erVjm3ig3Pr"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'UtoMds3IT2Kpo3jy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '6SyclTK8cgenLPSs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'QdclW301v7qaau8g' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "s53KL1bt66NkTdFf"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '1hJqgUsg1ck4UVcK' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 81, "resourceName": "GEaApboqrrUAx83h"}, {"action": 86, "resourceName": "rJ6eH2l9tL738U4X"}, {"action": 78, "resourceName": "p8pU6eI6l2frua9M"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'aQzIYm6s3tm88bBc' \
    --groupRegion 'CTpeDDXM6BVsBlrt' \
    --limit '90' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "SpESmaGa9dbNCoMk", "customAttributes": {"XLo4CSomhmh9OrXv": {}, "VMpH6U6PM6jKXMY4": {}, "A59nUpCfObBoXusM": {}}, "groupDescription": "I9ZlKdtS9GE9vDbO", "groupIcon": "H2KDzQJ3xYDNzV9c", "groupMaxMember": 14, "groupName": "nVX7ELvkqvoyFFcC", "groupRegion": "klY9A4HYEjjxfTXK", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "CrXwdD3i5wMPSIJr", "ruleDetail": [{"ruleAttribute": "V8VXLtA3PKjel8L3", "ruleCriteria": "MINIMUM", "ruleValue": 0.9396177863460493}, {"ruleAttribute": "GPFuz49f1NGn3JyM", "ruleCriteria": "MINIMUM", "ruleValue": 0.5007319776375277}, {"ruleAttribute": "3ZKQrhBBa9x34ag5", "ruleCriteria": "EQUAL", "ruleValue": 0.6817650290750497}]}, {"allowedAction": "suvCvs7PwDqes4l3", "ruleDetail": [{"ruleAttribute": "HFucgXYTYO7wuvqr", "ruleCriteria": "MINIMUM", "ruleValue": 0.1938351736898969}, {"ruleAttribute": "ingSooh3nIxZrrwl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4086347196359834}, {"ruleAttribute": "bvdWjlJl1GQPtbeD", "ruleCriteria": "EQUAL", "ruleValue": 0.7530789131097643}]}, {"allowedAction": "ChVHeISxrmBix1yX", "ruleDetail": [{"ruleAttribute": "ck54RFI6hSsLi08p", "ruleCriteria": "MINIMUM", "ruleValue": 0.16151196725296624}, {"ruleAttribute": "rIj46i5cVuYMef8N", "ruleCriteria": "MINIMUM", "ruleValue": 0.762045332120743}, {"ruleAttribute": "tf4x7svw09e1cxuF", "ruleCriteria": "EQUAL", "ruleValue": 0.4624384388021707}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'KJfotHIu8OnQqIk2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'x1so09hwpkcbbqw6' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "iwqrx73vTtSZjKFz", "groupIcon": "Rdpi4MM5qqzC0ZMW", "groupName": "TV5sD82lbDai9CjX", "groupRegion": "FDftjlmkXPl3WH5x", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'ljvTCB4Vjq591jU6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '767wKCvIghh0ii0m' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "KIwYE7YkezG7amuu", "groupIcon": "D2VAMBXMO9XMFToI", "groupName": "aKviTPi5zTuRHyNf", "groupRegion": "Ny0EpF7CHqRtISE4", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '1HdE9tvJX4zu4wBp' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"T9JWFPV8UMkHBMzn": {}, "Gp8EnwPYMjpbRl1b": {}, "0ca2zNbxx4aGvAZZ": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'ieyBDzSEr6J0kHln' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '1zKxoaJBOB2kyg04' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '3ptengaHwFjKJ6vA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'hBhb5q5Yu0RNd93m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '71f8wLiKwcAxwEaZ' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'akmwNk8vrtfGfHq5' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '90' \
    --order 'J3er6Xypzr8ApURd' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'QaWYBY2Msc2HZRKG' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"pQyZpcE1AL9tOcVT": {}, "PjWfoAA9K10aCwhj": {}, "GsMCRun1DHSp8FcC": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'C9O8lvmg6iJj2EEG' \
    --groupId '0rigguizhpGuKN0r' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "7ptbsrq0SSFAVHWc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5568125904785178}, {"ruleAttribute": "eD4qKM5WmPONETZX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7993432026333501}, {"ruleAttribute": "vNdhbQovGFKDMJkJ", "ruleCriteria": "EQUAL", "ruleValue": 0.17806021804771266}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'AdmF5kSTnH5U6Tzp' \
    --groupId 'VRa9gQJ4qLeSxS3q' \
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
    --offset '0' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'NPeiAlQECdc7GXFt' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Xftne8YeVLmsyx5e"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'TKJV9ATjwGu5QfhN' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "lbh38EhpttNkv7mR"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FSU7YDROzmaA2Lz0' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5TrWQbXaLMsTjOJv' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KzEdtLZiyCtxg80C' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TfSi00XwZbjoQGIw' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pje787MjN2LmR3cU' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["G0WHCjMPoYFS0N9h", "D3sCKKYRU0MY0qDE", "hwMgtMWgiUR5mozi"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'MDPRoGt6A9Xy3ch6' \
    --limit '47' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'nwhwyQIHUV5QdgQl' \
    --namespace $AB_NAMESPACE \
    --userId 'HKVBxwEL2zjeRvc8' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "CgrZHCcQbb9vOXly", "customAttributes": {"l2BiAmnyin4hmhWY": {}, "ZkFmbBkNnmAxEeMZ": {}, "9KIiPjbiZ05Z3BtW": {}}, "groupDescription": "s47L8tI8GMeVqRxN", "groupIcon": "PjZa0S2g5oTGcsgO", "groupMaxMember": 55, "groupName": "IqFQ4E0lj0aZtf9u", "groupRegion": "8ocE1zFcEPqoHavu", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "VvZ9cXVPukA2V57r", "ruleDetail": [{"ruleAttribute": "qwyjxRUuSJTriRmW", "ruleCriteria": "MINIMUM", "ruleValue": 0.03462850809057327}, {"ruleAttribute": "DffAURsyxVeuwqnm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.759792728838081}, {"ruleAttribute": "rZjiMvGhFND11Dz4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9927960154437832}]}, {"allowedAction": "3xlM2zwUPGvZYSu1", "ruleDetail": [{"ruleAttribute": "YPlBrD4bgUxeKbgB", "ruleCriteria": "EQUAL", "ruleValue": 0.20466181732807753}, {"ruleAttribute": "iE49Wsikzy8P1Sow", "ruleCriteria": "EQUAL", "ruleValue": 0.5465515702397233}, {"ruleAttribute": "0yWBMopyQ0FM7Hve", "ruleCriteria": "EQUAL", "ruleValue": 0.8409180143585027}]}, {"allowedAction": "qdyB5PueSAACdu8U", "ruleDetail": [{"ruleAttribute": "Qgb60rEYX8wG7SKB", "ruleCriteria": "MINIMUM", "ruleValue": 0.2376138567315217}, {"ruleAttribute": "zKI2WAfxUazfcuvh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.15651560758564131}, {"ruleAttribute": "UxM05Djex8UWWcEg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5522557640474659}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["kJHZYn8FT5Nb3HrK", "tLe53GwIzwQtEtr0", "yDMUtss77VCElEi8"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'beyXiBj1kaQE8bVR' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "bdITPrWrlEMV0DjC", "groupIcon": "oViz5A9Fy2Zt8OSr", "groupName": "uUURDJFgcvHy3vVV", "groupRegion": "k34XMHUTGpPbodEb", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'Iw96MVG6g2D1qfeE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'ydpyfEh28zRK6hlU' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "XTtiUKFWhc3mq6tg", "groupIcon": "DXks8zUMQnVcIANA", "groupName": "9WnVjfB2QnU7lEMv", "groupRegion": "ouRKMDPaq77ju5GN", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'icb2InvbBkzSMwKD' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"s6SVuXpfEBqnLh3w": {}, "25a95CceGem5ZRz5": {}, "P2M6WtW325cGep50": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'BBFEnZZYZWJuhrm5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '4JpBYvUT3836LFd1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'byndDNuEWa1HK9mo' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'vkqx7RCOgB10x3nF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'MA2oITGuS74fN9R6' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'KXxeGhUFiW3i5NHz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '0SIx8sKd7VFOFKAC' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"oyh7AJyHRcu2IezE": {}, "XTxrTKBCzm04qNwH": {}, "fNUHMK4Ob076jSYx": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'omDxkIYWCsowlEiw' \
    --groupId 'specQDJz79Uge2U3' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Oabl4ZrbBommLRsk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1324981417638751}, {"ruleAttribute": "uzc3YeQaxbWBNcyT", "ruleCriteria": "EQUAL", "ruleValue": 0.9346106154308316}, {"ruleAttribute": "DaseYiQGGo8Ir11M", "ruleCriteria": "EQUAL", "ruleValue": 0.0496831958171009}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'agpqpAYARXUczroM' \
    --groupId 'GDv13miiz8YEqqyi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'Q0ZwOYg6qCJCXLYK' \
    --memberRoleId 'CLK8RTiF8ARVTzzg' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "7q53FfaQ02djfk8N"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'tzgwfNjujZ6QhH8H' \
    --memberRoleId 'rCX7qMUiLLiJN7Gl' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "YMRA0sXWVlsrGZdM"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'YZ7lfXxyarj9RTH4' \
    --namespace $AB_NAMESPACE \
    --userId 'ceLtoRNOori3AHUk' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'WJk5IgDx8wHjyZPI' \
    --namespace $AB_NAMESPACE \
    --userId '7L6FxUMwc1Arphpz' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'CBsri3ZXUwGB5mvA' \
    --namespace $AB_NAMESPACE \
    --userId '8XqVqlhImguiV5DG' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'YgO38MPMQOKA3Hr4' \
    --namespace $AB_NAMESPACE \
    --userId 'DxIPzHtH2Ln0OwrQ' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '7qUgxF5B2gYEW1TG' \
    --namespace $AB_NAMESPACE \
    --userId 'm3aPfHwPcU7PuTPb' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'EGPhFe2ddivuOvAl' \
    --namespace $AB_NAMESPACE \
    --userId 'r4F8VHwbDl3gWAwW' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE