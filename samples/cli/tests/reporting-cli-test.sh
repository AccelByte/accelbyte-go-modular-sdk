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
    --body '{"actionId": "f5F74NGy", "actionName": "50iSOhJZ", "eventName": "Z1Q0zmjQ"}' \
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
    --body '{"extensionCategory": "AyJAx1Ef", "extensionCategoryName": "nqNZJN9N", "serviceSource": "M2lQtP9W"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "snfF9als", "maxReportPerTicket": 89, "name": "6QUGbz6Z"}, {"extensionCategory": "Ems1wbJb", "maxReportPerTicket": 3, "name": "remXooPW"}, {"extensionCategory": "IGgG4nKu", "maxReportPerTicket": 6, "name": "m1LRKK8L"}], "timeInterval": 3, "userMaxReportPerTimeInterval": 34}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["9MPe7T58", "ce39uEXB", "0hWNIcnv"], "title": "die4cXdz"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'fnUdgBHI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'xBp3vOhB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'zy6afKKf' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["GdwAgNNk", "DsFSmqzm", "VHDMeLG8"], "title": "G9xqFt6g"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'AqKafSaQ' \
    --limit '87' \
    --offset '67' \
    --title '7jSY7N8i' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "K8eMM9h1", "groupIds": ["AvVP99nZ", "JGkSrvzD", "M3E0bvqU"], "title": "KTCV3Vtc"}' \
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
    --extensionCategory 'SOml36sh' \
    --category 'LiEptBwu' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'BFeiEiNr' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'hb0A5X24' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'Ryrb6SU0' \
    --body '{"description": "lPzpqjj6", "groupIds": ["648nOX4E", "6ri0pAMB", "Bo5GlI6n"], "title": "27E4Y1wW"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'EyP1o2lv' \
    --limit '10' \
    --offset '23' \
    --reportedUserId 'rvak0s65' \
    --sortBy 'et3Km3e5' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"roWBuRra": {}, "2RSnNWve": {}, "RROVBGJl": {}}, "category": "EXTENSION", "comment": "qx63qUav", "extensionCategory": "8ctMCZO9", "objectId": "tfsZ9KO4", "objectType": "AZGFBlup", "reason": "reYoA1n0", "userId": "R2UfOT44"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "ci7OOSaM", "duration": 91, "reason": "ecuYmiXA", "skipNotif": false, "type": "2SzQmwrM"}, "deleteChat": false, "extensionActionIds": ["LQWOiaSS", "SDanbv1v", "kcL6qV6a"], "hideContent": false}, "active": true, "category": "EXTENSION", "extensionCategory": "taVjHm8P", "reason": "rw5s0kMa", "threshold": 94}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'hEQi83I4' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "8dOOPMkG", "duration": 87, "reason": "pLWT7J8O", "skipNotif": false, "type": "yTS5se0f"}, "deleteChat": false, "extensionActionIds": ["5aGmmX1C", "QK3ATkeQ", "lJVzMEbF"], "hideContent": true}, "active": true, "category": "USER", "extensionCategory": "rk17I7ZN", "reason": "sbveJPJL", "threshold": 97}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '11kNquZA' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'FdFB1u4o' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'tzjLxh3v' \
    --extensionCategory 'KZePLlG3' \
    --limit '43' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId '475R9uiv' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category '2qHgYVDp' \
    --extensionCategory 'wGPqzIZ3' \
    --limit '37' \
    --offset '50' \
    --order 'cWTpadRE' \
    --reportedUserId 'PvKYa9h4' \
    --sortBy 'C7dS7EIM' \
    --status 'YL9UiPmJ' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'RLBKjouj' \
    --category 'NsWRrHMs' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'H2ZlnIbI' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'awgIDyFR' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'dBbq4eaw' \
    --limit '89' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'lwP27IjM' \
    --body '{"notes": "bmGxHOEf", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'Ag2hJQZU' \
    --limit '33' \
    --offset '11' \
    --title 'RXZVbo3c' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"JXD7vvuq": {}, "WFAbnOc4": {}, "0xgBoRMN": {}}, "category": "USER", "comment": "JB3KAUy8", "extensionCategory": "LG2XWoqL", "objectId": "rNCxeTKI", "objectType": "CvppARSw", "reason": "bFNz5Rar", "userId": "5DcG8E4Z"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE