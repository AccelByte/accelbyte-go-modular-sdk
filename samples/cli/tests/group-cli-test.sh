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
    --offset '85' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "jDt1bWSz", "description": "fchAYjRx", "globalRules": [{"allowedAction": "KBhFAt1N", "ruleDetail": [{"ruleAttribute": "d99Oqwfx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3295766608963131}, {"ruleAttribute": "PELdURqC", "ruleCriteria": "MINIMUM", "ruleValue": 0.6319422262812281}, {"ruleAttribute": "ytz1BLHh", "ruleCriteria": "EQUAL", "ruleValue": 0.11974518555991942}]}, {"allowedAction": "WkUy6HLq", "ruleDetail": [{"ruleAttribute": "NlW8lcr8", "ruleCriteria": "EQUAL", "ruleValue": 0.44856566849294643}, {"ruleAttribute": "XtPKyfAs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3406171390263045}, {"ruleAttribute": "lrvqpWI2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.37589671653733603}]}, {"allowedAction": "W4xfx3pR", "ruleDetail": [{"ruleAttribute": "uD1qj929", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8611223790708374}, {"ruleAttribute": "BgQEPESw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7898695809635052}, {"ruleAttribute": "tEEm2PPb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6768084755074301}]}], "groupAdminRoleId": "fRqE0rG9", "groupMaxMember": 69, "groupMemberRoleId": "8ZqdViQv", "name": "fDrnyrvW"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '0EZYM0m0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'yQIXhxLr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'EnjbwsA5' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "FtBk2mOa", "groupMaxMember": 19, "name": "AelGvvVQ"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'pVedyHLQ' \
    --configurationCode 'lRCsICcN' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "5KnYlbaF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.021506160823094755}, {"ruleAttribute": "ksWgzcIR", "ruleCriteria": "EQUAL", "ruleValue": 0.31483714195296286}, {"ruleAttribute": "9bSj11GW", "ruleCriteria": "EQUAL", "ruleValue": 0.5716523731580859}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'HjSXaZKq' \
    --configurationCode 'wAAfWkyU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'HPgykuew' \
    --groupName 'lq7G0GhI' \
    --groupRegion 'ixzqBdKm' \
    --limit '27' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'yDyAdNp9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '4yxc0AnV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'hPTqnuKu' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '54' \
    --order 'OQ7Ia8FE' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "IH1isvji", "memberRolePermissions": [{"action": 39, "resourceName": "mjVBf0fe"}, {"action": 7, "resourceName": "ANAjiew1"}, {"action": 64, "resourceName": "cahX3eOM"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'YWlHC0Ni' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'PUNfSJL6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'c6anLdKP' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "eCAGV6BQ"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'QxcGcXAr' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 76, "resourceName": "zCuox2Ql"}, {"action": 99, "resourceName": "igwf7bWi"}, {"action": 59, "resourceName": "TtBooLkK"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'DvsjnxDE' \
    --groupRegion 'Dmzd66WU' \
    --limit '2' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "7X95FBds", "customAttributes": {"hPMIYlgE": {}, "ISobFxpS": {}, "QSsahfaA": {}}, "groupDescription": "2qB2mfL7", "groupIcon": "9sfH84TC", "groupMaxMember": 88, "groupName": "ifHSGphu", "groupRegion": "Lr30IfDe", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "ljDeYkDQ", "ruleDetail": [{"ruleAttribute": "eroH3SFC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6166138405493753}, {"ruleAttribute": "fPv1VEMB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.33904099398876764}, {"ruleAttribute": "n9mk8Ojs", "ruleCriteria": "MINIMUM", "ruleValue": 0.13644555444465356}]}, {"allowedAction": "ZLJ6BSHR", "ruleDetail": [{"ruleAttribute": "KsqHe0WC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5158241082230987}, {"ruleAttribute": "y5veDHNz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9871804703453925}, {"ruleAttribute": "XUHS8ohT", "ruleCriteria": "EQUAL", "ruleValue": 0.9215991582441464}]}, {"allowedAction": "bWyJXWTh", "ruleDetail": [{"ruleAttribute": "PSRfaORA", "ruleCriteria": "MINIMUM", "ruleValue": 0.3948242806658785}, {"ruleAttribute": "yN7APqbc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47039801020798533}, {"ruleAttribute": "CWZ8h1wl", "ruleCriteria": "EQUAL", "ruleValue": 0.4360750454788962}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'c26DeRZe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'Z3B4h4PX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "VZmLbTiT", "groupIcon": "fDmHxUyG", "groupName": "rxY8hSwG", "groupRegion": "tO9wK6R4", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'Kru72p6S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'AKQQM0mh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "KtdNkR81", "groupIcon": "t2fc7nej", "groupName": "2WM2QaRG", "groupRegion": "IUTBHwpR", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '4h7MeFPK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"TdYVZG42": {}, "SQTJLafE": {}, "dwoBL2la": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'Vek6y7x7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'oq0Kfe6V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'cbsXD2q3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'Tr2HX67F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '9cG9TNyH' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'Mv6Yu52K' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '50' \
    --order '4SV0gQLP' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'D1ShzbWu' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"jcg0pA6H": {}, "icQEap1I": {}, "BiPVJWST": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'TZJATFRC' \
    --groupId 'quF5hGYz' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "AGsY05dN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2333102292284348}, {"ruleAttribute": "jcijgUTj", "ruleCriteria": "EQUAL", "ruleValue": 0.4247432259847923}, {"ruleAttribute": "pxuPabA4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5560853135072851}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '95Do1axq' \
    --groupId 'ojQUvqgV' \
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
    --limit '99' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'PukRzqDS' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "AFXFU2Cb"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'F6pqPFwN' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "YT9oY3jI"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZFZ2b8ao' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'el5OrrJe' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EdMG1tyr' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vLJwoyHK' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '09NsoAmW' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["j1vFTBWV", "Fr4EUngT", "2Zp4wdBl"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId '4rOpBwrQ' \
    --limit '34' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'hRXDcRAg' \
    --namespace $AB_NAMESPACE \
    --userId 'MqRK4AGe' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "parUSohi", "customAttributes": {"lH2tnnGo": {}, "9iPUGcr5": {}, "CLzc5OvL": {}}, "groupDescription": "f1HVndb5", "groupIcon": "MghKi07a", "groupMaxMember": 95, "groupName": "Vf8nZdDt", "groupRegion": "aqNzGKmW", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "ex7xnBz8", "ruleDetail": [{"ruleAttribute": "UxR3rzB6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14760037297419093}, {"ruleAttribute": "7U7PuK9u", "ruleCriteria": "MINIMUM", "ruleValue": 0.7287403238065435}, {"ruleAttribute": "FkhDL5hm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8656385702854045}]}, {"allowedAction": "MvPBq39F", "ruleDetail": [{"ruleAttribute": "BNUoPM7i", "ruleCriteria": "MAXIMUM", "ruleValue": 0.36428618021927484}, {"ruleAttribute": "pydRgg9m", "ruleCriteria": "EQUAL", "ruleValue": 0.9428439623822308}, {"ruleAttribute": "4jb7vQMG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.03131051202565771}]}, {"allowedAction": "aWPLDrGj", "ruleDetail": [{"ruleAttribute": "D81UkLH0", "ruleCriteria": "EQUAL", "ruleValue": 0.386783606071076}, {"ruleAttribute": "0AbC0D6J", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9483027589473277}, {"ruleAttribute": "jgYFd5LC", "ruleCriteria": "MINIMUM", "ruleValue": 0.8703048479592229}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["mFOZFA9p", "TeL6oohY", "eI0GlWbj"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'RC1B3M9L' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "mGV7tUI1", "groupIcon": "Ok2mfYKT", "groupName": "StBspvhc", "groupRegion": "rkEZ4VPO", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'MPvX8xTF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'ViUcFTjs' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "tQcVnfrb", "groupIcon": "nFC2gO6E", "groupName": "ME1faVSF", "groupRegion": "vZmHhjrW", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'xmZdbzpm' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"8y905Vng": {}, "S7HUuwhr": {}, "ln0Knc8Y": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'wMDmdAQR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'woeYu6HE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'pdfY1Qqu' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'nFkZ6718' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'tBWehN3y' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'UlcwuxpF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'PgbWVH8N' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"FbdjrzT6": {}, "sB8iEtbV": {}, "WROAZLPb": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'xQ2vGUUC' \
    --groupId 'yu6Qtn1D' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "wZ9qmMu2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7926217253191696}, {"ruleAttribute": "F4ZuJ1Vh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18364905158555278}, {"ruleAttribute": "F1XtL9iT", "ruleCriteria": "MINIMUM", "ruleValue": 0.7221185475284514}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'vKgvr65Z' \
    --groupId 'W9AXW5ZV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'Fbu1EmM6' \
    --memberRoleId 'deTi1znR' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "3PHQSVOe"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'y2xDXy5H' \
    --memberRoleId 'hXrSMzkQ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Kn3IYzY8"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'BlZUTi6k' \
    --namespace $AB_NAMESPACE \
    --userId 'Z8mVXFnY' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'Ug8KDAqx' \
    --namespace $AB_NAMESPACE \
    --userId '3PrFv1af' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'qiAeSJgj' \
    --namespace $AB_NAMESPACE \
    --userId 'FsZc5b8p' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'y7Soxk1z' \
    --namespace $AB_NAMESPACE \
    --userId 'GSZiW8uy' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'LTB9OUuq' \
    --namespace $AB_NAMESPACE \
    --userId 'dIVJQZ5Y' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'TzsKsvNZ' \
    --namespace $AB_NAMESPACE \
    --userId 'z9wvA8Rn' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE