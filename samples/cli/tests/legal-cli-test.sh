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
echo "1..75"

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

#- 2 ChangePreferenceConsent
samples/cli/sample-apps Legal changePreferenceConsent \
    --namespace $AB_NAMESPACE \
    --userId 'Leke2IkH' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "uu6QnXNw", "policyId": "1jFnnUrD", "policyVersionId": "Gy7dFVuR"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Z54LGt3T", "policyId": "UYnwTcMV", "policyVersionId": "5ox5Ch7m"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OqyYHSMV", "policyId": "Uxuk6b36", "policyVersionId": "8d414bBF"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'ZfuvwWHy' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '9q8HzOM5' \
    --limit '36' \
    --offset '5' \
    --policyVersionId 'PpPhIR7M' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["EQAq4AP7", "TYBaQYW1", "SCsLMBYz"], "affectedCountries": ["px9dcePG", "yvEW2IOS", "c8gobTaP"], "basePolicyName": "VBrgPkMG", "countryGroupName": "TEK0Mnhe", "countryType": "COUNTRY", "description": "bYdlLnOL", "isHidden": true, "isHiddenPublic": false, "namespace": "CR73ZFmX", "tags": ["gCAVpAXb", "qngQNrIp", "jygFcXyw"], "typeId": "w4zSKc7b"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'AaSdiRKA' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'UoXumGJt' \
    --body '{"affectedClientIds": ["ZjHkgzxn", "mfodtH34", "xY6iOC0c"], "affectedCountries": ["WwXMSrda", "GtAk99i7", "k5mjai2a"], "basePolicyName": "d2Nfwq1c", "countryGroupName": "WwZ3j4pF", "countryType": "COUNTRY", "description": "3T1Lgdtm", "isHidden": false, "isHiddenPublic": false, "namespace": "bIAQPcu9", "tags": ["jGaWP4MI", "kODXnXAp", "wo5rUDFO"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'ja98xjHP' \
    --countryCode '0FkVdW1d' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'if4H5e6b' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId '8muC2Cn1' \
    --body '{"contentType": "SVuSB9C4", "description": "5AZsGdCD", "localeCode": "Ren8tafN"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'Jssa3LZC' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'ge78pnj2' \
    --body '{"attachmentChecksum": "eu4DM14I", "attachmentLocation": "yDaJM2K6", "attachmentVersionIdentifier": "ViDl64SE", "contentType": "H9GH3sAD", "description": "umLmgd7l"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'fHOXVp2F' \
    --body '{"contentMD5": "WwTufW8z", "contentType": "VG2BnC5Q"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'ixevQ4vJ' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["9kXlikHN", "GRRGrCTx", "RsIBsKz5"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'tj4Bxrr4' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'z9tmaLN5' \
    --limit '35' \
    --offset '67' \
    --policyVersionId 'DAC9hqbd' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'sOIa0bbe' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end '5OTQtVg5' \
    --policyVersionId '9gyLTjTy' \
    --start 'aU3EGHfn' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy1
samples/cli/sample-apps Legal createPolicy1 \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["uKDN2otK", "4gJ9zH6D", "1PbY08IR"], "affectedCountries": ["ZKFFHdN9", "KeyqxR5S", "gIL2ahFa"], "basePolicyName": "rhh4EUk7", "countryGroupName": "69IdJy2u", "countryType": "COUNTRY", "description": "RO601wG4", "isHidden": false, "isHiddenPublic": false, "tags": ["2NuD5OTh", "xOxWw29i", "ajWttJBY"], "typeId": "LAUC5myG"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'VhmOZa1C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'BVrCrtnC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'JT4jLyI5' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["37Tx9bsk", "6FiqeImx", "l65uapNA"], "affectedCountries": ["KkdKcE7r", "YnvmQDMO", "ljwymrCr"], "basePolicyName": "Wa003wnO", "countryGroupName": "Ota9edjM", "countryType": "COUNTRY", "description": "BY4dM27W", "isHidden": false, "isHiddenPublic": true, "tags": ["uYklP5Gw", "QkDkJK88", "dTHnWK41"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId '7jTlXlha' \
    --countryCode '8takL4qp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId '2QrUpbcb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'OJPgjh9x' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["qsZcix26", "eOFeKzj9", "jVdOvd3F"], "countryCode": "H4GzUb83", "countryGroupName": "sMt9YOz0", "countryType": "COUNTRY", "description": "rg7bT3kG", "isDefaultSelection": false, "isMandatory": false, "policyName": "pdTxoqbt", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'wAeU8EJL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'l3ioER6R' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Uj4MrZKH' \
    --body '{"contentType": "XAQH4k6R", "description": "0DPceBGQ", "localeCode": "uRUrlFAV"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'nYE8E1TT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'ccfWveWg' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "38WzB6Hn", "attachmentLocation": "jemlaRiS", "attachmentVersionIdentifier": "jIt8EQhq", "contentType": "ck8SLUzt", "description": "KUd6P1vr"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'Ggl9S4ny' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "BVpjGFuU", "contentType": "Bds5BgKi"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'U79fnJKa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'eseOM6ya' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '8Q42QzMQ' \
    --body '{"description": "U1HJsuIf", "displayVersion": "hkTUnfej", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'SWW5dmv2' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'EenVsVP1' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'rwcRfhX2' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'l5vgZlNv' \
    --body '{"countries": ["sSggrXY8", "B7N2jpq7", "NFvaUGWA"], "countryGroupName": "3GDwuicZ", "description": "LkB83879", "isDefaultOpted": false, "isMandatory": false, "policyName": "RMN5pEmq", "readableId": "16stoqXj", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'MKSI1CuN' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'cOXusbO3' \
    --versionId '9blSBct5' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'HK9XDrv0' \
    --body '{"description": "R5Im9YBu", "displayVersion": "z3ixRtGg", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '21' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'HHx40fg6' \
    --publisherUserId 'Fax2xAwS' \
    --clientId 'xVSg9LBb' \
    --countryCode 'qfPgHGvh' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "w9O57Gsj", "policyId": "PPmOjkun", "policyVersionId": "p8M8976V"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "U79TgICa", "policyId": "3dcoRYIE", "policyVersionId": "TYPAg5s2"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "psPdcBDF", "policyId": "8YPqwhzR", "policyVersionId": "dxR6x7KY"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'zwURuvx1' \
    --publisherUserId '36VbFtO3' \
    --clientId '7fZVKpy0' \
    --countryCode 'ckBdD0FT' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode '2KxIMkiv' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'y7KJNxj5' \
    --body '{"description": "mkDrYEc9", "displayVersion": "T5AUHrFE", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'VIz6U3eL' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'oEPwHYg5' \
    --body '{"countries": ["rgywCJIZ", "uHqvNRO1", "NvcnPwrV"], "countryGroupName": "MeAHXFVh", "description": "hiNINLfs", "isDefaultOpted": true, "isMandatory": false, "policyName": "CSQPd5lR", "readableId": "smu2JmPR", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'DaV1SX98' \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'Wsc3t9bT' \
    --versionId 'lU1gsUfe' \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'bjL8JU0N' \
    --body '{"description": "hKJbKOcK", "displayVersion": "FaOuu1HF", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '47' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '3pfaErju' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'Y8kQX5y2' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "RxL9QEW5", "policyId": "xOUEMFzz", "policyVersionId": "26E6mMDI"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "aWfbyB2D", "policyId": "KhnJRo6M", "policyVersionId": "J45Teis2"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "YvU8lZPJ", "policyId": "pnW8YJji", "policyVersionId": "MikFr7Hv"}]' \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'ZEDARGXX' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3qs7cMzc", "policyId": "rbcsvr8F", "policyVersionId": "NiCMdcoj"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "XFUZImVW", "policyId": "1hSyq5sz", "policyVersionId": "OB6fg4A0"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uBbZDi4Z", "policyId": "ReRMyHQ8", "policyVersionId": "9sfm6uyh"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkAcceptVersionedPolicy' test.out

#- 64 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 64 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 65 IndirectBulkAcceptVersionedPolicy1
eval_tap 0 65 'IndirectBulkAcceptVersionedPolicy1 # SKIP deprecated' test.out

#- 66 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'RetrieveEligibilitiesPublic' test.out

#- 67 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'h0vmt56y' \
    --countryCode 'MXVXOLtn' \
    --namespace $AB_NAMESPACE \
    --userId 'LbWNQz1H' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'yuJ8ddFd' \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'VjUIRonm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'mTsBCjki' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'eQTJ63kC' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'vuLYS9dS' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'tdKs1Geb' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'C8ofqlrv' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic1
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic1 \
    --countryCode 'w99B7mGz' \
    --namespace $AB_NAMESPACE \
    --clientId 'MqpLSIlM' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE