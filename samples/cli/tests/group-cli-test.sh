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
    --limit '79' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "VHMIzS7Z", "description": "pRPL3blS", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "DlCoxGiE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3966119915178913}, {"ruleAttribute": "cCJgiYz4", "ruleCriteria": "MINIMUM", "ruleValue": 0.5777341080306458}, {"ruleAttribute": "B0nsX31Y", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5153933116355741}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "qVNAooNz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.752687974469496}, {"ruleAttribute": "xVrzGSb4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.30438780610050675}, {"ruleAttribute": "nXEEcehK", "ruleCriteria": "EQUAL", "ruleValue": 0.5681534583015353}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "n5YudaYJ", "ruleCriteria": "EQUAL", "ruleValue": 0.004039379181359215}, {"ruleAttribute": "RwDQByzB", "ruleCriteria": "MINIMUM", "ruleValue": 0.3394516483620287}, {"ruleAttribute": "ngUOTYBt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.12640784876215394}]}], "groupAdminRoleId": "9F7pgzaV", "groupMaxMember": 26, "groupMemberRoleId": "X8ZmBUwM", "name": "rvDy1qMo"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'we5OKABJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'VLNC8QEu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'Goyzxpvi' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "kABsPhKV", "groupMaxMember": 28, "name": "XPv24d2w"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'EnZwRHFa' \
    --configurationCode '9bcWoh4i' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "pKgYDCFk", "ruleCriteria": "EQUAL", "ruleValue": 0.8535893457120405}, {"ruleAttribute": "ynao7ile", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8796533682800415}, {"ruleAttribute": "xezsluDN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7151621458204933}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'KROBe9qQ' \
    --configurationCode 'gZQUvgmN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'ZD66NCQI' \
    --groupName 'tjCRYhhl' \
    --groupRegion 'WpwyGI8V' \
    --limit '73' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'CX2HXtay' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'pl10v7zB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'TbGJFSlo' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '80' \
    --order '7iBdUP2w' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "BAdmHi3o", "memberRolePermissions": [{"action": 44, "resourceName": "tUTGd0qK"}, {"action": 21, "resourceName": "Tlt0PIYw"}, {"action": 58, "resourceName": "gV7Hou5o"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'OzQZY34Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'BMUkljoo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'v3QNEY1h' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "mhHwATcz"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'QWdmoMtB' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 20, "resourceName": "GpnvsqsR"}, {"action": 74, "resourceName": "G5FyqpV5"}, {"action": 9, "resourceName": "jboxvajT"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'P1a6ymmy' \
    --groupRegion 'wiDWT766' \
    --limit '42' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "hXzTKvx8", "customAttributes": {"VOQU2Dhn": {}, "94Z2gHmp": {}, "H2z0KL8Z": {}}, "groupDescription": "7EsNFbbM", "groupIcon": "zYRRw6j3", "groupMaxMember": 56, "groupName": "ZpPaRfT0", "groupRegion": "ajwjPt5f", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "Z0Ns40zN", "ruleCriteria": "MINIMUM", "ruleValue": 0.7204004315165711}, {"ruleAttribute": "RdSgPkHi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7730813171589576}, {"ruleAttribute": "naCo4bJt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3010844599024928}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "4RHqHEpS", "ruleCriteria": "MINIMUM", "ruleValue": 0.43471629826205027}, {"ruleAttribute": "7upWSCDW", "ruleCriteria": "MINIMUM", "ruleValue": 0.10558432899619419}, {"ruleAttribute": "0ZnKwt2l", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9722130942695509}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "hWhxscwa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5686552479010085}, {"ruleAttribute": "Ilq4kUqp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6238498661234131}, {"ruleAttribute": "CgnB0DIe", "ruleCriteria": "EQUAL", "ruleValue": 0.5669504432125138}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'mfTaJ7rq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'gilMdses' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "EHNxxD0n", "groupIcon": "R3pzGqgt", "groupName": "dqE7kINS", "groupRegion": "wTlr8UnD", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '4QAokdVW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'kHiz4OZW' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Aya9kvEj", "groupIcon": "NNrhdBOQ", "groupName": "CqD2uXsq", "groupRegion": "e85tglSV", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'JgX2x9x5' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"IaekNqgQ": {}, "8VElxM3b": {}, "9a8ZuZmj": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 's8fhvUv3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'zY6BiO7P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'iNShkd0O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'W6OJn0cz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'bv1ZCeRM' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '40MLGEX4' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '36' \
    --order '9vOBaFdi' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'ugFWwVuv' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"1FtsuJII": {}, "5UGrKlJq": {}, "jTqcWAc5": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'TOFUA26D' \
    --groupId 'vq9tzM1R' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "LOzNu2Qf", "ruleCriteria": "EQUAL", "ruleValue": 0.6851473486659271}, {"ruleAttribute": "MKh3WJBK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9665815015924983}, {"ruleAttribute": "TKoTGpU2", "ruleCriteria": "EQUAL", "ruleValue": 0.705549758749901}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'NGonX1DB' \
    --groupId 'JzwFRQcn' \
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
    --offset '55' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'kvrPeQ5q' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "gkxrN225"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'qmX7e3Rx' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "yDiYrZdK"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DSTJR7mr' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rXe15Jid' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '6hfGXAJF' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'g2cZzZU7' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'l69a1gOc' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["uoHU3NS1", "R4S0BYjZ", "AMIBGNlx"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'fx5KvGR5' \
    --limit '19' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'Kj0JYWfI' \
    --namespace $AB_NAMESPACE \
    --userId '9QZdWiAX' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "tqxec4U5", "customAttributes": {"16thKuYU": {}, "NWDExxkK": {}, "UHPCxFRh": {}}, "groupDescription": "zVX3dJrq", "groupIcon": "NK7QDw3k", "groupMaxMember": 45, "groupName": "BR8uObou", "groupRegion": "e4zysUkI", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "BloSucjd", "ruleCriteria": "MINIMUM", "ruleValue": 0.3739095784747405}, {"ruleAttribute": "jW4nc7ck", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5620714261521468}, {"ruleAttribute": "114mjJ7j", "ruleCriteria": "MAXIMUM", "ruleValue": 0.26272716962637355}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "cqPn2tIM", "ruleCriteria": "MINIMUM", "ruleValue": 0.8389571191780145}, {"ruleAttribute": "Oe1MR7Vq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18815665683907334}, {"ruleAttribute": "85xw8oub", "ruleCriteria": "MINIMUM", "ruleValue": 0.8443037745770843}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "iYoJSAL2", "ruleCriteria": "EQUAL", "ruleValue": 0.09317392270757774}, {"ruleAttribute": "4Zr3z7FF", "ruleCriteria": "MINIMUM", "ruleValue": 0.1358573592159138}, {"ruleAttribute": "bBhuQPeW", "ruleCriteria": "MINIMUM", "ruleValue": 0.22927462591308823}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["R878Uogt", "y9wfi886", "famEI4IR"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'eIQfUbbS' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "4B9geM4S", "groupIcon": "tokM4SQ1", "groupName": "PWeymLpz", "groupRegion": "qJrV3KM5", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'fcjWZ8W8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'EnTVxCmX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "neY0mRnG", "groupIcon": "Og2pVaK5", "groupName": "Eq3L7jYO", "groupRegion": "fSXDz3MW", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'AQVrCNaI' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"KnHyQPSO": {}, "R4l6YADW": {}, "AsXzKbiG": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'YNpQIgY1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'Iwf7Vr36' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '7vF3yvuT' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '6ENmAyLb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'g9YowgJe' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'JRV53arK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'mRBO4WQP' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"0S4W0ust": {}, "3TVhV6nY": {}, "9c0jIOHI": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'kxHOR0sN' \
    --groupId 'ieg9FRlr' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "zy3cD336", "ruleCriteria": "MINIMUM", "ruleValue": 0.7005234211335665}, {"ruleAttribute": "JjtMqcJ0", "ruleCriteria": "MINIMUM", "ruleValue": 0.9454673493968716}, {"ruleAttribute": "AYz8rdnE", "ruleCriteria": "EQUAL", "ruleValue": 0.726319175306744}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '2v3flRXN' \
    --groupId 'D5Ykmle4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '2RHK1rsD' \
    --memberRoleId '4zNgxqjN' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "w0XnR8cq"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'n6nhJec1' \
    --memberRoleId 'dFuBKT6D' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "LaK1Afy6"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'I7SpEqEL' \
    --namespace $AB_NAMESPACE \
    --userId '0gWBcyoO' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'abPD1r3h' \
    --namespace $AB_NAMESPACE \
    --userId 'o2LQhKKi' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'LNI4ajVX' \
    --namespace $AB_NAMESPACE \
    --userId 'nlbzgKSV' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'Bz8Q7LbK' \
    --namespace $AB_NAMESPACE \
    --userId 'ZN1eBYbD' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'uveZsyFc' \
    --namespace $AB_NAMESPACE \
    --userId 'YZCOvYlu' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'aXJFVjj5' \
    --namespace $AB_NAMESPACE \
    --userId 'afGvOmAj' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE