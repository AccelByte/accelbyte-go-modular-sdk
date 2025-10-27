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
    --limit '3' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "cvArXhWy", "description": "qbZqlkSC", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "8gg5ItHB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6811265053800196}, {"ruleAttribute": "nnNAo7SE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5152312140278569}, {"ruleAttribute": "mRNLKtxp", "ruleCriteria": "EQUAL", "ruleValue": 0.9414543023650919}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "n4ntjCSH", "ruleCriteria": "MINIMUM", "ruleValue": 0.05564156104117779}, {"ruleAttribute": "pq9NQoyD", "ruleCriteria": "MINIMUM", "ruleValue": 0.8421485400330775}, {"ruleAttribute": "PUABajYH", "ruleCriteria": "MINIMUM", "ruleValue": 0.22134143678405305}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "RfGJMYNs", "ruleCriteria": "EQUAL", "ruleValue": 0.4073333905782345}, {"ruleAttribute": "sbLqGiVG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.43994010157985175}, {"ruleAttribute": "8erv0Qvc", "ruleCriteria": "MINIMUM", "ruleValue": 0.9723780577058694}]}], "groupAdminRoleId": "GH4fiXHn", "groupMaxMember": 29, "groupMemberRoleId": "Oq6cGdho", "name": "7M95FGn7"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'nBoUifHw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'WTs0tAVp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'OfJdIZPc' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "UShKeAkA", "groupMaxMember": 38, "name": "HULTDues"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'aYHQdMOm' \
    --configurationCode 'CGlF5tey' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "6nhkdiAu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1203097030839827}, {"ruleAttribute": "fO1ZVyua", "ruleCriteria": "MINIMUM", "ruleValue": 0.5732967580067649}, {"ruleAttribute": "OMieKeJX", "ruleCriteria": "EQUAL", "ruleValue": 0.6073820260067209}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '8MYR6QpA' \
    --configurationCode '4PfpdU6r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'Vq07VBdI' \
    --groupName 'x6PwYdac' \
    --groupRegion 'r3kZdbDi' \
    --limit '81' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'e3WZKGi1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'K3j4PCTt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'tVosSj8O' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '92' \
    --order '4PoYm1Iz' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "zQi2PF2V", "memberRolePermissions": [{"action": 57, "resourceName": "lHKrmbI7"}, {"action": 26, "resourceName": "Ifx4jNXk"}, {"action": 66, "resourceName": "HHQU6bU3"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'n9hxp0al' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'b9zNAJqo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'Kh72KuFJ' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "5zvfnVA3"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'zekUsbaK' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 69, "resourceName": "jrZbDJ06"}, {"action": 63, "resourceName": "t3D97K1S"}, {"action": 75, "resourceName": "JNeC09lW"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '4BXQWWBu' \
    --groupRegion 'zwiLMt8t' \
    --limit '91' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "zF2qBzaf", "customAttributes": {"wMejB6kZ": {}, "Mk512ocX": {}, "h4BI5tIy": {}}, "groupDescription": "9q48TrPS", "groupIcon": "p1RJa3pS", "groupMaxMember": 58, "groupName": "WJxnILHz", "groupRegion": "ZRo2YQ10", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "33NNlMyx", "ruleCriteria": "EQUAL", "ruleValue": 0.011565741847494038}, {"ruleAttribute": "evvL5qlx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9250734146445612}, {"ruleAttribute": "TOqOkakE", "ruleCriteria": "MINIMUM", "ruleValue": 0.0808312239747877}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "cNEgA80V", "ruleCriteria": "EQUAL", "ruleValue": 0.5799490730061281}, {"ruleAttribute": "K5q9XBoH", "ruleCriteria": "EQUAL", "ruleValue": 0.014834704876676263}, {"ruleAttribute": "w78sucbl", "ruleCriteria": "MINIMUM", "ruleValue": 0.7876528216453794}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "gTpXI2LW", "ruleCriteria": "MINIMUM", "ruleValue": 0.516273790902458}, {"ruleAttribute": "pl801z9E", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8366138631756981}, {"ruleAttribute": "tWdAiibG", "ruleCriteria": "EQUAL", "ruleValue": 0.517052690741111}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'VkhB0RtQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'NIpLfBSQ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "xiW07EEf", "groupIcon": "uXhsf3H3", "groupName": "sA5Mu5ev", "groupRegion": "TU50Wjlu", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '55EoNs40' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '77pYB8LY' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "r1LiGiCl", "groupIcon": "zHZtHWKJ", "groupName": "evIz3AK4", "groupRegion": "rFkQuGFs", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'Rmk1FrJM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"DIgJnovD": {}, "Om5GY7S2": {}, "ZgY3e8ZJ": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'gWCzQikU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'NMYEtJYG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'IdZICOvb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'lJy1uwBb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'H8LegJGW' \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'hZlZI4iw' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '76' \
    --order '0bIXWUpi' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '3YwmMBym' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"fN9X0crv": {}, "O4KjxB0O": {}, "GBl1Gwh4": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'K0A68nJU' \
    --groupId '2qm1JLsF' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "F8JLuHI1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.01725937765377894}, {"ruleAttribute": "nzdo0amD", "ruleCriteria": "MINIMUM", "ruleValue": 0.4224296649174868}, {"ruleAttribute": "FUkd2yAg", "ruleCriteria": "EQUAL", "ruleValue": 0.09094898978631383}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'f9cuL8mu' \
    --groupId 'O3QmMT1P' \
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
    --limit '75' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId '2O0hzxfv' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ZgkPosGQ"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'ENC37Axt' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "QtPqCGJo"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ymU8g5PA' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Uzcp15ZA' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BuJBjcZT' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LnaF6gJD' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aReXuvKZ' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["MHnSY1lV", "nT3pUs9n", "OCZrBZ32"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'jppYUage' \
    --limit '52' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'T2yPDVhA' \
    --namespace $AB_NAMESPACE \
    --userId 'pphK0KVT' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "c7aCpoAr", "customAttributes": {"qH2xgd6d": {}, "TCGVsUK4": {}, "Pu84JSHL": {}}, "groupDescription": "7jpfc4Le", "groupIcon": "rs57u8vY", "groupMaxMember": 5, "groupName": "tYn2Khxi", "groupRegion": "phLJq03V", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "JTn7Hxhq", "ruleCriteria": "EQUAL", "ruleValue": 0.5181056986136672}, {"ruleAttribute": "kTyrfhho", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9218038478686029}, {"ruleAttribute": "KA8hDyyI", "ruleCriteria": "EQUAL", "ruleValue": 0.6792295320832747}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "Reg3Jg3p", "ruleCriteria": "MAXIMUM", "ruleValue": 0.04916880672830959}, {"ruleAttribute": "8i8mt5hb", "ruleCriteria": "EQUAL", "ruleValue": 0.8611690670970138}, {"ruleAttribute": "x7S0lP7U", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5074486563418547}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "vaVEeXon", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9133773890009312}, {"ruleAttribute": "kVs8EHud", "ruleCriteria": "EQUAL", "ruleValue": 0.9121866840893564}, {"ruleAttribute": "e6KY0JOq", "ruleCriteria": "MINIMUM", "ruleValue": 0.13065479247690426}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["rRxWgmfv", "kT1Ey0lf", "QPCagR4O"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '68DfI1ZW' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "iUJTVcVi", "groupIcon": "0nYWDaND", "groupName": "9xv6i5CT", "groupRegion": "nqdzNBzT", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'wSybIEZJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'm8v1euWy' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "CK0tURfY", "groupIcon": "sTZZpCcR", "groupName": "dyT7CBSt", "groupRegion": "slYgFRQF", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'YwaX6wZJ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"dYIxSHSb": {}, "9hulrSqQ": {}, "CvhDoOhz": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'DRwDSNGs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'R21WSPIc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'drPWb41w' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '2wa0wozM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'ZZWhYpGV' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'w2OuOsWM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'GBjTNpZx' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"TjQ4kpLa": {}, "cE7BijK8": {}, "ALw88Uvj": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '2fGJdtSF' \
    --groupId 'FeRr75IP' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "QK7B3k84", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7081782945664284}, {"ruleAttribute": "nUnGMRSY", "ruleCriteria": "EQUAL", "ruleValue": 0.8061409521603241}, {"ruleAttribute": "4ciBVuFs", "ruleCriteria": "MINIMUM", "ruleValue": 0.807335682463802}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'DkhAgZOV' \
    --groupId '9W3HnzDI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'Dmd8DIaq' \
    --memberRoleId 'M4XLLGZS' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "AFgcastN"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'IYYAiNXc' \
    --memberRoleId 'h3yByOBC' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Bizs6QCJ"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'WiYhteWN' \
    --namespace $AB_NAMESPACE \
    --userId 'YS3FOJI1' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'tLNOOF3s' \
    --namespace $AB_NAMESPACE \
    --userId 'MOjIRMBD' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'Bbu23Emf' \
    --namespace $AB_NAMESPACE \
    --userId '7wfYeUhX' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'lNlyAJnI' \
    --namespace $AB_NAMESPACE \
    --userId 'RwiWQU42' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'XNfBCEYE' \
    --namespace $AB_NAMESPACE \
    --userId 'YH7jNs6p' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'P6pmBv39' \
    --namespace $AB_NAMESPACE \
    --userId 'noY2O1RE' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE