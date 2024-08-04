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
    --limit '45' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "SYKQ4dQH", "description": "Zkfj4RfR", "globalRules": [{"allowedAction": "0oNGpmX6", "ruleDetail": [{"ruleAttribute": "yjKSS76d", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6276565200561284}, {"ruleAttribute": "fgiwmZdu", "ruleCriteria": "EQUAL", "ruleValue": 0.3860782807807128}, {"ruleAttribute": "cJzkV6hk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6852511726046409}]}, {"allowedAction": "sfW1ytYs", "ruleDetail": [{"ruleAttribute": "cla9bjkS", "ruleCriteria": "EQUAL", "ruleValue": 0.7192265315081259}, {"ruleAttribute": "QdZa2aHz", "ruleCriteria": "EQUAL", "ruleValue": 0.7766348525293583}, {"ruleAttribute": "aLIKg7Zp", "ruleCriteria": "EQUAL", "ruleValue": 0.5238815811490947}]}, {"allowedAction": "WHcn7VZj", "ruleDetail": [{"ruleAttribute": "UPa7sFxx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.959421596338174}, {"ruleAttribute": "MQJAGdrc", "ruleCriteria": "EQUAL", "ruleValue": 0.7605683398946889}, {"ruleAttribute": "WxrbejZn", "ruleCriteria": "EQUAL", "ruleValue": 0.26277215470605786}]}], "groupAdminRoleId": "gSpgwuQK", "groupMaxMember": 48, "groupMemberRoleId": "QJhJyV97", "name": "hN6Z6Tzg"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'j9jcFKG7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '7Tb5RoBW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '312IVpBW' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2heue3kM", "groupMaxMember": 29, "name": "qBftdJQX"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'oEAKBUPV' \
    --configurationCode 'Nrj8lxir' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "fFwLZcrB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6197056128661513}, {"ruleAttribute": "KyiKTXiy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9171151291116474}, {"ruleAttribute": "UfOmNw2O", "ruleCriteria": "EQUAL", "ruleValue": 0.1661160430083385}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'QAZYRxOp' \
    --configurationCode 'O3nOTPxo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'QzNPj8n6' \
    --groupName 'H2iuQpSf' \
    --groupRegion 'ey6Skk5Z' \
    --limit '86' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'cuagZFt7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '2NGtNf59' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'QcxosPOQ' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '51' \
    --order 'tljClCwA' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Xx2V3Q1F", "memberRolePermissions": [{"action": 44, "resourceName": "DZzky189"}, {"action": 27, "resourceName": "7mBZrvKg"}, {"action": 35, "resourceName": "TpVxcpEH"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'ABvYZ9Il' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'lMqpqwIs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'ImrYk4nX' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "mW40EO3g"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'LeAJjqwz' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 97, "resourceName": "L8IM5Q19"}, {"action": 79, "resourceName": "I9Vnv1Tw"}, {"action": 28, "resourceName": "smIOpctu"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'pIC6HiV2' \
    --groupRegion 'NaqiJR1x' \
    --limit '96' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "ZOVsdbpL", "customAttributes": {"ywtOBYa7": {}, "nKenLjEO": {}, "Ty8C11wK": {}}, "groupDescription": "U6TzT0Zg", "groupIcon": "Mygk8u77", "groupMaxMember": 82, "groupName": "guZaVoZp", "groupRegion": "kQ77OOpR", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "LpLoV8uw", "ruleDetail": [{"ruleAttribute": "kNhAABNz", "ruleCriteria": "MINIMUM", "ruleValue": 0.5582216927644288}, {"ruleAttribute": "SNY145xX", "ruleCriteria": "MINIMUM", "ruleValue": 0.33047330240080997}, {"ruleAttribute": "F6fi21zD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.709217620085387}]}, {"allowedAction": "wwd2edsh", "ruleDetail": [{"ruleAttribute": "gCb6M7g0", "ruleCriteria": "MINIMUM", "ruleValue": 0.7486393330037427}, {"ruleAttribute": "e8INfzlj", "ruleCriteria": "MINIMUM", "ruleValue": 0.9972784844893235}, {"ruleAttribute": "lZCBk55Z", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1648664482549187}]}, {"allowedAction": "SxTRfBSh", "ruleDetail": [{"ruleAttribute": "yQxIVsli", "ruleCriteria": "MINIMUM", "ruleValue": 0.37759848813229113}, {"ruleAttribute": "BVD70wtr", "ruleCriteria": "MINIMUM", "ruleValue": 0.6244566510192603}, {"ruleAttribute": "dcatbcQz", "ruleCriteria": "MINIMUM", "ruleValue": 0.08768409195838633}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'UJqlSVSO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '4m69gYrK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "JScJ6loA", "groupIcon": "CtKEYO1f", "groupName": "7aTprRI7", "groupRegion": "9J7s0uyS", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'RgQcmiG9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'gzbXKBem' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "ZndAf1lq", "groupIcon": "fAQBTcn6", "groupName": "DzkdhaFC", "groupRegion": "xJIYakUj", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'zxPKrqoD' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ftQo6dBL": {}, "guaE9nxi": {}, "CgK26kO2": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId '0tFvOUl6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '3FTQL39N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'kR6G4ewW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'Ms202LSo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'CLZkBjJ4' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '0VteRgCK' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '48' \
    --order '2t8xHT5Y' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'vqsaBOIi' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"nFjhTS98": {}, "56YdXyGV": {}, "GsNnMG35": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'aGZ2F6Js' \
    --groupId 'IbtdyfEc' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "kdcrrsWf", "ruleCriteria": "MINIMUM", "ruleValue": 0.7882305496153552}, {"ruleAttribute": "0gt6KKKh", "ruleCriteria": "EQUAL", "ruleValue": 0.9347583427655173}, {"ruleAttribute": "yJso7wEo", "ruleCriteria": "EQUAL", "ruleValue": 0.8341634736033833}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'tT9Tn4ah' \
    --groupId 'C8Wu6On8' \
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
    --limit '41' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'Mml2GLl1' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "nkFpaScR"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId '7avPd8R9' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "G3CphAtu"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TNmPYjvc' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mO3wWL38' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'N9Dqo8mv' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gW7LyZCp' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wgEGVipD' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["CyYWhN9l", "zMkrAJo8", "0HlO1wm6"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'VURImBfT' \
    --limit '58' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'Me7hTahk' \
    --namespace $AB_NAMESPACE \
    --userId 'yoYmwS4J' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "pmv7UNCl", "customAttributes": {"ZmgK6sb7": {}, "k8c6uWKP": {}, "byjw58IR": {}}, "groupDescription": "ohV41EbI", "groupIcon": "Smnlvg6B", "groupMaxMember": 70, "groupName": "6poqLuyA", "groupRegion": "q13rgrmU", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "vTawCVlv", "ruleDetail": [{"ruleAttribute": "qynRxd8O", "ruleCriteria": "EQUAL", "ruleValue": 0.02817260253597975}, {"ruleAttribute": "21EpIOUt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4436572203729312}, {"ruleAttribute": "ZOgZxkMo", "ruleCriteria": "EQUAL", "ruleValue": 0.3151700333096036}]}, {"allowedAction": "OM7G7SBk", "ruleDetail": [{"ruleAttribute": "6BF0Zy2E", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8293470470903704}, {"ruleAttribute": "Cf2tiS5b", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8183170460662594}, {"ruleAttribute": "v8SnXlW3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6788430428397937}]}, {"allowedAction": "5WOkdAjX", "ruleDetail": [{"ruleAttribute": "d043GWkQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.9991073355803566}, {"ruleAttribute": "WewJ36LH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3247325178103191}, {"ruleAttribute": "CDDZx3Mk", "ruleCriteria": "MINIMUM", "ruleValue": 0.8404109576198672}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["HinBTOT9", "T68Ki5sc", "YPJ2rgBq"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '6m4hl4NJ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "GyDzzZdX", "groupIcon": "sGPq6Isc", "groupName": "3KNzAQ7M", "groupRegion": "Giddkh5P", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'zh0mPj6M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'HbTCYstK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "6W8VbVit", "groupIcon": "pLOCdUdp", "groupName": "cM8SyhAq", "groupRegion": "jhv3r6BP", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'VHCRlohH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"pgoISBNR": {}, "oXBiTtbP": {}, "9ReLzxxn": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'x29zOVhI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '6DNOuacG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'WyGxnoPm' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'f2FAQdhh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '0b9zq6zh' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'rpNTQSqk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'XD5FKkNg' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"uEa80MKY": {}, "iwT706cZ": {}, "KBjTku96": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'drqQuMDi' \
    --groupId 'tDscxFoO' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "JpE1Jk9B", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3369736662788112}, {"ruleAttribute": "AhzjjEDD", "ruleCriteria": "MINIMUM", "ruleValue": 0.1292376889387763}, {"ruleAttribute": "vt2GrALU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.44742983101108125}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'lEd0VrKF' \
    --groupId 'TBEJlx0p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'kqBc6jmf' \
    --memberRoleId 'jEkEjFrg' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "SiDslf9Q"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId '81D5t6Fr' \
    --memberRoleId '2jpusnKt' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "dJFA6Sc6"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'zuTUyTOu' \
    --namespace $AB_NAMESPACE \
    --userId 'P7P8iYW4' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'OsGmzqK9' \
    --namespace $AB_NAMESPACE \
    --userId 'rTXwQS9t' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'ujBqFErQ' \
    --namespace $AB_NAMESPACE \
    --userId 'nFaN1lDz' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'LObA2iHl' \
    --namespace $AB_NAMESPACE \
    --userId 'yGbZ0Kuu' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'oRe45TVn' \
    --namespace $AB_NAMESPACE \
    --userId 'zESG2bA1' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'xazPqqL8' \
    --namespace $AB_NAMESPACE \
    --userId 'CfFyHYCO' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE