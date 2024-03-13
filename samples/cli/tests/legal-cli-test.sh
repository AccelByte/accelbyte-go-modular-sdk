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
echo "1..64"

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
    --userId 'RpfuBewM' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "YlYZSQV4", "policyId": "N03nc7hT", "policyVersionId": "E4R4RUfn"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "mtkmI1IO", "policyId": "BKXpF8j0", "policyVersionId": "fe0Cf9yB"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "BRWJ2tr6", "policyId": "noqVisJf", "policyVersionId": "6kWTTQXS"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'pn6Qwe8F' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'P0QCgNpv' \
    --limit '36' \
    --offset '43' \
    --policyVersionId 'NhkdmitK' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["qSx7uvB3", "k0oMiGp0", "er4kyVwd"], "affectedCountries": ["wLXFAfEK", "aPHKmhjW", "xkvwnSfM"], "basePolicyName": "Z86X8Cjb", "description": "TePFUAEh", "namespace": "K26ZdaNF", "tags": ["CixfhSJU", "PtuohXRo", "wGKHf6w9"], "typeId": "xBh776Gg"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'IoOUINsQ' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'CrMIw3Fv' \
    --body '{"affectedClientIds": ["kF9icjmH", "FLCTSdL7", "rK3YBaDI"], "affectedCountries": ["W1pjeJXP", "IiHvhytn", "QkAnxKS3"], "basePolicyName": "uF3Cf0eZ", "description": "0jBItevd", "namespace": "ks3XPhua", "tags": ["BTFF6Rjo", "q9wXFC8v", "7fJeZg9M"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '9HyiIs6L' \
    --countryCode '1Tf02TQL' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'eMkGZKIZ' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'aY6AC7F8' \
    --body '{"contentType": "IO2kx27k", "description": "56tGHA4J", "localeCode": "S9g0j0l1"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '4POgUXOe' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'x4LJ0ow1' \
    --body '{"attachmentChecksum": "fYCFTxyT", "attachmentLocation": "uVU2trY3", "attachmentVersionIdentifier": "JtxtVIvI", "contentType": "yhbnqz9n", "description": "9srUiKyi"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'LpnjbyhN' \
    --body '{"contentMD5": "RcD6OTKH", "contentType": "fb1cFt0J"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 's2c05q0u' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["bam0gRGZ", "FqKH04fR", "YcHlDTfx"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZHFmxGio' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'TqL09uMz' \
    --limit '26' \
    --offset '70' \
    --policyVersionId 'rpQDg0cV' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 20 CreatePolicy1
samples/cli/sample-apps Legal createPolicy1 \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["3Md4YnpO", "RRhxaLwc", "zemOdYwI"], "affectedCountries": ["8zKF3PSE", "NHFmCZq8", "G5BcFZhn"], "basePolicyName": "R2farqr6", "description": "LbP9tqBp", "tags": ["a5DXxHXq", "82WJpjjF", "3F47wSfV"], "typeId": "dWPRhF9h"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId '8cqt4q3R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'QSAq0NAU' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["CnN0S4PD", "pPaGNrbq", "Dlo3oWXk"], "affectedCountries": ["OziDQxol", "YzRFvUPA", "Yb6FyHo9"], "basePolicyName": "6PwH8tGc", "description": "WHINlTMO", "tags": ["BVpWa2jH", "GYXlJjUL", "GeAjCPJZ"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId '0W43w4bw' \
    --countryCode 'Jl0L55Ki' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '2NwA6Od7' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '9EgyagbZ' \
    --body '{"contentType": "clwmeDlp", "description": "b89aUIAM", "localeCode": "8blMSmlc"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId '0TxrKNNm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'X9TMkyR5' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "UrBwKpk0", "attachmentLocation": "biXJLpiK", "attachmentVersionIdentifier": "ZbT9ch3Q", "contentType": "ldof6g70", "description": "86GOgyud"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'YzjgrBgi' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "lKcxWJeR", "contentType": "ULUG08Rr"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'aNGPohJE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'JhBPdgQF' \
    --body '{"description": "ZdSlWbkY", "displayVersion": "XCuKN6bv", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'd794rc6R' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'iKeMl3yb' \
    --body '{"description": "BAQKJN1O", "isDefaultOpted": false, "isMandatory": true, "policyName": "vIhCGaad", "readableId": "6GK7ZGLX", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'ZA0uHNLr' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'ziuObfBr' \
    --versionId 'K6ZTC3k7' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'xzNXPZSu' \
    --body '{"description": "pSdL7YDp", "displayVersion": "sdR6nMJ2", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '53' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'nF4Po7RC' \
    --publisherUserId '2tLUmMxD' \
    --clientId 'RRNp3AqM' \
    --countryCode 'kKaIpXwK' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6xU7hJEx", "policyId": "gePSdSQ0", "policyVersionId": "cfF3k8uI"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "EMSWdKHr", "policyId": "flCkVoi4", "policyVersionId": "aQXwVbdX"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Q0ozvlUc", "policyId": "8QD9iMoj", "policyVersionId": "M0X6emWQ"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'uhD54D6M' \
    --publisherUserId 'nICugegu' \
    --clientId 'bB4ulcpJ' \
    --countryCode 'ytPiOiNI' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'vzdCPABw' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'mUUJtQLK' \
    --body '{"description": "UxiFldf1", "displayVersion": "sddOVRUX", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'r8i8k80a' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'VUdDZlyq' \
    --body '{"description": "leRkSB8W", "isDefaultOpted": true, "isMandatory": false, "policyName": "B5us5j24", "readableId": "xc8nMtNP", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'nbVHjXpj' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'efNi8CCb' \
    --versionId 'DiGkO3GJ' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'vgpqa0Iw' \
    --body '{"description": "O8I5Itpi", "displayVersion": "2kP5ch6x", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '5' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'Mz2cPJfT' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'EL4UeTXL' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "SAjgrbGE", "policyId": "3DcaHmTx", "policyVersionId": "h9r0OXK4"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OAdZZdxc", "policyId": "bgwbA2EC", "policyVersionId": "wOs0OJVk"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "RLgDMSyT", "policyId": "XzAzyi6A", "policyVersionId": "wX4mMWKZ"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'uAyB2X2P' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "zjVbmXTb", "policyId": "NgrnA5FI", "policyVersionId": "zMJMpZNk"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "c4S09Ccp", "policyId": "emKksalY", "policyVersionId": "DkPgk7rJ"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "iNwfdaWQ", "policyId": "HHF9CwbT", "policyVersionId": "F5HP8XPR"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
eval_tap 0 56 'IndirectBulkAcceptVersionedPolicy1 # SKIP deprecated' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'CqDJkycB' \
    --countryCode 'fX2T7xS0' \
    --namespace $AB_NAMESPACE \
    --userId 'STF4SFH5' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'OnSjRlF2' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'vqo7Mepk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'mjqqL9Bv' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '31s4DirJ' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'tzHWcP6b' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'NUavIq9k' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'WoEQr2Vu' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE