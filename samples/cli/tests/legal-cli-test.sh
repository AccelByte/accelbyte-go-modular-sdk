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
    --userId 'azgyM02J' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Ej5zAQBd", "policyId": "rQgrEUP3", "policyVersionId": "PwsfbUPt"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2PWtwCzn", "policyId": "rSghMtpk", "policyVersionId": "1RPBvomR"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "p92YPn4d", "policyId": "AXvRf76o", "policyVersionId": "HnFVdaG6"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 OldRetrieveAcceptedAgreements
samples/cli/sample-apps Legal oldRetrieveAcceptedAgreements \
    --userId 'IB6lGlKo' \
    > test.out 2>&1
eval_tap $? 3 'OldRetrieveAcceptedAgreements' test.out

#- 4 OldRetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal oldRetrieveAllUsersByPolicyVersion \
    --keyword 'fhClR4Sh' \
    --limit '55' \
    --offset '17' \
    --policyVersionId 'f3XZBVDk' \
    > test.out 2>&1
eval_tap $? 4 'OldRetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 OldCreatePolicy
samples/cli/sample-apps Legal oldCreatePolicy \
    --body '{"affectedClientIds": ["TfqZ9YZt", "rYO8cMcc", "SXrEBKrq"], "affectedCountries": ["DH20aICb", "r2kb4GSt", "VKbAnzuJ"], "basePolicyName": "bKagQta5", "countryGroupName": "0eDCu7i4", "countryType": "COUNTRY_GROUP", "description": "0SLw6Mk4", "isHidden": true, "isHiddenPublic": true, "namespace": "lykrbQx7", "tags": ["P8xC4XcK", "KsdgbCIM", "YWR45dIb"], "typeId": "GYvZeTqj"}' \
    > test.out 2>&1
eval_tap $? 6 'OldCreatePolicy' test.out

#- 7 OldRetrieveSinglePolicy
samples/cli/sample-apps Legal oldRetrieveSinglePolicy \
    --basePolicyId 'CMfbvYN5' \
    > test.out 2>&1
eval_tap $? 7 'OldRetrieveSinglePolicy' test.out

#- 8 OldPartialUpdatePolicy
samples/cli/sample-apps Legal oldPartialUpdatePolicy \
    --basePolicyId '9uAmSa3L' \
    --body '{"affectedClientIds": ["CL7Qd6h6", "NtlWHOrV", "f5oM2wLr"], "affectedCountries": ["VZOSCSFw", "8VFSQRxL", "gPCQK7wy"], "basePolicyName": "XM4vq0hm", "countryGroupName": "XypTCHqJ", "countryType": "COUNTRY", "description": "g33dvsdr", "isHidden": false, "isHiddenPublic": false, "namespace": "dqsq68w5", "tags": ["L7XHFDt4", "k8wMDov6", "3Y64uNjv"]}' \
    > test.out 2>&1
eval_tap $? 8 'OldPartialUpdatePolicy' test.out

#- 9 OldRetrievePolicyCountry
samples/cli/sample-apps Legal oldRetrievePolicyCountry \
    --basePolicyId 'u2CSyrIQ' \
    --countryCode 'pUd66kjM' \
    > test.out 2>&1
eval_tap $? 9 'OldRetrievePolicyCountry' test.out

#- 10 OldRetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal oldRetrieveLocalizedPolicyVersions \
    --policyVersionId 'XgQxJGm7' \
    > test.out 2>&1
eval_tap $? 10 'OldRetrieveLocalizedPolicyVersions' test.out

#- 11 OldCreateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldCreateLocalizedPolicyVersion \
    --policyVersionId '8iaZHwpa' \
    --body '{"contentType": "bsRTUcYx", "description": "G57nEVZF", "localeCode": "sOVa6Tqm"}' \
    > test.out 2>&1
eval_tap $? 11 'OldCreateLocalizedPolicyVersion' test.out

#- 12 OldRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '2urYz2S6' \
    > test.out 2>&1
eval_tap $? 12 'OldRetrieveSingleLocalizedPolicyVersion' test.out

#- 13 OldUpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldUpdateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'oBVlgrxu' \
    --body '{"attachmentChecksum": "rDJzOvUU", "attachmentLocation": "HCQVMeY0", "attachmentVersionIdentifier": "GTpWewkE", "contentType": "UCxG6UkS", "description": "8JPLnlNQ"}' \
    > test.out 2>&1
eval_tap $? 13 'OldUpdateLocalizedPolicyVersion' test.out

#- 14 OldRequestPresignedURL
samples/cli/sample-apps Legal oldRequestPresignedURL \
    --localizedPolicyVersionId 'rbnsxN6b' \
    --body '{"contentMD5": "kHVZ5Meb", "contentType": "7QJUw5ms"}' \
    > test.out 2>&1
eval_tap $? 14 'OldRequestPresignedURL' test.out

#- 15 OldSetDefaultLocalizedPolicy
samples/cli/sample-apps Legal oldSetDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'cP2o8kxy' \
    > test.out 2>&1
eval_tap $? 15 'OldSetDefaultLocalizedPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["QAu76ltQ", "uuAOsYaf", "6qs3iEN5"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --namespace $AB_NAMESPACE \
    --userId 'WeX7X9WT' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements' test.out

#- 18 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'KhoW6Yel' \
    --limit '30' \
    --offset '45' \
    --policyVersionId 'paycNVdv' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'vnu5d9gs' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'qQg9kxEf' \
    --policyVersionId 'QmYQuB8Q' \
    --start 'pDawVLnK' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '47' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["FTb49fh3", "RBefeAoY", "CciGUbJH"], "affectedCountries": ["VvyoaSd9", "gED0B9uM", "dnqovTH6"], "basePolicyName": "BYJPkQj3", "countryGroupName": "ftTgVHmF", "countryType": "COUNTRY_GROUP", "description": "THGd4RSP", "isHidden": false, "isHiddenPublic": true, "tags": ["yCdZMREG", "gGV3RzcS", "z4sG6JCp"], "typeId": "Wvdad6uV"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy' test.out

#- 23 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId '3ScyWyb2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'IZAK7L4y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'o38UyZw5' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["HunL3dHv", "tnmRc7us", "WFsdikyZ"], "affectedCountries": ["cxjBDJJV", "k5Fmfgvx", "KQMhIjy5"], "basePolicyName": "I9j96GCk", "countryGroupName": "1FST2yUu", "countryType": "COUNTRY_GROUP", "description": "BB6QiM7u", "isHidden": true, "isHiddenPublic": false, "tags": ["Xu21KRMT", "cW5V7G7x", "X0HZF5a5"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy' test.out

#- 26 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '02qREVyy' \
    --countryCode 'BD4mS5sd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId '1jn50JKj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'EAuurPtl' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["KQrWJDOW", "rzOmNLLr", "tJ9gSxWD"], "countryCode": "ZMa1Iwbb", "countryGroupName": "VfAPW3Kx", "countryType": "COUNTRY_GROUP", "description": "my2Wmyd6", "isDefaultSelection": false, "isMandatory": true, "policyName": "moxHvzeP", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'J3yDv6wk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --namespace $AB_NAMESPACE \
    --policyVersionId '0sXW1pBC' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions' test.out

#- 31 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'SimpHMm8' \
    --body '{"contentType": "hdkLG0ZH", "description": "qycKOKYw", "localeCode": "Droto57v"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'M7C7A4NU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 33 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'MeLPdNS5' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "m89SZd62", "attachmentLocation": "O3to3sQO", "attachmentVersionIdentifier": "Sccenk9L", "contentType": "aKIFc7mF", "description": "T7VtkIil"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion' test.out

#- 34 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'ykTXFLsB' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "5GR8RDa5", "contentType": "BoxGPiAt"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL' test.out

#- 35 SetDefaultLocalizedPolicy
samples/cli/sample-apps Legal setDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'KevDYche' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultLocalizedPolicy' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'XBgiDpBp' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'hsFdoGBF' \
    --body '{"description": "P4QRA4Xt", "displayVersion": "F6sTfYyk", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion' test.out

#- 38 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'x9X1R69d' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId '3jcEBzQM' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId '8Drasjb3' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'ZGwFwPYD' \
    --body '{"countries": ["u7TJxzI8", "NdW4vNqG", "dusOAan5"], "countryGroupName": "yxIGMdix", "description": "eJdxmlhV", "isDefaultOpted": false, "isMandatory": true, "policyName": "CS4m37V1", "readableId": "MhOM8wur", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'KrHtM3HJ' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy' test.out

#- 43 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'hULsdtYg' \
    --versionId 'Z7A1Gesl' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'Jn6dumQ3' \
    --body '{"description": "uIsJYbaM", "displayVersion": "6U0JjFdK", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --namespace $AB_NAMESPACE \
    --offset '8' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'AJ9GCEwg' \
    --publisherUserId '3O33Owen' \
    --clientId 'LjSSAgn6' \
    --countryCode '2b4eA1ae' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MGs1VhF1", "policyId": "FtzUeTlJ", "policyVersionId": "e3cR0wlq"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "NUJbCb3N", "policyId": "JSimiapt", "policyVersionId": "AWWvdblI"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "cYRY0fge", "policyId": "N5w9p9Qe", "policyVersionId": "u67Q9eG4"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'XznbQWo1' \
    --publisherUserId 'h9Ns947I' \
    --clientId 'ff4bGiFf' \
    --countryCode 'LBpsM2Z2' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'VVmahOA7' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 OldUpdatePolicyVersion
samples/cli/sample-apps Legal oldUpdatePolicyVersion \
    --policyVersionId 'Mz8rfeyg' \
    --body '{"description": "KAqYOOuB", "displayVersion": "qSZp84Er", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 49 'OldUpdatePolicyVersion' test.out

#- 50 OldPublishPolicyVersion
samples/cli/sample-apps Legal oldPublishPolicyVersion \
    --policyVersionId 'ZEMoDeHM' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 50 'OldPublishPolicyVersion' test.out

#- 51 OldUpdatePolicy
samples/cli/sample-apps Legal oldUpdatePolicy \
    --policyId 'MTpTz5ia' \
    --body '{"countries": ["wGHA7295", "AM3PIE6g", "RxoRZwrf"], "countryGroupName": "gxQMlzi8", "description": "cGmxmFmX", "isDefaultOpted": true, "isMandatory": true, "policyName": "hw5QBShC", "readableId": "0ZwoUDbL", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 51 'OldUpdatePolicy' test.out

#- 52 OldSetDefaultPolicy
samples/cli/sample-apps Legal oldSetDefaultPolicy \
    --policyId 'lghMiDlR' \
    > test.out 2>&1
eval_tap $? 52 'OldSetDefaultPolicy' test.out

#- 53 OldRetrieveSinglePolicyVersion
samples/cli/sample-apps Legal oldRetrieveSinglePolicyVersion \
    --policyId 'IqTiMWBB' \
    --versionId 'MV0b8Oca' \
    > test.out 2>&1
eval_tap $? 53 'OldRetrieveSinglePolicyVersion' test.out

#- 54 OldCreatePolicyVersion
samples/cli/sample-apps Legal oldCreatePolicyVersion \
    --policyId 'brxSj89w' \
    --body '{"description": "FkdPwxJR", "displayVersion": "E5TCgzlb", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 54 'OldCreatePolicyVersion' test.out

#- 55 OldRetrieveAllPolicyTypes
samples/cli/sample-apps Legal oldRetrieveAllPolicyTypes \
    --offset '87' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 55 'OldRetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'shEdLjsR' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'QEevT2b2' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 PublicChangePreferenceConsent
samples/cli/sample-apps Legal publicChangePreferenceConsent \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "9Mx6Ea09", "policyId": "VHJjEIqW", "policyVersionId": "zkirl0N9"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "DKvoYcRb", "policyId": "XGl7XtOu", "policyVersionId": "wyuLS5OT"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MHGe5q3I", "policyId": "X8zkm3aW", "policyVersionId": "d3tTb25R"}]' \
    > test.out 2>&1
eval_tap $? 60 'PublicChangePreferenceConsent' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'ZJ7RpW9C' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "9zTSeBkN", "policyId": "pN8GcqdS", "policyVersionId": "C4L68SEz"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "pItYMs96", "policyId": "CAohCxgZ", "policyVersionId": "UIYdKU6X"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "yVozcnNz", "policyId": "gfSylE73", "policyVersionId": "ItIreIdA"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkAcceptVersionedPolicy' test.out

#- 64 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 64 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 65 PublicIndirectBulkAcceptVersionedPolicy
eval_tap 0 65 'PublicIndirectBulkAcceptVersionedPolicy # SKIP deprecated' test.out

#- 66 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'RetrieveEligibilitiesPublic' test.out

#- 67 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'CL0bkb6R' \
    --countryCode 'jiACo0KU' \
    --namespace $AB_NAMESPACE \
    --userId '9gqyvGMJ' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 OldPublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldPublicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'tBstOLd3' \
    > test.out 2>&1
eval_tap $? 68 'OldPublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 69 PublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal publicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'xNtJhuzi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'PublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'LfxiW2TM' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'a8MHHK3j' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'XLsaTcYl' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 OldRetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal oldRetrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'HzD2uA7z' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'JoBgcfG7' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 73 'OldRetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '1KbFqduz' \
    --namespace $AB_NAMESPACE \
    --clientId 'wFEoOMmw' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out


rm -f "tmp.dat"

exit $EXIT_CODE