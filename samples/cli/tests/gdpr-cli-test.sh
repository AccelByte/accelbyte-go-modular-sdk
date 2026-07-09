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
echo "1..49"

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

#- 2 AdminGetListDeletionDataRequest
samples/cli/sample-apps Gdpr adminGetListDeletionDataRequest \
    --namespace $AB_NAMESPACE \
    --after 'HBCFdbbv' \
    --before 'MUoElzFh' \
    --limit '17' \
    --offset '40' \
    --requestDate 'SP7ZnxNE' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetListDeletionDataRequest' test.out

#- 3 GetAdminEmailConfiguration
samples/cli/sample-apps Gdpr getAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 3 'GetAdminEmailConfiguration' test.out

#- 4 UpdateAdminEmailConfiguration
samples/cli/sample-apps Gdpr updateAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --body '["FJmhNIkJ", "j1VYd3HH", "lWtWW8UQ"]' \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
samples/cli/sample-apps Gdpr saveAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --body '["HvbPPJN0", "fwSaDD5T", "cIc4cb2Z"]' \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
samples/cli/sample-apps Gdpr deleteAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --emails '["wG9Aj8ZN", "3w2v5ckI", "zlOySND9"]' \
    > test.out 2>&1
eval_tap $? 6 'DeleteAdminEmailConfiguration' test.out

#- 7 AdminGetPlatformAccountClosureClients
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureClients \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminGetPlatformAccountClosureClients' test.out

#- 8 AdminValidateXboxBPCertFile
samples/cli/sample-apps Gdpr adminValidateXboxBPCertFile \
    --namespace $AB_NAMESPACE \
    --body '{"bpCert": "Y5hfWDWY", "password": "fAMVbJ1o"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminValidateXboxBPCertFile' test.out

#- 9 AdminGetPlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'IUkIJXMu' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetPlatformAccountClosureClient' test.out

#- 10 AdminUpdatePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'LVyuEXLU' \
    --body '{"bpCert": "WcUKd7YL", "bpCertFileName": "zkRFlj3b", "clientId": "dLTSnCJH", "password": "KsNaLP6p", "publisherKey": "PI3Y04co", "sandboxId": "x2X6fRQH", "secret": "QeldgBbQ"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdatePlatformAccountClosureClient' test.out

#- 11 AdminDeletePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminDeletePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'ZVBcbqXl' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeletePlatformAccountClosureClient' test.out

#- 12 AdminMockPlatformAccountClosureData
samples/cli/sample-apps Gdpr adminMockPlatformAccountClosureData \
    --namespace $AB_NAMESPACE \
    --platform 'nmILXneL' \
    --body '{"platformUserId": "tzk4eQEz", "sandbox": "dNnbl9kI", "startImmediately": true}' \
    > test.out 2>&1
eval_tap $? 12 'AdminMockPlatformAccountClosureData' test.out

#- 13 AdminGetListPersonalDataRequest
samples/cli/sample-apps Gdpr adminGetListPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '48' \
    --requestDate '72z2qi7C' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetListPersonalDataRequest' test.out

#- 14 AdminGetServicesConfiguration
samples/cli/sample-apps Gdpr adminGetServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminGetServicesConfiguration' test.out

#- 15 AdminUpdateServicesConfiguration
samples/cli/sample-apps Gdpr adminUpdateServicesConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"services": [{"extendConfig": {"appName": "J4Ckmggk", "namespace": "IZd2yvn0"}, "id": "HLcTDpbz", "package": "6dqk322n", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "gwRLVUr7"}, "type": "SERVICE"}, {"extendConfig": {"appName": "HOaBum0D", "namespace": "8Wq7jsUP"}, "id": "cSI3urSC", "package": "6DERQFsa", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "c1MLeZXr"}, "type": "SERVICE"}, {"extendConfig": {"appName": "PdQwcmXj", "namespace": "6DISbwXr"}, "id": "l9xRwhM6", "package": "nQdgDfU8", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "gPk0fqmo"}, "type": "EXTEND"}]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminUpdateServicesConfiguration' test.out

#- 16 AdminResetServicesConfiguration
samples/cli/sample-apps Gdpr adminResetServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminResetServicesConfiguration' test.out

#- 17 AdminGetPlatformAccountClosureServicesConfiguration
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlatformAccountClosureServicesConfiguration' test.out

#- 18 AdminUpdatePlatformAccountClosureServicesConfiguration
samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureServicesConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"services": [{"extendConfig": {"appName": "HcWj93XC", "namespace": "rN1xJ0I5"}, "id": "N2Oqlakc", "package": "1Xt5Xn2c", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "dcLroDwv"}, "type": "SERVICE"}, {"extendConfig": {"appName": "PqexZBVl", "namespace": "7JtAuCwF"}, "id": "YZmJVoCU", "package": "HEAqRjzd", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "d0OwZuJ9"}, "type": "EXTEND"}, {"extendConfig": {"appName": "Rs0vg1qS", "namespace": "sEIIka7S"}, "id": "wieB9X1Y", "package": "SVmmnfk3", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "QwgXILm9"}, "type": "SERVICE"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdatePlatformAccountClosureServicesConfiguration' test.out

#- 19 AdminResetPlatformAccountClosureServicesConfiguration
samples/cli/sample-apps Gdpr adminResetPlatformAccountClosureServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminResetPlatformAccountClosureServicesConfiguration' test.out

#- 20 AdminGetUserPlatformAccountClosureHistories
samples/cli/sample-apps Gdpr adminGetUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '50' \
    --platform 'aivSDvBb' \
    --userId '7ClGdaLj' \
    > test.out 2>&1
eval_tap $? 20 'AdminGetUserPlatformAccountClosureHistories' test.out

#- 21 AdminGetUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminGetUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'mhKQ6W50' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserAccountDeletionRequest' test.out

#- 22 AdminSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'bmAfadl5' \
    > test.out 2>&1
eval_tap $? 22 'AdminSubmitUserAccountDeletionRequest' test.out

#- 23 AdminCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'CRMcju5L' \
    > test.out 2>&1
eval_tap $? 23 'AdminCancelUserAccountDeletionRequest' test.out

#- 24 AdminGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr adminGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'EmlFFSZJ' \
    --limit '41' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserPersonalDataRequests' test.out

#- 25 AdminRequestDataRetrieval
samples/cli/sample-apps Gdpr adminRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'e4TVovG8' \
    --password 'FWX7koeS' \
    > test.out 2>&1
eval_tap $? 25 'AdminRequestDataRetrieval' test.out

#- 26 AdminCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr adminCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'Tt5euHMZ' \
    --userId 'jIJSY9jA' \
    > test.out 2>&1
eval_tap $? 26 'AdminCancelUserPersonalDataRequest' test.out

#- 27 AdminGeneratePersonalDataURL
samples/cli/sample-apps Gdpr adminGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'n6I52WYW' \
    --userId 'HSj8WV3V' \
    --password 'ixMveoSl' \
    > test.out 2>&1
eval_tap $? 27 'AdminGeneratePersonalDataURL' test.out

#- 28 PublicSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'tTR4neix' \
    --languageTag '6shQQ10l' \
    --password 'MAvZDnCb' \
    > test.out 2>&1
eval_tap $? 28 'PublicSubmitUserAccountDeletionRequest' test.out

#- 29 PublicCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'TcJHtglt' \
    > test.out 2>&1
eval_tap $? 29 'PublicCancelUserAccountDeletionRequest' test.out

#- 30 PublicGetUserAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetUserAccountDeletionStatus \
    --namespace $AB_NAMESPACE \
    --userId '3IbYjNs6' \
    > test.out 2>&1
eval_tap $? 30 'PublicGetUserAccountDeletionStatus' test.out

#- 31 PublicGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr publicGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'vmlYzKc4' \
    --limit '44' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetUserPersonalDataRequests' test.out

#- 32 PublicRequestDataRetrieval
samples/cli/sample-apps Gdpr publicRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'sJpLRtYH' \
    --languageTag '1QQPi4hl' \
    --password 'NZW9QSPT' \
    > test.out 2>&1
eval_tap $? 32 'PublicRequestDataRetrieval' test.out

#- 33 PublicCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr publicCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'ya3OecGZ' \
    --userId 'GDiiSGmu' \
    > test.out 2>&1
eval_tap $? 33 'PublicCancelUserPersonalDataRequest' test.out

#- 34 PublicGeneratePersonalDataURL
samples/cli/sample-apps Gdpr publicGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'I987q9pB' \
    --userId 'ECN3bsKL' \
    --password 'nJgfcldS' \
    > test.out 2>&1
eval_tap $? 34 'PublicGeneratePersonalDataURL' test.out

#- 35 PublicSubmitMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitMyAccountDeletionRequest \
    --platformId 'xzc9okht' \
    --platformToken 'IEqcjfdP' \
    > test.out 2>&1
eval_tap $? 35 'PublicSubmitMyAccountDeletionRequest' test.out

#- 36 PublicCancelMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelMyAccountDeletionRequest \
    > test.out 2>&1
eval_tap $? 36 'PublicCancelMyAccountDeletionRequest' test.out

#- 37 PublicGetMyAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetMyAccountDeletionStatus \
    > test.out 2>&1
eval_tap $? 37 'PublicGetMyAccountDeletionStatus' test.out

#- 38 PublicSubmitMyHeadlessDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitMyHeadlessDeletionRequest \
    > test.out 2>&1
eval_tap $? 38 'PublicSubmitMyHeadlessDeletionRequest' test.out

#- 39 PublicSubmitMyHeadlessPersonalDataRequest
samples/cli/sample-apps Gdpr publicSubmitMyHeadlessPersonalDataRequest \
    --email '9n3bSXSV' \
    --languageTag 'C4IKcMZj' \
    > test.out 2>&1
eval_tap $? 39 'PublicSubmitMyHeadlessPersonalDataRequest' test.out

#- 40 PublicGenerateMyHeadlessPersonalDataURL
samples/cli/sample-apps Gdpr publicGenerateMyHeadlessPersonalDataURL \
    --requestDate 'pDCSMaSH' \
    > test.out 2>&1
eval_tap $? 40 'PublicGenerateMyHeadlessPersonalDataURL' test.out

#- 41 PublicGetMyPersonalDataRequests
samples/cli/sample-apps Gdpr publicGetMyPersonalDataRequests \
    > test.out 2>&1
eval_tap $? 41 'PublicGetMyPersonalDataRequests' test.out

#- 42 PublicSubmitMyPersonalDataRequest
samples/cli/sample-apps Gdpr publicSubmitMyPersonalDataRequest \
    --email 'gOnNMGvA' \
    --languageTag 'kRi9Uffx' \
    --platformId '5IVMNjAS' \
    --platformToken '6dw1g9Kb' \
    > test.out 2>&1
eval_tap $? 42 'PublicSubmitMyPersonalDataRequest' test.out

#- 43 PublicCancelMyPersonalDataRequest
samples/cli/sample-apps Gdpr publicCancelMyPersonalDataRequest \
    --requestDate 'q1v0wRTs' \
    > test.out 2>&1
eval_tap $? 43 'PublicCancelMyPersonalDataRequest' test.out

#- 44 S2SGetListFinishedAccountDeletionRequest
samples/cli/sample-apps Gdpr s2sGetListFinishedAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --end '131MlR44' \
    --start 'D5tBfsVx' \
    > test.out 2>&1
eval_tap $? 44 'S2SGetListFinishedAccountDeletionRequest' test.out

#- 45 S2SGetListFinishedPersonalDataRequest
samples/cli/sample-apps Gdpr s2sGetListFinishedPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --end 'qAqkIr73' \
    --start 'ykDO8bVE' \
    > test.out 2>&1
eval_tap $? 45 'S2SGetListFinishedPersonalDataRequest' test.out

#- 46 S2SGetDataRequestByRequestID
samples/cli/sample-apps Gdpr s2sGetDataRequestByRequestID \
    --namespace $AB_NAMESPACE \
    --requestId 'KlEXg88b' \
    > test.out 2>&1
eval_tap $? 46 'S2SGetDataRequestByRequestID' test.out

#- 47 S2SSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr s2sSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId '4wtdcaST' \
    > test.out 2>&1
eval_tap $? 47 'S2SSubmitUserAccountDeletionRequest' test.out

#- 48 S2SRequestDataRetrieval
samples/cli/sample-apps Gdpr s2sRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'ViIUogaD' \
    > test.out 2>&1
eval_tap $? 48 'S2SRequestDataRetrieval' test.out

#- 49 S2SGeneratePersonalDataURL
samples/cli/sample-apps Gdpr s2sGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate '8IAzHWEx' \
    --userId 'tG7IK2L0' \
    > test.out 2>&1
eval_tap $? 49 'S2SGeneratePersonalDataURL' test.out


rm -f "tmp.dat"

exit $EXIT_CODE