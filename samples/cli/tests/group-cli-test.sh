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
    --limit '56' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "IgW1lHOf", "description": "5enMIial", "globalRules": [{"allowedAction": "gNeDMmSn", "ruleDetail": [{"ruleAttribute": "fj5Rad3i", "ruleCriteria": "EQUAL", "ruleValue": 0.4202352440476492}, {"ruleAttribute": "CAFu3mMF", "ruleCriteria": "EQUAL", "ruleValue": 0.6700081649733532}, {"ruleAttribute": "BFggQVOB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1083093890573621}]}, {"allowedAction": "Ufq61IXW", "ruleDetail": [{"ruleAttribute": "Sm1nDENn", "ruleCriteria": "EQUAL", "ruleValue": 0.1535907930140109}, {"ruleAttribute": "HneMQjUo", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5281733610260744}, {"ruleAttribute": "uOyPxYLx", "ruleCriteria": "MINIMUM", "ruleValue": 0.8480896545401709}]}, {"allowedAction": "OcHtsohy", "ruleDetail": [{"ruleAttribute": "wED9btTq", "ruleCriteria": "MINIMUM", "ruleValue": 0.8153389012132195}, {"ruleAttribute": "is8V6fFs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8983528477043793}, {"ruleAttribute": "NXIBLQ9K", "ruleCriteria": "MINIMUM", "ruleValue": 0.44240580300927934}]}], "groupAdminRoleId": "XRbj8MV7", "groupMaxMember": 94, "groupMemberRoleId": "GB2Pq2dO", "name": "pOkxJoV6"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'J3IFQSbl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'BYdj4sCB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'KlXXFBU0' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "eLbqMapf", "groupMaxMember": 86, "name": "y62u7eW7"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'ddTZXjH1' \
    --configurationCode 'DQcQVSUu' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "wN0phMaK", "ruleCriteria": "MINIMUM", "ruleValue": 0.6737114418671103}, {"ruleAttribute": "FFdZsQWm", "ruleCriteria": "EQUAL", "ruleValue": 0.18786866322157403}, {"ruleAttribute": "YWMvFntx", "ruleCriteria": "EQUAL", "ruleValue": 0.8500647079819122}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'XigeQZE0' \
    --configurationCode '0xFH4Gr4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'xew79hL8' \
    --groupName 'u5t6pkaI' \
    --groupRegion 'pLx8Mkf5' \
    --limit '21' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '2ylSMKpd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'KfOqybQL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'BTO5psf1' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '76' \
    --order 'wJYZFx8A' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "sxF9WTlk", "memberRolePermissions": [{"action": 53, "resourceName": "ohY2ySra"}, {"action": 2, "resourceName": "RXZDigGT"}, {"action": 78, "resourceName": "Y3cSn8XY"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '8TsJUoH7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'Hkr0xTg4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'H3Ec1l5J' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "4PVbtJ0J"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'pC1qVOxR' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 6, "resourceName": "YNLbMAYy"}, {"action": 87, "resourceName": "2hTteZ7e"}, {"action": 50, "resourceName": "vwZB6ZeX"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'mEYo95O7' \
    --groupRegion 'RxIPSSPC' \
    --limit '50' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "iTPDIVQV", "customAttributes": {"6W2MbCPr": {}, "VsZ47m7h": {}, "0YbqWLfO": {}}, "groupDescription": "nGMGfpnK", "groupIcon": "q0fT2g2Q", "groupMaxMember": 26, "groupName": "VN2dC2KQ", "groupRegion": "bAHv27io", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "eaShn5A1", "ruleDetail": [{"ruleAttribute": "JqCErbrM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3836693265711043}, {"ruleAttribute": "ieKonqTM", "ruleCriteria": "MINIMUM", "ruleValue": 0.19048880712955973}, {"ruleAttribute": "zEstbSLa", "ruleCriteria": "EQUAL", "ruleValue": 0.20479363066721878}]}, {"allowedAction": "xPMNELAA", "ruleDetail": [{"ruleAttribute": "z9yr4nET", "ruleCriteria": "EQUAL", "ruleValue": 0.570734521932071}, {"ruleAttribute": "LAkhTXqC", "ruleCriteria": "MINIMUM", "ruleValue": 0.569615263201786}, {"ruleAttribute": "gOkychKw", "ruleCriteria": "EQUAL", "ruleValue": 0.9852317770873332}]}, {"allowedAction": "QmcF1Q3k", "ruleDetail": [{"ruleAttribute": "ux2j6zo2", "ruleCriteria": "EQUAL", "ruleValue": 0.4202072907633704}, {"ruleAttribute": "vYblz0iv", "ruleCriteria": "EQUAL", "ruleValue": 0.48610085528699853}, {"ruleAttribute": "wKO27TtD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21098472607966356}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'rZr75zr5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'inXoWlNc' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "7kxBO9oG", "groupIcon": "XuZa7Sak", "groupName": "3ghSXlnn", "groupRegion": "ppOVawkT", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'KWgGyuQO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'fuQaOCTM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "CZrbZDfY", "groupIcon": "u5HhP0sr", "groupName": "x0dCQdrW", "groupRegion": "N4ilL69I", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'ZocqI6CF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zIHDzIbB": {}, "lwBsHYB1": {}, "qm4IsD5h": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'N2zxNwiN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'hvoHxks3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'efdQll7e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '3tpT2ACT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'CqppgdOs' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'sCtpbD89' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '8' \
    --order 'OTVQnsne' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'SOZrc9gN' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"KpNQZNVh": {}, "27SHs7pj": {}, "MZvwJDaW": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'lzPd4LBm' \
    --groupId 'ON2BclrX' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "QNHMJEKE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7195305459761582}, {"ruleAttribute": "TK5hC6kG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6368786097784165}, {"ruleAttribute": "z9tAKW2L", "ruleCriteria": "EQUAL", "ruleValue": 0.6428557508724425}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'Ob9TQE7Z' \
    --groupId 'zIsquP3h' \
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
    --limit '65' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'Zd5vmQSZ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "G6GvwZ0w"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'uPBOvsjb' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "bp7aw0Xw"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qRWUvjqm' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5LzH3vcQ' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xZM9FOHE' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'u45wlAzw' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '1OvcB6Zx' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["HgQ5RIzu", "LxDXlxC2", "sko3yAVi"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'lyjNt6Pm' \
    --limit '49' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'UBF9Hn05' \
    --namespace $AB_NAMESPACE \
    --userId 'x2l9HUvn' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "X5WKrv5Y", "customAttributes": {"k0XlwEa2": {}, "5eUEIuit": {}, "5nRhtcI2": {}}, "groupDescription": "Ua5uU6Kg", "groupIcon": "6V9pb1N0", "groupMaxMember": 34, "groupName": "BlG16xDK", "groupRegion": "zhhUinxC", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Q2VMx5XD", "ruleDetail": [{"ruleAttribute": "sXKoBMlR", "ruleCriteria": "EQUAL", "ruleValue": 0.5118641603343903}, {"ruleAttribute": "AR6txshw", "ruleCriteria": "EQUAL", "ruleValue": 0.07451519629244552}, {"ruleAttribute": "ZKFffBjk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6143628954951929}]}, {"allowedAction": "qxYrY7Fw", "ruleDetail": [{"ruleAttribute": "1O3pzQfS", "ruleCriteria": "MINIMUM", "ruleValue": 0.2931395768777145}, {"ruleAttribute": "quiVrmWv", "ruleCriteria": "MINIMUM", "ruleValue": 0.515061563817477}, {"ruleAttribute": "D0qqImW3", "ruleCriteria": "EQUAL", "ruleValue": 0.5245099016288788}]}, {"allowedAction": "xwtF5bjM", "ruleDetail": [{"ruleAttribute": "jfcyFOgq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9613531386720274}, {"ruleAttribute": "hQayvrQd", "ruleCriteria": "MINIMUM", "ruleValue": 0.04274848662163}, {"ruleAttribute": "8D6dNoeY", "ruleCriteria": "EQUAL", "ruleValue": 0.4518562110686495}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["SXk3ebuF", "jhOoeFzF", "knHQRYwH"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '2QbiCnbX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "8epUh2ix", "groupIcon": "MhKboAV2", "groupName": "AUz4WMAB", "groupRegion": "ZDnqDVlj", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'H4xstAjB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '41r7dpIP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "rFMi9JSj", "groupIcon": "2rooCPke", "groupName": "xXPUKRZ7", "groupRegion": "J951cpir", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '1QaYzk7w' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"qJXK9X6N": {}, "VXKiHHmV": {}, "qDlwIdL4": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'mOCuhTNN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'ICrMOcI6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'j7AMdABg' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'CrU9uJ33' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'uLjue946' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'VaLYUH4o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'eat6vVHv' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"9cpBJhwF": {}, "UcntgZdD": {}, "0nzya0iA": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'DUvyKzJH' \
    --groupId '0t6zEr4w' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "T47MOgaF", "ruleCriteria": "EQUAL", "ruleValue": 0.05210128606923625}, {"ruleAttribute": "A3Zvcx3W", "ruleCriteria": "MAXIMUM", "ruleValue": 0.30238855820978383}, {"ruleAttribute": "YjdIZkWI", "ruleCriteria": "MINIMUM", "ruleValue": 0.5775336535965497}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'WnkTjR9j' \
    --groupId 'OjIAr1oZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'J9OKWnbq' \
    --memberRoleId 'AycaKxoO' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "WurA7KkW"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'ugRWNKdR' \
    --memberRoleId 'Ck8rcGUe' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "6mv6oSoP"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'nTFlSbMN' \
    --namespace $AB_NAMESPACE \
    --userId 'udHFMC8S' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'eCcNgIwo' \
    --namespace $AB_NAMESPACE \
    --userId 'Pwi3fPdk' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'zoI449HP' \
    --namespace $AB_NAMESPACE \
    --userId 'auO6DCQy' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'qOK1Nnqa' \
    --namespace $AB_NAMESPACE \
    --userId 'fkOZCK7p' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'lzGQLX14' \
    --namespace $AB_NAMESPACE \
    --userId 'RlUTM70s' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '4b3FzY9y' \
    --namespace $AB_NAMESPACE \
    --userId '7iqFHDnT' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE