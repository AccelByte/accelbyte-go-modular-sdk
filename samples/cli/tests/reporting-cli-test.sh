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
    --body '{"actionId": "3XEfTFDG", "actionName": "Vvk4JXml", "eventName": "onwO80KX"}' \
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
    --body '{"extensionCategory": "jAFPPgQw", "extensionCategoryName": "StsVv3bT", "serviceSource": "XNPImWWg"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "LUNFCKan", "maxReportPerTicket": 14, "name": "KTI4MgBF"}, {"extensionCategory": "OCdUiUEa", "maxReportPerTicket": 36, "name": "psDcXxmq"}, {"extensionCategory": "oIKHXzje", "maxReportPerTicket": 13, "name": "nStBLbNb"}], "timeInterval": 62, "userMaxReportPerTimeInterval": 1}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["iNTbO8Ni", "ti8UjVrt", "fFUOBTw8"], "title": "rr0l6rZN"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'qiIXOT1Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'QkzzAHWC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId '2FIosfo3' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["MOcXoUs8", "UbiHrYAz", "GdN8YfqH"], "title": "14QkmgOo"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'Qi8bro8T' \
    --limit '91' \
    --offset '57' \
    --title 'MkhHD3QR' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5padc7Dq", "groupIds": ["AV4z2MAI", "dBHWm6qG", "l8jIw388"], "title": "inn5OyOP"}' \
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
    --extensionCategory 'SSDu7y9x' \
    --category 'paTlZrpE' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '89R3WS2V' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'YxjSx1nJ' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId '4y8qIJEG' \
    --body '{"description": "a4E5trV4", "groupIds": ["QM36xPSz", "SYufrhdI", "mCKuI7fa"], "title": "31rrdkGj"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'dvSr2Sjk' \
    --limit '51' \
    --offset '41' \
    --reportedUserId '8wIQvgeG' \
    --sortBy 'ANAq7JKX' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"2Ikf1i6p": {}, "gGnc5RDI": {}, "gdapWXWR": {}}, "category": "USER", "comment": "pBPzUKLS", "extensionCategory": "Rm1PQj9D", "objectId": "QNcZaW86", "objectType": "9PV8JIIa", "reason": "IpKkMM4W", "userId": "cnKnWTAh"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"autoResolve": false, "banAccount": {"comment": "mLxxovlA", "duration": 81, "reason": "BK4DtL7t", "skipNotif": false, "type": "CdcZHpqW"}, "deleteChat": true, "extensionActionIds": ["BDcJFshD", "GJdxDawM", "xopS3foK"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "5pw1H4Bz", "reason": "6SMYZOed", "threshold": 11}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'wNLAxyP5' \
    --body '{"action": "HideContent", "actions": {"autoResolve": false, "banAccount": {"comment": "7k8c6ueB", "duration": 22, "reason": "L8lcvmtx", "skipNotif": false, "type": "owvtOBR6"}, "deleteChat": true, "extensionActionIds": ["Bcc3SQt7", "LDz415pl", "IIJ88f3z"], "hideContent": true}, "active": false, "category": "CHAT", "extensionCategory": "CPzBF3NN", "reason": "Eo5ZbvbT", "threshold": 15}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'Re4ys4ml' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'AgDjKbw2' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'W572QVCD' \
    --extensionCategory 'XCWBfCsK' \
    --limit '85' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'aMBxgEl3' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category '60r05VbC' \
    --extensionCategory 'newEbHJP' \
    --limit '75' \
    --offset '27' \
    --order 'JWxUMA2U' \
    --reportedUserId 'hvZx0CuE' \
    --sortBy 'WT8UjB9h' \
    --status 'nmncPtRM' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'cWEMADST' \
    --category 'xWUMqWM9' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'ELe9AXZL' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'yrBc04Wj' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'kdrFdNFS' \
    --limit '61' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'lHREZLZh' \
    --body '{"notes": "XQpZFDlb", "status": "AUTO_MODERATED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'QdEsfg2i' \
    --limit '64' \
    --offset '12' \
    --title '2iwJY6Vh' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"dycXJXsE": {}, "CUjbrnZB": {}, "c73KhQ0x": {}}, "category": "EXTENSION", "comment": "S6zAv2Qn", "extensionCategory": "AwdFeCIb", "objectId": "ulki6B5Y", "objectType": "iDTxdXNP", "reason": "aWkVUFDF", "userId": "Fw9iZZLJ"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE