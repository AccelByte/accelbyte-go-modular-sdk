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
    --limit '100' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "9mHwv0LI", "description": "QODGi8x4", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "Sj5pOvmU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8858205052491213}, {"ruleAttribute": "Wv9tJGks", "ruleCriteria": "EQUAL", "ruleValue": 0.8894383214569811}, {"ruleAttribute": "gJlm8Zpq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8298792329731829}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "cuUsiZFc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.43904508408666376}, {"ruleAttribute": "DWh4fWv7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6536149296190628}, {"ruleAttribute": "26C6cAo8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10943794517577943}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "aGhcrCtG", "ruleCriteria": "EQUAL", "ruleValue": 0.2031216072825367}, {"ruleAttribute": "KAZ62nGo", "ruleCriteria": "MINIMUM", "ruleValue": 0.10980910077423445}, {"ruleAttribute": "C1GtI69C", "ruleCriteria": "MINIMUM", "ruleValue": 0.7914956157423556}]}], "groupAdminRoleId": "PNo6nXKk", "groupMaxMember": 30, "groupMemberRoleId": "M4u0BZqx", "name": "MZrKJsqY"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '3vp4ldzR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'IeTfHZw6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'TsgZYdN8' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5vN9ATSK", "groupMaxMember": 6, "name": "I4RkrI6w"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'bKqzU3u3' \
    --configurationCode 'NmAeLgCQ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "8uIlFHZR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5211311970196065}, {"ruleAttribute": "l341EeFt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3815347159745066}, {"ruleAttribute": "BYgm16KT", "ruleCriteria": "EQUAL", "ruleValue": 0.9940649493111312}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'Q3lx6Y5K' \
    --configurationCode 'lHryUCAA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'Rm4Svavd' \
    --groupName 'yjeRbVoS' \
    --groupRegion 'DARGohhr' \
    --limit '68' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'w2Yf31j7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '61Jyno9x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'xBJh92QM' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '71' \
    --order 'YVnuOX7z' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "tsiYzqSJ", "memberRolePermissions": [{"action": 92, "resourceName": "G0dyYHeL"}, {"action": 88, "resourceName": "kQOzhSJt"}, {"action": 12, "resourceName": "8uCO02Zf"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'mQVn96ba' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'xZrv4Eue' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '2xKDN4eF' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "G9TiUnlA"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '9mjLIjyr' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 76, "resourceName": "LS49ztbJ"}, {"action": 20, "resourceName": "bMwz1bbF"}, {"action": 68, "resourceName": "JRrevzQv"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'K6GqcwKU' \
    --groupRegion 'PEh8MCmH' \
    --limit '50' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "UdUjEmrO", "customAttributes": {"Gi1erjK0": {}, "DlTZsljn": {}, "I4OeRToG": {}}, "groupDescription": "MGjuMIlB", "groupIcon": "sZmF65mX", "groupMaxMember": 41, "groupName": "nwj4b75e", "groupRegion": "EKhJPOfC", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "wAbLA7ZS", "ruleCriteria": "MINIMUM", "ruleValue": 0.01743095035757869}, {"ruleAttribute": "ayr6kwIM", "ruleCriteria": "MINIMUM", "ruleValue": 0.7442212814523197}, {"ruleAttribute": "O11QewQP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8926695307629411}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "pUKaod1z", "ruleCriteria": "EQUAL", "ruleValue": 0.13383762983391756}, {"ruleAttribute": "YhpD91Lf", "ruleCriteria": "EQUAL", "ruleValue": 0.9000400559257616}, {"ruleAttribute": "3Vl9gqNU", "ruleCriteria": "MINIMUM", "ruleValue": 0.5483461104623158}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "HM38wB3i", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10438830211752315}, {"ruleAttribute": "mT3HsHLs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8081236783219528}, {"ruleAttribute": "vtI80C5b", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6684778705079936}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '1aMLIKQC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'T9iDatRG' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "78DVeBJp", "groupIcon": "hu3vO8H8", "groupName": "zkZIxxw0", "groupRegion": "dKMuRLIE", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'xHV2DVgc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '3sc7uHs4' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "DYxOxk6v", "groupIcon": "ybhsH6UG", "groupName": "GTOnYZZr", "groupRegion": "voUtr47E", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'kveVRwZT' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"OvHZYiR9": {}, "vgGtNfjm": {}, "MCpyazkU": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'CMLb9snA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '6U1yujZc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'vHIuqBRI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '9iqC1XTI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'VLqjUmwx' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'ykmQerin' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '66' \
    --order 'cHBcR9D9' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'zvnyz6Ic' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"OjO7nDDe": {}, "rvCUYHuh": {}, "yY9gMNsQ": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 's6nO3E6O' \
    --groupId 'mDXsc4fe' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "2cfKfD8u", "ruleCriteria": "EQUAL", "ruleValue": 0.06095911178250113}, {"ruleAttribute": "YQjPQTN9", "ruleCriteria": "EQUAL", "ruleValue": 0.16020497358323527}, {"ruleAttribute": "7u9JfCbP", "ruleCriteria": "EQUAL", "ruleValue": 0.030952710785921767}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'NEvlJUK1' \
    --groupId 'qd4I1Rhi' \
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
    --limit '13' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'UKSmzfb2' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "vVUzARxz"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'RfW0ckyL' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "YvdHxhgr"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WTnnqQUo' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'H9IfSDI0' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xorGKNbo' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aB3DBQXh' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kMNxLFSv' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["XGid9xum", "v58Crtt4", "6q0h2Bzt"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'vJQCyOWx' \
    --limit '85' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'BDuLTnlS' \
    --namespace $AB_NAMESPACE \
    --userId '1O8iyAz3' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "bkdPVwxM", "customAttributes": {"1q2YOibb": {}, "YdagAAFI": {}, "d03zG80N": {}}, "groupDescription": "yGYIjoCw", "groupIcon": "UgBb4iww", "groupMaxMember": 94, "groupName": "tdmDlC21", "groupRegion": "2hjU0aUP", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "FCTFjp8m", "ruleCriteria": "MINIMUM", "ruleValue": 0.33266745756541916}, {"ruleAttribute": "KHumPJLI", "ruleCriteria": "MINIMUM", "ruleValue": 0.3328965433085197}, {"ruleAttribute": "sC6sng7g", "ruleCriteria": "EQUAL", "ruleValue": 0.029381430642516637}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "9KhyrxuK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5231298106558987}, {"ruleAttribute": "vb3haEYm", "ruleCriteria": "EQUAL", "ruleValue": 0.0685509628280575}, {"ruleAttribute": "hRWbjQdt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3546211742706036}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "lyO39w82", "ruleCriteria": "MAXIMUM", "ruleValue": 0.04144270906652536}, {"ruleAttribute": "AAXHndzQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3796799938882678}, {"ruleAttribute": "t2Tbkvjc", "ruleCriteria": "EQUAL", "ruleValue": 0.27343012702286185}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["C0Esmxih", "3AHYav5o", "jGNr0ljD"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '0LrnFUvu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "YtZGGpO3", "groupIcon": "d1AAFWQv", "groupName": "4GCMQANE", "groupRegion": "R72Q7DG7", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'vfhAWLTU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '6pZXJXs3' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "IcF6JK8O", "groupIcon": "ekIqiO79", "groupName": "CYP2Z7y3", "groupRegion": "f7038EBm", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'DOxNkJdH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"FmgetdVV": {}, "pReK1ncU": {}, "iBpDa7fS": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'coBDyNrq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '60DfJIpx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'BkX779V6' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'sUC33tX0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'A9F4tpBL' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '5N53w08D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'EFHtQoTJ' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"7OAobyx6": {}, "hRDP33hh": {}, "9YsjbTfy": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'ReW8PlFb' \
    --groupId 'pBnK4hSs' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Zo6bIw02", "ruleCriteria": "EQUAL", "ruleValue": 0.24230339902829157}, {"ruleAttribute": "0G8eHFNF", "ruleCriteria": "EQUAL", "ruleValue": 0.9424258991690003}, {"ruleAttribute": "xJ629mbI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.22277940143748454}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'C5SxYb6P' \
    --groupId 'eVsZ2yyZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'MgH2RSMY' \
    --memberRoleId 'Eor72nTV' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "CCuEqp28"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId '5RF3BFO3' \
    --memberRoleId 'wCuLKtJb' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "OCnOWztZ"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'K2dPqUMs' \
    --namespace $AB_NAMESPACE \
    --userId 'uMUGN7Qd' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'PCYhcdEr' \
    --namespace $AB_NAMESPACE \
    --userId 'CcqGmneC' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'izzsUgx8' \
    --namespace $AB_NAMESPACE \
    --userId 'X1v1Y2ks' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'YzO0BZFF' \
    --namespace $AB_NAMESPACE \
    --userId 'ANtuPLQY' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'IBQCTmUV' \
    --namespace $AB_NAMESPACE \
    --userId 'K2v7nIFh' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'kIleCd0u' \
    --namespace $AB_NAMESPACE \
    --userId 'wbBL0bXT' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE