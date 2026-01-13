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
    --offset '99' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "6QqF6Nx2", "description": "2kZ6OLLz", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "eJtd7AZp", "ruleCriteria": "MINIMUM", "ruleValue": 0.2662055782110603}, {"ruleAttribute": "RDpzvSAk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9699932833295377}, {"ruleAttribute": "vbXK5IDf", "ruleCriteria": "MINIMUM", "ruleValue": 0.2174782100092888}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "Hq5bZkdO", "ruleCriteria": "EQUAL", "ruleValue": 0.5000940423645187}, {"ruleAttribute": "JnkUiHfP", "ruleCriteria": "EQUAL", "ruleValue": 0.08632901016582151}, {"ruleAttribute": "4tUBS18p", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7685448390924069}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "TkAa68WZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.5940484689749715}, {"ruleAttribute": "YbMo13e7", "ruleCriteria": "EQUAL", "ruleValue": 0.970014869659867}, {"ruleAttribute": "PiXMEWXB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9057321066850427}]}], "groupAdminRoleId": "UyyBvwZB", "groupMaxMember": 5, "groupMemberRoleId": "6FsjyNQS", "name": "o435fgJF"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'UpuCzpoo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'kv38Fs6u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'PkLA6Rlu' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "D1gfr53D", "groupMaxMember": 64, "name": "6JnpETeh"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'bD1h7Mtr' \
    --configurationCode 'UxT8vPaB' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "htzuQTdW", "ruleCriteria": "EQUAL", "ruleValue": 0.18179426873439575}, {"ruleAttribute": "jvqZZGvY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.867760623634402}, {"ruleAttribute": "9wYIh3GM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4648154109987902}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'hZ040iGk' \
    --configurationCode 'xkgb6Eie' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'gYPoThkN' \
    --groupName 'ffGnHgkk' \
    --groupRegion 'alcZSrtt' \
    --limit '49' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'UJuNWcfU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'd818vtNQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'jdL8nVyC' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '52' \
    --order '58nceDs0' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "iRA1LOI4", "memberRolePermissions": [{"action": 18, "resourceName": "glTchKu8"}, {"action": 36, "resourceName": "8e7W4R7S"}, {"action": 91, "resourceName": "bj7Vecqh"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'nILVOzK4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'SuxzK28H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'W2eIRtIx' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "voWgQvOK"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'sbzhrM4s' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 60, "resourceName": "6RU5oTQS"}, {"action": 89, "resourceName": "pZHp7OqS"}, {"action": 89, "resourceName": "JGFP5KM7"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'RLQrmfuj' \
    --groupRegion 'Pdn30NT9' \
    --limit '51' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "ohYM8nPo", "customAttributes": {"Bh1uw30m": {}, "WESotIiO": {}, "gDMFShZo": {}}, "groupDescription": "nUirvDO4", "groupIcon": "KV3kGaOh", "groupMaxMember": 30, "groupName": "zI4sVucv", "groupRegion": "53pnTQPG", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "mlHHRe2g", "ruleCriteria": "MINIMUM", "ruleValue": 0.3677870625120643}, {"ruleAttribute": "oZ1TY1Mr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.079786943953844}, {"ruleAttribute": "WO4eSDt0", "ruleCriteria": "EQUAL", "ruleValue": 0.5202237245337049}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "Lz02gxwJ", "ruleCriteria": "EQUAL", "ruleValue": 0.8575419805582523}, {"ruleAttribute": "ryt8miL2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4606381130394209}, {"ruleAttribute": "Z6o1y8IN", "ruleCriteria": "MINIMUM", "ruleValue": 0.2690855563916019}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "EkYRGlwX", "ruleCriteria": "EQUAL", "ruleValue": 0.17849116282794053}, {"ruleAttribute": "1G8a2rv7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5178448496781219}, {"ruleAttribute": "bgaMgvO3", "ruleCriteria": "EQUAL", "ruleValue": 0.33732351601384314}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'MTCEL46e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'bRuoZ8dK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "N9OzUq8E", "groupIcon": "G79Y5ki0", "groupName": "aVP3aNlm", "groupRegion": "GiyJ5Ymc", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'jaOMNX53' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'uhEwCCDv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Uigw1nRH", "groupIcon": "kliLKSJY", "groupName": "ZdYou3Qn", "groupRegion": "VRsKhZrH", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '0i3zGvkq' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"My1B3E5t": {}, "vm87mZEv": {}, "kmsP6udL": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'lMV5GSr6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '41j4KT6e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '27O1K5p6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'kw23HHh9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'BY1AoF4Y' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '3KfLd3HQ' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '70' \
    --order 'rP3XIMCH' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'xm8eGNhW' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"ZgnxX11d": {}, "jQpqQ0pB": {}, "FpP6cQK3": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'V0pSADgw' \
    --groupId 'y4QpwgTs' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "0WIXg8MV", "ruleCriteria": "EQUAL", "ruleValue": 0.5965934599518593}, {"ruleAttribute": "EczgFTfy", "ruleCriteria": "EQUAL", "ruleValue": 0.049076072925818504}, {"ruleAttribute": "7Ig95Rif", "ruleCriteria": "MINIMUM", "ruleValue": 0.9120520105292528}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'OCXzGY3T' \
    --groupId 'Kv4mukpy' \
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
    --limit '67' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'NpS1Wz7i' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "90cWT7fS"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'WNTCCT8c' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "FER1LqEY"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ookk2z8m' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '2KOGgdoT' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PY31kFlP' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'cR2d1HvW' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eqN9qSeD' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["RvqT1ikt", "NEVHKeii", "NolgxEhc"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'uEYtU2Ka' \
    --limit '87' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'P5oPkdtu' \
    --namespace $AB_NAMESPACE \
    --userId 'mxXNDCvR' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "JSw22yUQ", "customAttributes": {"AisNXA8h": {}, "BQ07CtEl": {}, "WYML4VC3": {}}, "groupDescription": "o5c3emy4", "groupIcon": "Dtx0KYlL", "groupMaxMember": 61, "groupName": "6jYierej", "groupRegion": "4KxDz5Wi", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "xJiwMwfj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9598589408733441}, {"ruleAttribute": "rCOLixZK", "ruleCriteria": "MINIMUM", "ruleValue": 0.9620081864821238}, {"ruleAttribute": "SRkpChBg", "ruleCriteria": "EQUAL", "ruleValue": 0.8478173753907364}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "cKxWGy3t", "ruleCriteria": "MAXIMUM", "ruleValue": 0.49925437729689903}, {"ruleAttribute": "ldUvAxee", "ruleCriteria": "MINIMUM", "ruleValue": 0.6250627498458735}, {"ruleAttribute": "PGGg059X", "ruleCriteria": "EQUAL", "ruleValue": 0.6631223601165271}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "BNyQJfZ7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5581948115965842}, {"ruleAttribute": "tDjNyLCH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6709810788698931}, {"ruleAttribute": "oxblboTD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.519877258440967}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["mznuCYQx", "g80rce6z", "kDUSgMp3"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '7nSg7aQb' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "eDkp5HiS", "groupIcon": "gROFKtEM", "groupName": "HSbRbv2n", "groupRegion": "pDeJ8N9o", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '2FlryInI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'gmFBfi8v' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "A20J3Rp1", "groupIcon": "XC3zQiq8", "groupName": "cVCbB7Iq", "groupRegion": "MBsOAC7s", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'SSzpWfFh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"2UYW6kKI": {}, "BEj86LMy": {}, "WLqKjpCj": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'SqKyA3fY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '6yg6eltP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'hOmsnxky' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'CCeG8JJ4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '2qLBuaHk' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'ad3DXkL3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'ronaKcI5' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"YxltWzdR": {}, "Jv7GYmwn": {}, "NXTfqHI4": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'N33GDVN1' \
    --groupId 'kmkRQC8h' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ngk4OZ1e", "ruleCriteria": "EQUAL", "ruleValue": 0.31454920725615665}, {"ruleAttribute": "39Tqo7DT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3905948220537169}, {"ruleAttribute": "PyzH4772", "ruleCriteria": "EQUAL", "ruleValue": 0.19586431629160161}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'CFNn2TWr' \
    --groupId 'FlN8rKBo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'KejDwhNq' \
    --memberRoleId 'S1h2u7lK' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "LVfMm2jQ"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'vKTDDde5' \
    --memberRoleId 'pHRUID9r' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "bciZx6nR"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'ZBMjVi3o' \
    --namespace $AB_NAMESPACE \
    --userId 'kOCZZxZb' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'XWJZkW0v' \
    --namespace $AB_NAMESPACE \
    --userId 'rUk58brl' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'mZQSRJl8' \
    --namespace $AB_NAMESPACE \
    --userId 'LkiaCOku' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'SSoYna09' \
    --namespace $AB_NAMESPACE \
    --userId 'fFqxQp4M' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'Q34IKGFH' \
    --namespace $AB_NAMESPACE \
    --userId '7OWubeD3' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'unLilZSt' \
    --namespace $AB_NAMESPACE \
    --userId 'lZzx4lYs' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE