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
    --userId 'SuuddYYr' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kCnVUCcy", "policyId": "Ex3ozVvO", "policyVersionId": "dBxg9OQM"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CR4l4quZ", "policyId": "bVRMH4kT", "policyVersionId": "wewVnJ9d"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "5jBVYfTg", "policyId": "9o3MOcqI", "policyVersionId": "rVGaCmGr"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId '8hZqLDdu' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'sXJNofXp' \
    --limit '43' \
    --offset '43' \
    --policyVersionId 'B9k2VDUE' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["HpKRlSwP", "oqSyp66T", "HeDJvDZm"], "affectedCountries": ["rzad2rQZ", "x36U1JI2", "tI0akbPl"], "basePolicyName": "EtAsulrO", "description": "z4gKBb4Y", "namespace": "v64Pe70t", "tags": ["tiO1uH47", "HriBDGj4", "Od0nrL1Q"], "typeId": "08u81dng"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'EOFPbdcj' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'ovOuxWW4' \
    --body '{"affectedClientIds": ["OUiGgOxk", "4wtwzhaE", "Sw7VyJpA"], "affectedCountries": ["w7Kie2Wk", "SEOm0Ldn", "P2UZx7dw"], "basePolicyName": "ApdxWWse", "description": "JwKSy3uQ", "namespace": "2kpwp4H1", "tags": ["zOj1uZ69", "5lBz3ccJ", "Hzbeubel"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'UnOPaFLf' \
    --countryCode '5z3MyNws' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'T3QefduP' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'xSLWrPZP' \
    --body '{"contentType": "9lUs3prZ", "description": "57Ej6Q7n", "localeCode": "Z9cx2IQa"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'gFJB0dlK' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'gn9adIRq' \
    --body '{"attachmentChecksum": "d5ZYKo7n", "attachmentLocation": "6qZOTkkh", "attachmentVersionIdentifier": "wujyQoOb", "contentType": "Kl8ES0vo", "description": "5QZiMwAR"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'uAVk9cwG' \
    --body '{"contentMD5": "cik5wWIy", "contentType": "HJreiGVn"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId '43A5rqZF' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Z8hSJYFi", "lqFx4Qn0", "DgSQUM7O"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId '3mPBgJqW' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --keyword 'l9YqmqOm' \
    --limit '50' \
    --offset '68' \
    --policyVersionId 'f6Y9L9tq' \
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
    --body '{"affectedClientIds": ["ty2jbz3o", "yBaIUwip", "sRQD1Plz"], "affectedCountries": ["XlCKz1D8", "kt1YPr3p", "5iec2L3i"], "basePolicyName": "bm7xHMZ1", "description": "VvYBsUk6", "tags": ["7imU4Iap", "ERVTlRm9", "KdlCWyny"], "typeId": "o7AypuBP"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'FPqcX2P0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'WrYfOzH0' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["EVlnzfQx", "2IeDAspz", "Oyz4ndbp"], "affectedCountries": ["qaCmQGmv", "WvaUlXlE", "4Q3bFAGd"], "basePolicyName": "RFadsGie", "description": "Qk5nikq3", "tags": ["QKWAckjs", "GShdfp8s", "RgWHhnAe"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'cOgNEmZa' \
    --countryCode 'FbYuW9LP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 's0jWL1vK' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'zVlbe8oe' \
    --body '{"contentType": "2it8YidO", "description": "teGkAV8m", "localeCode": "TZGgjjmP"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'p0wksHRc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'IaoLpAwk' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "N2auJv2N", "attachmentLocation": "yvkgoODX", "attachmentVersionIdentifier": "ruQpQmpF", "contentType": "dp9aKYB8", "description": "IZ0iNfhG"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'dMvOnKuv' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "Hk9HZF26", "contentType": "qvIqdr0l"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 's624o8Va' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'TszlrR2Z' \
    --body '{"description": "kXWvp51L", "displayVersion": "mwiJPgVY", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'c8vFs42Q' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId '19ebUXFy' \
    --body '{"description": "QS9FD7nb", "isDefaultOpted": true, "isMandatory": false, "policyName": "sLOQH7hk", "readableId": "jmIB54J5", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'JQkFlOgc' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'UBjb1oGr' \
    --versionId 'XjMlOPnC' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'MECdcQdn' \
    --body '{"description": "PIBfvZv0", "displayVersion": "A8CPstDC", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '99' \
    --limit '8' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '0mlU9rYj' \
    --publisherUserId 'edVfx3ti' \
    --clientId '1dkW7Uoe' \
    --countryCode 'dURMB5IX' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "GlQtd3Jj", "policyId": "mEGkRyCe", "policyVersionId": "YOruSqVy"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "DPh1Tx0g", "policyId": "t1Z5zuxu", "policyVersionId": "N2yqI2kT"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "38v97fVp", "policyId": "LyfXE6s8", "policyVersionId": "ZoI32FfH"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'J3UWjSeA' \
    --publisherUserId '6HmVnSS6' \
    --clientId 'Dt7jmfDV' \
    --countryCode 'ARh5r4Ve' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'tPTfjnb5' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 's8x8aa5Q' \
    --body '{"description": "CExj4x02", "displayVersion": "uvWVsX9M", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'nUkFTo27' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'b25bOfKF' \
    --body '{"description": "kDVkCHDC", "isDefaultOpted": true, "isMandatory": false, "policyName": "zkykHaHl", "readableId": "QFbGKJi3", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'dZUYCA3L' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'wOztuIva' \
    --versionId 'DRqV6ZRP' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'w1bEMYB1' \
    --body '{"description": "I6KMhIjQ", "displayVersion": "yYKwmzIi", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '91' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'WFKEZepn' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace '97Ie5e2m' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'bGqUlJZ5' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'sZPiHdft' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "aqY1Apte", "policyId": "jCPNpuxJ", "policyVersionId": "HfLwjVCw"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "6VkLyqQz", "policyId": "qhAxskdS", "policyVersionId": "dvEbhdM6"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "BIaKan9c", "policyId": "YY9ExTxQ", "policyVersionId": "ixyOkXWl"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'xoMVvtv5' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "b5j1zxXE", "policyId": "bpFBrczh", "policyVersionId": "XQZM8cis"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qBPBHOwt", "policyId": "Y4I3bjWW", "policyVersionId": "dOxbyQda"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "1Zs3jRhx", "policyId": "MOIf8uTB", "policyVersionId": "6z2IwuT5"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'vgxSBz73' \
    --countryCode 'cI7ZjcRS' \
    --namespace $AB_NAMESPACE \
    --userId 'iooOpkY7' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "XKLf4qxS", "policyId": "KGrVsz8t", "policyVersionId": "PAaGSsq5"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "usegnQnq", "policyId": "PnV8SsuH", "policyVersionId": "edYfDhgo"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Nk7yxrm4", "policyId": "7vEVklfw", "policyVersionId": "cjoiFfkL"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'DKj8yhfD' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cSz6pvdD", "policyId": "7lARrmm5", "policyVersionId": "Oo16jRO3"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "WABXEAVa", "policyId": "XWNNOslv", "policyVersionId": "KxT8r64s"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "GfCPmT5z", "policyId": "MFTCmj0s", "policyVersionId": "6ifB8Apa"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'rIWgOAaL' \
    --countryCode 'dHQKuF9x' \
    --namespace $AB_NAMESPACE \
    --userId 'CSSdHyoj' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'UJuUyrk0' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'iBfrndxz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'CkLjD1kz' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'r3tEtmCL' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'wKKEY3m7' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '2v0xEqyq' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '1WarwT77' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE