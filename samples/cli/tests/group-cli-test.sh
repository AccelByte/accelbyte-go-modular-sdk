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
    --limit '0' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "D4r5Lpkx", "description": "jK3YjDQJ", "globalRules": [{"allowedAction": "lwKLYSaq", "ruleDetail": [{"ruleAttribute": "ITDkH6GI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.31234182234085817}, {"ruleAttribute": "VYocuwyO", "ruleCriteria": "MINIMUM", "ruleValue": 0.2635704214248268}, {"ruleAttribute": "s3x6QTOA", "ruleCriteria": "EQUAL", "ruleValue": 0.9486309563353801}]}, {"allowedAction": "elh9oV0V", "ruleDetail": [{"ruleAttribute": "QDrp3uLx", "ruleCriteria": "EQUAL", "ruleValue": 0.21331716582347937}, {"ruleAttribute": "2xIO65Si", "ruleCriteria": "MINIMUM", "ruleValue": 0.9058630803643425}, {"ruleAttribute": "n3VGqSqu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18451814584873283}]}, {"allowedAction": "DG4YVWfl", "ruleDetail": [{"ruleAttribute": "jxObrSWP", "ruleCriteria": "MINIMUM", "ruleValue": 0.7093514790977752}, {"ruleAttribute": "HTZgbE1p", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9260204663425562}, {"ruleAttribute": "LmeGWEGR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.921403579611477}]}], "groupAdminRoleId": "0q9qPyl8", "groupMaxMember": 9, "groupMemberRoleId": "XhPalIEf", "name": "hq1dNhuX"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'Fj1kUYiV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'JjKuiT0h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'V1QT0FYw' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "slCutLp8", "groupMaxMember": 85, "name": "L1F15xNX"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'sDOlOt2h' \
    --configurationCode 'yhka5uUw' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ajZmdUU1", "ruleCriteria": "EQUAL", "ruleValue": 0.11521015483521146}, {"ruleAttribute": "Loybjxrn", "ruleCriteria": "EQUAL", "ruleValue": 0.6223795730202114}, {"ruleAttribute": "pcVSKFUX", "ruleCriteria": "MINIMUM", "ruleValue": 0.5949317021787623}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'QNOXgvEc' \
    --configurationCode 'VdiWZDDC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'ykZdz7de' \
    --groupName 'VdiCxKzB' \
    --groupRegion 'n1Q9XWer' \
    --limit '97' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'SRKEM8z0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'MkBipVWT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'tUWMzQSn' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '63' \
    --order 'cLdoK1cV' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "1mjUiVg9", "memberRolePermissions": [{"action": 79, "resourceName": "tJqvzcJ1"}, {"action": 54, "resourceName": "9AHpzN6N"}, {"action": 39, "resourceName": "Q6Wcgu5R"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '46DT9Zo2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'V5bwulYg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'kiVgNIS0' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "6SQNtanQ"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'ogq6gcRS' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 20, "resourceName": "YTaOh2g0"}, {"action": 9, "resourceName": "QokNlitp"}, {"action": 41, "resourceName": "FIrDHqaR"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '5Pl7rmwO' \
    --groupRegion 'R1LFM1h4' \
    --limit '8' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "w9KtX4TT", "customAttributes": {"O6AKVgO9": {}, "EaPlHawT": {}, "m5K9Oyvn": {}}, "groupDescription": "V7wN3Xbb", "groupIcon": "EDuhaaDD", "groupMaxMember": 82, "groupName": "SMFf1NHE", "groupRegion": "bb7BVxOX", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "O5UJ8Uzc", "ruleDetail": [{"ruleAttribute": "rppzBXQL", "ruleCriteria": "MINIMUM", "ruleValue": 0.9465264570468328}, {"ruleAttribute": "gEyvibxt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3554243824033777}, {"ruleAttribute": "BZNwERcv", "ruleCriteria": "EQUAL", "ruleValue": 0.15724787899502302}]}, {"allowedAction": "TaTrF6RH", "ruleDetail": [{"ruleAttribute": "hWgXM7Xd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.845937599180211}, {"ruleAttribute": "viIWKrXf", "ruleCriteria": "EQUAL", "ruleValue": 0.3305606523646589}, {"ruleAttribute": "KD7lyzKj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7001886725635961}]}, {"allowedAction": "cNkctUhA", "ruleDetail": [{"ruleAttribute": "D7OJOjKD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1547448237219725}, {"ruleAttribute": "neY6RdgT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5701888186184141}, {"ruleAttribute": "6jlmFJvt", "ruleCriteria": "MINIMUM", "ruleValue": 0.9232406530980444}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '6fgP0BbP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'iNYTQXDr' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "IXlV6HeR", "groupIcon": "5FqsQF0v", "groupName": "7L85vP1P", "groupRegion": "W3RkYeiE", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '9zkwzMa5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'nqkNMiyC' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "aGn2h0qt", "groupIcon": "WIp06nP4", "groupName": "dkYoDMBH", "groupRegion": "NSZvqsC3", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'o3jwN7gu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"jVgEomgq": {}, "FAXRCGay": {}, "Z6QRA48Y": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId '5F5qCLSp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'CFqW59Mr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'AyWMiRsW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'VDNv3F7d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'mlvYaltK' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'hG1mZ3rp' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '75' \
    --order 'flakltZY' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'SIC884pj' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"JcAZUvGI": {}, "rEIy9hjk": {}, "TyCZePCc": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'FCfqKK7v' \
    --groupId 'JhajHFAP' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Dw3pqMjt", "ruleCriteria": "MINIMUM", "ruleValue": 0.1480713112365486}, {"ruleAttribute": "yLfWLwxH", "ruleCriteria": "MINIMUM", "ruleValue": 0.19073411443022648}, {"ruleAttribute": "9xwumsfv", "ruleCriteria": "MINIMUM", "ruleValue": 0.24114462547744675}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'QCvXFdIq' \
    --groupId 'pnZ3KsWj' \
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
    --limit '10' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'LvohmM7K' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "yYDHhoCO"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'fVVnCXKB' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "nxg4yCmH"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'scbnDbxj' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QXIUNubX' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dcUn2Vle' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'v8aRq3AF' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TsJrpKkK' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["Mt6O9omc", "yx1ZO6Le", "KADAOLBy"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'I6SyfflE' \
    --limit '40' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '2MbUpyTM' \
    --namespace $AB_NAMESPACE \
    --userId 'MF53WzE0' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "NThsiyaS", "customAttributes": {"ruPPsbnH": {}, "urEzD9F9": {}, "ftumurSp": {}}, "groupDescription": "TaXCTYYF", "groupIcon": "O86RVeUv", "groupMaxMember": 31, "groupName": "u2wdr1sv", "groupRegion": "LPWzCFwM", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "2NPlqJJC", "ruleDetail": [{"ruleAttribute": "VcVxE058", "ruleCriteria": "MINIMUM", "ruleValue": 0.6851032880028853}, {"ruleAttribute": "j7WPOLMp", "ruleCriteria": "EQUAL", "ruleValue": 0.11845792515886633}, {"ruleAttribute": "IDe3l38y", "ruleCriteria": "MINIMUM", "ruleValue": 0.8514921576796118}]}, {"allowedAction": "Q1LyWPcR", "ruleDetail": [{"ruleAttribute": "7F2sPMMX", "ruleCriteria": "EQUAL", "ruleValue": 0.7408355279480141}, {"ruleAttribute": "DLfdJHAP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4616146613183817}, {"ruleAttribute": "BSpSAqpW", "ruleCriteria": "MINIMUM", "ruleValue": 0.10437168739694369}]}, {"allowedAction": "VE6saCgU", "ruleDetail": [{"ruleAttribute": "EWeL7OzN", "ruleCriteria": "MINIMUM", "ruleValue": 0.9191719196544763}, {"ruleAttribute": "0DlBUhFx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8021954575630003}, {"ruleAttribute": "8mvW42Eq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.769900639757034}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["OWVgd7wG", "jEFXym30", "fLsiDS6a"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '3mTeiUWb' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "r5fQahEp", "groupIcon": "s4ydsR95", "groupName": "tB0YyEwL", "groupRegion": "hTB6dHkH", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'Bq63gQzQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'Yd8SeicF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "foaYDkM8", "groupIcon": "sVAevw0C", "groupName": "Am3hIJtb", "groupRegion": "l9jKXACs", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '1e7f7TQX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"jYWhNnp5": {}, "Ef0eUQbC": {}, "gkdjeKZ1": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'GJcUvBAT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'xwyiTHpI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'FUHuV0GH' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'dk0IpnPi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'GL5vmeMe' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'Wv22XY6d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'iuEDjVZJ' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"xZvYA72z": {}, "Dutyi8nJ": {}, "FI5N4oAm": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'WWtJ8Frb' \
    --groupId '0fJepDuj' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "j7tDGLM3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7506270942191924}, {"ruleAttribute": "1Zml2NJH", "ruleCriteria": "MINIMUM", "ruleValue": 0.5482878220958337}, {"ruleAttribute": "O8TUepXE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09731232780737542}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'AmFcAP2e' \
    --groupId 'UyArHDBZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '6uIZ5afJ' \
    --memberRoleId 'xyydeWIH' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "mgYd1CJ0"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'p3fETZtu' \
    --memberRoleId 'e3lYYIVf' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "BmnKkkr0"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'hV6WdlUR' \
    --namespace $AB_NAMESPACE \
    --userId 'MYFcehHr' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '7Admnmaa' \
    --namespace $AB_NAMESPACE \
    --userId '03gvjOKu' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'eB8wxf52' \
    --namespace $AB_NAMESPACE \
    --userId 'NdulqLTB' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'x5OVzjkP' \
    --namespace $AB_NAMESPACE \
    --userId '64u85jMp' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'AcJ9oXjX' \
    --namespace $AB_NAMESPACE \
    --userId 'mBjdmdHA' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'e5cpTZoh' \
    --namespace $AB_NAMESPACE \
    --userId 'nIZAmaHV' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE