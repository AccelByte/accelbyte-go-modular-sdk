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
echo "1..40"

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
    --after 'EZ9npLS0' \
    --before 'SXtlPj2X' \
    --limit '78' \
    --offset '25' \
    --requestDate 'UdPyVTA3' \
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
    --body '["0YnwKpZ5", "J2MJvMuy", "iiX385Hz"]' \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
samples/cli/sample-apps Gdpr saveAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --body '["twQEnyqa", "oqSMwSuF", "CQq78vSR"]' \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
samples/cli/sample-apps Gdpr deleteAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --emails '["JSJnUllA", "b6nrn2BW", "iOMKW9is"]' \
    > test.out 2>&1
eval_tap $? 6 'DeleteAdminEmailConfiguration' test.out

#- 7 AdminGetPlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform '1WqmsaiZ' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetPlatformAccountClosureClient' test.out

#- 8 AdminUpdatePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'e4fKZkNH' \
    --body '{"clientId": "NWXoUfqO", "secret": "UGbcjDL0"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminUpdatePlatformAccountClosureClient' test.out

#- 9 AdminDeletePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminDeletePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'SyNHpbEe' \
    > test.out 2>&1
eval_tap $? 9 'AdminDeletePlatformAccountClosureClient' test.out

#- 10 AdminGetListPersonalDataRequest
samples/cli/sample-apps Gdpr adminGetListPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '25' \
    --requestDate 'XTDfau7v' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetListPersonalDataRequest' test.out

#- 11 AdminGetServicesConfiguration
samples/cli/sample-apps Gdpr adminGetServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetServicesConfiguration' test.out

#- 12 AdminUpdateServicesConfiguration
samples/cli/sample-apps Gdpr adminUpdateServicesConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"services": [{"extendConfig": {"appName": "ZJP4KE95", "namespace": "db0TiOoj"}, "id": "eioFFxXV", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "fDPocq2i"}, "type": "EXTEND"}, {"extendConfig": {"appName": "sLSpEzQR", "namespace": "XdnKGYmA"}, "id": "n9tfwICY", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "TAXjSOzj"}, "type": "SERVICE"}, {"extendConfig": {"appName": "m5kDVbWQ", "namespace": "yxUnpi8Z"}, "id": "XeDYrXBS", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "8Ta5zWS7"}, "type": "EXTEND"}]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateServicesConfiguration' test.out

#- 13 AdminResetServicesConfiguration
samples/cli/sample-apps Gdpr adminResetServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminResetServicesConfiguration' test.out

#- 14 AdminGetPlatformAccountClosureServicesConfiguration
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminGetPlatformAccountClosureServicesConfiguration' test.out

#- 15 AdminUpdatePlatformAccountClosureServicesConfiguration
samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureServicesConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"services": [{"extendConfig": {"appName": "XAMOHxDA", "namespace": "epuYNsO2"}, "id": "fxJ13noJ", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "CRfYNSGi"}, "type": "EXTEND"}, {"extendConfig": {"appName": "66sM7TDw", "namespace": "IMg1A0PO"}, "id": "qaAC2JFX", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "o3tsEDRe"}, "type": "SERVICE"}, {"extendConfig": {"appName": "A1Rb8Jsl", "namespace": "xTVR4HxY"}, "id": "boYOXWbw", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "iMODYS38"}, "type": "EXTEND"}]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminUpdatePlatformAccountClosureServicesConfiguration' test.out

#- 16 AdminResetPlatformAccountClosureServicesConfiguration
samples/cli/sample-apps Gdpr adminResetPlatformAccountClosureServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminResetPlatformAccountClosureServicesConfiguration' test.out

#- 17 AdminGetUserPlatformAccountClosureHistories
samples/cli/sample-apps Gdpr adminGetUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '3' \
    --platform '94Soam0K' \
    --userId '3lFgpmde' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetUserPlatformAccountClosureHistories' test.out

#- 18 AdminGetUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminGetUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'IA4Tmw8H' \
    > test.out 2>&1
eval_tap $? 18 'AdminGetUserAccountDeletionRequest' test.out

#- 19 AdminSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'UjWscu6Z' \
    > test.out 2>&1
eval_tap $? 19 'AdminSubmitUserAccountDeletionRequest' test.out

#- 20 AdminCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'wZbHAlTq' \
    > test.out 2>&1
eval_tap $? 20 'AdminCancelUserAccountDeletionRequest' test.out

#- 21 AdminGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr adminGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'a76Dzynz' \
    --limit '72' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserPersonalDataRequests' test.out

#- 22 AdminRequestDataRetrieval
samples/cli/sample-apps Gdpr adminRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'tOnwMb6J' \
    --password 'f9jOcDi7' \
    > test.out 2>&1
eval_tap $? 22 'AdminRequestDataRetrieval' test.out

#- 23 AdminCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr adminCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate '8v8ygaHW' \
    --userId 'BIkehjLe' \
    > test.out 2>&1
eval_tap $? 23 'AdminCancelUserPersonalDataRequest' test.out

#- 24 AdminGeneratePersonalDataURL
samples/cli/sample-apps Gdpr adminGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'ijC6NxwU' \
    --userId 'inR2llBX' \
    --password 'NW0ARrTz' \
    > test.out 2>&1
eval_tap $? 24 'AdminGeneratePersonalDataURL' test.out

#- 25 PublicSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'j0MAdCdh' \
    --languageTag 'lI4BPTCD' \
    --password 'KEKxrc5B' \
    > test.out 2>&1
eval_tap $? 25 'PublicSubmitUserAccountDeletionRequest' test.out

#- 26 PublicCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId '8RbOJfrX' \
    > test.out 2>&1
eval_tap $? 26 'PublicCancelUserAccountDeletionRequest' test.out

#- 27 PublicGetUserAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetUserAccountDeletionStatus \
    --namespace $AB_NAMESPACE \
    --userId 'k5gmdS5M' \
    > test.out 2>&1
eval_tap $? 27 'PublicGetUserAccountDeletionStatus' test.out

#- 28 PublicGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr publicGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'ebSoKCa9' \
    --limit '44' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 28 'PublicGetUserPersonalDataRequests' test.out

#- 29 PublicRequestDataRetrieval
samples/cli/sample-apps Gdpr publicRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'mBHA8n3g' \
    --languageTag 'tg1910sQ' \
    --password 'N63bhpVN' \
    > test.out 2>&1
eval_tap $? 29 'PublicRequestDataRetrieval' test.out

#- 30 PublicCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr publicCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'ZRbBFOmD' \
    --userId 'UTkQyoIS' \
    > test.out 2>&1
eval_tap $? 30 'PublicCancelUserPersonalDataRequest' test.out

#- 31 PublicGeneratePersonalDataURL
samples/cli/sample-apps Gdpr publicGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'CoowTDBj' \
    --userId 'kQrpBKsI' \
    --password 'mLp4K4Kb' \
    > test.out 2>&1
eval_tap $? 31 'PublicGeneratePersonalDataURL' test.out

#- 32 PublicSubmitMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitMyAccountDeletionRequest \
    --platformId 'RJgGrWVI' \
    --platformToken 'GCweHACt' \
    > test.out 2>&1
eval_tap $? 32 'PublicSubmitMyAccountDeletionRequest' test.out

#- 33 PublicCancelMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelMyAccountDeletionRequest \
    > test.out 2>&1
eval_tap $? 33 'PublicCancelMyAccountDeletionRequest' test.out

#- 34 PublicGetMyAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetMyAccountDeletionStatus \
    > test.out 2>&1
eval_tap $? 34 'PublicGetMyAccountDeletionStatus' test.out

#- 35 S2SGetListFinishedAccountDeletionRequest
samples/cli/sample-apps Gdpr s2sGetListFinishedAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --end 'WfMUciUI' \
    --start 'g3NKvrtu' \
    > test.out 2>&1
eval_tap $? 35 'S2SGetListFinishedAccountDeletionRequest' test.out

#- 36 S2SGetListFinishedPersonalDataRequest
samples/cli/sample-apps Gdpr s2sGetListFinishedPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --end 'WiWrXF0B' \
    --start 'D7OUUfyM' \
    > test.out 2>&1
eval_tap $? 36 'S2SGetListFinishedPersonalDataRequest' test.out

#- 37 S2SGetDataRequestByRequestID
samples/cli/sample-apps Gdpr s2sGetDataRequestByRequestID \
    --namespace $AB_NAMESPACE \
    --requestId 'L3JHObfd' \
    > test.out 2>&1
eval_tap $? 37 'S2SGetDataRequestByRequestID' test.out

#- 38 S2SSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr s2sSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'svdEbsll' \
    > test.out 2>&1
eval_tap $? 38 'S2SSubmitUserAccountDeletionRequest' test.out

#- 39 S2SRequestDataRetrieval
samples/cli/sample-apps Gdpr s2sRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId '1NwvrJry' \
    > test.out 2>&1
eval_tap $? 39 'S2SRequestDataRetrieval' test.out

#- 40 S2SGeneratePersonalDataURL
samples/cli/sample-apps Gdpr s2sGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'Biwllpy0' \
    --userId 'F31xZKg0' \
    > test.out 2>&1
eval_tap $? 40 'S2SGeneratePersonalDataURL' test.out


rm -f "tmp.dat"

exit $EXIT_CODE