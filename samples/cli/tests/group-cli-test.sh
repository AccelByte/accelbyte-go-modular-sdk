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
    --limit '67' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "plSwOqCO", "description": "wvUrSONj", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "J93JFjX3", "ruleCriteria": "MINIMUM", "ruleValue": 0.22053044692304002}, {"ruleAttribute": "r5SwJRQE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6080717453316462}, {"ruleAttribute": "QRFZCPP4", "ruleCriteria": "EQUAL", "ruleValue": 0.584617936960989}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "vBU5JfMp", "ruleCriteria": "EQUAL", "ruleValue": 0.6580894958692365}, {"ruleAttribute": "pA1VAYPD", "ruleCriteria": "MINIMUM", "ruleValue": 0.6738370472720414}, {"ruleAttribute": "wvElTsKm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9993220897246137}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "HCfttlOW", "ruleCriteria": "MINIMUM", "ruleValue": 0.3602023085110453}, {"ruleAttribute": "ftnVgLJN", "ruleCriteria": "MINIMUM", "ruleValue": 0.9996455109874335}, {"ruleAttribute": "TAXxBqfZ", "ruleCriteria": "EQUAL", "ruleValue": 0.3338335653661366}]}], "groupAdminRoleId": "OQilrwMz", "groupMaxMember": 63, "groupMemberRoleId": "UmZ1qVUm", "name": "8nx18mOt"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'AZcV20dc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'oBWWKSog' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '2bRXB6CX' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "63vqVesu", "groupMaxMember": 64, "name": "bjRAD679"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'u3FjRN0z' \
    --configurationCode 'S8cNeO5n' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "4105VRwa", "ruleCriteria": "EQUAL", "ruleValue": 0.3761205731931544}, {"ruleAttribute": "8JYhl82h", "ruleCriteria": "MAXIMUM", "ruleValue": 0.41734534303082027}, {"ruleAttribute": "W8Do34b8", "ruleCriteria": "EQUAL", "ruleValue": 0.648146301988881}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '7z1oTiIg' \
    --configurationCode 'K6QVVwsO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'vLDrPrzc' \
    --groupName 'jm1hmbu6' \
    --groupRegion 'VFKWCI7j' \
    --limit '54' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'tV2RzSWy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '91VB6QWe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'JJ8zUPoO' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '90' \
    --order '0Ftm2VpX' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Y8GPNHzU", "memberRolePermissions": [{"action": 61, "resourceName": "QNIgOyFF"}, {"action": 51, "resourceName": "4ARWQVbL"}, {"action": 21, "resourceName": "x6yIyacL"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'XLBlvTYY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '5I0jMRbK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'b1eXAeSu' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "ml9n6ieR"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'E7djbGiZ' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 88, "resourceName": "8R5SuzlZ"}, {"action": 78, "resourceName": "7jaBhXMJ"}, {"action": 42, "resourceName": "djNqsrXe"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'CKegLBl7' \
    --groupRegion 'QQgWKseI' \
    --limit '40' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "cOFFLzVG", "customAttributes": {"FTn5BTzI": {}, "BrNcpZ5M": {}, "LSPBH74d": {}}, "groupDescription": "xD2ozL6Y", "groupIcon": "FxkxB7eT", "groupMaxMember": 56, "groupName": "b9GuSOo7", "groupRegion": "5OJSNxmM", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "HpzLXbL3", "ruleCriteria": "EQUAL", "ruleValue": 0.6998612422328006}, {"ruleAttribute": "x8uB1Slp", "ruleCriteria": "MINIMUM", "ruleValue": 0.6692285198173648}, {"ruleAttribute": "VUPKmiyR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1427748652942098}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "i4ZHDSWS", "ruleCriteria": "EQUAL", "ruleValue": 0.6825329680027624}, {"ruleAttribute": "zJcB020t", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5076054328134251}, {"ruleAttribute": "megk8tnf", "ruleCriteria": "MINIMUM", "ruleValue": 0.9276897312648382}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "NlyP2u5d", "ruleCriteria": "EQUAL", "ruleValue": 0.1616109773627583}, {"ruleAttribute": "1RLbGuxo", "ruleCriteria": "EQUAL", "ruleValue": 0.529088987520397}, {"ruleAttribute": "h3lIFZ9V", "ruleCriteria": "EQUAL", "ruleValue": 0.13497191165632216}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'oOCKgm7Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'MIWsgz2N' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "XRRMGQFS", "groupIcon": "n6LqS9jV", "groupName": "bQBmb2kO", "groupRegion": "hG6SaHZr", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '4YYqw5R4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '8NXmqHpd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "OBFIY5RF", "groupIcon": "jcn0UhGm", "groupName": "VVceZ6R9", "groupRegion": "2yUY7Bn4", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '4LNjPWeF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"wRSmeRk0": {}, "RlZkeNdT": {}, "qP2tRWZO": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'Eeboz5UL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'FIRVwBzv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'OxSBUW4z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'zD0DYPxs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'c2w12KuV' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'zDjAXkiV' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '51' \
    --order 'fWpTjoPz' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'eBcNxT8o' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"XLQBbqiL": {}, "tVocgw8r": {}, "GmkedU3k": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction '8jzMBGFR' \
    --groupId 'b05YRtok' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "vbuh5VVU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7812470303974045}, {"ruleAttribute": "IIxMGtXa", "ruleCriteria": "MINIMUM", "ruleValue": 0.5739316762253022}, {"ruleAttribute": "17nXNYNu", "ruleCriteria": "MINIMUM", "ruleValue": 0.26023670999682236}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '5nIrPN7m' \
    --groupId 'Mv9xQvYG' \
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
    --offset '59' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'qrW2ahwi' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "cBrYhd7R"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'NbrwzUg5' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "9xyZaqvw"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fIzcPKHi' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'X7UJ9c2p' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'lvAVDek9' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'iTwBuoHi' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FBd0T13K' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["Ku1cD9hr", "BrmIxBPW", "sVPnyc7l"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'VVDQPRXb' \
    --limit '35' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'nK7o0iLC' \
    --namespace $AB_NAMESPACE \
    --userId 'c7fAxdAf' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "QYxA5pIB", "customAttributes": {"74lETmqF": {}, "eCuRzRGd": {}, "mfrcQTwE": {}}, "groupDescription": "vT2UFDd7", "groupIcon": "896E8GTn", "groupMaxMember": 91, "groupName": "Hh4j8hZg", "groupRegion": "vtSo8vbq", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "tZnx3KXd", "ruleCriteria": "MINIMUM", "ruleValue": 0.4510593048926078}, {"ruleAttribute": "AS1KfNUn", "ruleCriteria": "MINIMUM", "ruleValue": 0.487627682622368}, {"ruleAttribute": "9RywQxBs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6388571413837872}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "SaGyb2lv", "ruleCriteria": "EQUAL", "ruleValue": 0.6642345836818381}, {"ruleAttribute": "yoyFQuMw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.003422025118460903}, {"ruleAttribute": "5lW8doED", "ruleCriteria": "EQUAL", "ruleValue": 0.4908851030305631}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "Q6lNqCZo", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8689586772920123}, {"ruleAttribute": "2Ir6XzwR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8460097536525263}, {"ruleAttribute": "CuDlRmv1", "ruleCriteria": "MINIMUM", "ruleValue": 0.6702290458502056}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["tnv21kwW", "1zP4Uv9y", "Uk8p5ew4"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '7IlXxJIv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "vevUmkQp", "groupIcon": "gvv9hKJA", "groupName": "0CgM0z7K", "groupRegion": "P0mm6Qot", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'Rjxrl2K3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'Di45XBTv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "xKNwZ3kq", "groupIcon": "obgv2nKA", "groupName": "tuQYEy6S", "groupRegion": "eTTaLqB0", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'lozWOVCG' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"p3avSPmo": {}, "vKCoSSOB": {}, "9xHU3vgv": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'KiKS2Ar7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'IJm9AEqh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'XgfVSRdU' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '1O28LqqU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'HSmRrvoa' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'PA08pCHf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'yya6N0ao' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"kp1IK9nH": {}, "kOmIwvVy": {}, "lECLft6U": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '2HNxrb0q' \
    --groupId 'I49f75mp' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "axWZvMeO", "ruleCriteria": "MINIMUM", "ruleValue": 0.06086962035123167}, {"ruleAttribute": "xS9QAMWl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9581937904938724}, {"ruleAttribute": "Fz2DNb8I", "ruleCriteria": "EQUAL", "ruleValue": 0.840903990121025}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'UG709SaK' \
    --groupId 'gduG2rfG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'dY9fwjSE' \
    --memberRoleId 'BN4kcPqF' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "lzgvPwW6"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'shDL9wMi' \
    --memberRoleId 'YzPx1QiD' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "fn75ngE4"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'RTvdkizl' \
    --namespace $AB_NAMESPACE \
    --userId 'NAvmSlS3' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'WTtxljl5' \
    --namespace $AB_NAMESPACE \
    --userId 'jczV2eV3' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'QBOZ21PA' \
    --namespace $AB_NAMESPACE \
    --userId 'Z1eA7gpx' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '6lWAB7OF' \
    --namespace $AB_NAMESPACE \
    --userId '2qJC2p2B' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'E89ac3Wm' \
    --namespace $AB_NAMESPACE \
    --userId 'XNeYY2h3' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'Dtm94p8D' \
    --namespace $AB_NAMESPACE \
    --userId 'yru5viMA' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE