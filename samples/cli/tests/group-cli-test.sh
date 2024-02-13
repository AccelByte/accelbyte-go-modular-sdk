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
    --limit '20' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "YMLB6VCY", "description": "CD3Zh0JF", "globalRules": [{"allowedAction": "149GtFDd", "ruleDetail": [{"ruleAttribute": "aGwROJyd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9856550275314526}, {"ruleAttribute": "CuxCzwk2", "ruleCriteria": "MINIMUM", "ruleValue": 0.30438269272643215}, {"ruleAttribute": "Lag11VQU", "ruleCriteria": "EQUAL", "ruleValue": 0.36531646024221986}]}, {"allowedAction": "jLgUYQ2x", "ruleDetail": [{"ruleAttribute": "xKZhF3zk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5651349669117417}, {"ruleAttribute": "jcqAGKlv", "ruleCriteria": "EQUAL", "ruleValue": 0.6696498486247567}, {"ruleAttribute": "OX2OppNi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.17494836332752717}]}, {"allowedAction": "RLJx86hV", "ruleDetail": [{"ruleAttribute": "ayRBx8Hk", "ruleCriteria": "EQUAL", "ruleValue": 0.48161097527148977}, {"ruleAttribute": "trJvp0El", "ruleCriteria": "EQUAL", "ruleValue": 0.8626885598452034}, {"ruleAttribute": "OjjO2VCc", "ruleCriteria": "EQUAL", "ruleValue": 0.0827720449660474}]}], "groupAdminRoleId": "Si30mkWd", "groupMaxMember": 45, "groupMemberRoleId": "Dv9GMTUC", "name": "4C46E1bi"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'TW5fhof4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'ZVga1tKM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'PvV9PAxH' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "WlAmMX7d", "groupMaxMember": 4, "name": "F5z04u8C"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'F6FS5weM' \
    --configurationCode 'vqXMQu0j' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "t4n1krTv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6137196946860697}, {"ruleAttribute": "yZg8BOnT", "ruleCriteria": "MINIMUM", "ruleValue": 0.6437339836536594}, {"ruleAttribute": "o3yMHNsa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07515679665848518}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'NgtebHEX' \
    --configurationCode 'VbYtJLij' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'yASezLSu' \
    --groupName 'rHWaMadl' \
    --groupRegion 'n58iV7Lg' \
    --limit '82' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'bv3Lu11t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'Sfq2jfWK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'vAEK62wQ' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '60' \
    --order 'L0v9Ogxb' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "8LkD2aLO", "memberRolePermissions": [{"action": 42, "resourceName": "eXI0szNB"}, {"action": 33, "resourceName": "srteTgu8"}, {"action": 47, "resourceName": "faHdJ7xm"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'bff3jdQB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'j7Oibxfc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '1o1evbBf' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "U4TCeXFF"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'FiGwvF3N' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 96, "resourceName": "84dfl3xb"}, {"action": 83, "resourceName": "5AZ3do4F"}, {"action": 53, "resourceName": "CsoOwPUa"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'UEAxaDV8' \
    --groupRegion 't9Rtiovs' \
    --limit '56' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "cJtwjHzO", "customAttributes": {"RvByCZTI": {}, "qlT5nqj7": {}, "a6yw4wFG": {}}, "groupDescription": "72TvDjCs", "groupIcon": "awFxh8zX", "groupMaxMember": 8, "groupName": "9sOVLFGA", "groupRegion": "8SBHLpw2", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "yfwV0pDH", "ruleDetail": [{"ruleAttribute": "HIpysZnF", "ruleCriteria": "EQUAL", "ruleValue": 0.1744701664293894}, {"ruleAttribute": "SRzPxEzE", "ruleCriteria": "EQUAL", "ruleValue": 0.5182724395346356}, {"ruleAttribute": "BtKx6wld", "ruleCriteria": "MAXIMUM", "ruleValue": 0.394918949807723}]}, {"allowedAction": "r2a0xwWd", "ruleDetail": [{"ruleAttribute": "0JgDI7Zr", "ruleCriteria": "MINIMUM", "ruleValue": 0.5096406987026958}, {"ruleAttribute": "B1AHwfup", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7299232512716958}, {"ruleAttribute": "NvC1tqCr", "ruleCriteria": "EQUAL", "ruleValue": 0.9709382005119827}]}, {"allowedAction": "k9BTdabt", "ruleDetail": [{"ruleAttribute": "XmXS79xT", "ruleCriteria": "EQUAL", "ruleValue": 0.36839283274303636}, {"ruleAttribute": "lEFHK3xo", "ruleCriteria": "MINIMUM", "ruleValue": 0.8571776407896111}, {"ruleAttribute": "YnYoxl4K", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8410319720662088}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'cSGnzxWo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'SXNXz2uu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "txaq07Eh", "groupIcon": "MiYBfLJ6", "groupName": "WWuiHtZ7", "groupRegion": "REc54viE", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'oyCFUuUh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'tsLrLjhf' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "47mBdGVN", "groupIcon": "wsvqCEEJ", "groupName": "9bE6C722", "groupRegion": "rS7E0khg", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'udZ1DRFh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"uz6GuCFL": {}, "BSKTuM8s": {}, "kN3wdzj0": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'CoDs6KDg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'ONPtCtzH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'bCWlYo4I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'VcQGYuYH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'a7WRjZmP' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '5P45JlDC' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '96' \
    --order 'T7B5fDcr' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '6OOLJRUd' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"SpqqVwkk": {}, "RAYmasPy": {}, "iwRgpXmK": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'mq6NtkAq' \
    --groupId 'nHtuTGs8' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "1oYKgoEo", "ruleCriteria": "MINIMUM", "ruleValue": 0.813368769699911}, {"ruleAttribute": "JcEUS4UL", "ruleCriteria": "EQUAL", "ruleValue": 0.4478009271388599}, {"ruleAttribute": "idUgIjL0", "ruleCriteria": "MINIMUM", "ruleValue": 0.9329847742605282}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'GtBbGbr3' \
    --groupId '5rAiVDpK' \
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
    --limit '89' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'C45y4X7J' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "UrL9XWHS"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'ghfEaokk' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "1LBYq30q"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'C3kaujmk' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '2eizVFDf' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TlZcXBzU' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WhLJtX1Y' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mDCk6TUv' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["nHLZLUAB", "Zora7V7V", "gQ4Yhp8z"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'xtMLd7It' \
    --limit '12' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'MhCkvE0m' \
    --namespace $AB_NAMESPACE \
    --userId 'gwNXfyBJ' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "JbkOs65q", "customAttributes": {"1CGqqQwV": {}, "frz2SDpF": {}, "ECtvnkeg": {}}, "groupDescription": "7XCl8pli", "groupIcon": "yj9bMoUG", "groupMaxMember": 76, "groupName": "yn7RTmuU", "groupRegion": "3ZPCWSiu", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "tNYtlWad", "ruleDetail": [{"ruleAttribute": "FORkFbbm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2075659615802552}, {"ruleAttribute": "B7KYj6UQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.5338546655452299}, {"ruleAttribute": "db6vlzFT", "ruleCriteria": "MINIMUM", "ruleValue": 0.7377099091365426}]}, {"allowedAction": "5Itw8z8G", "ruleDetail": [{"ruleAttribute": "QunXww9f", "ruleCriteria": "MINIMUM", "ruleValue": 0.10373251872826161}, {"ruleAttribute": "GHeu8Vvt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3626992108234439}, {"ruleAttribute": "P0xYBsSJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.07363307596992485}]}, {"allowedAction": "MWVSKDlx", "ruleDetail": [{"ruleAttribute": "ZFHsDzSu", "ruleCriteria": "EQUAL", "ruleValue": 0.34086160615589545}, {"ruleAttribute": "PwyKCoHX", "ruleCriteria": "EQUAL", "ruleValue": 0.6724604770325907}, {"ruleAttribute": "riHcfFRt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.16111144423998625}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["BPQycwQ0", "cRNE9GJe", "ayw8rOmi"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'q5SmM77O' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "VtTsEpXJ", "groupIcon": "aogxWpTK", "groupName": "hBsmZYoL", "groupRegion": "XSRyf1iC", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'tWnB2ewO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'KrdoRLt7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "IuFrVYLC", "groupIcon": "e3wxcflC", "groupName": "NGaDrQXO", "groupRegion": "TuNVTfbs", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'vZgp2kAi' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"MOjnj911": {}, "lyh5aFgr": {}, "DsL2Jriu": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'btkOWzhf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'ajcdQntV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '4xDBhTLr' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '5tNUgqXA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '4RmytkDc' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'Zz9lbJPz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'y8N14bza' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"fkMqnXBc": {}, "iLmqsyAE": {}, "9JEv0kQr": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '38SUlw6d' \
    --groupId 'WPI5tbHn' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "fSaTqcaZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.7901081386262986}, {"ruleAttribute": "OdiN5EV2", "ruleCriteria": "MINIMUM", "ruleValue": 0.3934462761479989}, {"ruleAttribute": "FyMu8AAi", "ruleCriteria": "EQUAL", "ruleValue": 0.6809809818568707}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'HsjWc8yH' \
    --groupId 'fi2aKU4Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '0MeZwY1F' \
    --memberRoleId 'AHa1grsZ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "YfXeKMLR"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId '25r99Nyg' \
    --memberRoleId 'uKG3nMCb' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "H01hyB0i"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '51' \
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
    --groupId 'zvqXHtGv' \
    --namespace $AB_NAMESPACE \
    --userId 'rpetb5Id' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'NKpHCMLo' \
    --namespace $AB_NAMESPACE \
    --userId 'q4JUq4DI' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'z6IO45UP' \
    --namespace $AB_NAMESPACE \
    --userId 'JAHKg0Eg' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'ufFLv8cs' \
    --namespace $AB_NAMESPACE \
    --userId 'bU22cGZN' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '9GAwFFod' \
    --namespace $AB_NAMESPACE \
    --userId 'wTtDrGs4' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'm6aso15f' \
    --namespace $AB_NAMESPACE \
    --userId 'RcgSh8kl' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE