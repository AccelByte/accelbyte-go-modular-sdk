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
    --limit '83' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "ffCtvnbQ", "description": "ZOEznsaO", "globalRules": [{"allowedAction": "O9hpC2Y0", "ruleDetail": [{"ruleAttribute": "7gQDHXl6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5943321474466026}, {"ruleAttribute": "UmTRe28N", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5232627149957487}, {"ruleAttribute": "YkZQI0Ti", "ruleCriteria": "EQUAL", "ruleValue": 0.8151654703625618}]}, {"allowedAction": "8Y9RAXry", "ruleDetail": [{"ruleAttribute": "Agbn5WXc", "ruleCriteria": "EQUAL", "ruleValue": 0.48151313388984973}, {"ruleAttribute": "tIgc9RJ2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5296960804418819}, {"ruleAttribute": "ho3Srm5x", "ruleCriteria": "MINIMUM", "ruleValue": 0.1602239943775361}]}, {"allowedAction": "2JwR4uSH", "ruleDetail": [{"ruleAttribute": "ISH6NqAX", "ruleCriteria": "MINIMUM", "ruleValue": 0.622297737531773}, {"ruleAttribute": "1PzfafqR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6982984851467638}, {"ruleAttribute": "3ELYScBm", "ruleCriteria": "MINIMUM", "ruleValue": 0.282126866915102}]}], "groupAdminRoleId": "tVdUoi1V", "groupMaxMember": 19, "groupMemberRoleId": "kVPhKpSU", "name": "w9mRCuJj"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '6YxaVGht' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'CWBjY8GV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'GkuRKRlU' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "vXI65Lh4", "groupMaxMember": 27, "name": "Y7slAnuj"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'Woe1svyJ' \
    --configurationCode '003iia0a' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "3j4Ectfx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.755942433546069}, {"ruleAttribute": "sfwcGSLk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.013475593478140424}, {"ruleAttribute": "lcz6qqcE", "ruleCriteria": "MINIMUM", "ruleValue": 0.3853736285734264}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'bTby5i0r' \
    --configurationCode 'P8qWa3jJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'I0KwtVGZ' \
    --groupName 'wQ8pCmLe' \
    --groupRegion 'VHKGqT8G' \
    --limit '27' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'Voq9Qhfb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'bpmcYvQT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '12yagmIf' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '62' \
    --order 'KEXcOKAX' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "VS6SJ4Xg", "memberRolePermissions": [{"action": 1, "resourceName": "VGtpLJDg"}, {"action": 85, "resourceName": "IJkfnDHw"}, {"action": 8, "resourceName": "wU8GDJtt"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'vIj2vzz8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'f2zLs7E8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'xEc0LmQd' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "XzJHN13k"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'CB5mBkZX' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 27, "resourceName": "WY7OJp6D"}, {"action": 67, "resourceName": "vl1uApAV"}, {"action": 84, "resourceName": "PBAm9Mvx"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '1jaWVn9g' \
    --groupRegion 'pHYpt370' \
    --limit '81' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "0fBSAEeE", "customAttributes": {"1EoNLKWF": {}, "2C9nI7i7": {}, "vQEQjb6j": {}}, "groupDescription": "kYx3pqtw", "groupIcon": "wxEvefqx", "groupMaxMember": 97, "groupName": "dLtxc9QD", "groupRegion": "uSNoK6zD", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Ikau36r8", "ruleDetail": [{"ruleAttribute": "Jvzk2s7N", "ruleCriteria": "EQUAL", "ruleValue": 0.7968848246960856}, {"ruleAttribute": "cdqdVj8l", "ruleCriteria": "EQUAL", "ruleValue": 0.33206825451094235}, {"ruleAttribute": "GGKrois6", "ruleCriteria": "MINIMUM", "ruleValue": 0.754450160621009}]}, {"allowedAction": "OA7T0hQi", "ruleDetail": [{"ruleAttribute": "OOp0u0fZ", "ruleCriteria": "EQUAL", "ruleValue": 0.08211553702986718}, {"ruleAttribute": "nt1hwMVg", "ruleCriteria": "EQUAL", "ruleValue": 0.7399985241079677}, {"ruleAttribute": "hTU9XduL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8790710850318612}]}, {"allowedAction": "eZq4e0Fw", "ruleDetail": [{"ruleAttribute": "MHJZ5iBe", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5259328638367812}, {"ruleAttribute": "e8zxlCQd", "ruleCriteria": "MINIMUM", "ruleValue": 0.8659493934788645}, {"ruleAttribute": "ghZEdYR8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.025359846937316854}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'p8pkW0jf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'v5oWQeBr' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "euVZYD1B", "groupIcon": "AvbYp2Jn", "groupName": "VOVTn395", "groupRegion": "8cJRUKW3", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'D8NGwjZY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'H7Bie780' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "xfyomlrg", "groupIcon": "TBBku1v5", "groupName": "KRHTpgt8", "groupRegion": "vp35Gg4h", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'TBsDbURY' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"2QvEozWl": {}, "ytvBHHDx": {}, "CcLkKRen": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'yCW3mzxt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'XOPuusom' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'BBrdLCjP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'wHb6JJ3U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'kwdGkmmu' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'x8vfFHtW' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '13' \
    --order 'ciUKkBqN' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'h3zzT74S' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"DXl1yx7l": {}, "saGVBOmq": {}, "UtQRxMGq": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'mi945rkC' \
    --groupId 'Qn2wo56r' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "xmlrBxxD", "ruleCriteria": "MINIMUM", "ruleValue": 0.41060691871655397}, {"ruleAttribute": "SiIIwFoK", "ruleCriteria": "EQUAL", "ruleValue": 0.09002701414902603}, {"ruleAttribute": "74DiVdIb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5739187052915695}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'epLqmrfS' \
    --groupId 'vZpsoOqz' \
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
    --limit '68' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'ugg8HUh4' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "rSMUAau8"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'fd9276TJ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Gz6YEpmD"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ytvyyv7D' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '0xzTDfkc' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FKV6d75O' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LrpkidY5' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nxr2HPpI' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["zxJ95n9e", "y7Oy9eQk", "q5rXcKIj"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'OfORdCel' \
    --limit '53' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'wrlbklgu' \
    --namespace $AB_NAMESPACE \
    --userId 'ZQ4pckLK' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "6Anb9Kui", "customAttributes": {"2Xa8eEEZ": {}, "35zgc0fG": {}, "qHcsgJmv": {}}, "groupDescription": "o003VwOe", "groupIcon": "GbRbi6lt", "groupMaxMember": 70, "groupName": "lbdCHdjl", "groupRegion": "xPORhWSM", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "jofBii6C", "ruleDetail": [{"ruleAttribute": "tS3EIknH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18658695859565488}, {"ruleAttribute": "ns3vSumC", "ruleCriteria": "EQUAL", "ruleValue": 0.6210304460495145}, {"ruleAttribute": "FoARYRVw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.37907216553116074}]}, {"allowedAction": "QBnh67Fo", "ruleDetail": [{"ruleAttribute": "mEV0mmYN", "ruleCriteria": "MINIMUM", "ruleValue": 0.32639072655641344}, {"ruleAttribute": "1VW4j7p4", "ruleCriteria": "MINIMUM", "ruleValue": 0.5088180536536592}, {"ruleAttribute": "1kO9Jmim", "ruleCriteria": "EQUAL", "ruleValue": 0.35487301780839}]}, {"allowedAction": "uFQjeP2D", "ruleDetail": [{"ruleAttribute": "rK0IT1Bd", "ruleCriteria": "EQUAL", "ruleValue": 0.28740531724346274}, {"ruleAttribute": "Ho9iM3Pu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.25854195508364786}, {"ruleAttribute": "LfM42ODW", "ruleCriteria": "MINIMUM", "ruleValue": 0.6756456512075163}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["hQGhxsFC", "9bd3z0M9", "x6aeOEB6"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'tXtKuWMe' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "xuBJn7mi", "groupIcon": "a03XWYtC", "groupName": "vTlnTbZ5", "groupRegion": "Mz60DGW1", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'ZeYshYOU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'g58TDP7u' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "uaHS5Zit", "groupIcon": "eKGysrIS", "groupName": "Ek52jla4", "groupRegion": "NeBvPem7", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'R3scfdKL' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"qmcaihDt": {}, "5P6IqApS": {}, "Ya3eD1vU": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '3Vm4z3Rg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'cJjOo6IM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'kL1uSi7A' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'xZT2Q8na' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '7VAMn9Pq' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'Wh5x3xIz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '0prpcJtn' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"KXinW441": {}, "lpPeiBRM": {}, "y6bvKaMp": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'Os87cNkz' \
    --groupId 'Pin7GRdW' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "LjTWOVzS", "ruleCriteria": "MINIMUM", "ruleValue": 0.6505638934844641}, {"ruleAttribute": "mDYI1BTp", "ruleCriteria": "EQUAL", "ruleValue": 0.831406364268764}, {"ruleAttribute": "LmBhtlRk", "ruleCriteria": "EQUAL", "ruleValue": 0.4936523727971266}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'GNsnc15P' \
    --groupId 'OhXUoJOL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'ia4GmpGI' \
    --memberRoleId '2AZfsjW0' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Jc1NO8QT"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'M89rwXZg' \
    --memberRoleId '6STkvjXP' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "kAsU8fo4"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'Cl0XbFft' \
    --namespace $AB_NAMESPACE \
    --userId 'S23ffUwY' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '1rcmoFMq' \
    --namespace $AB_NAMESPACE \
    --userId 'lhuW18ZF' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'A9DcTBaR' \
    --namespace $AB_NAMESPACE \
    --userId 'FnNWSlCP' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'jJC3ATv2' \
    --namespace $AB_NAMESPACE \
    --userId 'jo4rguBu' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'mlwtPXFN' \
    --namespace $AB_NAMESPACE \
    --userId 'oB1kBE8p' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '7YIwex0W' \
    --namespace $AB_NAMESPACE \
    --userId 'gWqjc7MA' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE