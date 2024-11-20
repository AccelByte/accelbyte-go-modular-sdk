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
echo "1..74"

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
    --userId 'zUB39w1t' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "S1mN0yP6", "policyId": "qmEH2w7T", "policyVersionId": "nQpte1um"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "TIoX2be2", "policyId": "opITQ9qq", "policyVersionId": "BdDwlntT"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "vQZUwNzz", "policyId": "uhTUtcRO", "policyVersionId": "0N7Uv24r"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'TeKwzCx3' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'K6kxI1Cb' \
    --limit '70' \
    --offset '71' \
    --policyVersionId '6icnUZqX' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["KVQJxkjk", "9osJQMHO", "nihIfUPL"], "affectedCountries": ["vfZ6Mz1z", "9UGD31Et", "MdJFb334"], "basePolicyName": "ToBw0L7M", "countryGroupName": "sJrc1Ekp", "countryType": "COUNTRY_GROUP", "description": "1uJjpfJF", "isHidden": false, "isHiddenPublic": false, "namespace": "NqDEQKBx", "tags": ["WVrNQe1p", "tI5VzrOj", "QybPLK7y"], "typeId": "jtGkadZe"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'MVHfZyRl' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'NDNWwOKP' \
    --body '{"affectedClientIds": ["WupODxQY", "AxyDRCMh", "PYuSrryk"], "affectedCountries": ["7MM0bFpf", "ZeyvesQR", "bDVcTfhA"], "basePolicyName": "yVFX5jSh", "countryGroupName": "xINuJHrF", "countryType": "COUNTRY", "description": "gYQKTvTp", "isHidden": false, "isHiddenPublic": false, "namespace": "DuAdAysD", "tags": ["1B78NQLV", "aZTbidx8", "ARo8gmcl"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'ZpNx7NkT' \
    --countryCode 'GyRbVow8' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'V2pRPOfK' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'sV3Nsu0Z' \
    --body '{"contentType": "ZGF7s6QT", "description": "k6qJFBkl", "localeCode": "vaffJLv4"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '6FaJgWNN' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'eBGTVDhH' \
    --body '{"attachmentChecksum": "vWXFI4Co", "attachmentLocation": "nGEcq2An", "attachmentVersionIdentifier": "DtTzWhGS", "contentType": "UhRF3Zre", "description": "sUKiKVVu"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId '4uASbIdX' \
    --body '{"contentMD5": "jXGEwMtO", "contentType": "4wQ2ryJC"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'BUeG1ONW' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["3nXSatg5", "bjwp3U2r", "sfL9E8Dv"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'TCZj4Kai' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'kePokHyV' \
    --limit '79' \
    --offset '16' \
    --policyVersionId '2ilnEahL' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'qLVaZXbu' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'AZ9XyD7J' \
    --policyVersionId 'BMH0K96u' \
    --start 'krMIYoPu' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy1
samples/cli/sample-apps Legal createPolicy1 \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["Old0fJIg", "zWGOS1W5", "1Z1WQdvc"], "affectedCountries": ["eyJZNxIA", "4L8zs2O3", "XG9V70L2"], "basePolicyName": "sT8gHLe4", "countryGroupName": "t69csqlC", "countryType": "COUNTRY_GROUP", "description": "eoAJzBF4", "isHidden": true, "isHiddenPublic": false, "tags": ["cfFuCxTs", "RpeGTCnH", "X4mD8hK7"], "typeId": "NswLvd7Q"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'jHpk53R5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'BjJ5AQsn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'TtMOwvXw' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["bOrozMK6", "KUuaElq9", "UyPiA3gr"], "affectedCountries": ["Hq4pkDMs", "faNTlCT8", "hx0XaL1y"], "basePolicyName": "O8gEdYcg", "countryGroupName": "HR5gkJhL", "countryType": "COUNTRY", "description": "AoUD3pMA", "isHidden": true, "isHiddenPublic": false, "tags": ["Xb6inrV0", "OQzoVgdI", "X0mlBzmw"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId '24ETHvmB' \
    --countryCode 'fOg6vphv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'ZiUFFqbo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'JVLNhr0b' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["yqYN51bl", "NnCMArSj", "xMtF22zE"], "countryCode": "YVvhmw3D", "countryGroupName": "krIvYN1y", "countryType": "COUNTRY_GROUP", "description": "YAbrZ14g", "isDefaultSelection": true, "isMandatory": false, "policyName": "QQ90HJcy", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'ax0nPV9l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'JsLWVeGS' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'C08mHsXf' \
    --body '{"contentType": "8J11ft7A", "description": "uCBRLoxD", "localeCode": "yavOFFqk"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'RBCOXA2T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId '8twvLIwT' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "OF0OvAVv", "attachmentLocation": "NWmeO2kF", "attachmentVersionIdentifier": "wpXLx8hK", "contentType": "VZLHrcIF", "description": "cay8SZ96"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'tq2Socmf' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "JVgAycFc", "contentType": "ZDa5ETQU"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'w6PhLKth' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'tuPnG3gr' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'DXwvDOH7' \
    --body '{"description": "g6L209XB", "displayVersion": "EXTrYxtC", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'zHfay5vb' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'POFinQ5K' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'e0mQ1Bxf' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'YqW6wMih' \
    --body '{"countries": ["I22k9p17", "WNSE9lBS", "Fb5wXo4b"], "countryGroupName": "Ubu9ajQw", "description": "DuJgS6uR", "isDefaultOpted": true, "isMandatory": true, "policyName": "liLgniJr", "readableId": "tRfh0KTL", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'fUJwuBFO' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'fGXFCfNk' \
    --versionId 'g7pfBJqb' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'XUo7DYPN' \
    --body '{"description": "kTeD380Z", "displayVersion": "e9JHgnbs", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '45' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'wS7J7g89' \
    --publisherUserId 'b8UQOcVo' \
    --clientId '0o8fU9q1' \
    --countryCode 'wNi4NfI7' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "fK8biexE", "policyId": "gidzuAf4", "policyVersionId": "VU2aMB1w"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "RQjMp61V", "policyId": "G9Qyoi1K", "policyVersionId": "iRvDwtvB"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3HQsjt2G", "policyId": "Jj4kKl6f", "policyVersionId": "xiBBF2nH"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'N5SVHkjW' \
    --publisherUserId 'osScGqeN' \
    --clientId 'k1zTFQbY' \
    --countryCode 'Shp4Fjuf' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'L4udIrUV' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId '87HtM5Tj' \
    --body '{"description": "fy3xwE3h", "displayVersion": "q1UFrbXy", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'wLBz1h2U' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'DtRSQltT' \
    --body '{"countries": ["D85CSrTi", "SJnPuml7", "TLKKIIoY"], "countryGroupName": "Pt3NWgpg", "description": "7Er0mREz", "isDefaultOpted": false, "isMandatory": true, "policyName": "F6K8vjMz", "readableId": "no0LpqY5", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'NYtxya8U' \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'HBkre1n9' \
    --versionId 'Q3OI6CDL' \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'ItvAxz7O' \
    --body '{"description": "b65YzbQP", "displayVersion": "94Y02uUW", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '91' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'pP4jFayo' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '0ZKWSoaM' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "fk77INVY", "policyId": "5g8vjUa3", "policyVersionId": "huSEfvOV"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "HA8IAxgR", "policyId": "EKTll0hH", "policyVersionId": "i6NYd3Cq"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zReaXmyz", "policyId": "2z9pcmWt", "policyVersionId": "nqaemkvy"}]' \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'xe75tSDf' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "RcuTx0vH", "policyId": "Fhl5E0SA", "policyVersionId": "DRZjXEbl"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "gB9kMOFw", "policyId": "0ahj6Krl", "policyVersionId": "6mYqxs72"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zNQfchjC", "policyId": "TdwFOWxc", "policyVersionId": "1UnFUnxi"}]' \
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
    --clientId 'ECSleGrj' \
    --countryCode '3RLP6HRK' \
    --namespace $AB_NAMESPACE \
    --userId 'Sjaa19l9' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId '01X5nsrc' \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'Nwhl00hN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'p1NBDoV9' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'mm7nPq1P' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'yMHb7AaN' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'AJmCbpvD' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'SKB7q0CT' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE