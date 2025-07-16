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
    --limit '31' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "HXKnTL5K", "description": "80XlAMIp", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "UopjvXsw", "ruleCriteria": "MINIMUM", "ruleValue": 0.4087696584556476}, {"ruleAttribute": "G9l9SOeN", "ruleCriteria": "EQUAL", "ruleValue": 0.5945311820062363}, {"ruleAttribute": "D9UpFnmn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.08272036883086997}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "GL5qveoI", "ruleCriteria": "EQUAL", "ruleValue": 0.22944638450442256}, {"ruleAttribute": "qBeHXIKY", "ruleCriteria": "MINIMUM", "ruleValue": 0.1416308029853386}, {"ruleAttribute": "r90L11jO", "ruleCriteria": "EQUAL", "ruleValue": 0.7372831024847558}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "uoTzqjqg", "ruleCriteria": "MINIMUM", "ruleValue": 0.9584095526780374}, {"ruleAttribute": "c6dWzSAo", "ruleCriteria": "MAXIMUM", "ruleValue": 0.716381350208142}, {"ruleAttribute": "7qiLOd6P", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07093469798895657}]}], "groupAdminRoleId": "EGO9RXFg", "groupMaxMember": 74, "groupMemberRoleId": "zgO4pvxo", "name": "5kCOFLix"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'eYQA57ao' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'ItBzbYMn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'S60wSGpq' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "tzhNQfG9", "groupMaxMember": 62, "name": "X0MONXZe"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '6Qx1XHMf' \
    --configurationCode 'aEORBLCM' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "YhzitXcA", "ruleCriteria": "EQUAL", "ruleValue": 0.393485024578374}, {"ruleAttribute": "eD08jaU4", "ruleCriteria": "EQUAL", "ruleValue": 0.5990487055338204}, {"ruleAttribute": "6kczai3H", "ruleCriteria": "MINIMUM", "ruleValue": 0.26748829868952706}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '8Hg6b5zZ' \
    --configurationCode 'YSqPJFVv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'zo1UQdF9' \
    --groupName 'QV7sexVh' \
    --groupRegion 'xuuxYaJC' \
    --limit '23' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'nUGFtYbf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'UIEVhvzi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'rqvHvYwo' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '82' \
    --order 'oBZSvpH4' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "I9ZBBucu", "memberRolePermissions": [{"action": 57, "resourceName": "r4dTbG5s"}, {"action": 3, "resourceName": "6db6tS6i"}, {"action": 85, "resourceName": "q8hAUsfE"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '2R8r81rl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'XmuIYO0o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '8MqkVAO6' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "32PjM1aA"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '7BcefUdR' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 28, "resourceName": "uNuIUzZP"}, {"action": 55, "resourceName": "vKn0dtD8"}, {"action": 82, "resourceName": "ohoAjHJj"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'oxTBh1Ah' \
    --groupRegion 'Ekclo5NC' \
    --limit '20' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "lkzUT9cn", "customAttributes": {"4SYFaY0D": {}, "Q8UI3P0g": {}, "Lk9NfHzv": {}}, "groupDescription": "htnJ7ezL", "groupIcon": "Li7Jijfq", "groupMaxMember": 6, "groupName": "n26fPXfF", "groupRegion": "9h7TUKlL", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "i6CPKcu3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.026829348358530458}, {"ruleAttribute": "W4LUHq57", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2878051629229723}, {"ruleAttribute": "pci9wIeH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8501603154945307}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "hjqUOtjw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3824093999957253}, {"ruleAttribute": "Yo3JTkdr", "ruleCriteria": "MINIMUM", "ruleValue": 0.6175772120298315}, {"ruleAttribute": "K6dXX6jk", "ruleCriteria": "EQUAL", "ruleValue": 0.9287922668714511}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "LuEzrc09", "ruleCriteria": "MINIMUM", "ruleValue": 0.8423609086995156}, {"ruleAttribute": "if2tKtSu", "ruleCriteria": "MINIMUM", "ruleValue": 0.8717023697121926}, {"ruleAttribute": "QTO0EJIQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.9006399550792461}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'gWreG97t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'NSbM5SNU' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "P2HmH7vy", "groupIcon": "OJHPF6ud", "groupName": "irIGW5TN", "groupRegion": "CoPpUEUk", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '1g2o6wHQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'mXwdCul0' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "xpLvEUZD", "groupIcon": "AyZU1BBj", "groupName": "XM84GZOM", "groupRegion": "Mg7XfTcQ", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'jnQP4fWV' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"9nkGfH1O": {}, "4icvoA7h": {}, "vZGqOVxm": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'pYpD1lJh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '9YvRCnEn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'R4KJBa1E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'rVL45pIq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'ColHQT30' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '2PWprjpw' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '45' \
    --order 'f3EP4IFO' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'pYUW9pp2' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"tcgMuHqE": {}, "P6Ykhonp": {}, "RxNQDvGN": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'WwqqSg7K' \
    --groupId 'cabOYVsC' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "zmf1Ojnc", "ruleCriteria": "EQUAL", "ruleValue": 0.9277322114655407}, {"ruleAttribute": "TCvFNHR3", "ruleCriteria": "MINIMUM", "ruleValue": 0.6811668895450117}, {"ruleAttribute": "mVdRXhRA", "ruleCriteria": "EQUAL", "ruleValue": 0.022921816309332987}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'SO7Zfwkq' \
    --groupId 'mz2krFD8' \
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
    --limit '30' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'WIExB5qs' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "VTrbiheQ"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'PR4UAFpP' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "aKXmlEqh"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QdpzLH0U' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hmnnxTjD' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5GCiFS5e' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'n6u3xTdp' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LUpArhZN' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["VKqast2x", "BVtZxs5Q", "xSKZbFrZ"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'frQ9KA3X' \
    --limit '48' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'uHBA7RNv' \
    --namespace $AB_NAMESPACE \
    --userId 'hvbq3hBk' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "0YEIBqHZ", "customAttributes": {"KE8YHCNX": {}, "AHaSD6lC": {}, "hcBVrVxs": {}}, "groupDescription": "QeBO3Xli", "groupIcon": "FPMULl1n", "groupMaxMember": 66, "groupName": "Xz1P6V43", "groupRegion": "WsHfiusm", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "FXrKzfzR", "ruleCriteria": "MINIMUM", "ruleValue": 0.6543664005967824}, {"ruleAttribute": "6v3ZQkBk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9190662760135352}, {"ruleAttribute": "BlCPmdza", "ruleCriteria": "MINIMUM", "ruleValue": 0.6013239416907816}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "T6S6B79M", "ruleCriteria": "EQUAL", "ruleValue": 0.26703046527227237}, {"ruleAttribute": "sPh0cWGd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3157664301495938}, {"ruleAttribute": "fAqtWLnd", "ruleCriteria": "EQUAL", "ruleValue": 0.5119315100208232}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "iWohJqyP", "ruleCriteria": "EQUAL", "ruleValue": 0.7606042205455223}, {"ruleAttribute": "GC72bGjH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4551360191281295}, {"ruleAttribute": "lNFGHGSj", "ruleCriteria": "EQUAL", "ruleValue": 0.9794231382771209}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["UWQA2qIl", "03Gm4INs", "JiMS27lH"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'kL0mPyiQ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "cEUenfVY", "groupIcon": "Hf4J1rr3", "groupName": "lUGETqj6", "groupRegion": "GTU9jozR", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'JpmH7QNA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'wCQ0aGE1' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "P1h8PIo5", "groupIcon": "87s3lnD0", "groupName": "qZoEbp9V", "groupRegion": "N6GNcRBX", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'IJ3MSeGX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"HaqFtclj": {}, "otCmiSu8": {}, "yidrKUUB": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'oRUC6bll' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'ztEdgCZc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'r4zLJAxr' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'Rmy104Mx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'sfShgT8K' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'zizhRh7E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'GUNXKd6E' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"SN8yuGcf": {}, "sBZgTDLW": {}, "mH4qo7Ym": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'Xw4Z6Jyb' \
    --groupId 'pQOYzXsf' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "odFGPBVw", "ruleCriteria": "EQUAL", "ruleValue": 0.699743660929213}, {"ruleAttribute": "AvMWDCRn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3108301059084849}, {"ruleAttribute": "ERD2o7Fe", "ruleCriteria": "MAXIMUM", "ruleValue": 0.034189295562236266}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'REmGcbX9' \
    --groupId 'TQ1IEvhn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'oSMj1JtL' \
    --memberRoleId 'O350zVUf' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "PrNFFVC7"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'H12zqb5M' \
    --memberRoleId 'W99Eybbi' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "NHsvpmzD"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'B2giuuUF' \
    --namespace $AB_NAMESPACE \
    --userId '6fsCXJhA' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'wYH8A1vb' \
    --namespace $AB_NAMESPACE \
    --userId 'aHmtcOG3' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'gqW1jXpU' \
    --namespace $AB_NAMESPACE \
    --userId 'UgZmjEVt' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'acNUYfzR' \
    --namespace $AB_NAMESPACE \
    --userId 'PhQsivcM' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'nCBjepww' \
    --namespace $AB_NAMESPACE \
    --userId 'AWKPFhKi' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'tCZJiZyO' \
    --namespace $AB_NAMESPACE \
    --userId 'NiSF1CPf' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE