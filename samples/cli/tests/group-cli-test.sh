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
    --limit '17' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "04Uyextp", "description": "8OL5rYeY", "globalRules": [{"allowedAction": "aLQZ8z2r", "ruleDetail": [{"ruleAttribute": "6gwSh09u", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8990306633534879}, {"ruleAttribute": "uCtpUyAu", "ruleCriteria": "EQUAL", "ruleValue": 0.6776743367317158}, {"ruleAttribute": "IxrOUypr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6283053180830213}]}, {"allowedAction": "EGmf5Owg", "ruleDetail": [{"ruleAttribute": "WjIafSUn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.27503528034832014}, {"ruleAttribute": "JQcPRral", "ruleCriteria": "EQUAL", "ruleValue": 0.05876300907639709}, {"ruleAttribute": "27lHcktg", "ruleCriteria": "MINIMUM", "ruleValue": 0.5301657726407083}]}, {"allowedAction": "6Cj4O3nF", "ruleDetail": [{"ruleAttribute": "5iVML8GS", "ruleCriteria": "MINIMUM", "ruleValue": 0.37306244105368913}, {"ruleAttribute": "YEuMkLtT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5977094021365189}, {"ruleAttribute": "3xk3S3I8", "ruleCriteria": "EQUAL", "ruleValue": 0.9581692341791359}]}], "groupAdminRoleId": "6TGihCuG", "groupMaxMember": 80, "groupMemberRoleId": "FQ2rnCxc", "name": "pyh3usBq"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'T8NPACI4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'tokghjkO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'fYCxT9XZ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2yVafDK8", "groupMaxMember": 43, "name": "3pYyUOtu"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '0ZweSJ9L' \
    --configurationCode 'KABQlQZ4' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "fQgHQMiP", "ruleCriteria": "MINIMUM", "ruleValue": 0.6185496045917392}, {"ruleAttribute": "rrID0Acl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7711215538456155}, {"ruleAttribute": "dGgshwjR", "ruleCriteria": "EQUAL", "ruleValue": 0.4469696414905149}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'jbexco0P' \
    --configurationCode 'wPCBJ2ql' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'KyliLvoV' \
    --groupName 'd3MMUMeQ' \
    --groupRegion 'wDd9NE7O' \
    --limit '33' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'pMM0SxGc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'o281GIBH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'BHOw3ZbD' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '40' \
    --order 'vWxZYtZE' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "rTZMUEkm", "memberRolePermissions": [{"action": 61, "resourceName": "tG03fjka"}, {"action": 63, "resourceName": "orSUI6rb"}, {"action": 99, "resourceName": "Z0eUwojH"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'vuJTQh1w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'Wyh979VK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'f2mRZyay' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "eVYYTPQQ"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'dNgigWlU' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 81, "resourceName": "RFsoAuOv"}, {"action": 6, "resourceName": "anWep5DX"}, {"action": 34, "resourceName": "lIGchJVx"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'NMD31b6G' \
    --groupRegion 'leQsv7aF' \
    --limit '24' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "R8gOnBwL", "customAttributes": {"AIxPfZ9V": {}, "LTUl2Ult": {}, "rQjHp4ly": {}}, "groupDescription": "cJYGQhEK", "groupIcon": "vRnkfiNn", "groupMaxMember": 38, "groupName": "XZ91rNfE", "groupRegion": "UJYX5aIm", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "81d8bh52", "ruleDetail": [{"ruleAttribute": "LCZBNuXt", "ruleCriteria": "EQUAL", "ruleValue": 0.765718796542643}, {"ruleAttribute": "k2eDSf5M", "ruleCriteria": "EQUAL", "ruleValue": 0.39278313946402144}, {"ruleAttribute": "WgF67sBc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.13256957523429624}]}, {"allowedAction": "Zvd9y12M", "ruleDetail": [{"ruleAttribute": "nu6GiqmP", "ruleCriteria": "EQUAL", "ruleValue": 0.39009031219950174}, {"ruleAttribute": "kdYHpWJq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11772683660375394}, {"ruleAttribute": "UyjRa5ZG", "ruleCriteria": "MINIMUM", "ruleValue": 0.09467486682934367}]}, {"allowedAction": "evUduqQA", "ruleDetail": [{"ruleAttribute": "pCJA4l6Q", "ruleCriteria": "EQUAL", "ruleValue": 0.3382334795397286}, {"ruleAttribute": "bSiBT7bG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.38986748316336783}, {"ruleAttribute": "GxW290ib", "ruleCriteria": "EQUAL", "ruleValue": 0.36311658120940904}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '8TZQQ8Fl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'V29ZkZwh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "sR68ntmT", "groupIcon": "3U2LKUqn", "groupName": "OhBKUw01", "groupRegion": "XmIqeA74", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'SxREBE5F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'TlTOjycJ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "qhiFsxcx", "groupIcon": "Pzz4qfMi", "groupName": "H6Zryl3m", "groupRegion": "EkSd5il3", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '1Jo0It7X' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"rBUfJbRg": {}, "j6weyJp8": {}, "91embmoA": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'ZzyL6KU5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '4b8uWzvh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '1KudThvF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'IzONUyH1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '0ufAC7Vt' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'f6tSU2dz' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '20' \
    --order 'bRs9GnzO' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'GKyxL0Ju' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"yhnHqdtG": {}, "hsQWBVWB": {}, "WXtZW5Bd": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'J87Of3p6' \
    --groupId 'gl7Z0t39' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "pSpT9RZv", "ruleCriteria": "EQUAL", "ruleValue": 0.6880457105131192}, {"ruleAttribute": "NIPvi7BT", "ruleCriteria": "MINIMUM", "ruleValue": 0.9511905599678224}, {"ruleAttribute": "MKUBi5Bd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24060843783404906}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'If5gOswD' \
    --groupId 'Rfm7gskm' \
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
    --limit '31' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'sRwLIVYT' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "bAvwRQ3i"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId '45ixENF7' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "jWJo1NQl"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XmAsRWUJ' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Kx6bqdld' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'F5xewChN' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BGs5n3BW' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '0Oy2svMG' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["yoPaJqZH", "C5SKXtoC", "C1YNMpcE"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Ntpxu8ts' \
    --limit '25' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'wSZ3mwwP' \
    --namespace $AB_NAMESPACE \
    --userId 'RPGWZlAv' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "oJVZbM5E", "customAttributes": {"GOtZGLYf": {}, "wslpPzNd": {}, "zsxC5BnH": {}}, "groupDescription": "P8jMTqqR", "groupIcon": "UT89Yhld", "groupMaxMember": 47, "groupName": "pA9Iv1Ap", "groupRegion": "imrqSyvg", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "HF8DpuGY", "ruleDetail": [{"ruleAttribute": "muPcQF2n", "ruleCriteria": "MINIMUM", "ruleValue": 0.04157218096037718}, {"ruleAttribute": "jW3LSSUm", "ruleCriteria": "EQUAL", "ruleValue": 0.30881563508387777}, {"ruleAttribute": "juAm54Zd", "ruleCriteria": "EQUAL", "ruleValue": 0.28307923880624786}]}, {"allowedAction": "KBi1eYKF", "ruleDetail": [{"ruleAttribute": "B0CfsfYy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5558165218252108}, {"ruleAttribute": "HeuJJtLf", "ruleCriteria": "EQUAL", "ruleValue": 0.009891512340687525}, {"ruleAttribute": "GCbzqBRp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21086190569614138}]}, {"allowedAction": "FH25LOwD", "ruleDetail": [{"ruleAttribute": "VnNq2DNh", "ruleCriteria": "MINIMUM", "ruleValue": 0.13190531670983074}, {"ruleAttribute": "k9FKbLaT", "ruleCriteria": "MINIMUM", "ruleValue": 0.2745796200670476}, {"ruleAttribute": "7HzfallD", "ruleCriteria": "MINIMUM", "ruleValue": 0.4701971752671237}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["DvVYbJwe", "6K1GKMnq", "DPKTgr4C"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '2s8L38Tj' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "XdT1qYU8", "groupIcon": "LtqLD2df", "groupName": "efHb1Ns8", "groupRegion": "upqbOz7H", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'ePuAfOnl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'CeuE5ox7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "4xUHze1N", "groupIcon": "NT9qOEzR", "groupName": "pq1OcOI1", "groupRegion": "01Yrea13", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '2zd848G6' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"I7uYSLaP": {}, "jPSWVsbQ": {}, "NqH9H37G": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'iMI4uxSL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'e785ry8o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '1OApe8q0' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '3yjrQXtb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'R4TNwptY' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '4lP3JUfl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'heYQxOBx' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"J9kpyrez": {}, "LlnCPHRw": {}, "nj8V397F": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'yAFWUP4A' \
    --groupId 'XlyosKgP' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "3k13TY0m", "ruleCriteria": "EQUAL", "ruleValue": 0.48907665205659345}, {"ruleAttribute": "1TOa2hDA", "ruleCriteria": "MINIMUM", "ruleValue": 0.19064741929497886}, {"ruleAttribute": "wSdjdbIi", "ruleCriteria": "MINIMUM", "ruleValue": 0.21768909293939664}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'TMVeapT7' \
    --groupId 'BsQssDuX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'rgQ4cOOl' \
    --memberRoleId '5I8YcZVE' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "95EnhvBY"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId '7GLsBd2i' \
    --memberRoleId 'PD8iWjFC' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "uz76tKvK"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'PxagwxY0' \
    --namespace $AB_NAMESPACE \
    --userId 'zrZrFJzT' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'o0fQfigd' \
    --namespace $AB_NAMESPACE \
    --userId '78vvrPji' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'U7wzaoB1' \
    --namespace $AB_NAMESPACE \
    --userId 'MehlJjew' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '2gHZTWDo' \
    --namespace $AB_NAMESPACE \
    --userId '8cZm0LuU' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '20on653A' \
    --namespace $AB_NAMESPACE \
    --userId 'RKAvQSPh' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'Ni5wso28' \
    --namespace $AB_NAMESPACE \
    --userId 'Vp0FETBg' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE