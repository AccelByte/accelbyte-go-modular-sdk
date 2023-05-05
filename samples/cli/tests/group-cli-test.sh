#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..73"

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
    --limit '87' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "SXm2Mhuh", "description": "r26Cleyx", "globalRules": [{"allowedAction": "YBMSDEnB", "ruleDetail": [{"ruleAttribute": "jlh9bN4O", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5628676639407263}, {"ruleAttribute": "pQSkrVNf", "ruleCriteria": "MINIMUM", "ruleValue": 0.0776804501741567}, {"ruleAttribute": "sMOgZx1v", "ruleCriteria": "MINIMUM", "ruleValue": 0.4922758192160689}]}, {"allowedAction": "zlXL3mUW", "ruleDetail": [{"ruleAttribute": "g1US4n46", "ruleCriteria": "EQUAL", "ruleValue": 0.680896755458724}, {"ruleAttribute": "wVjRE3Mo", "ruleCriteria": "EQUAL", "ruleValue": 0.20255548729647688}, {"ruleAttribute": "c5jlK2ZT", "ruleCriteria": "MINIMUM", "ruleValue": 0.9660955939486768}]}, {"allowedAction": "VAaw8lAR", "ruleDetail": [{"ruleAttribute": "s9rQWDPD", "ruleCriteria": "EQUAL", "ruleValue": 0.40332306401719564}, {"ruleAttribute": "vpJV4yoJ", "ruleCriteria": "EQUAL", "ruleValue": 0.3154375996984049}, {"ruleAttribute": "s6dIJ2Pq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.25558657062529166}]}], "groupAdminRoleId": "p5p1pPvH", "groupMaxMember": 16, "groupMemberRoleId": "pD1Ct6Wo", "name": "4CUwaLbF"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'iz9TXjgl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '91VeSEBW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'XB49Pdsf' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Z0FDw5Bg", "groupMaxMember": 40, "name": "vSwpmxgO"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '1uQaDbBe' \
    --configurationCode 'pVx5EVkb' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "BO7f24R0", "ruleCriteria": "EQUAL", "ruleValue": 0.7168021385707181}, {"ruleAttribute": "JrBAjwRs", "ruleCriteria": "EQUAL", "ruleValue": 0.009994054793103668}, {"ruleAttribute": "C4mWxEwW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7942175207196237}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'T19orLy4' \
    --configurationCode 'IBEQboCU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'MxZs1pGV' \
    --groupName '8Z2dXLTK' \
    --groupRegion 'xwDGw44B' \
    --limit '70' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'mB3wGIjm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'bRIwduby' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '7hyqSTx5' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '31' \
    --order 'Wb8IGVyJ' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "uYJU0v8S", "memberRolePermissions": [{"action": 30, "resourceName": "PJMhssUm"}, {"action": 53, "resourceName": "4JwaLLOH"}, {"action": 30, "resourceName": "abYiw20s"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'YnnrXQXa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'A9XNKU09' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '1nalEXGf' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "1Wod3y9m"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'iEzcCRfC' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 69, "resourceName": "hkDcCK44"}, {"action": 69, "resourceName": "jHSoOLrI"}, {"action": 69, "resourceName": "Es6oFzqw"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'ktxd0F2a' \
    --groupRegion 'y2rYeiSj' \
    --limit '6' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "0b4FtUYn", "customAttributes": {"OsvQg7Jf": {}, "m7L7ts2X": {}, "1DpltbbM": {}}, "groupDescription": "Y684JoVN", "groupIcon": "fGszvEL3", "groupMaxMember": 41, "groupName": "G9Mo8kFg", "groupRegion": "UsWQZubu", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "j0x90rTe", "ruleDetail": [{"ruleAttribute": "HgnAEgfq", "ruleCriteria": "MINIMUM", "ruleValue": 0.060916977508182146}, {"ruleAttribute": "YNN50Q4V", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7017998179703581}, {"ruleAttribute": "xfhKVTSi", "ruleCriteria": "MINIMUM", "ruleValue": 0.5574165243903543}]}, {"allowedAction": "xIesU0pZ", "ruleDetail": [{"ruleAttribute": "Rrpkq0l5", "ruleCriteria": "MINIMUM", "ruleValue": 0.04631690539867728}, {"ruleAttribute": "voO0IHcq", "ruleCriteria": "MINIMUM", "ruleValue": 0.7070602239884453}, {"ruleAttribute": "wJZqrWaJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.6178712410551137}]}, {"allowedAction": "sNJtci9L", "ruleDetail": [{"ruleAttribute": "5Xi1j8ad", "ruleCriteria": "EQUAL", "ruleValue": 0.6916356395499074}, {"ruleAttribute": "AclDOF3P", "ruleCriteria": "EQUAL", "ruleValue": 0.8095863459745208}, {"ruleAttribute": "wMbFlr4o", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6480453917904635}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'Dippeu2h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'db9yFPNs' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "9oqqrX93", "groupIcon": "0E8noeWq", "groupName": "doqzMfXl", "groupRegion": "jhhsrcR2", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '169coS2s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'jiWKqh71' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "WZB8HVdS", "groupIcon": "aQONzPds", "groupName": "9N4LZJZs", "groupRegion": "R4l7nEQU", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'EfYP6IOH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"BvtSQyvp": {}, "gUOOHT2G": {}, "E8JVwouZ": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'mTsDiatL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'orLPl8ld' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'd8NoF9W6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '8B2OR3Wh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '3wc3sSTP' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'dljVxmD9' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '19' \
    --order 'CSqhNpkd' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'a9t5M8Xm' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"AqYSOtuT": {}, "gUVECMnA": {}, "bRnZ5ToK": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'ckIG8uKz' \
    --groupId 'i3O6bFDN' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "rkCoYU5U", "ruleCriteria": "EQUAL", "ruleValue": 0.683723247971162}, {"ruleAttribute": "xUVdy2YT", "ruleCriteria": "EQUAL", "ruleValue": 0.8407895468263639}, {"ruleAttribute": "Hf4gJoTJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.09863844102111496}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'nPkYb7sU' \
    --groupId 'Rk51MaEH' \
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
    --limit '72' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'aIkOZIcJ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "oZ22icqI"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'Lvq1v5bS' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "j8PJSUfi"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hCRZIeAT' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '0a2zgL07' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UIi62qPv' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'RQSwy3pN' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Gn6heTlJ' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["eFhysHAG", "ijtb2mlv", "UwT3uRjh"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'pck57QN9' \
    --limit '60' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "eKRmnxlM", "customAttributes": {"8hvg5h8g": {}, "YdVftuDj": {}, "0GW5MbM6": {}}, "groupDescription": "Jcuxh5fM", "groupIcon": "S4e7TZi1", "groupMaxMember": 20, "groupName": "fEto6zHo", "groupRegion": "0asXSpBv", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Jlc5uBE3", "ruleDetail": [{"ruleAttribute": "h1dMrJpB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5021446150299135}, {"ruleAttribute": "8jC5K9o9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3661154974205041}, {"ruleAttribute": "Ar4HzA7A", "ruleCriteria": "MAXIMUM", "ruleValue": 0.20381256949942816}]}, {"allowedAction": "3FEJl72Q", "ruleDetail": [{"ruleAttribute": "vJUMeQwF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2248230767487177}, {"ruleAttribute": "t4Y1JNS1", "ruleCriteria": "EQUAL", "ruleValue": 0.21593285975435383}, {"ruleAttribute": "tXh9FuI8", "ruleCriteria": "MINIMUM", "ruleValue": 0.4242584373682988}]}, {"allowedAction": "fdUEEOb5", "ruleDetail": [{"ruleAttribute": "Oz0Manhv", "ruleCriteria": "MINIMUM", "ruleValue": 0.7099181022105879}, {"ruleAttribute": "vgdaDa6u", "ruleCriteria": "EQUAL", "ruleValue": 0.04325096597501821}, {"ruleAttribute": "0bpVVDHZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5214958802186273}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 48 'CreateNewGroupPublicV2' test.out

#- 49 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["pyufLPmW", "jFAelyxH", "58JdQwLJ"]}' \
    > test.out 2>&1
eval_tap $? 49 'GetListGroupByIDsV2' test.out

#- 50 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'boWTVssm' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Ag5puzrp", "groupIcon": "NPEN0Ehu", "groupName": "dj4tFFUr", "groupRegion": "CxJkkdsJ", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdatePutSingleGroupPublicV2' test.out

#- 51 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'Knm0YvHs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteGroupPublicV2' test.out

#- 52 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'StUOvL12' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "8N1aYqNs", "groupIcon": "PEO9ESmF", "groupName": "u9LpYumL", "groupRegion": "dxvm5Wr4", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdatePatchSingleGroupPublicV2' test.out

#- 53 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '8sxTLBwT' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"245ZvvZT": {}, "gwMlaa7Y": {}, "BfBPspbb": {}}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateGroupCustomAttributesPublicV2' test.out

#- 54 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'is0dngLl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AcceptGroupInvitationPublicV2' test.out

#- 55 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'IkDmIcwc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'RejectGroupInvitationPublicV2' test.out

#- 56 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'I4Zy3PY1' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 56 'GetGroupInviteRequestPublicV2' test.out

#- 57 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'Hl0zktIy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'JoinGroupV2' test.out

#- 58 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'u5WQ06Rg' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 58 'GetGroupJoinRequestPublicV2' test.out

#- 59 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '9ZW906kI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'LeaveGroupPublicV2' test.out

#- 60 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '5qXDsUQv' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"1lE4UxSJ": {}, "JiwccMWh": {}, "2nYXeRuq": {}}}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupCustomRulePublicV2' test.out

#- 61 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'msLUiNpY' \
    --groupId 'gRomgSB0' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ZOz2YTBL", "ruleCriteria": "MINIMUM", "ruleValue": 0.2091165995562797}, {"ruleAttribute": "rQd0fYu4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4093285962762383}, {"ruleAttribute": "0cGde7wI", "ruleCriteria": "EQUAL", "ruleValue": 0.7624119868101713}]}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupPredefinedRulePublicV2' test.out

#- 62 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'Zxf3XdvP' \
    --groupId 'A1lChIBB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGroupPredefinedRulePublicV2' test.out

#- 63 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 63 'GetMemberRolesListPublicV2' test.out

#- 64 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'KFhhGZvZ' \
    --memberRoleId 'LDR4KBkO' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "MDDlw7PH"}' \
    > test.out 2>&1
eval_tap $? 64 'UpdateMemberRolePublicV2' test.out

#- 65 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId '0nB1xXJJ' \
    --memberRoleId 'RzgGeBlF' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "4n4clZMm"}' \
    > test.out 2>&1
eval_tap $? 65 'DeleteMemberRolePublicV2' test.out

#- 66 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 66 'GetUserGroupInformationPublicV2' test.out

#- 67 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 67 'GetMyGroupJoinRequestV2' test.out

#- 68 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'Pl14ZcO0' \
    --namespace $AB_NAMESPACE \
    --userId 'a17xbXDe' \
    > test.out 2>&1
eval_tap $? 68 'InviteGroupPublicV2' test.out

#- 69 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'XWOsW6yq' \
    --namespace $AB_NAMESPACE \
    --userId 'Gp7R43lf' \
    > test.out 2>&1
eval_tap $? 69 'CancelInvitationGroupMemberV2' test.out

#- 70 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'xxKq6lYj' \
    --namespace $AB_NAMESPACE \
    --userId 'aQmIPvlH' \
    > test.out 2>&1
eval_tap $? 70 'AcceptGroupJoinRequestPublicV2' test.out

#- 71 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'PhiM3shN' \
    --namespace $AB_NAMESPACE \
    --userId 'OYmxc1rd' \
    > test.out 2>&1
eval_tap $? 71 'RejectGroupJoinRequestPublicV2' test.out

#- 72 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'bhhAzScT' \
    --namespace $AB_NAMESPACE \
    --userId 'DUU18Js5' \
    > test.out 2>&1
eval_tap $? 72 'KickGroupMemberPublicV2' test.out

#- 73 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'r6YNoAm3' \
    --namespace $AB_NAMESPACE \
    --userId 'vL2TTZt9' \
    > test.out 2>&1
eval_tap $? 73 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE