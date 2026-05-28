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
    --limit '65' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "kBtqXvA2", "description": "rymX4VXp", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "8XLOt7ok", "ruleCriteria": "EQUAL", "ruleValue": 0.8502734829114784}, {"ruleAttribute": "fAQPZGWI", "ruleCriteria": "MINIMUM", "ruleValue": 0.7071279504915661}, {"ruleAttribute": "VLFLbh6V", "ruleCriteria": "EQUAL", "ruleValue": 0.21885872649874483}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "xM1BNDRM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9382196449267788}, {"ruleAttribute": "YhmuYXmK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6571714568943706}, {"ruleAttribute": "4yEh6DWR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8450631021625652}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "ydPICMkL", "ruleCriteria": "MINIMUM", "ruleValue": 0.6722824765890026}, {"ruleAttribute": "Hxto6vUg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9847088664668762}, {"ruleAttribute": "OV8CZ92S", "ruleCriteria": "MAXIMUM", "ruleValue": 0.507796980749621}]}], "groupAdminRoleId": "18iEt7bw", "groupMaxMember": 42, "groupMemberRoleId": "ms6Xcocy", "name": "YojcOehC"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'e62rxOxC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'rdDL8UoL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'DRlF8qYW' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "oAvsFXnN", "groupMaxMember": 31, "name": "9t1oUYCm"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'OCwMZaSl' \
    --configurationCode '6V283hvZ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "PB3WO63q", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4510204687549676}, {"ruleAttribute": "ENubiGrX", "ruleCriteria": "MINIMUM", "ruleValue": 0.003409242458179418}, {"ruleAttribute": "JhzxWZHs", "ruleCriteria": "MINIMUM", "ruleValue": 0.5335110609925534}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'nGJH2sL8' \
    --configurationCode 'u0mxTkqG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'u1SUGbS3' \
    --groupName 'DRxZX44z' \
    --groupRegion 'NMQgL1vh' \
    --limit '100' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '1PmuRC7r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'XC8MNBOz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'ICJUzvUi' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '93' \
    --order 'PqIPeANp' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "1zzj2J0E", "memberRolePermissions": [{"action": 44, "resourceName": "v0C0fz88"}, {"action": 23, "resourceName": "xczCLaMf"}, {"action": 4, "resourceName": "rHJ7v5Il"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'X110r5YA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '9G1QhOo1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'MbZl5OeX' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "vgbRnysv"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '4SHlyUe1' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 24, "resourceName": "pVRg4uBd"}, {"action": 69, "resourceName": "Up3meh4U"}, {"action": 20, "resourceName": "Lo9ZEsqr"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'NOvbIK07' \
    --groupRegion 'HmhlJ19W' \
    --limit '9' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "kl6UhMKM", "customAttributes": {"ml4iCAit": {}, "SKPUZOxE": {}, "ACFshmii": {}}, "groupDescription": "hXVwkG3A", "groupIcon": "cjWUm8ue", "groupMaxMember": 79, "groupName": "CYoi9go1", "groupRegion": "J8t6TphJ", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "5bJ6pbOy", "ruleCriteria": "EQUAL", "ruleValue": 0.18956592571374298}, {"ruleAttribute": "Seg531lq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21926355084937554}, {"ruleAttribute": "smF3naeg", "ruleCriteria": "EQUAL", "ruleValue": 0.7065429477888339}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "6WgpXoAa", "ruleCriteria": "MINIMUM", "ruleValue": 0.19067136952166075}, {"ruleAttribute": "zzP6L1FD", "ruleCriteria": "MINIMUM", "ruleValue": 0.07356993033104386}, {"ruleAttribute": "cr5D29wU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5985160649768253}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "YtaR5aYI", "ruleCriteria": "MINIMUM", "ruleValue": 0.5953272289147183}, {"ruleAttribute": "nHM4SKby", "ruleCriteria": "MINIMUM", "ruleValue": 0.8427342362870347}, {"ruleAttribute": "pRTg3vxy", "ruleCriteria": "MINIMUM", "ruleValue": 0.6298521461597604}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'UoaoaWTZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'TNZFwbHz' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "4iU50NwA", "groupIcon": "ww3zn2Aj", "groupName": "f2gCIB3l", "groupRegion": "sRJeKFvJ", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'PrC9Yl8B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'XXNH93Dm' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "vf6ayMiK", "groupIcon": "5Cwg1kQm", "groupName": "gY5PZ3nd", "groupRegion": "8vNwDanE", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'WZ8ix76n' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"tvg9HTir": {}, "NWM1nlP7": {}, "QG1Sv7i9": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'iomUap1U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'OKuMGK7H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'a1hdubjl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'vX80u5rV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'MlbSC35N' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'ha5LDfwD' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '70' \
    --order 'FNwhBLer' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'OiKqilEK' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"NsoLWhiW": {}, "vX8pYTEO": {}, "qf0jHucu": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'Wb6rFxWP' \
    --groupId 'L4MHvOPA' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "P3VsX2GI", "ruleCriteria": "MINIMUM", "ruleValue": 0.371965555171585}, {"ruleAttribute": "DPinolS2", "ruleCriteria": "MINIMUM", "ruleValue": 0.7868310246301848}, {"ruleAttribute": "eBFQOeVr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5820234746841209}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '9nuVvls0' \
    --groupId 'sTW9Gxq4' \
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
    --limit '49' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'Jqwc9PHb' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ZNzAVIgn"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'lKRMbvYR' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "FdAWTc32"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '2D7UOFHw' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Fb2wcrZH' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ugYMOIeb' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gt5SG8Fn' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dLQwIq0S' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["FjwOQ5Jz", "4cLb7NE3", "6YqjzNhh"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'DB32rzzb' \
    --limit '42' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '2TOx751t' \
    --namespace $AB_NAMESPACE \
    --userId 'aoc3xsaJ' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "k0CdTQZc", "customAttributes": {"8Yugh5Y9": {}, "Et7CItKY": {}, "z9t9HrRr": {}}, "groupDescription": "tJUpfHei", "groupIcon": "WRmUOwtB", "groupMaxMember": 41, "groupName": "p63leQXs", "groupRegion": "jW2SicVv", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "ZKG863qV", "ruleCriteria": "MINIMUM", "ruleValue": 0.5128048549765224}, {"ruleAttribute": "4ySXsviU", "ruleCriteria": "EQUAL", "ruleValue": 0.1800237198023268}, {"ruleAttribute": "exsNxM9v", "ruleCriteria": "EQUAL", "ruleValue": 0.31479225816507606}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "BKHd5j30", "ruleCriteria": "EQUAL", "ruleValue": 0.5314072179478921}, {"ruleAttribute": "2mLSTjw4", "ruleCriteria": "MINIMUM", "ruleValue": 0.5850402693921918}, {"ruleAttribute": "X8qFPq8q", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3990275934672288}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "yA4f8KNl", "ruleCriteria": "MINIMUM", "ruleValue": 0.6676826397236769}, {"ruleAttribute": "Ly1L9Abk", "ruleCriteria": "MINIMUM", "ruleValue": 0.1765903280121054}, {"ruleAttribute": "l6C4yFEm", "ruleCriteria": "MINIMUM", "ruleValue": 0.7418728461500015}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["Cr1WoQZo", "TKWnMmA8", "uRVqeMQF"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'Z9TzWM9G' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "a1PMVwgb", "groupIcon": "dsYUG8T8", "groupName": "5jJSs8oZ", "groupRegion": "RvsayFKI", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'Vd8d4EhG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'cPBz6GRH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "QIxOGrAO", "groupIcon": "qBhBGYuA", "groupName": "xsW24ntZ", "groupRegion": "DhdYMYay", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'rK6hx2lq' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"D2fRkqIb": {}, "0THPaHMa": {}, "XfIeCgeo": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'riqjMRx1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '9eNFb7zU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'm5GPC9lo' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 's25Ffyiu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'sz5AVE2e' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '1loVlKAU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'Tmr6z8uM' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"4sg0WPms": {}, "F9jX7jYT": {}, "suSVOAsj": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'Ziaa8NpF' \
    --groupId 'DL5TOowH' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "5JFEzymh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6750566712866088}, {"ruleAttribute": "GJxxlEtc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9259808728116232}, {"ruleAttribute": "GmE6bzoK", "ruleCriteria": "MINIMUM", "ruleValue": 0.07803096375423946}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'F1BuJHgv' \
    --groupId 'LyR0xxEe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'u6mi4DLE' \
    --memberRoleId 'WXhg1BhU' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "XoadsbJ5"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'MS4PLv8U' \
    --memberRoleId '004blbKC' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "lRR9VEDc"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId '7YmswrAA' \
    --namespace $AB_NAMESPACE \
    --userId 'yoNx9VtC' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '5GTAlC8X' \
    --namespace $AB_NAMESPACE \
    --userId 'TUQ1LLm8' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'Q2eLzBRU' \
    --namespace $AB_NAMESPACE \
    --userId 'SFbFUfme' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'bXpkc4js' \
    --namespace $AB_NAMESPACE \
    --userId 'm08mCvzC' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'kgv6AGHk' \
    --namespace $AB_NAMESPACE \
    --userId 'gE5WW0e9' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'o56Mevet' \
    --namespace $AB_NAMESPACE \
    --userId '9QP8vtoH' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE