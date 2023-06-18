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
    --userId 'MRT5g9myylktiqWD' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "F44twMZm7M9YOeT8", "policyId": "UUOoWiQqkrMDdxC6", "policyVersionId": "xHP8rCsQEkQBgEWT"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "fW1MkymuO0PVinXj", "policyId": "Xo8psCO8jwtljJXA", "policyVersionId": "m8ZzRoWTqisYbFWO"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "OahTAxgXaxEKWJyw", "policyId": "VKEVm4GNpCLp4JJ5", "policyVersionId": "OynmPKHR7Mg2M1jB"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'sYANf4TXLhumwV1q' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'FTIDQczSUVEhjByq' \
    --limit '13' \
    --offset '61' \
    --policyVersionId '8pc95oGJYdHGKWaR' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["pjb0IlcitPIZloU2", "s4YVa6ijPDimQrEY", "7ASSF8pCrC2B14Jm"], "affectedCountries": ["XQmIdZayVzVOzPWJ", "PNu789e6snBrIjCq", "Q50LAR2xoxPVO0vb"], "basePolicyName": "84YK2N73ie59HaoM", "description": "L5lyzGjYAsmcHaDL", "namespace": "cPloJijmqsrwr9q3", "tags": ["mG7mPgeXBuBZF7RS", "5k4D44nO2HUTZyN1", "oPKnoLD0FyFFGI5o"], "typeId": "wcspVfdsgwUKb1CT"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'l4xb7QWOfXMl9t44' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'GxbxB72xW0na9VKS' \
    --body '{"affectedClientIds": ["mNHu0NjYIsbR1SUA", "TDEMH1tgphMdXXOF", "JP0fuaa7tbsmFWuU"], "affectedCountries": ["CK6o67XoQNZwrEuw", "L6KzybTAlhoZXIJc", "aOsivcTj6gbBdpu4"], "basePolicyName": "H9H5LjkOZAuo83tF", "description": "EwLwHFgd4sCS6Bf6", "namespace": "WHuRCVtPveMA5gUW", "tags": ["S8kP0ueKeX9PbaPT", "BZNNYY8qEPPyZzJk", "JRs6wm5YcAht21QE"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'tBQboBsvgxELukBz' \
    --countryCode 'xGhQDB7R8Cl2FiXB' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'WrM5taE0BS9TxHDn' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'wRrRr1jPHRlnh2Oo' \
    --body '{"contentType": "ACu3SnFL1CFwF6Xq", "description": "dNKrb4cEeuJfafLh", "localeCode": "3IS2JwPZqgphxnSC"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'CckEIyHTYA6xa74f' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'qhI8bZ6Yx1uYzFNZ' \
    --body '{"attachmentChecksum": "6YgalvsNtC3Qwabm", "attachmentLocation": "QlinKoabsh81ublK", "attachmentVersionIdentifier": "umauk8x8NmO83MuQ", "contentType": "jy0175lBdTNDdr6E", "description": "FqSEOFqZ6DKKOo5U"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'wT191p7JYlZ2VkTC' \
    --body '{"contentMD5": "D54yoAOe9JGjZyC0", "contentType": "hUggLCVefJ6jpfiK"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'P76jEndwf9VcQ4W5' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["ADCVkyLcmJ3RPl8O", "NwsSKW8crrs85e6l", "SSXwfob6SnHXToJr"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'hlDFrvbU7Uan7r8a' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'm81biCANvMniEW7J' \
    --limit '55' \
    --offset '43' \
    --policyVersionId 'lHduWJXocXaJUr8f' \
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
    --body '{"affectedClientIds": ["ZFKs3gtrH7yqhD1W", "MoNfmhzIFBoiocoi", "gcm4RNqvEAzCR7np"], "affectedCountries": ["2DkTvGkBWm45ZjpM", "2BGaqJkc9I5jYUmg", "JKwh1GPnFqHovSbr"], "basePolicyName": "6dUhayzbwMPgb5A0", "description": "BOsCQ4iNhC4YVQ7D", "tags": ["67kPzbPTTPEP5BSx", "Gc4FXlJOKl8GpSVf", "Fu4foiy7TIjHfafz"], "typeId": "VRvzKKwNi6hSIXtO"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'nLpie2dWS9RinWtI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'vSHfoSpkpUGX2QPk' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["BXtZlu5woMEXeboC", "Ex6WJk1byd5OQ7Zj", "WmBr53yRM3t0YsQX"], "affectedCountries": ["1c22uNEhwDT2dJKy", "XH5SUmf95qaHPJ5Q", "KRAyjyRxXpMpW0BI"], "basePolicyName": "9oOORQAhRbZSwYqW", "description": "oAxrWl9onvre3p0I", "tags": ["KUk1IrKHyWu861gO", "hF9NarfaXBLEXpWZ", "3Now6Knnt5MpsGcD"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'HpqIs8LOosiyAf0y' \
    --countryCode 'd3rNZoEbq36mwqpo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'YjIymXCEooWKK9hk' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'M8GVaDx5WJrLqGfA' \
    --body '{"contentType": "JrQO2iWs6auAvbYl", "description": "VmtD7ybkdR59MOl2", "localeCode": "R5283m9ApOkJZJ0z"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'E9s4kQrt3mkCcAfp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'gzWeuccqhx9R6XaA' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "hFPYJJBz72OJBt2L", "attachmentLocation": "akkIluNE0sXQk6Fw", "attachmentVersionIdentifier": "3bwvOb7n1M4es0xf", "contentType": "utbGoaoHLTZeOJxK", "description": "w4RHieiEmMmaSsN9"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'KGXXoyrRx3gBegmH' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "0qYLtgjbo90maOzF", "contentType": "q5lU06yPjYF5eb0S"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'TVDvqSyjDSKj3OuW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ItLKPVn4uk6oPrU2' \
    --body '{"description": "BF6LyczyxBdRCGdc", "displayVersion": "WkIPDgJxXGrS33Up", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 's4sU5A0c3oARi8mQ' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'HN26cg7HeuWBzPuC' \
    --body '{"description": "iCSgDsMGScB2qaJz", "isDefaultOpted": true, "isMandatory": false, "policyName": "7yuqeI9VbArjnBz9", "readableId": "ryWlwHFJTxuPBVph", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'LPZzsIxWOqk9KMy9' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'N1sawPDOREGhDzo4' \
    --versionId 'MxLxxByTxaZ6C8EN' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'KGmkykzkNr7q6r3o' \
    --body '{"description": "NQdcF0WNX4elwXzg", "displayVersion": "tg0GE8QMr6GakK5l", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '7' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'CudVN0o6QZCJC8KI' \
    --publisherUserId 't3ZzabXb3Z8LfXtE' \
    --clientId 'fVtOcHtsWNlGBxnc' \
    --countryCode 'xnoeyruKLkiTecwB' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "bye0dG3VLyVsFwJe", "policyId": "3VBxLvVDDVWGXzaw", "policyVersionId": "MihhMsjwSeVzWlYg"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "xtz0JnI3WHzo6Atq", "policyId": "v2SWd6YN1ww8gfYS", "policyVersionId": "THo7vcpAkmPmAdOW"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "bulbwZjeEB8djzxA", "policyId": "OeSsqAXfTBL15Qcx", "policyVersionId": "aXnHEvpkMKaNfwV6"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'TvCD90n4Eu9QZE7c' \
    --publisherUserId 'OhEvzn04hYEqiezr' \
    --clientId 'IFE7BJICIgy41Gg3' \
    --countryCode 'lTq3paoBd3EzWKfe' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'FPaozBpBaab3kn07' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'CSfEMlR8NHKWzDKd' \
    --body '{"description": "vJw3znpV1UDwKjB8", "displayVersion": "wlawn7cCg6KUfjde", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'bIbc2FpKmnVJSVcK' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'iWhQoJMHU5RAxE2t' \
    --body '{"description": "bvzB9kF29MdynUQ1", "isDefaultOpted": true, "isMandatory": false, "policyName": "Cj6tiKuhjzVE6JBj", "readableId": "HPpNo95LvgHce71E", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'PsDc6LmzvdMAmVSz' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'pZtZGw2JYVv9MfGs' \
    --versionId 'UJvQ4NVWQkT2C8pG' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'pt8FXTCTze7jShNl' \
    --body '{"description": "L3YvA5qgVphFxZdU", "displayVersion": "zf3bsvvDV5Pqxy0U", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '25' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'QcLJTN13fLN3xYir' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'HVOh8PRVUfDzqbbO' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace '0kAO2SZPe96u3Xbn' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'uKwof0VM22Ti4UGC' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "rImGYw03pDvrwa5D", "policyId": "bnqFaob489zcW5fd", "policyVersionId": "y2IvdOExeYNrYtUh"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "h1hsvigAmZILp9pk", "policyId": "rTxiwsczGGTVD7HH", "policyVersionId": "N4E676P8JL8HQTn5"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ceILBquAcOIkhGXA", "policyId": "cKbtYBfZ6RCjcb9x", "policyVersionId": "DpTKSV6cWp3EQXGy"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'pIK2YVPzYxug17wd' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "6ty54yCcDeeHNGFV", "policyId": "9lbeKK77Le0MFqPl", "policyVersionId": "ASjvH01wCB61CmOn"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "v5iZx6KHwO23jxE7", "policyId": "c0pXMur4vHlIC9Ks", "policyVersionId": "nLgytDSGbmqSzuja"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "filVf2nS0VLmVthc", "policyId": "u5Y5lE35utdiiLly", "policyVersionId": "S8AmUGN0UGNnur0V"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'JWwVl5iczU7WiiHt' \
    --countryCode 'w4mxZmqeBpnBfYdA' \
    --namespace $AB_NAMESPACE \
    --userId 'rizmAet4xuCVIKL1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CWuYsmqEv9WuIYeT", "policyId": "iMFrP9m0UGc3xgyc", "policyVersionId": "Y6m2HnMQkAXt3bZf"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "xhqWr3LoDoJiUk7i", "policyId": "YqNaRfbDc5xxhJQn", "policyVersionId": "312mcMa4M1wjoyEF"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "AEnmWtktxnoWtz9q", "policyId": "vYPIG170aFuaKpL3", "policyVersionId": "pkCyxqNfeW3FnjHT"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'FdvxgLQK6C0cq512' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "BiORgZCWhxNTKJb7", "policyId": "jwk67jNqXD7431r2", "policyVersionId": "UACA8MrmOTk2i1Pg"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "NtD5gvHi2XClxiJR", "policyId": "nTvGmXgd0hzNhlLB", "policyVersionId": "K5W5UVnXHyPaHGrG"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "5ib4VaMnpOxvtJsa", "policyId": "3zNB6yj6iFFMrDR9", "policyVersionId": "40U6Gg4MebQWahDZ"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'Inrt2xp3nNGsSGio' \
    --countryCode 'bDhfD3LC2760vEZ1' \
    --namespace $AB_NAMESPACE \
    --userId 'khNMFFnT1qfl2uYT' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId '1MERACdk3LUHXADB' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'eHgxk3YnzEDTQzWN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'Bs9XeoyMkTnjrXzu' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'm25AZ4gz2EGPMRAu' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'W3KRFmbhDM3liXV4' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'E7t35qsnref3RoBP' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'HIHSbTpvjs2kZqDk' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE