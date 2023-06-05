#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
    --body '{"actionId": "htwCpAWiDkIV2DYU", "actionName": "6uBVzPYiCZt3HRPK", "eventName": "I6hQWSaNxAo84RQs"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'desc' \
    --sortBy 'extensionCategory' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "0EOiCxOAYgbMsh2R", "extensionCategoryName": "oCsxoN3oZjBha8Ta", "serviceSource": "pJgBWD4U6XOVAg2v"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateExtensionCategory' test.out

#- 6 Get
samples/cli/sample-apps Reporting get \
    --namespace $AB_NAMESPACE \
    --category 'extension' \
    > test.out 2>&1
eval_tap $? 6 'Get' test.out

#- 7 Upsert
samples/cli/sample-apps Reporting upsert \
    --namespace $AB_NAMESPACE \
    --body '{"categoryLimits": [{"extensionCategory": "rGLlXaWlHOwtUxdz", "maxReportPerTicket": 5, "name": "S9YpvDmcZbigQVZX"}, {"extensionCategory": "pH0DWddzqTq1lB7o", "maxReportPerTicket": 45, "name": "JcbsStijA2PBmAIL"}, {"extensionCategory": "SkLFGap0w6l1juQm", "maxReportPerTicket": 64, "name": "Hdx8Sjpj0edRnJYA"}], "timeInterval": 13, "userMaxReportPerTimeInterval": 7}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["85V9d7K3VsvbCdvs", "Ksrb8p2771kOphXe", "tuc6m9uGxy16TMoY"], "title": "Mq4odVl834FRLtPq"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'TaPTr5EwolZsqC4K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'IXlDrDqnDK90EEju' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'tHyZNk7i0Si56SqS' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["NerYNqw8V5BEYkzn", "MTDwlnIjk3Dnj5r3", "3clIrVUURZkhPzAt"], "title": "NwiLposK12HQ5K8a"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'fw2lekGib0F90nYO' \
    --limit '21' \
    --offset '21' \
    --title 'cT6bvG2HIC75Fza7' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "eTzOHKU6O146N6ki", "groupIds": ["fj4xW0yQNaGqfbN7", "DXtqXN2zuwZdvUSm", "uw2Qg1cW6uSFRur2"], "title": "pVCvMjMhyNSGweD1"}' \
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
    --extensionCategory '95eJv5XWafhqAjNo' \
    --category 'Bbd6yukHn7dTvAUx' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'meX2J8hm1lBkRej8' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'YAUZzZCfOSMoF1ge' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'hlmoZ7jk2B0xVWED' \
    --body '{"description": "5JfejdrcndFXPsAY", "groupIds": ["T2xnv6LDpWRjB4Tr", "cHQHoMkn2kxp3IOl", "B1lKfSLc0Qdg6L86"], "title": "hAmr6jjCve5idh0o"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'b0fof1lugldHECDw' \
    --limit '55' \
    --offset '9' \
    --reportedUserId 'o9VqJgjNEUFuMwIa' \
    --sortBy '53oQe5Wk9iUVW7je' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"RnI6ZO5j6yTBqpWr": {}, "HIi4FHuna3SzTVxP": {}, "dVEx0m6YipEyNH9W": {}}, "category": "CHAT", "comment": "CPw8TU9uqsVbCZ6i", "extensionCategory": "vfA7fOrs9HEebyXm", "objectId": "E8FvAB2XVfTZcv1K", "objectType": "ylRIjTKmQWYXF8jF", "reason": "5VAG9QrAjJIAOufA", "userId": "k8u3nUSW9T7FxYVW"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "4c3xes9oJJYGnw9F", "duration": 39, "reason": "pxVcEtvQQfFbr9f9", "skipNotif": false, "type": "84twdmJGAZ0Z8L1U"}, "deleteChat": false, "extensionActionIds": ["WqW30yTStPxsLMXu", "lGRusAso0Ex54MlW", "3V26yG9Zs6mg7VCL"], "hideContent": false}, "active": false, "category": "EXTENSION", "extensionCategory": "jzmnty66pkyWC3kO", "reason": "mCSSIsehDjU6yx3P", "threshold": 51}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'VOlFAxJZXiqGIAcc' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "QAkCfhJvnRjt7REd", "duration": 40, "reason": "Idr27FgplBLTptHm", "skipNotif": false, "type": "DKIzOF79q5FPIGWB"}, "deleteChat": false, "extensionActionIds": ["pBy6DDwaxhzcGYmr", "Zd8YyBbbJOL9AM3I", "hM8IWm9Z1Www5Ucl"], "hideContent": false}, "active": true, "category": "EXTENSION", "extensionCategory": "BJVRmePPXJJpTPC1", "reason": "5PioJTOsMhhN5hJl", "threshold": 88}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'YXnp3yqrNjiIZlWy' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'gfrE3wGtyEElKSkU' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'H4A2ZLEzAeP1LUKO' \
    --extensionCategory 'ru2w04gNhsK5uiCx' \
    --limit '95' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'p5ZKlb5r7nPwI9xj' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'W50Mh7wxLtsNM0My' \
    --extensionCategory 'OiRYRIzvjEYPOveR' \
    --limit '94' \
    --offset '19' \
    --order 'NCKAScUFpiSbAl4O' \
    --reportedUserId 'JW8ozri4NJN5oZKR' \
    --sortBy 'AkAYpP7iJf1YXF8F' \
    --status 'xjsNctdx0i8y9lCl' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'DMMGLYCkaFuB3xD6' \
    --category '58PtpiwDWfAlCCGE' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId '1J4AaTEKz8nbw8Ta' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '68l9VhNolysfqCrt' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'eZ39GFP4emm5WB0O' \
    --limit '56' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'osqxp4N1iP19xa5F' \
    --body '{"notes": "ACFV6WzNLy9Be6Jf", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group '3b8o4ATkxQ1xgBZW' \
    --limit '30' \
    --offset '63' \
    --title 'TvC6lrDgiwRJkVhJ' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"4d6mNeDQErGu8Qqc": {}, "FygvSUJ0prPhLIFK": {}, "HOTFiBOysN3BTSV4": {}}, "category": "USER", "comment": "QfcdZUrjxK4rkSg8", "extensionCategory": "vkp1Eb8n5aMKeakw", "objectId": "FlSYmQ8Dv4BdmaXU", "objectType": "aGNy6Q9fHVOXBoNM", "reason": "FUzkq8Ih1YVMK5OL", "userId": "nvzNnfX73PfsALdp"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE