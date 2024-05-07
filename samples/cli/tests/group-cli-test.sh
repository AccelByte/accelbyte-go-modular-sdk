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
echo "1..82"

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

#- 2 IndexHandler
samples/cli/sample-apps Group indexHandler \
    > test.out 2>&1
eval_tap $? 2 'IndexHandler' test.out

#- 3 BlockHandler
samples/cli/sample-apps Group blockHandler \
    > test.out 2>&1
eval_tap $? 3 'BlockHandler' test.out

#- 4 CmdlineHandler
samples/cli/sample-apps Group cmdlineHandler \
    > test.out 2>&1
eval_tap $? 4 'CmdlineHandler' test.out

#- 5 GoroutineHandler
samples/cli/sample-apps Group goroutineHandler \
    > test.out 2>&1
eval_tap $? 5 'GoroutineHandler' test.out

#- 6 HeapHandler
samples/cli/sample-apps Group heapHandler \
    > test.out 2>&1
eval_tap $? 6 'HeapHandler' test.out

#- 7 Profile
samples/cli/sample-apps Group profile \
    > test.out 2>&1
eval_tap $? 7 'Profile' test.out

#- 8 SymbolHandler
samples/cli/sample-apps Group symbolHandler \
    > test.out 2>&1
eval_tap $? 8 'SymbolHandler' test.out

#- 9 ThreadcreateHandler
samples/cli/sample-apps Group threadcreateHandler \
    > test.out 2>&1
eval_tap $? 9 'ThreadcreateHandler' test.out

#- 10 ListGroupConfigurationAdminV1
samples/cli/sample-apps Group listGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 10 'ListGroupConfigurationAdminV1' test.out

#- 11 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "mlnRKBF7", "description": "yZqDPvvN", "globalRules": [{"allowedAction": "TOwDfLC9", "ruleDetail": [{"ruleAttribute": "QuMNlOBn", "ruleCriteria": "MINIMUM", "ruleValue": 0.26022250735697483}, {"ruleAttribute": "sCzYIJVQ", "ruleCriteria": "EQUAL", "ruleValue": 0.8809838197696402}, {"ruleAttribute": "sfP8HS69", "ruleCriteria": "MINIMUM", "ruleValue": 0.4908751060886902}]}, {"allowedAction": "ivY6nXOs", "ruleDetail": [{"ruleAttribute": "R56AvVMH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.03505716761714506}, {"ruleAttribute": "M5qFF9jf", "ruleCriteria": "MINIMUM", "ruleValue": 0.8510618201065503}, {"ruleAttribute": "P8UHaCOy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6888107403584293}]}, {"allowedAction": "kfpa1rKN", "ruleDetail": [{"ruleAttribute": "3F3z8Qiz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.515783289828905}, {"ruleAttribute": "QzVkTUw1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.16481512653565977}, {"ruleAttribute": "snGOPLi0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5039353776715942}]}], "groupAdminRoleId": "8oTl3GEX", "groupMaxMember": 40, "groupMemberRoleId": "WlMpDxl3", "name": "7MZjvNdf"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateGroupConfigurationAdminV1' test.out

#- 12 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'InitiateGroupConfigurationAdminV1' test.out

#- 13 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'AMHY4sUc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'GetGroupConfigurationAdminV1' test.out

#- 14 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'a9pLAZcs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteGroupConfigurationV1' test.out

#- 15 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'cQvFZg3D' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "kWtp7h1o", "groupMaxMember": 53, "name": "P8UmSYYe"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdateGroupConfigurationAdminV1' test.out

#- 16 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'jz3azkpL' \
    --configurationCode '6GX827Go' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "WGtmEGDZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.36076406564452024}, {"ruleAttribute": "M0HJNDNl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4466183055459061}, {"ruleAttribute": "maK7Mhv1", "ruleCriteria": "EQUAL", "ruleValue": 0.19643910172595436}]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 17 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'DTftqIec' \
    --configurationCode '9ZIzgQgI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 18 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'WJiyJf8C' \
    --groupName 'RnnmZu2U' \
    --groupRegion 'sQmK9wRf' \
    --limit '21' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 18 'GetGroupListAdminV1' test.out

#- 19 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'uj4ORm2k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetSingleGroupAdminV1' test.out

#- 20 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'Lq4nvfEu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeleteGroupAdminV1' test.out

#- 21 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'gPflFx0M' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '48' \
    --order '0isUfNPv' \
    > test.out 2>&1
eval_tap $? 21 'GetGroupMembersListAdminV1' test.out

#- 22 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 22 'GetMemberRolesListAdminV1' test.out

#- 23 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "z2N3ZsF3", "memberRolePermissions": [{"action": 14, "resourceName": "AhSHwpn1"}, {"action": 77, "resourceName": "2yGcgbEQ"}, {"action": 32, "resourceName": "wrXBnN3C"}]}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMemberRoleAdminV1' test.out

#- 24 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'sRswyATY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetSingleMemberRoleAdminV1' test.out

#- 25 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'iA02DvLW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'DeleteMemberRoleAdminV1' test.out

#- 26 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'CWCPcojr' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "b5Hs70r6"}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateMemberRoleAdminV1' test.out

#- 27 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'U8oSLhpw' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 49, "resourceName": "wWV6Mwvg"}, {"action": 70, "resourceName": "N3HdWKJ4"}, {"action": 92, "resourceName": "socZrxFo"}]}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateMemberRolePermissionAdminV1' test.out

#- 28 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'vUJgQWOJ' \
    --groupRegion 'uRc62yMI' \
    --limit '55' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 28 'GetGroupListPublicV1' test.out

#- 29 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "iJPPzyH3", "customAttributes": {"q2GR8Kqf": {}, "d7aOPKPk": {}, "RFVnCRHx": {}}, "groupDescription": "50CtpzgR", "groupIcon": "84zVVEDG", "groupMaxMember": 83, "groupName": "2wdBKK4b", "groupRegion": "X7xhWEuc", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "1pCuZsgX", "ruleDetail": [{"ruleAttribute": "N0FrzjlA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09287220159398402}, {"ruleAttribute": "J4FYuRwf", "ruleCriteria": "MINIMUM", "ruleValue": 0.9712215015727875}, {"ruleAttribute": "KsjSSLvf", "ruleCriteria": "MINIMUM", "ruleValue": 0.9870603284644766}]}, {"allowedAction": "rZyfZOlw", "ruleDetail": [{"ruleAttribute": "jfWZdSj2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.39865477192836096}, {"ruleAttribute": "lQPR8G1u", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1886211083012025}, {"ruleAttribute": "NgPobkwy", "ruleCriteria": "EQUAL", "ruleValue": 0.7467157098031105}]}, {"allowedAction": "nTFrxjpg", "ruleDetail": [{"ruleAttribute": "MTZe9LZJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.9668749727486579}, {"ruleAttribute": "l1Thjfwb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.46307310899074927}, {"ruleAttribute": "5erXOwcJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.04818537941045964}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateNewGroupPublicV1' test.out

#- 30 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'xUivnoSm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'GetSingleGroupPublicV1' test.out

#- 31 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '1aboZ0pV' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "CcyJFLxr", "groupIcon": "hHoDaqtq", "groupName": "K38cXLCM", "groupRegion": "2LPCxH89", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateSingleGroupV1' test.out

#- 32 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '2aNeEoxo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'DeleteGroupPublicV1' test.out

#- 33 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'l8HGLr23' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "2DfcYhP7", "groupIcon": "2eZqbkh7", "groupName": "qo48NTiw", "groupRegion": "vulSo8K8", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdatePatchSingleGroupPublicV1' test.out

#- 34 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'lWsM5MhZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"TwaiD9Jz": {}, "vYEa43tx": {}, "D3H8ImVK": {}}}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupCustomAttributesPublicV1' test.out

#- 35 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'QtfUYY1t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AcceptGroupInvitationPublicV1' test.out

#- 36 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'tvMAqJmu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'RejectGroupInvitationPublicV1' test.out

#- 37 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'kGJtC87P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'JoinGroupV1' test.out

#- 38 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'qB7kFiPV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'CancelGroupJoinRequestV1' test.out

#- 39 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 't2QO4OOa' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 39 'GetGroupJoinRequestPublicV1' test.out

#- 40 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'uuOHC6m6' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '43' \
    --order 'ksxAvEYY' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupMembersListPublicV1' test.out

#- 41 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '0pORyJbp' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"F8kTxKPG": {}, "KzPKUi5m": {}, "if2oqYgW": {}}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateGroupCustomRulePublicV1' test.out

#- 42 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'cyL326LY' \
    --groupId '44F0GAdy' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "AXF5FO3E", "ruleCriteria": "MINIMUM", "ruleValue": 0.5956845423691924}, {"ruleAttribute": "LgISyoV2", "ruleCriteria": "MINIMUM", "ruleValue": 0.7385718057777417}, {"ruleAttribute": "qkalSaDI", "ruleCriteria": "EQUAL", "ruleValue": 0.8904947328355781}]}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateGroupPredefinedRulePublicV1' test.out

#- 43 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'T3Y77FsM' \
    --groupId '29hGDbMr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'DeleteGroupPredefinedRulePublicV1' test.out

#- 44 LeaveGroupPublicV1
samples/cli/sample-apps Group leaveGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'LeaveGroupPublicV1' test.out

#- 45 GetMemberRolesListPublicV1
samples/cli/sample-apps Group getMemberRolesListPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 45 'GetMemberRolesListPublicV1' test.out

#- 46 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'D2WPLfuu' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ueplRobo"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateMemberRolePublicV1' test.out

#- 47 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'I3zCIL6e' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "aOmkAArx"}' \
    > test.out 2>&1
eval_tap $? 47 'DeleteMemberRolePublicV1' test.out

#- 48 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 48 'GetGroupInvitationRequestPublicV1' test.out

#- 49 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pA1y7hlQ' \
    > test.out 2>&1
eval_tap $? 49 'GetUserGroupInformationPublicV1' test.out

#- 50 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'A1yJ8wlh' \
    > test.out 2>&1
eval_tap $? 50 'InviteGroupPublicV1' test.out

#- 51 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NPWakREq' \
    > test.out 2>&1
eval_tap $? 51 'AcceptGroupJoinRequestPublicV1' test.out

#- 52 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VBTqtzxx' \
    > test.out 2>&1
eval_tap $? 52 'RejectGroupJoinRequestPublicV1' test.out

#- 53 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'G1uxejW5' \
    > test.out 2>&1
eval_tap $? 53 'KickGroupMemberPublicV1' test.out

#- 54 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["j2wQwcZa", "lLPmOFvU", "YJFXWCRe"]}' \
    > test.out 2>&1
eval_tap $? 54 'GetListGroupByIDsAdminV2' test.out

#- 55 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'pjIEolAu' \
    --limit '71' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 55 'GetUserJoinedGroupInformationPublicV2' test.out

#- 56 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'GtF9SC8o' \
    --namespace $AB_NAMESPACE \
    --userId 'mbIwc5Ur' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetUserGroupStatusInformationV2' test.out

#- 57 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "xir8iMX1", "customAttributes": {"q1cPNFh1": {}, "WBGOPE4P": {}, "q3EtC2Ya": {}}, "groupDescription": "FSrh8w0I", "groupIcon": "zP7Ajomb", "groupMaxMember": 4, "groupName": "wQfckFEU", "groupRegion": "nuMcAofv", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "UD3ESPrS", "ruleDetail": [{"ruleAttribute": "J7EANLlR", "ruleCriteria": "MINIMUM", "ruleValue": 0.04638181449066803}, {"ruleAttribute": "B6wHoaow", "ruleCriteria": "EQUAL", "ruleValue": 0.06134756200503311}, {"ruleAttribute": "fRQrRhQC", "ruleCriteria": "MINIMUM", "ruleValue": 0.5920317555312198}]}, {"allowedAction": "aqKFwysd", "ruleDetail": [{"ruleAttribute": "hgDItfTm", "ruleCriteria": "EQUAL", "ruleValue": 0.7154877874580478}, {"ruleAttribute": "pKXFOUWw", "ruleCriteria": "MINIMUM", "ruleValue": 0.43612242181226846}, {"ruleAttribute": "CRTmapVx", "ruleCriteria": "EQUAL", "ruleValue": 0.4638576524581033}]}, {"allowedAction": "fHzsrPqY", "ruleDetail": [{"ruleAttribute": "QDeOKHlk", "ruleCriteria": "EQUAL", "ruleValue": 0.366943221854769}, {"ruleAttribute": "5DSys0Ti", "ruleCriteria": "EQUAL", "ruleValue": 0.9184828828669258}, {"ruleAttribute": "QVdIx3sX", "ruleCriteria": "EQUAL", "ruleValue": 0.322440167832584}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 57 'CreateNewGroupPublicV2' test.out

#- 58 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["OuJttlmp", "QFXO5IcT", "MZQ4WeGl"]}' \
    > test.out 2>&1
eval_tap $? 58 'GetListGroupByIDsV2' test.out

#- 59 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '8HMkKv8q' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "dcVhlyWd", "groupIcon": "FJTbKWkC", "groupName": "XaubBMJX", "groupRegion": "iMAYBFo2", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdatePutSingleGroupPublicV2' test.out

#- 60 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'MY9TSOul' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteGroupPublicV2' test.out

#- 61 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'oR0Pp28e' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "XFBtEN6N", "groupIcon": "gOKVYNj6", "groupName": "XZs3AoAA", "groupRegion": "oedy6IaY", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdatePatchSingleGroupPublicV2' test.out

#- 62 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'CGgupXr1' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"UGspkomA": {}, "rgu96bpX": {}, "2fmoY5mT": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupCustomAttributesPublicV2' test.out

#- 63 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'lcdDmDx1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'AcceptGroupInvitationPublicV2' test.out

#- 64 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'HEO4wVOS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'RejectGroupInvitationPublicV2' test.out

#- 65 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'OvojWlzd' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 65 'GetGroupInviteRequestPublicV2' test.out

#- 66 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'LH0Fbety' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'JoinGroupV2' test.out

#- 67 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '28DtGDbt' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 67 'GetGroupJoinRequestPublicV2' test.out

#- 68 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'CTfR6VTK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'LeaveGroupPublicV2' test.out

#- 69 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'HGL55Qdx' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Pyqdwx7N": {}, "0NhBXCbN": {}, "NgDPXyrm": {}}}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateGroupCustomRulePublicV2' test.out

#- 70 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'HblHzA2x' \
    --groupId 'teXBUUxi' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "5vJIglzY", "ruleCriteria": "EQUAL", "ruleValue": 0.55785609308148}, {"ruleAttribute": "IVcG6JGg", "ruleCriteria": "MINIMUM", "ruleValue": 0.6349999827666443}, {"ruleAttribute": "8ZEhPmh9", "ruleCriteria": "MINIMUM", "ruleValue": 0.3067151376920285}]}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateGroupPredefinedRulePublicV2' test.out

#- 71 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'dZZGsIfp' \
    --groupId 'evfPsRRh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'DeleteGroupPredefinedRulePublicV2' test.out

#- 72 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 72 'GetMemberRolesListPublicV2' test.out

#- 73 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'Zyncwihd' \
    --memberRoleId 'WPiJ7eCh' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "aYZScQXn"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateMemberRolePublicV2' test.out

#- 74 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'myV7Z0dF' \
    --memberRoleId 'O55DEs8n' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "HsaERBRm"}' \
    > test.out 2>&1
eval_tap $? 74 'DeleteMemberRolePublicV2' test.out

#- 75 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 75 'GetUserGroupInformationPublicV2' test.out

#- 76 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 76 'GetMyGroupJoinRequestV2' test.out

#- 77 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'PshiLxYb' \
    --namespace $AB_NAMESPACE \
    --userId 'dzBosZVn' \
    > test.out 2>&1
eval_tap $? 77 'InviteGroupPublicV2' test.out

#- 78 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'nidWCEsf' \
    --namespace $AB_NAMESPACE \
    --userId 'rtNILPG6' \
    > test.out 2>&1
eval_tap $? 78 'CancelInvitationGroupMemberV2' test.out

#- 79 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'QdlLb4H9' \
    --namespace $AB_NAMESPACE \
    --userId '2rdqKrrY' \
    > test.out 2>&1
eval_tap $? 79 'AcceptGroupJoinRequestPublicV2' test.out

#- 80 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'IPbrC223' \
    --namespace $AB_NAMESPACE \
    --userId 'z3yTDhG2' \
    > test.out 2>&1
eval_tap $? 80 'RejectGroupJoinRequestPublicV2' test.out

#- 81 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'hHytUHVr' \
    --namespace $AB_NAMESPACE \
    --userId 'snpmwvEy' \
    > test.out 2>&1
eval_tap $? 81 'KickGroupMemberPublicV2' test.out

#- 82 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'ZJgERywo' \
    --namespace $AB_NAMESPACE \
    --userId 'rzhJhSaB' \
    > test.out 2>&1
eval_tap $? 82 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE