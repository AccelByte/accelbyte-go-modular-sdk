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
    --limit '82' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "cHsQyWHZ", "description": "V0FViyrk", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "HSRnkQRn", "ruleCriteria": "MINIMUM", "ruleValue": 0.14852937543611644}, {"ruleAttribute": "Da2TjAkA", "ruleCriteria": "EQUAL", "ruleValue": 0.7257939774073363}, {"ruleAttribute": "Ieb9Wn5p", "ruleCriteria": "EQUAL", "ruleValue": 0.6709889958232486}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "0Hgg7oW5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11983415098947836}, {"ruleAttribute": "YYHRGh8x", "ruleCriteria": "MAXIMUM", "ruleValue": 0.809908750323628}, {"ruleAttribute": "IU9utC53", "ruleCriteria": "MINIMUM", "ruleValue": 0.8010538290556004}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "AKae4qk6", "ruleCriteria": "MINIMUM", "ruleValue": 0.9759757850035847}, {"ruleAttribute": "Bfu2CYQa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4171513477362613}, {"ruleAttribute": "JN1d8y7a", "ruleCriteria": "MAXIMUM", "ruleValue": 0.48328868045252793}]}], "groupAdminRoleId": "NV3RLXZ4", "groupMaxMember": 39, "groupMemberRoleId": "EfKusdDX", "name": "e78h8frf"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '0ipT93xs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'eyRYMCOa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '5pftA5rG' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "92esvH3l", "groupMaxMember": 35, "name": "E6DsvcmS"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'wBF4q5Ni' \
    --configurationCode 'fhT8WVZe' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "IHxAMjHf", "ruleCriteria": "MINIMUM", "ruleValue": 0.9876567385922834}, {"ruleAttribute": "fSaj70Qu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5046212333287269}, {"ruleAttribute": "SHvFi96s", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9527294073199739}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '8word9it' \
    --configurationCode '4HrdaTN5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'nAEKP7hz' \
    --groupName 'xeUc6Irs' \
    --groupRegion 'lsva0t7R' \
    --limit '10' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'qBt7e0iX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'Qbyszc9e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'ZgaGyMHC' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '50' \
    --order 'SzML6FEh' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "p7s9XUDz", "memberRolePermissions": [{"action": 60, "resourceName": "UKN2yyBZ"}, {"action": 81, "resourceName": "PnjJ69X8"}, {"action": 54, "resourceName": "6p7a2qE6"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'fs07WM7H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'wq020ft4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'BCoArEzy' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "vC1cXpY5"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 's9vzYHfe' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 49, "resourceName": "kwJKP87p"}, {"action": 35, "resourceName": "Q0Xngqjc"}, {"action": 46, "resourceName": "5jnTs4ZS"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'PgdxLX0Q' \
    --groupRegion 'FfyrLKik' \
    --limit '36' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "DhwnLLuf", "customAttributes": {"sshazmBQ": {}, "3c2gn5iu": {}, "kbZVipC2": {}}, "groupDescription": "UyxM7nf9", "groupIcon": "EcGig1Dg", "groupMaxMember": 78, "groupName": "0tXtkuu7", "groupRegion": "praKRmha", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "75F8Evvj", "ruleCriteria": "MINIMUM", "ruleValue": 0.435000148044664}, {"ruleAttribute": "kfuvVl7C", "ruleCriteria": "MINIMUM", "ruleValue": 0.4563808959521065}, {"ruleAttribute": "xOAHeWXY", "ruleCriteria": "EQUAL", "ruleValue": 0.594648142330331}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "5BnIeqYB", "ruleCriteria": "EQUAL", "ruleValue": 0.3031070358828699}, {"ruleAttribute": "hLNl218i", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7911361908312914}, {"ruleAttribute": "rE8FnoIN", "ruleCriteria": "EQUAL", "ruleValue": 0.4590836767968912}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "ulHcheJi", "ruleCriteria": "MINIMUM", "ruleValue": 0.8405996898274233}, {"ruleAttribute": "11KfKxXm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7022032326459243}, {"ruleAttribute": "EhLcuBKs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7605462685509683}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'W8fAvzny' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'mfLmoj74' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "kWYACnuR", "groupIcon": "ZvVruaWC", "groupName": "DL2isZgR", "groupRegion": "WXXUCqNm", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'iQxiaQXy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'u6couX6L' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "hy3SBpfT", "groupIcon": "J3FYrVRK", "groupName": "RhyqtQV1", "groupRegion": "sg9qkHBx", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'SPXqLhoW' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"pm8twoXV": {}, "GaA94vHq": {}, "CvrrOwqs": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'elPFs246' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'fJyft6ZC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'YcVaTeJu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'T8rOuRcw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'gxm9Dygc' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'zyUcIT8W' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '14' \
    --order 'yO2bTlPT' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '5amBBzqe' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"gKI9UGgE": {}, "jJoraTrz": {}, "CUA3fUPj": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'X1YYu7oQ' \
    --groupId '775BHJSc' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "c7aX1SEo", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14447760595351733}, {"ruleAttribute": "2uEDlO1v", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6073627880865808}, {"ruleAttribute": "6meKkv2X", "ruleCriteria": "EQUAL", "ruleValue": 0.6277295717741138}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'avXCkUd4' \
    --groupId '7hhHQusU' \
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
    --offset '26' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'm8j05DcW' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "kvWEGjl9"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'edJtmjQv' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "UKihGUxu"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EO5HTRsf' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'O4Zt1vBB' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DmgMzTEj' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rfuiQrWe' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jzLNiADt' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["Veg7723u", "EQvnIQYb", "DTgpkuVb"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'sPMTkwkA' \
    --limit '45' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '9AqGfeIS' \
    --namespace $AB_NAMESPACE \
    --userId 'hUoFQFwx' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "6LA57bPX", "customAttributes": {"AtUqAUN2": {}, "JcjJWuPZ": {}, "0NAqrdWq": {}}, "groupDescription": "6ucil36e", "groupIcon": "fOHyBhZH", "groupMaxMember": 80, "groupName": "ojYjuzWH", "groupRegion": "rX5MC4Dn", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "1kU8vhpa", "ruleCriteria": "EQUAL", "ruleValue": 0.5664046827097334}, {"ruleAttribute": "52QwnnAi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2980454292318385}, {"ruleAttribute": "72VarHVk", "ruleCriteria": "MINIMUM", "ruleValue": 0.16346400338744504}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "jCEU2HEj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4069865182987742}, {"ruleAttribute": "p01kx8Az", "ruleCriteria": "EQUAL", "ruleValue": 0.6222268017086896}, {"ruleAttribute": "Fvpz0q4T", "ruleCriteria": "MINIMUM", "ruleValue": 0.4030744532783188}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "9ugpVxT4", "ruleCriteria": "EQUAL", "ruleValue": 0.6681672172661649}, {"ruleAttribute": "enYZaoSn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.28041394631800376}, {"ruleAttribute": "Szv2amB2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8913151643700457}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["q62rHMog", "h5vGCAcU", "tylQcI3H"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'dVc42yif' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Hqyt4qxH", "groupIcon": "NdKzDTXf", "groupName": "B04j1Vv0", "groupRegion": "GBFKRVPK", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'SuR4dILR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '9jN4X4nb' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "TPEgpKAG", "groupIcon": "5dTcKJCu", "groupName": "69EzFFX8", "groupRegion": "3P3i3sA7", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'MrHhHTWD' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"BTLvhOZn": {}, "NhSgSePU": {}, "yzWneYxp": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'CutIbjUW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'THWrlXfa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '8REugXJq' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'V9fvU9vs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'jvdNAuXK' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '11SGPuGX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'TsWNFkDS' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"PIxYPVmL": {}, "RGvImocl": {}, "AD0VdhIp": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'hx1DhNF6' \
    --groupId 'V4djplgO' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "IlYZg7F4", "ruleCriteria": "EQUAL", "ruleValue": 0.5948154702268605}, {"ruleAttribute": "EgNXPo9k", "ruleCriteria": "MINIMUM", "ruleValue": 0.8293699164598722}, {"ruleAttribute": "9i0Mmbes", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2821408489573909}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '6snf8naZ' \
    --groupId 'kg20t2YK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'ycmmnZuM' \
    --memberRoleId '1QOZafdD' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "JA7UtCTK"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId '4prTTSls' \
    --memberRoleId 'aGqZeVXH' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Ufwghvnc"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'UzWJGsYc' \
    --namespace $AB_NAMESPACE \
    --userId 'wlCDepbo' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'Jzje9HZD' \
    --namespace $AB_NAMESPACE \
    --userId 'UVnHjJd3' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId '15AK9RVX' \
    --namespace $AB_NAMESPACE \
    --userId 'LsCJFlNA' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'cvhm72ep' \
    --namespace $AB_NAMESPACE \
    --userId '1syB0DCc' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'dcq3aY8q' \
    --namespace $AB_NAMESPACE \
    --userId 'c8jv4rlh' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'Hyjylj1j' \
    --namespace $AB_NAMESPACE \
    --userId 'mf7pwZJQ' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE