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
    --limit '70' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "0soWoQyu", "description": "6THlWHhH", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "5OZ9noYX", "ruleCriteria": "EQUAL", "ruleValue": 0.12755755587336526}, {"ruleAttribute": "FbVpVjUi", "ruleCriteria": "EQUAL", "ruleValue": 0.8630001404999651}, {"ruleAttribute": "p2PFDkTZ", "ruleCriteria": "EQUAL", "ruleValue": 0.679914049138882}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "yD6gzwpV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5675988902228402}, {"ruleAttribute": "EgTdW7hS", "ruleCriteria": "EQUAL", "ruleValue": 0.1493455406011216}, {"ruleAttribute": "n0kSXTov", "ruleCriteria": "MINIMUM", "ruleValue": 0.06801214649778786}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "kb0z7KIl", "ruleCriteria": "MINIMUM", "ruleValue": 0.32740784400312417}, {"ruleAttribute": "Zfvxdo18", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6063673321889678}, {"ruleAttribute": "gxX5Htp2", "ruleCriteria": "MINIMUM", "ruleValue": 0.4147174092062391}]}], "groupAdminRoleId": "kxwcS2mQ", "groupMaxMember": 12, "groupMemberRoleId": "toI5yyWt", "name": "Tb8yHrYX"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'SbA6ULa5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '6Lj1QwLj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'OSrhLrmx' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ObgmbvqQ", "groupMaxMember": 76, "name": "XKdRt9ZK"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'V4KfuZVU' \
    --configurationCode '5hNIguvv' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Ksl6KenO", "ruleCriteria": "MINIMUM", "ruleValue": 0.8353298287172323}, {"ruleAttribute": "zN9sbEG3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3165760912251817}, {"ruleAttribute": "rAcOHaEJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.20739992361028214}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'XeOGpEqQ' \
    --configurationCode 'Mebi1iRy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'Z7qHiDlK' \
    --groupName 'DvNEcK3H' \
    --groupRegion 'hqXyn5OX' \
    --limit '60' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'VWJxJPZL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'eCaGUExs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'Irv91xJP' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '64' \
    --order '5mZwbmM9' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "VPalSVpq", "memberRolePermissions": [{"action": 9, "resourceName": "BhyB3aFk"}, {"action": 63, "resourceName": "foXhsuke"}, {"action": 10, "resourceName": "6LKuklVm"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '0ioKkLIr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'UAjOHKDp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'Yg0l5LXn' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "MqWj0mVo"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'K7Gfhr5E' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 90, "resourceName": "gUMFKYuG"}, {"action": 17, "resourceName": "3npvgMZU"}, {"action": 53, "resourceName": "UmNHR7Xk"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '5z7X2Htk' \
    --groupRegion 'eBn5NPNi' \
    --limit '9' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "OB2xsWLO", "customAttributes": {"dkwsHdyI": {}, "Dd9FZZOO": {}, "fHZtZ915": {}}, "groupDescription": "tof8GdzP", "groupIcon": "UB3dqsYL", "groupMaxMember": 73, "groupName": "1aLvj6ww", "groupRegion": "WU4O93tO", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "c1ThzC7R", "ruleCriteria": "MINIMUM", "ruleValue": 0.45200567627773125}, {"ruleAttribute": "8QykZd9C", "ruleCriteria": "EQUAL", "ruleValue": 0.9721061946322049}, {"ruleAttribute": "LXmZ6AO3", "ruleCriteria": "EQUAL", "ruleValue": 0.529420084617134}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "seT9Ps3O", "ruleCriteria": "MAXIMUM", "ruleValue": 0.35448468773232156}, {"ruleAttribute": "Rzov2HBZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.40939471625068}, {"ruleAttribute": "OH378JPD", "ruleCriteria": "MINIMUM", "ruleValue": 0.4123759728451729}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "Zen2puAL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.29362555100935894}, {"ruleAttribute": "fzDiOPRc", "ruleCriteria": "EQUAL", "ruleValue": 0.26183056292707196}, {"ruleAttribute": "iv0ruQiy", "ruleCriteria": "EQUAL", "ruleValue": 0.47005556535990456}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'bWmCX4ZR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '7gG2aIuk' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "ZAiM279V", "groupIcon": "CGunJ0z1", "groupName": "7O5IngHo", "groupRegion": "gwkYf7Du", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'L26wGvEr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'hGpfGzfx' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "fealyTB6", "groupIcon": "vx3eorBR", "groupName": "IINTtpq2", "groupRegion": "vSXYIhB7", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'VD3l0B3X' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"5nZhCFLJ": {}, "1FU9aLzi": {}, "U05BilOx": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'm6TyMEQc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'fawCHNG1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '2ySG602j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'phT1Dira' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '26jYmLYH' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '9a7lcemX' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '25' \
    --order 'scRGATyd' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '9jVjt0lQ' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"mCRYcgrS": {}, "ADMtA1oJ": {}, "sWkJ8Gnj": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'ylntHXya' \
    --groupId 'w2oXYSn5' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "WlipzGsI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.03569598898998538}, {"ruleAttribute": "U9nHDHAh", "ruleCriteria": "MINIMUM", "ruleValue": 0.08961347444174161}, {"ruleAttribute": "t9hLbrTE", "ruleCriteria": "EQUAL", "ruleValue": 0.3470371625742882}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '2yzlc1K5' \
    --groupId 'dMtgZzyB' \
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
    --limit '7' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId '4S1pD5JF' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "2qaDSFVv"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'gmOLGGos' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "nejgD0HD"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '2mBa7PdB' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dCIFVpPO' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'CTsjE0fU' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Crxyyi1o' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '9t90Jp0H' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["SOn7zEsE", "S9IQ8EC2", "hQcYa2NK"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId '8vg9hfnm' \
    --limit '33' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'dvCDkoLh' \
    --namespace $AB_NAMESPACE \
    --userId 'ErgIdGAa' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "HKeZztFo", "customAttributes": {"Bkphkc5y": {}, "xqNSzUuC": {}, "QZgJxKUm": {}}, "groupDescription": "SrTGxiw6", "groupIcon": "uymUW7H8", "groupMaxMember": 88, "groupName": "QrOGMjo4", "groupRegion": "z6fpQAxa", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "YGvERU9p", "ruleCriteria": "EQUAL", "ruleValue": 0.6994052429181057}, {"ruleAttribute": "FHpKP0E7", "ruleCriteria": "MINIMUM", "ruleValue": 0.32841136018919015}, {"ruleAttribute": "ywLHWd25", "ruleCriteria": "MINIMUM", "ruleValue": 0.4442198962245497}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "GeAfWe5C", "ruleCriteria": "MINIMUM", "ruleValue": 0.8427501234200507}, {"ruleAttribute": "Jcz79fpG", "ruleCriteria": "MINIMUM", "ruleValue": 0.6863672466292577}, {"ruleAttribute": "ZWehmdvk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2339848940082493}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "3K8aYC2D", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9400170687501983}, {"ruleAttribute": "PmNK5jVb", "ruleCriteria": "MINIMUM", "ruleValue": 0.7242211468471427}, {"ruleAttribute": "ZO5Nuwbk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07952771071827791}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["1o1TEJ6m", "FRhgTnXL", "oXbRcW1p"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'AOd4b3CE' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "WOXv3Bp7", "groupIcon": "baQNlEUe", "groupName": "Sfvo24kc", "groupRegion": "t2yd4QCy", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'T8NUeMDX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'Q3RBhh9B' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "a31rdNoO", "groupIcon": "PIDGodEj", "groupName": "hTBC8lfJ", "groupRegion": "2tO7J7Zm", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'cbYu75lL' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"fZ9SHWxK": {}, "xjf657GR": {}, "Y5Tn9xwB": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'tykB7pwP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'zRm1gbgk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'G7UDANNN' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'IAqsubVZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'iiZrcfkI' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'UXdHfYky' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'u33vil9C' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"CgsIDMhp": {}, "o1iaDtpn": {}, "Kpmajxbj": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'ny5Niu2u' \
    --groupId 'bi6JZWDG' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ZNe5jXJP", "ruleCriteria": "EQUAL", "ruleValue": 0.6365377308890613}, {"ruleAttribute": "YqYw94Pe", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6323238604091977}, {"ruleAttribute": "WWlq780B", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9834318824479895}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '2onlQtid' \
    --groupId 'T0u5AbTZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'x6xoc9Mo' \
    --memberRoleId 'C1sz6Xk9' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "EGej5iq7"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'aCV1BVl4' \
    --memberRoleId '6RBYtd7W' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Wggg91L7"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId '65ddFfTA' \
    --namespace $AB_NAMESPACE \
    --userId 'Srd8FNMU' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '76EYbZCW' \
    --namespace $AB_NAMESPACE \
    --userId '542p1Bqc' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'Q7pKmg5Y' \
    --namespace $AB_NAMESPACE \
    --userId '1W9iLvw6' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'LM4FahZP' \
    --namespace $AB_NAMESPACE \
    --userId 'iSjUVkfq' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'ZngkyFsN' \
    --namespace $AB_NAMESPACE \
    --userId 'TZIXeD2j' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'Q4GZuvwm' \
    --namespace $AB_NAMESPACE \
    --userId 'rN2RCD58' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE