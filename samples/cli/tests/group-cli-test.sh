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
    --limit '13' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "NvmPTPPr", "description": "ivHTUeCz", "globalRules": [{"allowedAction": "iirrIIsA", "ruleDetail": [{"ruleAttribute": "MadQM7iX", "ruleCriteria": "EQUAL", "ruleValue": 0.1425090424779697}, {"ruleAttribute": "VjsxfZhD", "ruleCriteria": "MINIMUM", "ruleValue": 0.4520409770247106}, {"ruleAttribute": "kBu9Ymlk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3810049883781218}]}, {"allowedAction": "PpDDbvMh", "ruleDetail": [{"ruleAttribute": "jIbdrUGN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09388147477339215}, {"ruleAttribute": "r1jYeuXT", "ruleCriteria": "MINIMUM", "ruleValue": 0.8162537268883069}, {"ruleAttribute": "esCqKDoN", "ruleCriteria": "EQUAL", "ruleValue": 0.8959833166030952}]}, {"allowedAction": "sEnXReWE", "ruleDetail": [{"ruleAttribute": "sxniOMMM", "ruleCriteria": "EQUAL", "ruleValue": 0.9586002618764062}, {"ruleAttribute": "OHIbCP5r", "ruleCriteria": "MAXIMUM", "ruleValue": 0.029338705304973844}, {"ruleAttribute": "doSn9rlV", "ruleCriteria": "EQUAL", "ruleValue": 0.5948104018965321}]}], "groupAdminRoleId": "9geHArig", "groupMaxMember": 46, "groupMemberRoleId": "8DeNvN5N", "name": "NcNCvpy6"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'eatSgTsx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'uGNYzRXz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'RblXsydh' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "N0d34geV", "groupMaxMember": 54, "name": "fWy1sm0a"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '0Pyk3SCo' \
    --configurationCode 'viSq0TeQ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "kfRZoCjt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.05389467670451298}, {"ruleAttribute": "AxRl4F3n", "ruleCriteria": "EQUAL", "ruleValue": 0.38734168914657063}, {"ruleAttribute": "uYdNi09s", "ruleCriteria": "MINIMUM", "ruleValue": 0.8434055681004178}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '6uV8ek1P' \
    --configurationCode 'IP2eE34i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'bz1RZGy2' \
    --groupName 'fp4ykiNA' \
    --groupRegion 'W0FJoTEC' \
    --limit '65' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'PAMXoNFp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'UxFVpJIZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'BhmizF8S' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '58' \
    --order '1luAbvyp' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "z8OBIa5H", "memberRolePermissions": [{"action": 92, "resourceName": "khG4SZQM"}, {"action": 51, "resourceName": "Ut7EXMSY"}, {"action": 99, "resourceName": "P9B0imYu"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'gB4U3iRZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'dnOzLIuF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'GTumPXLx' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "UKRlCQA3"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '32dygkTz' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 36, "resourceName": "xL6WhZBf"}, {"action": 59, "resourceName": "lnbAoEmv"}, {"action": 35, "resourceName": "3YJKOUSm"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'bDGIKMZb' \
    --groupRegion 'lM2MuVZM' \
    --limit '31' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "c7xQXN24", "customAttributes": {"7iw3oREz": {}, "axW4XqQV": {}, "fVxoU2eh": {}}, "groupDescription": "6D64ea95", "groupIcon": "RbsPce8e", "groupMaxMember": 10, "groupName": "Szd594cc", "groupRegion": "f8CQdC4N", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "GGWTNZbp", "ruleDetail": [{"ruleAttribute": "oxtgKMWl", "ruleCriteria": "MINIMUM", "ruleValue": 0.28367999804805644}, {"ruleAttribute": "RDsnIAHi", "ruleCriteria": "EQUAL", "ruleValue": 0.34081451230279114}, {"ruleAttribute": "hTauXoBP", "ruleCriteria": "MINIMUM", "ruleValue": 0.41044262534935705}]}, {"allowedAction": "uKO8dBhz", "ruleDetail": [{"ruleAttribute": "0iwz6Sew", "ruleCriteria": "EQUAL", "ruleValue": 0.5164179549291054}, {"ruleAttribute": "wAX4Kmsd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6621591157699517}, {"ruleAttribute": "MqbJxvBA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8019168236476181}]}, {"allowedAction": "57pjfKGA", "ruleDetail": [{"ruleAttribute": "9jyXyOCU", "ruleCriteria": "EQUAL", "ruleValue": 0.9242832808585797}, {"ruleAttribute": "eicdnhow", "ruleCriteria": "EQUAL", "ruleValue": 0.9858908665542525}, {"ruleAttribute": "1A8bqpV6", "ruleCriteria": "EQUAL", "ruleValue": 0.3104399725309004}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'V2GKWA66' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'jg1RjyhT' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "dqRkvM5n", "groupIcon": "wyKORLY8", "groupName": "aRn8Cyc4", "groupRegion": "Z9kfofdy", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'lG0RrAEn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'ZFqkDlo7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Ygae3CGa", "groupIcon": "40FiQLJO", "groupName": "IcUAWikv", "groupRegion": "GL9OPYQH", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'z4TkOGE8' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"M6HPlWHi": {}, "jjsMIcRR": {}, "qvzJ2WkO": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'Y93dZwKa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'YTNRCzz3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'Ryg87owt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'TfCyXAiY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'wgJJhFoi' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'WfJSMxiD' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '85' \
    --order 'Kc3Kr6kX' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'EE5iKHgN' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"fQ6s6vaS": {}, "QRL25YEq": {}, "ona52HJ2": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'QMonlePu' \
    --groupId 'b4Lj8SZy' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "SihXK36j", "ruleCriteria": "EQUAL", "ruleValue": 0.5655326180893205}, {"ruleAttribute": "mBCKhFIT", "ruleCriteria": "MINIMUM", "ruleValue": 0.24880690753860857}, {"ruleAttribute": "3yfAAth7", "ruleCriteria": "MINIMUM", "ruleValue": 0.7648545118991027}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '3B8ppv0X' \
    --groupId 'igJcUKBy' \
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
    --limit '79' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'IKHwFCX2' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "EappkVwF"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'NzNSiqHg' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "caZAQwUF"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '3SAHlOMt' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TDobvT29' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IOizEOuQ' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'iKNA6FPO' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '651DHxIC' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["RAAvAiaS", "7wqXfUCm", "3UZMqAt1"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId '8dguPuc4' \
    --limit '54' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'fPsXKpcG' \
    --namespace $AB_NAMESPACE \
    --userId 'BqJDx8VA' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "dkOmYFAx", "customAttributes": {"boSdv2bV": {}, "aGkhj9A8": {}, "dxtqluhB": {}}, "groupDescription": "t8YQfIOh", "groupIcon": "vX9lzXeh", "groupMaxMember": 39, "groupName": "24D2xayR", "groupRegion": "DSxKfsQ1", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "YamOarEi", "ruleDetail": [{"ruleAttribute": "LldbUwGH", "ruleCriteria": "EQUAL", "ruleValue": 0.6230107329202452}, {"ruleAttribute": "TjlTVRqN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.17599844518579344}, {"ruleAttribute": "ICkIJ52j", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8974403943887039}]}, {"allowedAction": "sD4xEb6T", "ruleDetail": [{"ruleAttribute": "qkPmkE5I", "ruleCriteria": "EQUAL", "ruleValue": 0.2909429508260678}, {"ruleAttribute": "4xE6VBIk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.42446604570528346}, {"ruleAttribute": "8ybuUG7j", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9748784111657878}]}, {"allowedAction": "qdTJaLao", "ruleDetail": [{"ruleAttribute": "ksMxgmNz", "ruleCriteria": "MINIMUM", "ruleValue": 0.15756536824347955}, {"ruleAttribute": "ZyVfWyX8", "ruleCriteria": "EQUAL", "ruleValue": 0.6666023327683632}, {"ruleAttribute": "OI4MKnyk", "ruleCriteria": "MINIMUM", "ruleValue": 0.3274733079701263}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["CME0pZmj", "C3eKkgWH", "VQP0kC1W"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'lU59rLor' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "y30u66Oo", "groupIcon": "h7RuPDjI", "groupName": "dVacAGK3", "groupRegion": "yqDbQeSV", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'Tk1l36Zy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'AU21yp4n' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "yjMgV8ua", "groupIcon": "mw5mAQJs", "groupName": "zClYKf1C", "groupRegion": "Tuv26VE7", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'I7LrkUG0' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"YL92ruya": {}, "JT0qmRpy": {}, "QylIo3v3": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'DebOktlP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'ZYLX8eJO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '1AoLZFPN' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'pbADxsX4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '6EpWQP2K' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'J6iqedwZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'ZrPKzShW' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"15SCZFWn": {}, "r8YUX0Pz": {}, "Nw3TGQO0": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'XwMiMQyE' \
    --groupId 'fr8chKDc' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "K1XVpzyx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5344289585080162}, {"ruleAttribute": "KcWW4XG8", "ruleCriteria": "EQUAL", "ruleValue": 0.6808847812500118}, {"ruleAttribute": "garYXr8a", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7586077752928596}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'c4vMCKLo' \
    --groupId 'Lj54Ld1n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'CaBTd1TW' \
    --memberRoleId 'CcgwCLte' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "sGev1b9k"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'ka4KxUon' \
    --memberRoleId 'e3Lqv7ow' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "O84pE9CT"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'JL9P3X5u' \
    --namespace $AB_NAMESPACE \
    --userId '22W8cU7B' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'UQJgKurd' \
    --namespace $AB_NAMESPACE \
    --userId 'Wzl3IaBf' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId '8xZvR2oL' \
    --namespace $AB_NAMESPACE \
    --userId 'YsO7NH1B' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'axx29xM2' \
    --namespace $AB_NAMESPACE \
    --userId 'gNl3rh44' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '9VGgf1Bn' \
    --namespace $AB_NAMESPACE \
    --userId 'yoVUH5eV' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'gUIaFuGl' \
    --namespace $AB_NAMESPACE \
    --userId 'A7r5yWF3' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE