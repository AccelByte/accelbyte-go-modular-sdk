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
    --limit '38' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "i6PAzyM9", "description": "h0qPcl4I", "globalRules": [{"allowedAction": "W8J9QIwZ", "ruleDetail": [{"ruleAttribute": "s59vMLQB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6156668168295167}, {"ruleAttribute": "ZZzSFu2K", "ruleCriteria": "EQUAL", "ruleValue": 0.05923603909763275}, {"ruleAttribute": "Grk6YXbi", "ruleCriteria": "EQUAL", "ruleValue": 0.5826925392485107}]}, {"allowedAction": "nWkBtFIo", "ruleDetail": [{"ruleAttribute": "ZihvOP4T", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8623155850211479}, {"ruleAttribute": "gRYtkFU4", "ruleCriteria": "MINIMUM", "ruleValue": 0.8566685382010916}, {"ruleAttribute": "7nZF71Lm", "ruleCriteria": "EQUAL", "ruleValue": 0.3507561551256837}]}, {"allowedAction": "VxAj0uJC", "ruleDetail": [{"ruleAttribute": "Mqx8ZvbM", "ruleCriteria": "MINIMUM", "ruleValue": 0.7831840910344516}, {"ruleAttribute": "D3OCVPk3", "ruleCriteria": "EQUAL", "ruleValue": 0.11438247876395546}, {"ruleAttribute": "sRMS9FR5", "ruleCriteria": "MINIMUM", "ruleValue": 0.19070625302221988}]}], "groupAdminRoleId": "sIyPMzhw", "groupMaxMember": 16, "groupMemberRoleId": "5WFcFmjM", "name": "o5Zt9heC"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'Kv1ubAQ5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'RcfMAfMg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'WzWDYoxi' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "guGq27aZ", "groupMaxMember": 51, "name": "mo23Y1O1"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '7O891Wbc' \
    --configurationCode 'X5zITfSg' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "n0tNDfGR", "ruleCriteria": "EQUAL", "ruleValue": 0.6981326953701619}, {"ruleAttribute": "9atbB9RQ", "ruleCriteria": "EQUAL", "ruleValue": 0.4089210215688003}, {"ruleAttribute": "Ds6tj1cP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21617470258409055}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'iXq8UTtm' \
    --configurationCode 'LpXfQB92' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'rGfFL5Rx' \
    --groupName 'ZcRMMX4J' \
    --groupRegion 'WmcLeOLE' \
    --limit '65' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'dZvSOGp5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'rmsIO2J4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'Dwpy1drD' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '36' \
    --order 'qr7X8CR6' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "1931LAM8", "memberRolePermissions": [{"action": 34, "resourceName": "aYGKTp5C"}, {"action": 41, "resourceName": "xtxov8BA"}, {"action": 22, "resourceName": "mAasH4Kb"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'XabUVlw7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'ZeRcTUIp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'HLsyj97S' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "iJ52HRkq"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'QBhduGQg' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 92, "resourceName": "npEqMBUe"}, {"action": 1, "resourceName": "IUV0FBBn"}, {"action": 7, "resourceName": "4BeNM14l"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'aGzqjz8V' \
    --groupRegion '2JAyxqdc' \
    --limit '96' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "A8FHnMtt", "customAttributes": {"dwysNI9v": {}, "BEQcjVxs": {}, "xf0BOwAz": {}}, "groupDescription": "MaeOsa4o", "groupIcon": "zX7auTko", "groupMaxMember": 80, "groupName": "Uu4hl425", "groupRegion": "njdhTL3j", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "9RWF3iub", "ruleDetail": [{"ruleAttribute": "LGF5s4nX", "ruleCriteria": "EQUAL", "ruleValue": 0.41416195899471286}, {"ruleAttribute": "5WDwBUCV", "ruleCriteria": "MINIMUM", "ruleValue": 0.6537464313873346}, {"ruleAttribute": "G5wmS0gm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5068354949754781}]}, {"allowedAction": "8Pv0WXlg", "ruleDetail": [{"ruleAttribute": "bLlafMOH", "ruleCriteria": "EQUAL", "ruleValue": 0.735977646280091}, {"ruleAttribute": "DLV8W1lf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.27987469323535286}, {"ruleAttribute": "asycumzq", "ruleCriteria": "EQUAL", "ruleValue": 0.14150475310608523}]}, {"allowedAction": "jKXqhqR7", "ruleDetail": [{"ruleAttribute": "xhVBPdA2", "ruleCriteria": "EQUAL", "ruleValue": 0.40929935211932544}, {"ruleAttribute": "7HN5924s", "ruleCriteria": "MINIMUM", "ruleValue": 0.13722420352479958}, {"ruleAttribute": "iSNIRR01", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1534571333270478}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'K2PRraJs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'cJCLvU5c' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "yvLnXa2b", "groupIcon": "GW1tEd8h", "groupName": "8Jn8j5uL", "groupRegion": "WBxGvSYg", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '8lokTR99' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'yLU14p8q' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Td7vFNqZ", "groupIcon": "5fzn83eE", "groupName": "VHEp5Tds", "groupRegion": "CkXd0prl", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'pdPEspif' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"5NNr4GqL": {}, "wOxynMww": {}, "zUWfMzZX": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'm2Cde6wo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '0qmS7nkx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'WAzGQUQG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '7XqE4kyu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'AZBrMqO1' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'HPRXUgZQ' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '44' \
    --order 'q6VzFnWV' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'wtysCNoe' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"qBiyy4Jx": {}, "UhT4B6QN": {}, "tGAeAAdH": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'R4vkYgzH' \
    --groupId 'ypnOhplk' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "nFruDdaT", "ruleCriteria": "MINIMUM", "ruleValue": 0.4899536674821181}, {"ruleAttribute": "aaJASYXR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5800616576835012}, {"ruleAttribute": "IYrMcSrr", "ruleCriteria": "EQUAL", "ruleValue": 0.5963389516654981}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'cr9F3AxP' \
    --groupId 'hnx4ueJQ' \
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
    --limit '44' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'BzgYhC7v' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "h3IP07vg"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'mfBpmDQH' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "dwqYibih"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '7VTnMsjj' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OEzPUD9d' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zH932HgO' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ealefq0T' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'YIkUeGyY' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["7ud28gIn", "K2uXPq16", "tkOj3quW"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId '969uQluR' \
    --limit '67' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '6A1W4zHC' \
    --namespace $AB_NAMESPACE \
    --userId 'jM8m5aMK' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "dKynzSl2", "customAttributes": {"WrPs6a3f": {}, "Qc6Vdtjh": {}, "cGVhpVwe": {}}, "groupDescription": "3iOyBsuG", "groupIcon": "TcveYedy", "groupMaxMember": 9, "groupName": "Yp4p3asx", "groupRegion": "cPffkLXl", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "KfYkfkqP", "ruleDetail": [{"ruleAttribute": "X1IPRqsg", "ruleCriteria": "EQUAL", "ruleValue": 0.5792404032961976}, {"ruleAttribute": "fA57v74E", "ruleCriteria": "MINIMUM", "ruleValue": 0.19216648529326374}, {"ruleAttribute": "3Mtb5Wrg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.68508763311284}]}, {"allowedAction": "0FukeYiq", "ruleDetail": [{"ruleAttribute": "x5lHanJB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.00026953113154692954}, {"ruleAttribute": "KgQMG1WF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.38028741587240333}, {"ruleAttribute": "d99cHqv3", "ruleCriteria": "MINIMUM", "ruleValue": 0.6539928546894364}]}, {"allowedAction": "AdbAXige", "ruleDetail": [{"ruleAttribute": "UJpNDdzq", "ruleCriteria": "MINIMUM", "ruleValue": 0.015928317998264108}, {"ruleAttribute": "oHvEkj2l", "ruleCriteria": "EQUAL", "ruleValue": 0.03945600740969346}, {"ruleAttribute": "FUmQtwpf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.014837740568051094}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["5zPsCTMr", "L2M8LW5V", "wrUfaHWI"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'BAmz9s7y' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "HuY7dgqz", "groupIcon": "nYryMIJx", "groupName": "s4HHhUzx", "groupRegion": "G6FXHdZY", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '7X71nTzh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'a3pkvKql' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "mVAP6Goz", "groupIcon": "wTRlhx4H", "groupName": "Qkl2rGQK", "groupRegion": "6HvhXsx9", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'lP8SFPHn' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"IUFsKHWg": {}, "Saoufnjt": {}, "H6H4SRko": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'tVcc2shk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '0lNXD6VO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'SGfx0DRm' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'dPLQ2ZJM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'nD8yw0hj' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'PB1GXEB9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'wVmBq8nZ' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"mKobHuhC": {}, "7VCtenSL": {}, "VbVKZePy": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '0j8J2dUF' \
    --groupId 'FD7z6ZsE' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "v7hpHkhS", "ruleCriteria": "MINIMUM", "ruleValue": 0.1773896645012597}, {"ruleAttribute": "GpXCX59g", "ruleCriteria": "MAXIMUM", "ruleValue": 0.08381716391773975}, {"ruleAttribute": "e8eZcBbN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1314988404255184}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'CGq3vd9G' \
    --groupId 'R1Y0hP0z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'zdBsVBCV' \
    --memberRoleId 'k1G12N54' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "RmsKWVtU"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'ryf0ghNe' \
    --memberRoleId 'wlXw2iyn' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "LjIlJmiY"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'GRUA8VIq' \
    --namespace $AB_NAMESPACE \
    --userId 'eFXrLfVi' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'SJYfWeqV' \
    --namespace $AB_NAMESPACE \
    --userId 'cGZEOFk4' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'ju8ghKRX' \
    --namespace $AB_NAMESPACE \
    --userId 'rqtsiOGx' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'pHpGwxKB' \
    --namespace $AB_NAMESPACE \
    --userId 'Urs5Y6zT' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'dlXONu09' \
    --namespace $AB_NAMESPACE \
    --userId 'PSjnqZxx' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'TarIRuT0' \
    --namespace $AB_NAMESPACE \
    --userId 'twm6JvbQ' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE