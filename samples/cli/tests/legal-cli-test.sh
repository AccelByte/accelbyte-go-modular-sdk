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
    --userId 'H4GHs2nH' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2sliuZsi", "policyId": "KkZGpsqz", "policyVersionId": "P0LMulaJ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "eSeD9uqq", "policyId": "pDcTyjSd", "policyVersionId": "qK6V7ESE"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "it0fA4o3", "policyId": "SIxCfOK4", "policyVersionId": "QmYyjkJ8"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'hDQAC37b' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '2DuGypzO' \
    --limit '70' \
    --offset '30' \
    --policyVersionId '9uIGVqTx' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["RbWueTgh", "0rpKQEWW", "UpjCOLDk"], "affectedCountries": ["30MwaYtX", "O8YdQwO8", "GXlzOjAu"], "basePolicyName": "XOW9oRAF", "countryGroupName": "F6EJJzMd", "countryType": "COUNTRY", "description": "oTC3pwB1", "isHidden": false, "isHiddenPublic": true, "namespace": "5bUe3aQV", "tags": ["zSa47ODs", "JBRO9aCB", "DbcgmpTp"], "typeId": "Zzg1Gapw"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'QelzfYEd' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'ZPU2FggC' \
    --body '{"affectedClientIds": ["brTChsTa", "EJflwJfr", "d3IVbu9l"], "affectedCountries": ["pg6dUij9", "DIQrDun8", "yqdNfYna"], "basePolicyName": "ytu2zBs0", "countryGroupName": "KlcMhdyX", "countryType": "COUNTRY", "description": "WhGg2OzG", "isHidden": true, "isHiddenPublic": true, "namespace": "JLTDg6BU", "tags": ["BFhsrYo9", "r4fmwiji", "BverYoeT"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'b5y4mXr1' \
    --countryCode 'SeiWgMVa' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'xqlxHOYQ' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId '0tBl57Dm' \
    --body '{"contentType": "XIY9y66J", "description": "8MJgckwo", "localeCode": "r8AxzxNB"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '5ueyXGAJ' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId '3xjQAZhe' \
    --body '{"attachmentChecksum": "OB6OeGKz", "attachmentLocation": "OuF71E5a", "attachmentVersionIdentifier": "sVeGtxNy", "contentType": "sdJLx4u8", "description": "h8oRLPby"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'WdxmWRuK' \
    --body '{"contentMD5": "LNJHhPhF", "contentType": "MK75wNxw"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'gJTyJw27' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["HLPGYFUK", "iAAThTYm", "6FpPOzUJ"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'mkEYnpsq' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'RZwYk93n' \
    --limit '28' \
    --offset '22' \
    --policyVersionId 'Uz06hsrB' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'ida5m6VS' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end '6jThdB79' \
    --policyVersionId '2frXGGGK' \
    --start '7TYuww6Q' \
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
    --body '{"affectedClientIds": ["RYUtOMt7", "Q7BAz0qS", "bwv2nW96"], "affectedCountries": ["juA96Qxf", "rXBL80u5", "Q5ua83dn"], "basePolicyName": "nb1Vxvr1", "countryGroupName": "n1BZ6bHV", "countryType": "COUNTRY_GROUP", "description": "73pmrtIV", "isHidden": true, "isHiddenPublic": false, "tags": ["y7rsaKmA", "ZEVnor6C", "hAvjOexA"], "typeId": "y0UfjLXR"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId '8FCoPhi6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'WgHdWoAb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'cjJGiN5g' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["BBXotQCj", "hpyBrSOJ", "QXgPDyGZ"], "affectedCountries": ["WQ6VPGY1", "o5E4vPeI", "G797mhcl"], "basePolicyName": "W6wQGkPW", "countryGroupName": "DBS0YOms", "countryType": "COUNTRY_GROUP", "description": "3mbkZ8OH", "isHidden": false, "isHiddenPublic": true, "tags": ["EZWUp20E", "g7bP1YP5", "rKTHLF56"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'R4jJjtUK' \
    --countryCode 'Owk5OjRE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'TCsHCHwR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId '1oVXE69h' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["Rw7It4ae", "dQwC3yPP", "Gw0uuH3V"], "countryCode": "wk0ObzTC", "countryGroupName": "nMbfKu4h", "countryType": "COUNTRY", "description": "GU2VKrUp", "isDefaultSelection": false, "isMandatory": false, "policyName": "zRGvmjYY", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'NzXLjsED' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Rq9S2o2C' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'wmIR9qD4' \
    --body '{"contentType": "VRd99G9A", "description": "gfCHaocy", "localeCode": "4NqMzeXx"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'MH9teyJY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'dalfvaaK' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "WWKaOtuR", "attachmentLocation": "RFGMgTJK", "attachmentVersionIdentifier": "6m8vKfqS", "contentType": "orTnPjYC", "description": "VLCPm9tm"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId '8Hq0bAnF' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "IQloWA6f", "contentType": "doOicVmB"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'D4H7WHv9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'SIN6Jjjc' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'FkPa1I3K' \
    --body '{"description": "NlIkPpD2", "displayVersion": "cd6mkBOi", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'qFOVuj0G' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'rdkj8QU1' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'RJGSPMoh' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'AkSwfBdY' \
    --body '{"countries": ["iFBepsaE", "Eu4XNNAM", "4qykyJfA"], "countryGroupName": "gm4DRsHB", "description": "yam3N0gO", "isDefaultOpted": true, "isMandatory": false, "policyName": "8DaL436d", "readableId": "VQgxVHnk", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'W4dGB1zE' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'BbiqEriR' \
    --versionId 'PMd8fSbj' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'SoAT0suf' \
    --body '{"description": "F9ostqzm", "displayVersion": "95oSUVEW", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '38' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'wNWEbw2L' \
    --publisherUserId '4rm126DW' \
    --clientId '0fwT2MlJ' \
    --countryCode 'wXVqPC6v' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "YbdEswB1", "policyId": "OOtUxewZ", "policyVersionId": "omofP6e9"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Sjoy8LMn", "policyId": "FFw04uWZ", "policyVersionId": "YZmOVQ7B"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kI5e2qgv", "policyId": "txcHqb44", "policyVersionId": "NMyAHlcC"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'Zunx6Pzp' \
    --publisherUserId 'wnngHCN5' \
    --clientId 'CbqAZO2p' \
    --countryCode 'aQVPiwhX' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 's77DCJLB' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'Jl7tEB05' \
    --body '{"description": "bD8LSDsL", "displayVersion": "6eOAtUDk", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'ACkTTX2I' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId '54J0JO1C' \
    --body '{"countries": ["NZeYcdc9", "hAbTAedg", "Cfx0rfqE"], "countryGroupName": "DtzpbX5G", "description": "HDSpLOBD", "isDefaultOpted": false, "isMandatory": false, "policyName": "DFguaWt3", "readableId": "eMZPsBc3", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 's5X3Rs52' \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '5R2vnQiF' \
    --versionId 'gjeBdksr' \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'Dlea83v4' \
    --body '{"description": "ZZcchoTo", "displayVersion": "dM8eETJd", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '33' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'szzz7a8a' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'DdzwpyFA' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "MR9CgC3r", "policyId": "VZF0BOYw", "policyVersionId": "eMH8mxPJ"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hQamTxPh", "policyId": "Ns4iYNOV", "policyVersionId": "Uffjdthi"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ErIaTEsk", "policyId": "SBlPmGcN", "policyVersionId": "rYeheHcV"}]' \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'MMr6nVyX' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "HQiVQxX2", "policyId": "HB3itcxD", "policyVersionId": "hZPM3DUm"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "GC2pv9xr", "policyId": "gt7Fnqdy", "policyVersionId": "1ZOBRQRb"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lO8g0zMI", "policyId": "I02Rc05E", "policyVersionId": "XZdoc4H7"}]' \
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
    --clientId 'DLlqviKF' \
    --countryCode 'ptWPOq5M' \
    --namespace $AB_NAMESPACE \
    --userId 'xYLXEwy3' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'vATnpzvY' \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'M7h836W0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'Dr6uoshP' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '9VTuYYrU' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'e0RyIIav' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '5Qv9d2ru' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'iNX1hK8j' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic1
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic1 \
    --countryCode 'rJKQfrtB' \
    --namespace $AB_NAMESPACE \
    --clientId 'q9QyZqon' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE