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
    --body '{"actionId": "G1DYRikB1kk9WAzb", "actionName": "SUaGEHZ2eWK4dIn5", "eventName": "Q7xWtcyJlP5QCEO7"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'descending' \
    --sortBy 'extensionCategory' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "vNCFYa7tRexiMZPb", "extensionCategoryName": "sg2MA5PyVA27hT2X", "serviceSource": "XgyumvaU5l25RF0L"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "FDty1Z9UuvshyGrV", "maxReportPerTicket": 28, "name": "J4znYdesdC5XwwDG"}, {"extensionCategory": "oWy3ATzb4E40H5Lj", "maxReportPerTicket": 71, "name": "sPnLJWK28NlI7OY2"}, {"extensionCategory": "cA69fbM2vNe0re4f", "maxReportPerTicket": 38, "name": "Ok5uIEyisCaQxNyR"}], "timeInterval": 87, "userMaxReportPerTimeInterval": 38}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["52Aq0IzVFspFi2xn", "BqJdjjotuojSUWWX", "RcYp5qw0yQw8hvlA"], "title": "EupXGtv71IrVdCXL"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId '1t35S8swHA68WRUf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId '4bjFHzyWmHBHD9KD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 's5Kxu9sp5AAjjmeX' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["d7znUKdHbvFzL8nA", "T16dbINjBRUX68vB", "R0DgTxqNey1jSzkj"], "title": "xN5pIvfMXWVBQgap"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'NXRTJ7PJWZTQGCCK' \
    --limit '85' \
    --offset '54' \
    --title '1sTpdYcMCHv6Ri0p' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DSP87r5J2QsT9vVI", "groupIds": ["uTlcYQNjGHh9z2OU", "kgNYrDwJ1zXqE21U", "LHJr59GVhK78FeJk"], "title": "lDAWijIjvQfA6jdJ"}' \
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
    --extensionCategory 'UuetfjhYMWj8MMPL' \
    --category 'xCb8opEMLiX1XSUR' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'Oou52kNNtseasfmE' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'k4ry9eatH7G8GbDL' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'leML2MDtjeHKDahw' \
    --body '{"description": "LGH8pf2T50qDY0Vo", "groupIds": ["Il2OSHolSnfggvD3", "6xoVf8N96VkqyFMN", "F69iMqhOiTCwDpY1"], "title": "cKkw14CZrBA908DU"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category '0SPZxyWMcCPPevK0' \
    --limit '86' \
    --offset '91' \
    --reportedUserId 'VndQgK3WAmNE4utD' \
    --sortBy '5qHWQNnIuYedf8q9' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"hKhSkAlLasSnS3Th": {}, "TknQRP3QSVKKjIxB": {}, "rm9rdoixtPfFlZ5A": {}}, "category": "EXTENSION", "comment": "4gPcENomNo33Eclg", "extensionCategory": "nqb1rlAGRyP1wa0x", "objectId": "kbybSYtIUZQmntFG", "objectType": "2oQcNNXt9bdcwhhw", "reason": "OCB0jUoXnyYprxNf", "userId": "z2LSgjgcx7hY08sE"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "Hh6WeRifohSGRB4s", "duration": 22, "reason": "njgmJtKtBrtfCqTO", "skipNotif": true, "type": "kXeJynBbXWMZQkXr"}, "deleteChat": true, "extensionActionIds": ["xloh72pvc2dohUSs", "aiqPEb5vBnnnep69", "zppQrMhQclfIhmX3"], "hideContent": false}, "active": true, "category": "EXTENSION", "extensionCategory": "YON6HtIda9sST7Pi", "reason": "kjXn6CBVtGdBGLgc", "threshold": 18}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'HnGDuQ9LnCShPfM5' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "t5UULsifHVKpUEGa", "duration": 38, "reason": "y0AGqvN8aYenfs1y", "skipNotif": false, "type": "edphep4JIbNmGvCw"}, "deleteChat": true, "extensionActionIds": ["4saf9R7bqeCW7sUL", "uaHspJHQYmcQ458T", "sxkVIoQ6s8MY4IIt"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "UGeqIGvpxYZsDD3B", "reason": "gWIg8S1BkJMpJwap", "threshold": 73}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'bNLdfS6ZTY3ZpWK9' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'K6PUH3nJEm8kEvnW' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'yL2e4MpzBiONgurp' \
    --extensionCategory 'g0HIko8sIQgnQopn' \
    --limit '76' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'YsATQSf4jkrvoAux' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category '7yNYBJz6GKYF83AO' \
    --extensionCategory 'dQ2suFW24w9S0d0t' \
    --limit '26' \
    --offset '67' \
    --order 'NM6dJOnVei4xgU3S' \
    --reportedUserId '4PR86uQTWSKj7rND' \
    --sortBy 'yDexkJ3QVabOhR6M' \
    --status '2GRR8MmGThi1SrsT' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'FP4OcrL8BRTKGmfv' \
    --category 'GKR8wlZ15knA2TuW' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'iKgtVPafLn606Qvv' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'husw3nz2f3BhSe6j' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'dljRqoXup8VbWgtN' \
    --limit '67' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'zwiWwDcSWxqJv0pv' \
    --body '{"notes": "V5RZuwGxlVlgxcPs", "status": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'oZyFlTnJrJseLgWZ' \
    --limit '85' \
    --offset '81' \
    --title 'GZyclWpwzBd2eDkL' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"cuHbwQBaN14yNx8Y": {}, "Kzw0XtD340IqMB7R": {}, "eaWXnNhIOtmssjAr": {}}, "category": "EXTENSION", "comment": "tyfIYkFa0uOmKcKS", "extensionCategory": "Y6nfZ4PzlIRFyVmJ", "objectId": "jpu81Ab6vgJhPBmr", "objectType": "ysqgtQQ13BfnWAcK", "reason": "mmjgv8iiG38pr5K9", "userId": "mnBS2EF9A3D5ZzEX"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE