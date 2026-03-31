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
    --limit '32' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "zryyX23u", "description": "kszK3ihi", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "KxjZ82yX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11195307260706233}, {"ruleAttribute": "VeaXf5hw", "ruleCriteria": "EQUAL", "ruleValue": 0.23061177366563157}, {"ruleAttribute": "ir9LoyM4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.02259955038273964}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "al8hz6NY", "ruleCriteria": "MINIMUM", "ruleValue": 0.05046464947496798}, {"ruleAttribute": "wWyHuG1R", "ruleCriteria": "MINIMUM", "ruleValue": 0.2128610802666302}, {"ruleAttribute": "SXbSAdKE", "ruleCriteria": "MINIMUM", "ruleValue": 0.08794678310244342}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "SkX8w06P", "ruleCriteria": "MAXIMUM", "ruleValue": 0.17877835187268998}, {"ruleAttribute": "3oZXx5SK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9323306599360719}, {"ruleAttribute": "FsCvFcwU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.15553051708314036}]}], "groupAdminRoleId": "JVXdItUW", "groupMaxMember": 75, "groupMemberRoleId": "mdeZovLf", "name": "zTJewamy"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'E0ddtlcO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'VKDZidWi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '0EerYDd8' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "mp1BtBpM", "groupMaxMember": 93, "name": "7RnK8KiE"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'NluYD3aT' \
    --configurationCode 'CJzl3hwQ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "DnU4fHKF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.645575202687313}, {"ruleAttribute": "dsALeKwn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5345192893840212}, {"ruleAttribute": "sh3D5R32", "ruleCriteria": "MAXIMUM", "ruleValue": 0.022541535504008503}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'ITHyfjWN' \
    --configurationCode 'd39hsrlB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '5VqXy4SC' \
    --groupName 'NpzLLgaQ' \
    --groupRegion 'ZkgfnBaL' \
    --limit '9' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'Zqi7bZMw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'iV3ZpyF7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'Bimm2lTT' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '43' \
    --order 'bt7UDWti' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "6NjfLuU3", "memberRolePermissions": [{"action": 80, "resourceName": "54TV5BE0"}, {"action": 82, "resourceName": "CxdviYsI"}, {"action": 29, "resourceName": "C6Hx11bL"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '4lcU79wH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'RkmbchfV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'ZeVmj0NJ' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "i07W7aoK"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'y1RO9P1j' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 7, "resourceName": "zFWTEgiL"}, {"action": 23, "resourceName": "wPZMgOEe"}, {"action": 91, "resourceName": "n4e2cxgK"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'HU5DMRRf' \
    --groupRegion 'WakVWOqS' \
    --limit '65' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "4vgIMNAm", "customAttributes": {"pvruiyzN": {}, "xoOlOKlU": {}, "T2pDVtZW": {}}, "groupDescription": "PTakHkEB", "groupIcon": "eg4a4zEY", "groupMaxMember": 88, "groupName": "Bd7f80yM", "groupRegion": "0A4rguAE", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "9FWfPenk", "ruleCriteria": "EQUAL", "ruleValue": 0.9552340818352081}, {"ruleAttribute": "0vxXkGEq", "ruleCriteria": "MINIMUM", "ruleValue": 0.8655344279654217}, {"ruleAttribute": "IXpcJZRn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5778179092910342}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "2QyHPotV", "ruleCriteria": "MINIMUM", "ruleValue": 0.2309176331249464}, {"ruleAttribute": "QYKs0iuS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6854183903634969}, {"ruleAttribute": "69dgbeEF", "ruleCriteria": "EQUAL", "ruleValue": 0.3640152217423803}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "NAqVVOyJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.8887272144435236}, {"ruleAttribute": "cOayH64V", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3733498298959951}, {"ruleAttribute": "QI5cSxSj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1190366975990681}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'hSvSpaEo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '0NxPHf9y' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "QszOKmOs", "groupIcon": "nSugMvf0", "groupName": "HCS5YZwd", "groupRegion": "oGuIyJOS", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'xvRkjPDI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'zop1PU1K' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "syAg7Onq", "groupIcon": "9IwkNfqR", "groupName": "pegYDPpY", "groupRegion": "WEmpGjey", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'wFda5bA0' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"90zOzv4R": {}, "8yFgmsTL": {}, "Po9afNEA": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'NhfT56jm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'Zp2mSBpf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'zWMcVBOl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'Yca3NCyr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'cxub9D1a' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'HhwzR2VZ' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '76' \
    --order 'D8j4doSv' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'eQCjlv9R' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"cglhEr4A": {}, "Bf8WGHyX": {}, "xw7VveIO": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'NcsnG9V1' \
    --groupId 'pnd0olat' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Qv2QSHw0", "ruleCriteria": "EQUAL", "ruleValue": 0.04462456264953274}, {"ruleAttribute": "4LEPj9qn", "ruleCriteria": "EQUAL", "ruleValue": 0.6558698022311512}, {"ruleAttribute": "Y43tTaOY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.28833197977993086}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'gWAuxWdD' \
    --groupId 'FshPH48i' \
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
    --limit '24' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'gMeOHWeL' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "e7dSrH8P"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'ZevnufRc' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "EWi2qkpB"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'iLXVWqNV' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'esVYwC7C' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KhbKFHyg' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '8h6kXAH4' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tgodM0kW' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["bxP73XUg", "rUZDhxEZ", "AUasgJO5"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'zAA5msWU' \
    --limit '94' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'nLQflzF1' \
    --namespace $AB_NAMESPACE \
    --userId 'zmX9WEqw' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "k9noVzAx", "customAttributes": {"71M8E2RZ": {}, "RwoX711n": {}, "s9e3Or7D": {}}, "groupDescription": "LpO8TVHD", "groupIcon": "hVg6tcOY", "groupMaxMember": 53, "groupName": "h60fqCs4", "groupRegion": "ZdlZb8KN", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "QQrskUvZ", "ruleCriteria": "EQUAL", "ruleValue": 0.45837901112495005}, {"ruleAttribute": "WRsbDGfY", "ruleCriteria": "MINIMUM", "ruleValue": 0.07257433687243409}, {"ruleAttribute": "PIbo1EGI", "ruleCriteria": "MINIMUM", "ruleValue": 0.7521364289921613}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "D7UMZnL7", "ruleCriteria": "MINIMUM", "ruleValue": 0.5042383537519208}, {"ruleAttribute": "nVuJdXMV", "ruleCriteria": "MINIMUM", "ruleValue": 0.6659154906480822}, {"ruleAttribute": "kIK8TKJz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.006255688441125784}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "0wnH90pY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6450627972368442}, {"ruleAttribute": "H2QaiaVJ", "ruleCriteria": "EQUAL", "ruleValue": 0.40787257852237}, {"ruleAttribute": "wXGaQ8nL", "ruleCriteria": "MINIMUM", "ruleValue": 0.6937363077828345}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["Jqwf2LcX", "ihPXiySL", "HUnQI9lu"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '2CE9B8eA' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "oxSxjC3Z", "groupIcon": "TSL1GeOj", "groupName": "MtCKtFUT", "groupRegion": "nvaaapZX", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'YjCQYrVb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'qDWsjeJZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "5OIgSyCX", "groupIcon": "yn0vzJGP", "groupName": "YCaRePyJ", "groupRegion": "TuzaOy38", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'nRnGlb8p' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zSXCX57d": {}, "7xfkxUkB": {}, "RluL81OS": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'iXRNcbIe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'URG0qSc8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'OX2NJsqg' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'PoL9sr2x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '4MXgDMAU' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 's8DjO1lE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '1mzLLip6' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"V0GfMrcR": {}, "VY4PO9zR": {}, "rZfYTDrE": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'ydANDxxz' \
    --groupId 'cOKwUJKo' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "RGH9QFqo", "ruleCriteria": "EQUAL", "ruleValue": 0.7066192993160312}, {"ruleAttribute": "mTj4PHCD", "ruleCriteria": "MINIMUM", "ruleValue": 0.02853982515848763}, {"ruleAttribute": "xydFvAz1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4722892229227964}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '0zO4UBU7' \
    --groupId 'QpJKYjWT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '2dZPjToo' \
    --memberRoleId 'DeRzIakX' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "fdQ5dfOb"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'LNagfNX6' \
    --memberRoleId 'IrBQq7YJ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "wj0JrHfg"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'aFbjXHiL' \
    --namespace $AB_NAMESPACE \
    --userId 'CHSEDFYv' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'xIL5a3yM' \
    --namespace $AB_NAMESPACE \
    --userId 'vIKeTSoh' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 's9OBlo9D' \
    --namespace $AB_NAMESPACE \
    --userId '9yQXd2Rs' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'A2MGT1tE' \
    --namespace $AB_NAMESPACE \
    --userId 'ZtRP8RM5' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'GDR4Cuib' \
    --namespace $AB_NAMESPACE \
    --userId 'GYWwgBJm' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '1DpqLtPV' \
    --namespace $AB_NAMESPACE \
    --userId 'yzK1k9hL' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE