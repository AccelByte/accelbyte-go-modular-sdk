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
    --userId 'yDShlimD' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ZsWXIdDL", "policyId": "Na1b9Mm9", "policyVersionId": "tgUpjyQV"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "BKd2pDoC", "policyId": "oUbr7pl1", "policyVersionId": "njGq1Lmt"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4TeH4Z2s", "policyId": "21ukeej6", "policyVersionId": "lsz2IO7k"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 OldRetrieveAcceptedAgreements
samples/cli/sample-apps Legal oldRetrieveAcceptedAgreements \
    --userId '4PM8hHYf' \
    > test.out 2>&1
eval_tap $? 3 'OldRetrieveAcceptedAgreements' test.out

#- 4 OldRetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal oldRetrieveAllUsersByPolicyVersion \
    --keyword '072rEn2y' \
    --limit '39' \
    --offset '17' \
    --policyVersionId 'FJcEvEWp' \
    > test.out 2>&1
eval_tap $? 4 'OldRetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 OldCreatePolicy
samples/cli/sample-apps Legal oldCreatePolicy \
    --body '{"affectedClientIds": ["Bli0zX3q", "2pvIMyXk", "UtxBVAb7"], "affectedCountries": ["zkSNyaNk", "nMtH5spW", "g2L3wweG"], "basePolicyName": "BjpTXNnP", "countryGroupName": "6mtoCETe", "countryType": "COUNTRY", "description": "E0PrO3vw", "isHidden": true, "isHiddenPublic": false, "namespace": "tSykwlbf", "tags": ["riGOCHBf", "hFKqlKsi", "OtZEEhQt"], "typeId": "dXSg8AuH"}' \
    > test.out 2>&1
eval_tap $? 6 'OldCreatePolicy' test.out

#- 7 OldRetrieveSinglePolicy
samples/cli/sample-apps Legal oldRetrieveSinglePolicy \
    --basePolicyId 'yxTPwHFb' \
    > test.out 2>&1
eval_tap $? 7 'OldRetrieveSinglePolicy' test.out

#- 8 OldPartialUpdatePolicy
samples/cli/sample-apps Legal oldPartialUpdatePolicy \
    --basePolicyId 'i9SklT3o' \
    --body '{"affectedClientIds": ["A21Mcxuq", "2VZgpGb5", "nrw8ePJU"], "affectedCountries": ["VTkVId9W", "rFaov2li", "nrRTiHDd"], "basePolicyName": "i1sPYdOH", "countryGroupName": "E3Hln3kA", "countryType": "COUNTRY", "description": "kjJADC6k", "isHidden": false, "isHiddenPublic": false, "namespace": "98Xc6i78", "tags": ["4vOV7fhV", "VTX5SL00", "DMjtvpxd"]}' \
    > test.out 2>&1
eval_tap $? 8 'OldPartialUpdatePolicy' test.out

#- 9 OldRetrievePolicyCountry
samples/cli/sample-apps Legal oldRetrievePolicyCountry \
    --basePolicyId 'Wsnf6RUO' \
    --countryCode '2vzgVvgn' \
    > test.out 2>&1
eval_tap $? 9 'OldRetrievePolicyCountry' test.out

#- 10 OldRetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal oldRetrieveLocalizedPolicyVersions \
    --policyVersionId 'o5k06FaH' \
    > test.out 2>&1
eval_tap $? 10 'OldRetrieveLocalizedPolicyVersions' test.out

#- 11 OldCreateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldCreateLocalizedPolicyVersion \
    --policyVersionId 'avAgbnte' \
    --body '{"contentType": "1WQvNN2r", "description": "5JJh6O8q", "localeCode": "omw9tejp"}' \
    > test.out 2>&1
eval_tap $? 11 'OldCreateLocalizedPolicyVersion' test.out

#- 12 OldRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'jTRfoohs' \
    > test.out 2>&1
eval_tap $? 12 'OldRetrieveSingleLocalizedPolicyVersion' test.out

#- 13 OldUpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldUpdateLocalizedPolicyVersion \
    --localizedPolicyVersionId '7nlW1TPt' \
    --body '{"attachmentChecksum": "fKsNbldk", "attachmentLocation": "l5qaVkHN", "attachmentVersionIdentifier": "05OOJ6AS", "contentType": "CHJ6uVci", "description": "EK1BLa11"}' \
    > test.out 2>&1
eval_tap $? 13 'OldUpdateLocalizedPolicyVersion' test.out

#- 14 OldRequestPresignedURL
samples/cli/sample-apps Legal oldRequestPresignedURL \
    --localizedPolicyVersionId 'NyFVOhyu' \
    --body '{"contentMD5": "Qu2zeQT3", "contentType": "M0Geyj4a"}' \
    > test.out 2>&1
eval_tap $? 14 'OldRequestPresignedURL' test.out

#- 15 OldSetDefaultLocalizedPolicy
samples/cli/sample-apps Legal oldSetDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'LFgjIGU2' \
    > test.out 2>&1
eval_tap $? 15 'OldSetDefaultLocalizedPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["BmclQg89", "uVdlkupX", "Yzv7kgNA"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --namespace $AB_NAMESPACE \
    --userId 'SgTa2zo8' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements' test.out

#- 18 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'Li0YeA1j' \
    --limit '3' \
    --offset '49' \
    --policyVersionId 'EwcOsd2a' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'HQx5w0Yt' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'fXei644n' \
    --policyVersionId 'eFD6KWho' \
    --start 'DbB3gNwb' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '9' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["mnYWnhsu", "8KRfmDVB", "u6Ym5MYx"], "affectedCountries": ["vlhSQNMJ", "APyllZtx", "yyi4Ktbo"], "basePolicyName": "hmbJb0Y0", "countryGroupName": "AQX9VeXh", "countryType": "COUNTRY", "description": "NaMo2Lb7", "isHidden": true, "isHiddenPublic": true, "tags": ["xOABS3SL", "9klvI03I", "AHo8TIJD"], "typeId": "Yiv13oI3"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy' test.out

#- 23 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'ORG4kNuM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'YQFgoIkQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'jGbXBbVk' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["HUWOrNha", "EvxXT0kb", "lomODzXr"], "affectedCountries": ["14HKQGy6", "vKXwGZU5", "YtO8t3o9"], "basePolicyName": "eGtp6so3", "countryGroupName": "KLYTshQ5", "countryType": "COUNTRY_GROUP", "description": "fLSlSEcl", "isHidden": false, "isHiddenPublic": true, "tags": ["kMpXe8FS", "MVCEhNrx", "H0Cp2Dad"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy' test.out

#- 26 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'ntvDYD28' \
    --countryCode 'L2iOJNSB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'YW9YYL4t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'wQuV0kTk' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["9xMSIEse", "6FINI80G", "BiNoWgnu"], "countryCode": "192gd4Sw", "countryGroupName": "h74O2i9e", "countryType": "COUNTRY_GROUP", "description": "FvPT6UUr", "isDefaultSelection": false, "isMandatory": true, "policyName": "afcDATmm", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'Z5EDVbuY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'AnFzDcFD' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions' test.out

#- 31 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'T0cv7dSM' \
    --body '{"contentType": "wy8WscIQ", "description": "E0a7JB1E", "localeCode": "EtdhrOqw"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'qnhKMGhX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 33 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'xtXIEqnk' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "iWTGNZYO", "attachmentLocation": "XSTBvEwz", "attachmentVersionIdentifier": "QbmCuinI", "contentType": "HeB5gbSt", "description": "btYIPuCd"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion' test.out

#- 34 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'HQLL6drs' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "XLcyxEdD", "contentType": "6MxpvBra"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL' test.out

#- 35 SetDefaultLocalizedPolicy
samples/cli/sample-apps Legal setDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'koxpNM3V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultLocalizedPolicy' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'H9wBP0wk' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'lf7gF2zx' \
    --body '{"description": "IHsWTvb8", "displayVersion": "Hn8Qlet7", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion' test.out

#- 38 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'l7q6EI4q' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'agyojJC7' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'tpr87VgF' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --namespace $AB_NAMESPACE \
    --policyId '7Rb0E7pl' \
    --body '{"countries": ["KYuZwyVA", "xLJ5KlqM", "PKOiLwNN"], "countryGroupName": "Jl6VIJ57", "description": "SLa08X8i", "isDefaultOpted": false, "isMandatory": true, "policyName": "uQdZNieQ", "readableId": "z5faL7Sa", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'gT70qsbj' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy' test.out

#- 43 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'io2nRsCF' \
    --versionId 'RAD6lLhB' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'zGUCRHY6' \
    --body '{"description": "6jYFJgas", "displayVersion": "X4t7jzGp", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --namespace $AB_NAMESPACE \
    --offset '33' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'rJQq0i9x' \
    --publisherUserId 'I99cFTQu' \
    --clientId 'rfmWH2tG' \
    --countryCode 'fGkg2gNs' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ivn0NDsb", "policyId": "4ofXaVI7", "policyVersionId": "4Myf9aNM"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "aSY70BXN", "policyId": "YBJAnryJ", "policyVersionId": "cbejpklq"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "J4bvjUu0", "policyId": "7kbL9bZ6", "policyVersionId": "wNmlzZ9w"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'ul7vDWmY' \
    --publisherUserId 'UxojS98G' \
    --clientId 'iit6YGJL' \
    --countryCode 'LlLkWmTV' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'iLH9Dic8' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 OldUpdatePolicyVersion
samples/cli/sample-apps Legal oldUpdatePolicyVersion \
    --policyVersionId '6VKxnEYS' \
    --body '{"description": "U8vYbKJ0", "displayVersion": "SxtU40nm", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 49 'OldUpdatePolicyVersion' test.out

#- 50 OldPublishPolicyVersion
samples/cli/sample-apps Legal oldPublishPolicyVersion \
    --policyVersionId 'wTml6uMF' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 50 'OldPublishPolicyVersion' test.out

#- 51 OldUpdatePolicy
samples/cli/sample-apps Legal oldUpdatePolicy \
    --policyId 'U0kPX2nt' \
    --body '{"countries": ["tD87nZtY", "GGtZz0Tf", "pNgf6Qv7"], "countryGroupName": "yWPaTeMG", "description": "UV4mTfku", "isDefaultOpted": false, "isMandatory": false, "policyName": "Eu9B1Kon", "readableId": "S6ZgLmGK", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 51 'OldUpdatePolicy' test.out

#- 52 OldSetDefaultPolicy
samples/cli/sample-apps Legal oldSetDefaultPolicy \
    --policyId 'pySjKriN' \
    > test.out 2>&1
eval_tap $? 52 'OldSetDefaultPolicy' test.out

#- 53 OldRetrieveSinglePolicyVersion
samples/cli/sample-apps Legal oldRetrieveSinglePolicyVersion \
    --policyId 'GjE3tcfd' \
    --versionId '5TTsLtUY' \
    > test.out 2>&1
eval_tap $? 53 'OldRetrieveSinglePolicyVersion' test.out

#- 54 OldCreatePolicyVersion
samples/cli/sample-apps Legal oldCreatePolicyVersion \
    --policyId 'GR8wZyIm' \
    --body '{"description": "dee81TZh", "displayVersion": "4E3XWoHr", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 54 'OldCreatePolicyVersion' test.out

#- 55 OldRetrieveAllPolicyTypes
samples/cli/sample-apps Legal oldRetrieveAllPolicyTypes \
    --offset '71' \
    --limit '65' \
    > test.out 2>&1
eval_tap $? 55 'OldRetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'V9W47lfR' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'CKpHjJdo' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 PublicChangePreferenceConsent
samples/cli/sample-apps Legal publicChangePreferenceConsent \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zgniP9g5", "policyId": "KWVWC9DZ", "policyVersionId": "NRFL4y5y"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "NfspUthr", "policyId": "yL8V1iVI", "policyVersionId": "jggizRpV"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2GyAiWEr", "policyId": "3NjV6wD6", "policyVersionId": "cG9OrRoy"}]' \
    > test.out 2>&1
eval_tap $? 60 'PublicChangePreferenceConsent' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'HgG2JZJJ' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "oJOEphrk", "policyId": "rMcGycIr", "policyVersionId": "bYW1Lsb6"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "aW5pqTVQ", "policyId": "Iha9KMsw", "policyVersionId": "s1pJnQXj"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "9FIkauVM", "policyId": "pxf3kmwJ", "policyVersionId": "oCLbQR6P"}]' \
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
    --clientId 'X2EKhQqi' \
    --countryCode 'PLACYEKl' \
    --namespace $AB_NAMESPACE \
    --userId 'hMuorDNX' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 OldPublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldPublicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'NAzFERRj' \
    > test.out 2>&1
eval_tap $? 68 'OldPublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 69 PublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal publicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '0erKqil4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'PublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'hOVNU1vA' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'yRF0FHvA' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'imoU8hcG' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 OldRetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal oldRetrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'fLDbFKiW' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'FNsHiIy1' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 73 'OldRetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'dnD6pyay' \
    --namespace $AB_NAMESPACE \
    --clientId '6oQAKRCs' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out


rm -f "tmp.dat"

exit $EXIT_CODE