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
    --offset '39' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "5auLCYkK", "description": "NDSaAXr1", "globalRules": [{"allowedAction": "3TTo57Tu", "ruleDetail": [{"ruleAttribute": "PzRMA3LF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1757415803591602}, {"ruleAttribute": "gHWzDVJP", "ruleCriteria": "EQUAL", "ruleValue": 0.9200222482392286}, {"ruleAttribute": "IsvLpfxj", "ruleCriteria": "MINIMUM", "ruleValue": 0.19182526933239152}]}, {"allowedAction": "fA4w31Nx", "ruleDetail": [{"ruleAttribute": "iUfe7BlQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4450570365113893}, {"ruleAttribute": "Ba8suOaW", "ruleCriteria": "MINIMUM", "ruleValue": 0.5789152166925261}, {"ruleAttribute": "xSzoqUdx", "ruleCriteria": "EQUAL", "ruleValue": 0.2761022544632541}]}, {"allowedAction": "rcFuIGS6", "ruleDetail": [{"ruleAttribute": "WfSjfldq", "ruleCriteria": "MINIMUM", "ruleValue": 0.1705392319675113}, {"ruleAttribute": "sK9kv12L", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4874176959448986}, {"ruleAttribute": "oCdlqTBX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7424179625248124}]}], "groupAdminRoleId": "GelIRFpB", "groupMaxMember": 69, "groupMemberRoleId": "WUO7toU5", "name": "3D3ayCwc"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'XBLnX4NL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'XCze2TQG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'cuOj4rIe' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "JJcBsIgy", "groupMaxMember": 33, "name": "avaEiYEK"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'haWjWrFY' \
    --configurationCode 'XkOebR6o' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "kLss7PRn", "ruleCriteria": "EQUAL", "ruleValue": 0.4575052899094586}, {"ruleAttribute": "zFQpZd6d", "ruleCriteria": "MINIMUM", "ruleValue": 0.5170519341808953}, {"ruleAttribute": "TduAO4gl", "ruleCriteria": "EQUAL", "ruleValue": 0.028598271008154152}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'aiXBLsih' \
    --configurationCode 'rVP9bLvP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'zs4jAKwR' \
    --groupName 'oS0z9Qs6' \
    --groupRegion 'TAlfDf45' \
    --limit '30' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '19o4IdAk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'VMWdLHpl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'nZZx5sRB' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '8' \
    --order 'FS4saPir' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "KZrDvCHX", "memberRolePermissions": [{"action": 30, "resourceName": "JcgUXaSa"}, {"action": 96, "resourceName": "54yfOldf"}, {"action": 31, "resourceName": "XPxVOEVb"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'F3Vxzifx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'oQGLy5Xs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'uO3GMfTh' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "ZfdP1XkO"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'sUtRArMI' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 6, "resourceName": "Y88K1Vmp"}, {"action": 99, "resourceName": "JazAUepN"}, {"action": 50, "resourceName": "2orZsgpQ"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'ed98Krwp' \
    --groupRegion 'LNqogKoK' \
    --limit '17' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "GwyckYS5", "customAttributes": {"AeXLbH7M": {}, "vrWecMuj": {}, "zximgZl8": {}}, "groupDescription": "ojMfaebd", "groupIcon": "BQMAF7Gd", "groupMaxMember": 14, "groupName": "1QHeHVHT", "groupRegion": "p8ujaezI", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "VZ9XXts3", "ruleDetail": [{"ruleAttribute": "wXNSpEPF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.01755869265894594}, {"ruleAttribute": "ijND00Qq", "ruleCriteria": "MINIMUM", "ruleValue": 0.8424719349072843}, {"ruleAttribute": "HDerWDpU", "ruleCriteria": "EQUAL", "ruleValue": 0.23122321684189817}]}, {"allowedAction": "WdWmZEUR", "ruleDetail": [{"ruleAttribute": "DStifufa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8322584301444106}, {"ruleAttribute": "xOmJeJJi", "ruleCriteria": "EQUAL", "ruleValue": 0.022021328019097175}, {"ruleAttribute": "7r7JK37D", "ruleCriteria": "MINIMUM", "ruleValue": 0.7205478474042661}]}, {"allowedAction": "kxF31OFo", "ruleDetail": [{"ruleAttribute": "pZosaklL", "ruleCriteria": "MINIMUM", "ruleValue": 0.7433926857925522}, {"ruleAttribute": "QxauGysp", "ruleCriteria": "EQUAL", "ruleValue": 0.8538965679751307}, {"ruleAttribute": "vS7uQkDB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3064311307988863}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'W06hYUuC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'zzouJzQA' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "ASRBofRi", "groupIcon": "mNk01t7Y", "groupName": "2AApS4sD", "groupRegion": "hPylfd9f", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '6zsCeZYu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'jhK14fog' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "IM1sL187", "groupIcon": "nRkRXThv", "groupName": "mXGEgcGm", "groupRegion": "cJZb97Fs", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '5vl97dBG' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"C7TfUa94": {}, "OCVbPyl3": {}, "2lwd2hvC": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'LsxmghJb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'PveCZm93' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'O0K17xTg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '3UKPgEQY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'klkPomJP' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'YhoqYORS' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '7' \
    --order 'evtd1QsI' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'zHTdFHL9' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"WFeKTocR": {}, "BhgvELPh": {}, "g3et3Uue": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'hlCvqf9X' \
    --groupId 'y7qwZsTB' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "abj4MAvz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8157709381454933}, {"ruleAttribute": "NRX8XxhV", "ruleCriteria": "EQUAL", "ruleValue": 0.20554713229486798}, {"ruleAttribute": "u5pQRjTM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8830308871402173}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'LZMsrroF' \
    --groupId '3G4MR86K' \
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
    --limit '22' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'KXoTzGsg' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "eTsKQ2Dz"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'Um0MrDAV' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "g7I1dymV"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fLzR7zdO' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OTc7AryW' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gXw9oII7' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '6OaLfz5k' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'YmFeRmjY' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["JYCNQ306", "aN4Rs3Kf", "h7hNwvE7"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'j6wYEkuS' \
    --limit '65' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'dflNxjgW' \
    --namespace $AB_NAMESPACE \
    --userId 'xBHivSOw' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "uP6LjItB", "customAttributes": {"4rFkdyKZ": {}, "MYb2w1Tu": {}, "iV6r292H": {}}, "groupDescription": "1LbQiYRs", "groupIcon": "9xOrkNGz", "groupMaxMember": 16, "groupName": "AQGe568x", "groupRegion": "NMPGq3ly", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "apg8FWZ3", "ruleDetail": [{"ruleAttribute": "YdgZTMbW", "ruleCriteria": "MINIMUM", "ruleValue": 0.3345986460387471}, {"ruleAttribute": "LRATqwDd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10681147902055843}, {"ruleAttribute": "PgUCfus7", "ruleCriteria": "MINIMUM", "ruleValue": 0.33519873194791383}]}, {"allowedAction": "kpO3WaMV", "ruleDetail": [{"ruleAttribute": "bXVd5xvJ", "ruleCriteria": "EQUAL", "ruleValue": 0.9014746073335682}, {"ruleAttribute": "E4IE4rOD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9324903427668676}, {"ruleAttribute": "FXfEAHMQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.866852875629138}]}, {"allowedAction": "6zUaeJgi", "ruleDetail": [{"ruleAttribute": "8FjzLOYG", "ruleCriteria": "EQUAL", "ruleValue": 0.2636825439808441}, {"ruleAttribute": "7Hy4hiCG", "ruleCriteria": "MINIMUM", "ruleValue": 0.7630041264046687}, {"ruleAttribute": "HGDbRHAf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.01711149779150689}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["Kt1tW0OA", "s5I3XHv9", "ymT77M8G"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '6WUfBqjf' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "bl3SKCTn", "groupIcon": "aRDTyZyx", "groupName": "XCtwCbsm", "groupRegion": "F64CXNBT", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'HkmTfkJG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'I9UwPLtC' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "FdA9WFNv", "groupIcon": "KStK4kOW", "groupName": "ai86fwHj", "groupRegion": "8WXyMuaN", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'NJTqOFGZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"wJeVqp87": {}, "qWmlGYkU": {}, "HZhjJGqv": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'sqcN4dD3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'jc0PimM5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'LaSmMVfA' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'CsoFHf5p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'EoRdXBMH' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '5o10zBQf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'zcXMl2ux' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"KqteQ2Wa": {}, "TmSIg8lR": {}, "njNYOJ08": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '5P6FUSY5' \
    --groupId '2xcQWcFL' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "yAf8Fo0O", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7836221323725365}, {"ruleAttribute": "WMSo24D2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4371308756506551}, {"ruleAttribute": "MJMGwpaE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07779255189995349}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'D7algwxq' \
    --groupId 'rGOSq7Kn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'xfnP6dcc' \
    --memberRoleId 'QrWlZiea' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "hcB0DIPZ"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'W97QN3A0' \
    --memberRoleId 'kJ9QjMtN' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "0hwdblKK"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'Ueb4zupl' \
    --namespace $AB_NAMESPACE \
    --userId 'QRGKenn6' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '7s6cS4Mn' \
    --namespace $AB_NAMESPACE \
    --userId 'DPhyJ3v5' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'UtfBBpem' \
    --namespace $AB_NAMESPACE \
    --userId 'MJp7FwOm' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '4jDmGcAW' \
    --namespace $AB_NAMESPACE \
    --userId '0zmyupvt' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'ghdTtBU5' \
    --namespace $AB_NAMESPACE \
    --userId 'bNtaLgKp' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'mC6sayfW' \
    --namespace $AB_NAMESPACE \
    --userId 'uGIRaFRI' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE