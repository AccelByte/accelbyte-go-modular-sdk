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
echo "1..36"

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

#- 2 AdminFindActionList
samples/cli/sample-apps Reporting adminFindActionList \
    > test.out 2>&1
eval_tap $? 2 'AdminFindActionList' test.out

#- 3 AdminCreateModAction
samples/cli/sample-apps Reporting adminCreateModAction \
    --body '{"actionId": "TncHrYwc", "actionName": "rKDw9Y3N", "eventName": "9b3AjShA"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'descending' \
    --sortBy 'extensionCategoryName' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "e5dtPKoO", "extensionCategoryName": "BmN9RZ4m", "serviceSource": "7pI4VG8p"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateExtensionCategory' test.out

#- 6 Get
samples/cli/sample-apps Reporting get \
    --namespace $AB_NAMESPACE \
    --category 'all' \
    > test.out 2>&1
eval_tap $? 6 'Get' test.out

#- 7 Upsert
samples/cli/sample-apps Reporting upsert \
    --namespace $AB_NAMESPACE \
    --body '{"categoryLimits": [{"extensionCategory": "daq8Mv5J", "maxReportPerTicket": 5, "name": "q9NrZJ1s"}, {"extensionCategory": "5hAmbBTb", "maxReportPerTicket": 15, "name": "26pgRkDg"}, {"extensionCategory": "Tsp1KEti", "maxReportPerTicket": 54, "name": "r0n6DAOW"}], "timeInterval": 77, "userMaxReportPerTimeInterval": 7}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["ngWWy3Sh", "YxHPjaYc", "lkXb3VGK"], "title": "HHsBM23N"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'dFtGSeMD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'cJhy2ZxD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'hQsiz3iQ' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["sFTCJvIW", "sAAT9SEA", "c9nf7E0e"], "title": "eGjZqMU0"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'SmlytTNN' \
    --limit '37' \
    --offset '88' \
    --title 'VViCNSC0' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "f4dzBdef", "groupIds": ["8nU1fJfa", "Ua5WGYhs", "ZACxBChH"], "title": "emecercb"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateReason' test.out

#- 15 AdminGetAllReasons
samples/cli/sample-apps Reporting adminGetAllReasons \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllReasons' test.out

#- 16 AdminGetUnusedReasons
samples/cli/sample-apps Reporting adminGetUnusedReasons \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'KSQ8Ya2Y' \
    --category 'a5zVgNGv' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '2TjKUwtI' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'bym87636' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'L9L9X2dN' \
    --body '{"description": "DjjECpoK", "groupIds": ["4vC6pHtA", "wxekRWyj", "RWr5BDdu"], "title": "jYHWIZEU"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'fNtrZTRO' \
    --limit '83' \
    --offset '17' \
    --reportedUserId 'OpzMG57i' \
    --sortBy 'TAwipiPF' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"nxpc2U5J": {}, "tIUItgX0": {}, "21K2AijX": {}}, "category": "EXTENSION", "comment": "sG5QLkZP", "extensionCategory": "uccQfh6y", "objectId": "NPKFFs4g", "objectType": "nNEXACFb", "reason": "5HmIPNZJ", "userId": "BoKmQU0C"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "ftOtXLwN", "duration": 45, "reason": "4B4jRKwl", "skipNotif": false, "type": "NzNmu24W"}, "deleteChat": true, "extensionActionIds": ["5Nyy0KSA", "oJ9edijf", "Ri75uWEl"], "hideContent": true}, "active": true, "category": "USER", "extensionCategory": "oIjxkwdW", "reason": "TR4xWqLh", "threshold": 9}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'rzK1hIw9' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "QAug3i40", "duration": 41, "reason": "7SfbRyF3", "skipNotif": true, "type": "cJhdxpw1"}, "deleteChat": true, "extensionActionIds": ["YgdJsS8Y", "DTbiBeCv", "sBBnH6Su"], "hideContent": true}, "active": false, "category": "USER", "extensionCategory": "0ddqMy29", "reason": "jN7fAGTa", "threshold": 75}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'FlXDHS1b' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'l9zm5dj9' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'kreHUnct' \
    --extensionCategory '5wBGwLhm' \
    --limit '90' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'N4BPGiSc' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'j6quPt0l' \
    --extensionCategory 'U4ygfDau' \
    --limit '8' \
    --offset '83' \
    --order 'RgYuCkqx' \
    --reportedUserId 'Lp5FkTmI' \
    --sortBy 'z3WO3UhO' \
    --status 'Md4aowv9' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'jnDcZgAO' \
    --category 'Ig2vYIyb' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'LKV9VDHv' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'rYYHwGha' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'kYHsKB7Y' \
    --limit '71' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'U1esrlXf' \
    --body '{"notes": "71mcPfEq", "status": "AUTO_MODERATED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'SqjjscM3' \
    --limit '7' \
    --offset '91' \
    --title 'yJyGfU3D' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"MBR3VXOW": {}, "GhWCvlwE": {}, "hYwxRlWb": {}}, "category": "CHAT", "comment": "GYgj3DJO", "extensionCategory": "B8hHwNVb", "objectId": "vaUaFfxp", "objectType": "fndagw9O", "reason": "Xznncs0a", "userId": "oj3aQcuw"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE