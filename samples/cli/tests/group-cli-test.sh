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
    --limit '97' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "QTVOpv7p", "description": "GZt2Dnko", "globalRules": [{"allowedAction": "QN8w7B2s", "ruleDetail": [{"ruleAttribute": "Jc63AQeK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.783789019916637}, {"ruleAttribute": "ZwVlfwGG", "ruleCriteria": "EQUAL", "ruleValue": 0.45377509473043776}, {"ruleAttribute": "31QYntF0", "ruleCriteria": "EQUAL", "ruleValue": 0.05429523811945136}]}, {"allowedAction": "Lm1gIc2U", "ruleDetail": [{"ruleAttribute": "OwWIxn7F", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4214441190185477}, {"ruleAttribute": "q8aXw9be", "ruleCriteria": "MAXIMUM", "ruleValue": 0.15026497676630124}, {"ruleAttribute": "7zSi3lMs", "ruleCriteria": "MINIMUM", "ruleValue": 0.538018036559051}]}, {"allowedAction": "17DIzikL", "ruleDetail": [{"ruleAttribute": "FH2O80Pz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06676971040517832}, {"ruleAttribute": "MiShBgHe", "ruleCriteria": "MINIMUM", "ruleValue": 0.15501380246947027}, {"ruleAttribute": "URRgCAIW", "ruleCriteria": "MINIMUM", "ruleValue": 0.6287802774768877}]}], "groupAdminRoleId": "V9JGkK6s", "groupMaxMember": 47, "groupMemberRoleId": "GXKrJ0NU", "name": "H257OtTK"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'HZerCo6p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'NMqx0GzC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'Yv9048M7' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5wwicJCI", "groupMaxMember": 54, "name": "woYGKGN5"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'GuQDl045' \
    --configurationCode 'qpUk7gGT' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ySWDMY63", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10931577132367387}, {"ruleAttribute": "3LO6q2VF", "ruleCriteria": "EQUAL", "ruleValue": 0.7441644375584132}, {"ruleAttribute": "cTOFrGlJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3869937238935798}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'lSC7ihvR' \
    --configurationCode 'EeMmZRME' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'kD9TEiEs' \
    --groupName 'XJwmrNVe' \
    --groupRegion 'Z0p1ALos' \
    --limit '72' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'qffBcO13' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '7IkegdCR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'lKPfIB14' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '82' \
    --order 'H4Lyy6ow' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "NTfiMDt6", "memberRolePermissions": [{"action": 17, "resourceName": "W3IBBKCb"}, {"action": 24, "resourceName": "h27uwWxT"}, {"action": 81, "resourceName": "anSKNll0"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '1S7bNPDR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'f2cpU5xV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'EtXoElAS' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "96IoUK3e"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'UV897eEm' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 56, "resourceName": "eyL2ShE3"}, {"action": 67, "resourceName": "BA1dkNro"}, {"action": 67, "resourceName": "SjfkI8o2"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'oOQ4TERl' \
    --groupRegion 'H9jEoAwJ' \
    --limit '74' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "QQcrEVwn", "customAttributes": {"LlYdWdQz": {}, "2APQSFtP": {}, "eEVjC2aJ": {}}, "groupDescription": "48q6OTYf", "groupIcon": "jpb5Qagb", "groupMaxMember": 85, "groupName": "hbXMhJ2g", "groupRegion": "qTktBW4T", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "T0QsB1W7", "ruleDetail": [{"ruleAttribute": "adMvAbZq", "ruleCriteria": "MINIMUM", "ruleValue": 0.8779372010935805}, {"ruleAttribute": "xEHPHIN4", "ruleCriteria": "EQUAL", "ruleValue": 0.44770443072082566}, {"ruleAttribute": "WflMGItG", "ruleCriteria": "EQUAL", "ruleValue": 0.1944830076201236}]}, {"allowedAction": "4XmXkRPK", "ruleDetail": [{"ruleAttribute": "SHyimNn8", "ruleCriteria": "MINIMUM", "ruleValue": 0.07601106547722958}, {"ruleAttribute": "tgkGAtJO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9663613154515521}, {"ruleAttribute": "dIu8ULbj", "ruleCriteria": "EQUAL", "ruleValue": 0.12228227660437274}]}, {"allowedAction": "nYBCyctU", "ruleDetail": [{"ruleAttribute": "dP1vh6rx", "ruleCriteria": "EQUAL", "ruleValue": 0.7733729984439225}, {"ruleAttribute": "Ysb81LnE", "ruleCriteria": "EQUAL", "ruleValue": 0.8085985144118935}, {"ruleAttribute": "rzHbzzmr", "ruleCriteria": "EQUAL", "ruleValue": 0.15003445253441616}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'QhHYQB2t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '3rFzbx6O' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "wMqsxTls", "groupIcon": "9ohx50lC", "groupName": "1sfRnBhc", "groupRegion": "CKCHfuQ9", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'zMvGoNO4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'Z139jrMW' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "LYmlbwh2", "groupIcon": "G5VejBiR", "groupName": "l2Ke3bwY", "groupRegion": "FnmnLDXp", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'ecQMHBBk' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Kw69uk9x": {}, "2ZgTFlEq": {}, "XMfNDQFl": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'mLsmkOo3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'offsueBe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'JfgbOcfn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'LrW0Kd9F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'oMO0Cov1' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'LYK3eOp4' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '54' \
    --order '38TEm8KT' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '65GGbNcd' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"kEUbV1UI": {}, "NPXWqfhk": {}, "StxhZzks": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'OnBnk7ze' \
    --groupId '9FgVi3f5' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "VPIcSAxl", "ruleCriteria": "MINIMUM", "ruleValue": 0.15101472360216617}, {"ruleAttribute": "6XNqJRlu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2689863382150526}, {"ruleAttribute": "Tew9eP47", "ruleCriteria": "EQUAL", "ruleValue": 0.13940142597507177}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'Tp3jd6be' \
    --groupId 'fLcvlHN3' \
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
    --limit '32' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId '0XFuGwL4' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "5WiaVjsn"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'Bp70P2Qm' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "K8kTjRyl"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '6gcjSe3V' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'AZuePKEn' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xBGd1mfF' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '7VixuL69' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hvY4TIfi' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["nE00lIY5", "mDNwQ2vV", "cUteQJOf"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId '7z5hwRyd' \
    --limit '21' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'wsypD4iU' \
    --namespace $AB_NAMESPACE \
    --userId 'xklmVnEc' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "LcgPJpNV", "customAttributes": {"XAHJcQLT": {}, "064PKo1t": {}, "fh2r4EKG": {}}, "groupDescription": "y9gHlexv", "groupIcon": "5XZ1DHAh", "groupMaxMember": 11, "groupName": "u9GhM56A", "groupRegion": "KQR3s1eC", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "rYGyX15e", "ruleDetail": [{"ruleAttribute": "ykL9uGn4", "ruleCriteria": "MINIMUM", "ruleValue": 0.8713286871824283}, {"ruleAttribute": "XGI6VbbX", "ruleCriteria": "EQUAL", "ruleValue": 0.5868281730564173}, {"ruleAttribute": "h6RsT7wB", "ruleCriteria": "MINIMUM", "ruleValue": 0.0025312370910873794}]}, {"allowedAction": "uWLThuWJ", "ruleDetail": [{"ruleAttribute": "5aHt1LGt", "ruleCriteria": "MINIMUM", "ruleValue": 0.44772856580191644}, {"ruleAttribute": "sDIp7DOx", "ruleCriteria": "EQUAL", "ruleValue": 0.6727977672906156}, {"ruleAttribute": "wERZcm24", "ruleCriteria": "MAXIMUM", "ruleValue": 0.04787305040114975}]}, {"allowedAction": "LJrIfkMh", "ruleDetail": [{"ruleAttribute": "lDcRHUrI", "ruleCriteria": "MINIMUM", "ruleValue": 0.5186186066032431}, {"ruleAttribute": "zTtGgH9V", "ruleCriteria": "MINIMUM", "ruleValue": 0.21726846711870107}, {"ruleAttribute": "Lst8v8kr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5635144094226663}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["e9F919om", "9GiEfjtv", "Cq4t8w6x"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'RUhaV9ES' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "ylQF45X6", "groupIcon": "sfAGeLpI", "groupName": "8lBHeSze", "groupRegion": "nrYMsd7c", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'SnaUw8m8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'h2n9ByHm' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Z6dhJ7Ej", "groupIcon": "uG0HauRQ", "groupName": "fFsIvqRP", "groupRegion": "llpabnmc", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'avMNkGVx' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"idml00Ru": {}, "SKLABiqO": {}, "tZbsHqBD": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'BYHtML6g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'kDr5GTQK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'jRR6yczA' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'yF2LVurh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'IyVwrldw' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'cnktlxMG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'PPxZN9jv' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"dwqYofhU": {}, "vAgnh9yl": {}, "X7yHwfbd": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'LKi2avPz' \
    --groupId 'HfOQWbST' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "N0EqVYmx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6767282214007871}, {"ruleAttribute": "Y2DQT1nW", "ruleCriteria": "EQUAL", "ruleValue": 0.17783482828348174}, {"ruleAttribute": "p28xCzde", "ruleCriteria": "EQUAL", "ruleValue": 0.3528113562325229}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '0PNXGsjr' \
    --groupId 'LGprpeyI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'osqxINif' \
    --memberRoleId 'WgIGPYng' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "XIsLsw9N"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'EW99VebT' \
    --memberRoleId 'oqBkV6Zm' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "XiBi7tDf"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'sEFZP5y0' \
    --namespace $AB_NAMESPACE \
    --userId 'Jvcqww0v' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'wzSqv7ch' \
    --namespace $AB_NAMESPACE \
    --userId 'sBwAHhdf' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'CAOctRNA' \
    --namespace $AB_NAMESPACE \
    --userId '9T47Jxji' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'MAozGq7M' \
    --namespace $AB_NAMESPACE \
    --userId 'GUEnfSjQ' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'MURhKxYI' \
    --namespace $AB_NAMESPACE \
    --userId 'mATX0Fcf' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'dfuTtWYb' \
    --namespace $AB_NAMESPACE \
    --userId 'lSWmW9J8' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE