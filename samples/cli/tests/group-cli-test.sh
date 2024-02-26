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
    --limit '49' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "pyuWhFAx", "description": "1p8diui0", "globalRules": [{"allowedAction": "6J341IPg", "ruleDetail": [{"ruleAttribute": "j90jZeRx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8003932181756133}, {"ruleAttribute": "cu9sVcph", "ruleCriteria": "EQUAL", "ruleValue": 0.9232003895388959}, {"ruleAttribute": "xUi5oFUD", "ruleCriteria": "EQUAL", "ruleValue": 0.08712129754350828}]}, {"allowedAction": "5iNRubUt", "ruleDetail": [{"ruleAttribute": "yWw9z6Tb", "ruleCriteria": "MINIMUM", "ruleValue": 0.26336035081438147}, {"ruleAttribute": "Isc6Xk4n", "ruleCriteria": "MAXIMUM", "ruleValue": 0.16299920544144475}, {"ruleAttribute": "AO6RdT8Y", "ruleCriteria": "MAXIMUM", "ruleValue": 0.31182381811375703}]}, {"allowedAction": "vPu9m36f", "ruleDetail": [{"ruleAttribute": "b9cEoDP9", "ruleCriteria": "EQUAL", "ruleValue": 0.38378071603251696}, {"ruleAttribute": "RcU6DHA1", "ruleCriteria": "EQUAL", "ruleValue": 0.6594821567444848}, {"ruleAttribute": "YEwHkm9k", "ruleCriteria": "EQUAL", "ruleValue": 0.06101600913625249}]}], "groupAdminRoleId": "URroVnOD", "groupMaxMember": 91, "groupMemberRoleId": "xcYzQf6V", "name": "3yipoRvJ"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'nDf27dZJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'N38kxRbw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '5pBQ0v2d' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fGACns1C", "groupMaxMember": 14, "name": "rupnaQqZ"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'aJjLCpQA' \
    --configurationCode 'EankLRWZ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "X091YaYj", "ruleCriteria": "MINIMUM", "ruleValue": 0.5047162306355047}, {"ruleAttribute": "HgUO8ldt", "ruleCriteria": "EQUAL", "ruleValue": 0.5242256338189878}, {"ruleAttribute": "jQyFg9Uw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11426022672571579}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'SCDyYc4W' \
    --configurationCode 'EO4DAqSZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'ajtFiyNH' \
    --groupName 'I1xfSNRo' \
    --groupRegion 'g8TWctf0' \
    --limit '62' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'AU0SVGl1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'qwIx5z1G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '25ko6viK' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '8' \
    --order 'xrSqZgxc' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "76vgtLNR", "memberRolePermissions": [{"action": 52, "resourceName": "w6RP8Nzu"}, {"action": 33, "resourceName": "YrshAN3a"}, {"action": 57, "resourceName": "fEyoS65o"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'GvyeMW4C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'Jyg8HdK9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'p0v1VZ0E' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "stn2Zsa3"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'GOyENr7j' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 47, "resourceName": "YUitMvYi"}, {"action": 39, "resourceName": "Ux0JARVO"}, {"action": 51, "resourceName": "bHeL7pSR"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'LSIDzWW0' \
    --groupRegion 'ObxprIUC' \
    --limit '9' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "RRjybRJ4", "customAttributes": {"bpJ5moOI": {}, "iflcF9M6": {}, "aiR9jJF1": {}}, "groupDescription": "zpRXPHsW", "groupIcon": "VTmsqBqJ", "groupMaxMember": 80, "groupName": "6RboFlgM", "groupRegion": "17LUqEzw", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "CSg9iuJw", "ruleDetail": [{"ruleAttribute": "qCxreLbO", "ruleCriteria": "EQUAL", "ruleValue": 0.05838793078336968}, {"ruleAttribute": "vVFZQUi7", "ruleCriteria": "MINIMUM", "ruleValue": 0.48746021697828257}, {"ruleAttribute": "P7ej8ntP", "ruleCriteria": "EQUAL", "ruleValue": 0.3536530643814715}]}, {"allowedAction": "kQpD5Cep", "ruleDetail": [{"ruleAttribute": "pQgU7c3D", "ruleCriteria": "MINIMUM", "ruleValue": 0.3465300656437299}, {"ruleAttribute": "alSVqhXH", "ruleCriteria": "MINIMUM", "ruleValue": 0.6151304155857684}, {"ruleAttribute": "TI0RhjtN", "ruleCriteria": "EQUAL", "ruleValue": 0.4999487304138506}]}, {"allowedAction": "mOesoqg1", "ruleDetail": [{"ruleAttribute": "oraLnmEs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.017715979635487433}, {"ruleAttribute": "OxXR68YL", "ruleCriteria": "MINIMUM", "ruleValue": 0.5919802580664107}, {"ruleAttribute": "66Qct06i", "ruleCriteria": "MINIMUM", "ruleValue": 0.07965264936859706}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'S4z2FaHl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '89mog7sf' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "uO6CMzso", "groupIcon": "JwQYT9vc", "groupName": "ApxHQ0PA", "groupRegion": "xhiPli5X", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'n8OmWPuS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'OBD8aiAm' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "MqSpwxZP", "groupIcon": "NMajcDAo", "groupName": "oEteEbOC", "groupRegion": "rqnD6syH", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '8qv5xqdO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"C44OeOEm": {}, "CYL5RQkW": {}, "54Vs1i0o": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'q0RmIP0A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'MYbFooWv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'iZIB5A87' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'PEL5LZx6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'JUFHYQij' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'YWzu34b6' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '95' \
    --order 'ury4tsET' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '2B1zEKYw' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Gk9WDwhm": {}, "YccrYjlA": {}, "VfiLNZ4T": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'Ua9F5Nln' \
    --groupId 'yikxo2Ex' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "i4Xm0Ex1", "ruleCriteria": "MINIMUM", "ruleValue": 0.508615519263456}, {"ruleAttribute": "rA2J4a9R", "ruleCriteria": "EQUAL", "ruleValue": 0.8845209530930225}, {"ruleAttribute": "ikG0K3hC", "ruleCriteria": "EQUAL", "ruleValue": 0.598118984650856}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'EQP4misj' \
    --groupId 'IJa9WGEs' \
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
    --limit '98' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'zQNMX7EH' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "X9xigPvn"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'BNJhn4ve' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "XvflxRNA"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gdyXu1Lh' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EAYXSPg0' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '3vdv0f7R' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TGM9PAWy' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'oavftB7J' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["Jl6HPenS", "vMeivOyt", "0AufCAjQ"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'QM34QLMV' \
    --limit '41' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'jClIzpTH' \
    --namespace $AB_NAMESPACE \
    --userId '4sgob7ZY' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "6IfLNxrK", "customAttributes": {"9rOY784R": {}, "CRq4zDeP": {}, "pWaPcZRU": {}}, "groupDescription": "cL33PjNl", "groupIcon": "a1Bsl325", "groupMaxMember": 13, "groupName": "95fI7v6f", "groupRegion": "cC27viX8", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Sx2BahCv", "ruleDetail": [{"ruleAttribute": "EpZdC4A7", "ruleCriteria": "EQUAL", "ruleValue": 0.39577693001603287}, {"ruleAttribute": "qG9Jz1uL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3530604947464542}, {"ruleAttribute": "C19tUliU", "ruleCriteria": "MINIMUM", "ruleValue": 0.37385655162391784}]}, {"allowedAction": "tFs8VBlB", "ruleDetail": [{"ruleAttribute": "Mm7hhslC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.33364888138766413}, {"ruleAttribute": "U5tzYUgC", "ruleCriteria": "EQUAL", "ruleValue": 0.5655074392636771}, {"ruleAttribute": "eyAz1vfZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.9721110063457049}]}, {"allowedAction": "fIqVZObT", "ruleDetail": [{"ruleAttribute": "28wyOJgY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.0008883081388149083}, {"ruleAttribute": "vQwIwkW6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.16792246092898166}, {"ruleAttribute": "OlSmhjyP", "ruleCriteria": "MINIMUM", "ruleValue": 0.05142035102505005}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["lwbTnsgN", "0Vp2P27o", "GAy3erGP"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'HhMjdIE5' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Q8l5Ueu2", "groupIcon": "VIeDsfpk", "groupName": "ND2bqmAm", "groupRegion": "OOJTh6zW", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'pyNlYs2j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'EKkT2fry' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "6QdmcKAN", "groupIcon": "Z8HaE6xJ", "groupName": "eru5jkb5", "groupRegion": "bcBpcBPJ", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'CbPbeFh0' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"9KQHI42d": {}, "QNT4PAwE": {}, "UOVLgKM8": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'm7Ncugd4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'JwM1K64f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'By04g2CF' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'hrhSFTKr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'dJkWaYFv' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'Gf4D6lkU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '38duLQhH' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"dI7OGS7u": {}, "17BkHYQe": {}, "yicDF28a": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'HCLcn85Z' \
    --groupId 'ij6TOeNm' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "kUynaBqM", "ruleCriteria": "MINIMUM", "ruleValue": 0.490276930680691}, {"ruleAttribute": "IyjCtbXh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.22703168568242416}, {"ruleAttribute": "smgJjVVV", "ruleCriteria": "MINIMUM", "ruleValue": 0.721112461372244}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'nfcpJT3V' \
    --groupId 'hDASY8TL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'ceFtzmQW' \
    --memberRoleId 'HGchCHFf' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "qRtOdHXZ"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'D24tqen0' \
    --memberRoleId 'UsVKKZwU' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Ouq6PwCk"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'T6XnJEpA' \
    --namespace $AB_NAMESPACE \
    --userId 'XMa15z7E' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'EdoU89T7' \
    --namespace $AB_NAMESPACE \
    --userId 'K29jSffB' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'qPnVb1LI' \
    --namespace $AB_NAMESPACE \
    --userId 'EZBw3xiZ' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'D2ncaddO' \
    --namespace $AB_NAMESPACE \
    --userId '66RjgUOf' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'gFEA3NV7' \
    --namespace $AB_NAMESPACE \
    --userId 'O2FX1ITg' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '8R43ycz5' \
    --namespace $AB_NAMESPACE \
    --userId '65ITDB1m' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE