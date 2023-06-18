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
    --body '{"actionId": "dVhwSsbhtVbikmLQ", "actionName": "trNJ0YeFHKDHXdrZ", "eventName": "Cej5saY7lg4MnF3p"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'ascending' \
    --sortBy 'extensionCategory' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "9a0alhora3zvy7Ky", "extensionCategoryName": "LUAC2eLJ197exV44", "serviceSource": "MpZ0RRC6Vp2sjzqc"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "56BwaUxzhlBIhIaI", "maxReportPerTicket": 41, "name": "F8o99Du5rCp7unSE"}, {"extensionCategory": "oh2YqciIoItSqfIx", "maxReportPerTicket": 19, "name": "Yxo8HBNqjyqliqaJ"}, {"extensionCategory": "50A37Cq6Mje272Ig", "maxReportPerTicket": 56, "name": "rYAme0uh7Sq99kGU"}], "timeInterval": 24, "userMaxReportPerTimeInterval": 88}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["OYbVQBIyg4qMfphk", "RbIEVzVq47hf3TPV", "GLWFcHY1MIEfbd2D"], "title": "q2NsMEHB6nOk0QAj"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'yCLsalVNg5t6IQeU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'Yuu7pBblaMAEAI9F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'Uv4CDp0hE5UXuIDI' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["iAu0V0Z9KyCF7pTo", "PZMfS3eGWB9bVA9j", "6bG8aG4k2OGSVcct"], "title": "zqn5SiyGHX7cfa1P"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'o8cBSgXoP1EKpxZt' \
    --limit '83' \
    --offset '15' \
    --title 'LzWupT3l4IE5AqKN' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "d2JkthS1ghSTHCFo", "groupIds": ["x3iOhc1YWA75IHA9", "o2xvyndt5mRQdLPm", "ghdQtYWTRfctwGh9"], "title": "NjThAT5o4vD7fSl3"}' \
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
    --extensionCategory 'rQutrPum5JYCbsjA' \
    --category 'nhcB1BcNgxcNdLMh' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '5M0DEz8JIhxxJ7Ke' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'ANUcXE5kUHOBCMcQ' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId '2EsfZMTuECk2muy3' \
    --body '{"description": "4HTncva9VYm6zMtW", "groupIds": ["1lkG5H75biRdg92N", "n7wmaGbUqWcPSyje", "s9HOWHbagkLnQnYZ"], "title": "9Lc8lm3ifdQBV8ek"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'dMD2iYRkGcOhsE2S' \
    --limit '27' \
    --offset '87' \
    --reportedUserId 'eEPWWytxasYXzijj' \
    --sortBy 'VJJYvURcSdzSHtvT' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"FcTxVILFPwUtglo5": {}, "4ht00LnVvHKPNVA0": {}, "rq6u4DPA7miJ2nV1": {}}, "category": "USER", "comment": "5dvtU4Tef7ApQLZO", "extensionCategory": "z58OHY0CbG6CT5PU", "objectId": "c1D9nDxDtzVhjaAD", "objectType": "bkBWLXZkHcUkKPLu", "reason": "GGe2f4vHMKpIz66v", "userId": "uuG24GkZ47goW50a"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "47T4srPKiWyf9DWR", "duration": 97, "reason": "xrzPpINZIdYUSuue", "skipNotif": true, "type": "1HehhrkphYTg5K1F"}, "deleteChat": true, "extensionActionIds": ["QjNiKCt4sntURiGL", "6u4EL7ayh4xPBO0d", "v0CkYnXWUZ07FaEf"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "63rQYBUvNKo2PpiC", "reason": "vKAchMjZq0ozfD0o", "threshold": 69}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'NhgFDC4ml8xbMHb2' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "BEtWYpluaFHCYs09", "duration": 43, "reason": "bErZgRleH3h4q4bB", "skipNotif": true, "type": "BBxmdF6YU3FNh5wB"}, "deleteChat": false, "extensionActionIds": ["2WlF8KATlgXG0q8i", "5B0xruEBUz5Aa7K1", "9XhFyEZ47ZdS34MS"], "hideContent": false}, "active": true, "category": "EXTENSION", "extensionCategory": "R1xUKw69moktFVOk", "reason": "0cnmAmITicPlLf1T", "threshold": 69}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'wUZOQAcAodKm96Ud' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId '0unBzDg6LmG6ScQ6' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'y32Eymnc168f8tZe' \
    --extensionCategory 'oVHudw4ACie8Lzdo' \
    --limit '63' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'QjpVCV6KvUyk1axF' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category '6VySLYSHvkDvKUsu' \
    --extensionCategory 'UYTPzzWwxmmzlKhV' \
    --limit '1' \
    --offset '18' \
    --order 'y52NoAMGwV5dSrAO' \
    --reportedUserId 'FA1HTJrG6soza3sE' \
    --sortBy '3BBHiDwj0heJwqif' \
    --status 'laOacqASADOF8Y8c' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'vCpK0UuKbFZ6BLiR' \
    --category 'MNOwR3T6UKBSF519' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId '2gQjkG6HH9FetXz5' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '0J0CISP2aUeqt1z7' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'aLbobrT1HCkqTA1s' \
    --limit '37' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'CKqOCPYTz3pUsB3Z' \
    --body '{"notes": "DxKWWUbghlB69Ngy", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'Y42HoJ16kl1E3bKe' \
    --limit '2' \
    --offset '59' \
    --title '6iSpn6gXfeEf1vdr' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"ljH90DRz1jFk47Dc": {}, "XeuFxmca7k7u6lsn": {}, "rYote5wo0oDWi7o3": {}}, "category": "USER", "comment": "UT5HWu7WfRVgNWVr", "extensionCategory": "jrcw65nwzTHJ2V2W", "objectId": "UwRDcylTKrnN66XV", "objectType": "AR3FhRwLSHLsQZFk", "reason": "IxvwUmc2WEcdQ9om", "userId": "q6oq99Ld4eSHmxCv"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE