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
    --limit '60' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "34dDs8eX", "description": "6ISOQ9AQ", "globalRules": [{"allowedAction": "7iAaZ5vO", "ruleDetail": [{"ruleAttribute": "enxf50dm", "ruleCriteria": "MINIMUM", "ruleValue": 0.7089304478377627}, {"ruleAttribute": "zLsQiJpP", "ruleCriteria": "MINIMUM", "ruleValue": 0.5532311127333023}, {"ruleAttribute": "0T2dJEvY", "ruleCriteria": "MINIMUM", "ruleValue": 0.9849983047895341}]}, {"allowedAction": "wfLrptLF", "ruleDetail": [{"ruleAttribute": "1CDmzKjf", "ruleCriteria": "EQUAL", "ruleValue": 0.9841838225397757}, {"ruleAttribute": "jsyd2FMF", "ruleCriteria": "EQUAL", "ruleValue": 0.47656388584726406}, {"ruleAttribute": "Afyv0uNC", "ruleCriteria": "EQUAL", "ruleValue": 0.5393370629575545}]}, {"allowedAction": "5NsbXgRQ", "ruleDetail": [{"ruleAttribute": "18xLwlu9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3641522925109777}, {"ruleAttribute": "dX0odX3H", "ruleCriteria": "MINIMUM", "ruleValue": 0.7618453356909446}, {"ruleAttribute": "M9fhOZn5", "ruleCriteria": "EQUAL", "ruleValue": 0.7147163385920305}]}], "groupAdminRoleId": "60lnOyeT", "groupMaxMember": 89, "groupMemberRoleId": "juncqSHo", "name": "mzoisBvS"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'axYCSA4n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'mObq16nQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'DOM66Svp' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Rj6b7AkU", "groupMaxMember": 8, "name": "zSQw4YuF"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'ZIIUfK9f' \
    --configurationCode 'Ar4xtTJF' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "CmAuVTYi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.36371957922210907}, {"ruleAttribute": "KxF5AOKm", "ruleCriteria": "EQUAL", "ruleValue": 0.7545663967447633}, {"ruleAttribute": "1SirlXIx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5660675730923505}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'Zz7jCY2T' \
    --configurationCode '6bYt3b7f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'TgN3XZA4' \
    --groupName 'N3kLX6bl' \
    --groupRegion 'RXf3GLOO' \
    --limit '2' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '9cmCPYpa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'vtyFhXAR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'rzh7gsFa' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '16' \
    --order 'JR8fEI6r' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "UgSdu9YY", "memberRolePermissions": [{"action": 84, "resourceName": "qGBGba1d"}, {"action": 1, "resourceName": "Hma7awsM"}, {"action": 0, "resourceName": "4BMd3QAb"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'OzKxfDds' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'U4KJ5Usm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '0Sj8DxWT' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "bFiTo4Gw"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'KfdxzOu0' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 39, "resourceName": "wdmLEMHi"}, {"action": 37, "resourceName": "QwkLQGfr"}, {"action": 0, "resourceName": "ral5aGri"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'L0IY8FIz' \
    --groupRegion 'dQ159gjn' \
    --limit '66' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "CJrw4alJ", "customAttributes": {"NzpKw21N": {}, "a6E8gD4f": {}, "qZHBLdhr": {}}, "groupDescription": "emsCS0K0", "groupIcon": "BjWkyrlj", "groupMaxMember": 39, "groupName": "YnoqEnL0", "groupRegion": "79o3V2vk", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "VKsQhaEY", "ruleDetail": [{"ruleAttribute": "5Fl605Kw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2941900413606233}, {"ruleAttribute": "Jp9VHFP7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7499701619950695}, {"ruleAttribute": "xOsJCUYD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.730405507098092}]}, {"allowedAction": "842TRHXy", "ruleDetail": [{"ruleAttribute": "dOW3o3o7", "ruleCriteria": "MINIMUM", "ruleValue": 0.5276248703602731}, {"ruleAttribute": "yz4O5uYh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9196086869398954}, {"ruleAttribute": "Id41FyZq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7427281655810957}]}, {"allowedAction": "TtBlbULZ", "ruleDetail": [{"ruleAttribute": "Kn4p2nln", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6387204779962913}, {"ruleAttribute": "Sh9DARSL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5128772135942744}, {"ruleAttribute": "zrMHyA6E", "ruleCriteria": "MINIMUM", "ruleValue": 0.25849813050020354}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'cxs75qWV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'wEMIx1aK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "E9EG8FoU", "groupIcon": "3NTPXSJm", "groupName": "Qb7EZA8X", "groupRegion": "esBLDw17", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'K63bteS0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'PJhRmarK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "5Ws8Tr8Y", "groupIcon": "esRdHLiQ", "groupName": "AdiuAkKx", "groupRegion": "sdcizdhq", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'Rd28LptQ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"1YqZxvpl": {}, "B7S23Sqy": {}, "8EsLq5Sh": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'yBb2kv1X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '7gX0e7xy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'UyRi2vuo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'e4IAj1h7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'TtByPuTd' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'JUvmoSKF' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '73' \
    --order 'ASkegxZd' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'UkYEgPSL' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"htsQsAia": {}, "4ExPSyE0": {}, "lMmhbvDc": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'z3poqQLm' \
    --groupId 'MipHgTeC' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "XeOroXnr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.002401756771401642}, {"ruleAttribute": "p7LW0XaN", "ruleCriteria": "MINIMUM", "ruleValue": 0.37821460509940474}, {"ruleAttribute": "umfjwYrL", "ruleCriteria": "EQUAL", "ruleValue": 0.34186256650401337}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'IWRYyqH2' \
    --groupId 'e8u6d75e' \
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
    --limit '74' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'CWmLXVYt' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "WlFBWQ0Q"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'NdZrfwPC' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "qHXz2FZ0"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '9ZgXg7SI' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'bvwWekjF' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'COQftNne' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '4h5PqmJK' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZJqSL5tC' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["DPmOSTcy", "2G7vkTPE", "qOgoXPJs"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'BQcA4ABv' \
    --limit '73' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'Kpob5S7t' \
    --namespace $AB_NAMESPACE \
    --userId '8sCuFSTS' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "wxc3ZKKI", "customAttributes": {"wHS4Ak4O": {}, "P6qL0WUK": {}, "cQ91gjuh": {}}, "groupDescription": "wfWkTvf9", "groupIcon": "ztwdXyev", "groupMaxMember": 75, "groupName": "65LZxykw", "groupRegion": "yWIq20fI", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "7YLyalq2", "ruleDetail": [{"ruleAttribute": "mtIXQ0no", "ruleCriteria": "MINIMUM", "ruleValue": 0.5690608234298119}, {"ruleAttribute": "uWQKU3Ha", "ruleCriteria": "MINIMUM", "ruleValue": 0.6307641400950107}, {"ruleAttribute": "ziyO7QrH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.932739100680307}]}, {"allowedAction": "vRvoRwuG", "ruleDetail": [{"ruleAttribute": "xX61T90i", "ruleCriteria": "MAXIMUM", "ruleValue": 0.34493690680919964}, {"ruleAttribute": "wf6D4Zfy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.20962482472144361}, {"ruleAttribute": "lx7c3mjL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.25737056939613534}]}, {"allowedAction": "MzY2Eo0h", "ruleDetail": [{"ruleAttribute": "WYYn8MP3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3274562955552669}, {"ruleAttribute": "PctvyLTo", "ruleCriteria": "MINIMUM", "ruleValue": 0.17205085850619806}, {"ruleAttribute": "Ncc6UgQT", "ruleCriteria": "EQUAL", "ruleValue": 0.36532023150765003}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["5fHzkZto", "4dOOolBf", "PzJHnvWi"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'f93uOEZp' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "l8qHOEyi", "groupIcon": "RwfxWlig", "groupName": "gwggIQG4", "groupRegion": "84ZobYnd", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'h7TpPAPK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'JiWjk7GK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "5509T0jj", "groupIcon": "i9pI3eyR", "groupName": "rFMfsOZt", "groupRegion": "wSeaAVTg", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'EBHnE5Bq' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"kjOWcNTG": {}, "yjsrNQYC": {}, "qKfmNISG": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '36CPEBnK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'xQt3TDm9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'RZ0fUQj0' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '4OXDMSo7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'n56mrqJU' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'WLbRlN0d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'w1UxgrrA' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"gus9ULEq": {}, "obUuHUfe": {}, "A5fpcnFo": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '2dIrF2TO' \
    --groupId 'qfaQNmxI' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "YzWalwVr", "ruleCriteria": "MINIMUM", "ruleValue": 0.6355368894440875}, {"ruleAttribute": "UHB8bszG", "ruleCriteria": "EQUAL", "ruleValue": 0.10410378115376073}, {"ruleAttribute": "fT4XBAOY", "ruleCriteria": "EQUAL", "ruleValue": 0.7086689612272332}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'TI7j1IL0' \
    --groupId 'Mj6hyma7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'e7LIS8eW' \
    --memberRoleId 'h20h6EHG' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "nHzUjHO8"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'sqh9nOTF' \
    --memberRoleId 'EViPzKj1' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "N1KKgXZx"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'jXuj7jmN' \
    --namespace $AB_NAMESPACE \
    --userId 'TdjNSl3I' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'XsbaMY98' \
    --namespace $AB_NAMESPACE \
    --userId 'lxO7M8Z9' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId '1mGYzgRS' \
    --namespace $AB_NAMESPACE \
    --userId 'U1kgwhDQ' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'gJKwwhNv' \
    --namespace $AB_NAMESPACE \
    --userId 'xCkyYmGI' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'Pc6gCeM0' \
    --namespace $AB_NAMESPACE \
    --userId 'lWjbjUhO' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'efPhr2I9' \
    --namespace $AB_NAMESPACE \
    --userId '5Anby9Wq' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE