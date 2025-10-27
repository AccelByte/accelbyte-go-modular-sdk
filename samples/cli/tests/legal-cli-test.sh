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
    --userId 'w5lCUBOR' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "khEpWuf1", "policyId": "cAZUlVc3", "policyVersionId": "zJQpJ4Dh"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "0RhaLfLI", "policyId": "k2kA8NaG", "policyVersionId": "24D5lmBq"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Mqr9WseQ", "policyId": "RAeXjCQ1", "policyVersionId": "QffNSt9X"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 OldRetrieveAcceptedAgreements
samples/cli/sample-apps Legal oldRetrieveAcceptedAgreements \
    --userId 'cM8G9DLw' \
    > test.out 2>&1
eval_tap $? 3 'OldRetrieveAcceptedAgreements' test.out

#- 4 OldRetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal oldRetrieveAllUsersByPolicyVersion \
    --keyword 'PVkwUgEp' \
    --limit '16' \
    --offset '29' \
    --policyVersionId 'Iumw9kv5' \
    > test.out 2>&1
eval_tap $? 4 'OldRetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 OldCreatePolicy
samples/cli/sample-apps Legal oldCreatePolicy \
    --body '{"affectedClientIds": ["W4okiiB8", "txCd9fML", "7lUltDRZ"], "affectedCountries": ["8YR8Cr1P", "iQ5Ie17y", "QT0qrx0f"], "basePolicyName": "nfKxH9RY", "countryGroupName": "BzpfF5Ql", "countryType": "COUNTRY", "description": "9XVg9GU3", "isHidden": false, "isHiddenPublic": false, "namespace": "A9vVmgHm", "tags": ["IZbgXqoF", "G5drALxN", "G9EEaIDq"], "typeId": "WYmTYofR"}' \
    > test.out 2>&1
eval_tap $? 6 'OldCreatePolicy' test.out

#- 7 OldRetrieveSinglePolicy
samples/cli/sample-apps Legal oldRetrieveSinglePolicy \
    --basePolicyId 'e7HnTH1b' \
    > test.out 2>&1
eval_tap $? 7 'OldRetrieveSinglePolicy' test.out

#- 8 OldPartialUpdatePolicy
samples/cli/sample-apps Legal oldPartialUpdatePolicy \
    --basePolicyId 'I7NOJfKN' \
    --body '{"affectedClientIds": ["cqC4hBOv", "a7175eT8", "FYyVak83"], "affectedCountries": ["QO8JhJ8K", "nsErGnOb", "x8DgdWjk"], "basePolicyName": "N8iolCsb", "countryGroupName": "voKNp2rE", "countryType": "COUNTRY_GROUP", "description": "JnZngIcA", "isHidden": true, "isHiddenPublic": false, "namespace": "Z3u0KPJ3", "tags": ["vykK9oS3", "lQuqbCYa", "fdrSCP3r"]}' \
    > test.out 2>&1
eval_tap $? 8 'OldPartialUpdatePolicy' test.out

#- 9 OldRetrievePolicyCountry
samples/cli/sample-apps Legal oldRetrievePolicyCountry \
    --basePolicyId 'cXXGKGPm' \
    --countryCode 'S6YCuF3D' \
    > test.out 2>&1
eval_tap $? 9 'OldRetrievePolicyCountry' test.out

#- 10 OldRetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal oldRetrieveLocalizedPolicyVersions \
    --policyVersionId 'LxZHTDST' \
    > test.out 2>&1
eval_tap $? 10 'OldRetrieveLocalizedPolicyVersions' test.out

#- 11 OldCreateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldCreateLocalizedPolicyVersion \
    --policyVersionId 'Ouj7zJ8m' \
    --body '{"contentType": "PWJ89bZ7", "description": "sU7gKKUr", "localeCode": "m0ger1gx"}' \
    > test.out 2>&1
eval_tap $? 11 'OldCreateLocalizedPolicyVersion' test.out

#- 12 OldRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'C7qkaTBF' \
    > test.out 2>&1
eval_tap $? 12 'OldRetrieveSingleLocalizedPolicyVersion' test.out

#- 13 OldUpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldUpdateLocalizedPolicyVersion \
    --localizedPolicyVersionId '3OhDg5AC' \
    --body '{"attachmentChecksum": "H425Hf5N", "attachmentLocation": "LVarNlAS", "attachmentVersionIdentifier": "QfovKwaV", "contentType": "ZS3ckdwD", "description": "BfXGabW9"}' \
    > test.out 2>&1
eval_tap $? 13 'OldUpdateLocalizedPolicyVersion' test.out

#- 14 OldRequestPresignedURL
samples/cli/sample-apps Legal oldRequestPresignedURL \
    --localizedPolicyVersionId 'ocnzEL31' \
    --body '{"contentMD5": "TqOKfG4E", "contentType": "JXuIxtkl"}' \
    > test.out 2>&1
eval_tap $? 14 'OldRequestPresignedURL' test.out

#- 15 OldSetDefaultLocalizedPolicy
samples/cli/sample-apps Legal oldSetDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'hH4DzWyI' \
    > test.out 2>&1
eval_tap $? 15 'OldSetDefaultLocalizedPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["IiFZf9Fo", "xTXsgXTV", "7veYcjgS"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --namespace $AB_NAMESPACE \
    --userId 'uxw7HuV1' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements' test.out

#- 18 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword '9KbKw1vD' \
    --limit '67' \
    --offset '100' \
    --policyVersionId 'PO2Vg9qU' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'TOOI96QO' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'rdSJXAaz' \
    --policyVersionId 'Ldkj5iOI' \
    --start 'zgFol2py' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["jFinhjfT", "K8cP9aHb", "NKWwfLXk"], "affectedCountries": ["qqsTmBVh", "mRWBNWEe", "gNRyjBr9"], "basePolicyName": "yRaOjxTf", "countryGroupName": "ygUTCqsI", "countryType": "COUNTRY_GROUP", "description": "ScBQL3Oz", "isHidden": false, "isHiddenPublic": true, "tags": ["PI3152wV", "PKBtywEg", "qx3dnY3t"], "typeId": "A3qT0o7W"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy' test.out

#- 23 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'EvEh40M2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'KgmOal82' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'o4tsCaiR' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["VvBlWe8p", "15pizC9f", "n9Um7UG7"], "affectedCountries": ["7R5XuXtm", "PKPK4ys1", "OsasXK2a"], "basePolicyName": "byb7RUWb", "countryGroupName": "oyzCXmjJ", "countryType": "COUNTRY_GROUP", "description": "3c0JFTTB", "isHidden": true, "isHiddenPublic": false, "tags": ["GA0lxn8O", "8gscfWfw", "ZZ9iVVHE"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy' test.out

#- 26 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'uivqyfQp' \
    --countryCode 'THk6vRU8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'cQpKRWeJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'wZYvI86i' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["Zq1DeftT", "AydIfaT4", "Mg7aB025"], "countryCode": "i1AshrbA", "countryGroupName": "L26Sk5c2", "countryType": "COUNTRY", "description": "ONchM2pX", "isDefaultSelection": true, "isMandatory": false, "policyName": "Y3x4zLoA", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'yLfP7QwB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'frmB3vQH' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions' test.out

#- 31 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'lvqJ5XlG' \
    --body '{"contentType": "dD264Mva", "description": "awQpzvmm", "localeCode": "WlfuZ8TC"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'knW62eFu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 33 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId '3HoBcQ2O' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "gdk6sz4e", "attachmentLocation": "hE0wiYgt", "attachmentVersionIdentifier": "RXIAxmFh", "contentType": "0Ur4qGo1", "description": "Yw5R15UE"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion' test.out

#- 34 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'earVPUUc' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "XpwnzKdS", "contentType": "wKn6mLjO"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL' test.out

#- 35 SetDefaultLocalizedPolicy
samples/cli/sample-apps Legal setDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'GwlFNHXg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultLocalizedPolicy' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'TTE8k9zS' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'UKop1NWt' \
    --body '{"description": "DImNVQT7", "displayVersion": "njUaE30p", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion' test.out

#- 38 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'b3eI9UiE' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'FgUkxKJg' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'JkObcO2U' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'tDjQxWJW' \
    --body '{"countries": ["r99qjxtF", "uvPz69MS", "sLceNCMy"], "countryGroupName": "rbNCIfVu", "description": "E2TslE0m", "isDefaultOpted": false, "isMandatory": false, "policyName": "d7tzP6Mk", "readableId": "WWITREUm", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'Vk5pNTyQ' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy' test.out

#- 43 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId '2APXX4ll' \
    --versionId 'b8R5EWMC' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'r00hHyP1' \
    --body '{"description": "eu5PpGJr", "displayVersion": "3XbwreJA", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --namespace $AB_NAMESPACE \
    --offset '30' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'LZLCHXw0' \
    --publisherUserId 'Z0Qxj91f' \
    --clientId 'KxYNm7De' \
    --countryCode 'f95McPUu' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "VXY3IxAF", "policyId": "BZZo82aF", "policyVersionId": "HKMFE750"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ezceK0oN", "policyId": "Pfm8X6Qj", "policyVersionId": "O8JmXofy"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "c7gcd2Nc", "policyId": "wGWjfbZF", "policyVersionId": "fkp42mth"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'ygTwoDoc' \
    --publisherUserId 'pL2JvtDY' \
    --clientId 'mFenJJTi' \
    --countryCode 'nARypqHr' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'VVN5hsvs' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 OldUpdatePolicyVersion
samples/cli/sample-apps Legal oldUpdatePolicyVersion \
    --policyVersionId 'W8xve7Fq' \
    --body '{"description": "hXBZAaG6", "displayVersion": "FKeAx8B5", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 49 'OldUpdatePolicyVersion' test.out

#- 50 OldPublishPolicyVersion
samples/cli/sample-apps Legal oldPublishPolicyVersion \
    --policyVersionId 'ZH7mIRVf' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 50 'OldPublishPolicyVersion' test.out

#- 51 OldUpdatePolicy
samples/cli/sample-apps Legal oldUpdatePolicy \
    --policyId 'GH5RJbJC' \
    --body '{"countries": ["8fxQ5YQp", "Gwqy0yDN", "uPJ8gqFJ"], "countryGroupName": "34DEViL0", "description": "dOOe6IUu", "isDefaultOpted": true, "isMandatory": false, "policyName": "jJAMaDcy", "readableId": "KN46WawW", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 51 'OldUpdatePolicy' test.out

#- 52 OldSetDefaultPolicy
samples/cli/sample-apps Legal oldSetDefaultPolicy \
    --policyId 'bv7LTsTA' \
    > test.out 2>&1
eval_tap $? 52 'OldSetDefaultPolicy' test.out

#- 53 OldRetrieveSinglePolicyVersion
samples/cli/sample-apps Legal oldRetrieveSinglePolicyVersion \
    --policyId '8g07lIx2' \
    --versionId 'qLR8Akcq' \
    > test.out 2>&1
eval_tap $? 53 'OldRetrieveSinglePolicyVersion' test.out

#- 54 OldCreatePolicyVersion
samples/cli/sample-apps Legal oldCreatePolicyVersion \
    --policyId '47AeOOvA' \
    --body '{"description": "u6TYcZEv", "displayVersion": "aXzvSklQ", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 54 'OldCreatePolicyVersion' test.out

#- 55 OldRetrieveAllPolicyTypes
samples/cli/sample-apps Legal oldRetrieveAllPolicyTypes \
    --offset '3' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 55 'OldRetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'INzeJ4B4' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '47LKziTA' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 PublicChangePreferenceConsent
samples/cli/sample-apps Legal publicChangePreferenceConsent \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "tbVmTKCw", "policyId": "tNtFivfb", "policyVersionId": "KLBRwZ0L"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "A1DAQh8Z", "policyId": "QoHoRWX9", "policyVersionId": "SXvYS5Al"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "9IgOHVIf", "policyId": "ZGgWAV5w", "policyVersionId": "sXoq3kaU"}]' \
    > test.out 2>&1
eval_tap $? 60 'PublicChangePreferenceConsent' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'S3IXbxkj' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "m3qG9Or2", "policyId": "n7DVNXQR", "policyVersionId": "4H0zZwRi"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qIAnFRCv", "policyId": "ALdZnFbs", "policyVersionId": "qRVAUHAy"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "DvBWTqNA", "policyId": "UEFbPp9J", "policyVersionId": "TCK4JUO2"}]' \
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
    --clientId 'XIkAXqMV' \
    --countryCode 't4dwOgjD' \
    --namespace $AB_NAMESPACE \
    --userId 'H80ZfS0f' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 OldPublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldPublicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '8Jrr4z4L' \
    > test.out 2>&1
eval_tap $? 68 'OldPublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 69 PublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal publicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'S2e8aEjf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'PublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'TM1lq0nB' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'dWQzAzZu' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'IdlyWbvh' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 OldRetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal oldRetrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '4FlNRvCA' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'kX5icqiK' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 73 'OldRetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'YhAsQzwH' \
    --namespace $AB_NAMESPACE \
    --clientId '4SIPpsUK' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out


rm -f "tmp.dat"

exit $EXIT_CODE