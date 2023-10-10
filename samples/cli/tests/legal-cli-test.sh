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
    --userId 'ljTdx008' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "zKPnbXd5", "policyId": "i0Ej6UcP", "policyVersionId": "R925OzX5"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6KdBni1v", "policyId": "oqiz7xbB", "policyVersionId": "Sep8D1iy"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "zhB2ahI2", "policyId": "ScvM4dw8", "policyVersionId": "UspAXDER"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'FOIXMGBZ' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'KxpPhwwz' \
    --limit '61' \
    --offset '11' \
    --policyVersionId 'Gmh6BXxl' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["S46T48kn", "VhTsKD1P", "tLlWmHoV"], "affectedCountries": ["A2k720wM", "Ogm9wly5", "DHmVwSxC"], "basePolicyName": "6mRU90kO", "description": "WGsDiysQ", "namespace": "slqbpChr", "tags": ["kz3koSRG", "4BIQVFCN", "U2hN8yen"], "typeId": "uAA1ySYB"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'TrMOcDAm' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId '4l0eK7su' \
    --body '{"affectedClientIds": ["LWrioXeK", "mNPmomhw", "hiqpCmla"], "affectedCountries": ["E7IW0IVT", "kDWLq2Jg", "vJt6QKlf"], "basePolicyName": "cm26iaX1", "description": "kpQRdkoX", "namespace": "9hK0ebnM", "tags": ["MaqgPECm", "RTv7al30", "Ok4ktQLH"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'QcB9Il9S' \
    --countryCode 'ai17U9hq' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'gHtoLZQ0' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'H5QVA3pr' \
    --body '{"contentType": "fXiWVr1I", "description": "dNX20P4w", "localeCode": "kJKNgK9i"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'JdLG8a3f' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'gK2HHPIB' \
    --body '{"attachmentChecksum": "4ljrefSr", "attachmentLocation": "6JP5rBsB", "attachmentVersionIdentifier": "v5tsxhkf", "contentType": "VZyfiIiH", "description": "Q84FH94X"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'W8t1doD8' \
    --body '{"contentMD5": "KRe8MTa1", "contentType": "Y1GnaQX1"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'T8vEiXvU' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["KouJKlas", "KrGMf30s", "ZUmrEwF8"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'owi7b8Xi' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword '2Yi1z6wT' \
    --limit '34' \
    --offset '15' \
    --policyVersionId 'Su2NoQ6I' \
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
    --body '{"affectedClientIds": ["r8OtsvY1", "2d719jKN", "Y48hxT1T"], "affectedCountries": ["uWV4b4gA", "OYpRKtWg", "Yt5AqMCd"], "basePolicyName": "iBFdql6T", "description": "dX5vcTGG", "tags": ["4GaSHSuU", "DZLYdPqM", "PMlfiWxS"], "typeId": "kul9D1Zh"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'S7gDHWoE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'lE0RgDca' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["ZNe1Ha6T", "8iTe9hme", "0ReYGhQK"], "affectedCountries": ["W8vTDJxI", "9Su9tmYI", "w5xwzypt"], "basePolicyName": "2cZajZs3", "description": "HIo1Sdn9", "tags": ["xQfgEAss", "LM0VpmnF", "mKhpKXv7"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'VDSfloH2' \
    --countryCode 'fnjp0UZY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'VwOUWPi0' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'zw5y4xLR' \
    --body '{"contentType": "IXJENSIV", "description": "xopps0Lb", "localeCode": "2cDVbJVL"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'xbefPTdt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'Y55GbJpU' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "oFJUbeBP", "attachmentLocation": "A0W83t4B", "attachmentVersionIdentifier": "wrWETVmk", "contentType": "EWnfqE4X", "description": "vVLXAeJ1"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'ayjKsMjP' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "KdD8kZH9", "contentType": "5GtC9PdA"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'PuEfDsWz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'O8GoZ3al' \
    --body '{"description": "csjffLvy", "displayVersion": "IUnVWDMD", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ZvMRCZz4' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'HLclM0VR' \
    --body '{"description": "wjIa0ElQ", "isDefaultOpted": false, "isMandatory": true, "policyName": "Zrukjn6q", "readableId": "MSWap8ng", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'gpeQZYnp' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'm4r1eBo7' \
    --versionId 'jzXSsA8h' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'K0difuSR' \
    --body '{"description": "aphkWNPU", "displayVersion": "bcnRk0LH", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '2' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'kg81Gzvk' \
    --publisherUserId 'SBOd2LnV' \
    --clientId 'se6j68Z4' \
    --countryCode '9B2XQ4Ap' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lszj4UC4", "policyId": "W53hx1HT", "policyVersionId": "TBYpqBap"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "16jNRr3P", "policyId": "RlJsA1r8", "policyVersionId": "w9T1lerW"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "XmSR0OCs", "policyId": "CiF48dTb", "policyVersionId": "FeNL7Wd9"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'EJre0YqH' \
    --publisherUserId 'EF6UVhrs' \
    --clientId 'k1tMDxpn' \
    --countryCode 'Qqti0dkZ' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'K9zQ0Wwp' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'Wd6bJc1m' \
    --body '{"description": "L6LzCKCc", "displayVersion": "LDgm0Z2x", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId '8hCga9u2' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'X5CpRH3C' \
    --body '{"description": "tAsuXsL6", "isDefaultOpted": true, "isMandatory": false, "policyName": "UIZFmg66", "readableId": "sNnEi4sK", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId '0vX0uUfO' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '90NZ1AZl' \
    --versionId 'lwNG614b' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'lDihxyKs' \
    --body '{"description": "6X1ASeIN", "displayVersion": "gc34gb6E", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '61' \
    --limit '3' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'KS7fgs1x' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'jXl13PY8' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "N6z52wzD", "policyId": "otFsIfnu", "policyVersionId": "ddYS5qx4"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "UQdoo9xp", "policyId": "KC7QGN7F", "policyVersionId": "qmdLNBwu"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "TZXAM0ww", "policyId": "lUH6srrP", "policyVersionId": "OyRYWyGX"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'aUMgqtLE' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "0fS1Mlwp", "policyId": "YANi7489", "policyVersionId": "I3TGWaH5"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ynftv3re", "policyId": "LgwVohVg", "policyVersionId": "fdgCfkC5"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "VJutcJN9", "policyId": "HV7I8i95", "policyVersionId": "mMiEGFBX"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId '1OXk0Kj1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wsUSYKD1", "policyId": "FwuwK3oN", "policyVersionId": "cLWEAz1P"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "5LxcT0Bs", "policyId": "3SItUIHC", "policyVersionId": "Id0ukYw3"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "B7L48zp7", "policyId": "KY8OgWRe", "policyVersionId": "Cqtkitib"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'PJrme8wa' \
    --countryCode '3CVFVOGM' \
    --namespace $AB_NAMESPACE \
    --userId '9TSAG4WW' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'NiFIHTxu' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'zwIi9Wjf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'SqqK1f1v' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'GXHOWi3R' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '0sEs6bMH' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'CvlimZK9' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'qqdWcpFq' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE