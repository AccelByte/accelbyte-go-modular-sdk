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
    --userId '9YbF1xK3DYQkwVtn' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "mSjz1EvAFmFGVdc6", "policyId": "Esw0bWDYHsYh2sNQ", "policyVersionId": "dACif6TqArlOQi7E"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "PSLsrzhxbBHjdEQr", "policyId": "zycJgvUdVxs6mSsu", "policyVersionId": "5vBrKYUk7aLdy0GL"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Vgz5Czcx4W8UpcSG", "policyId": "6Xy8iWg0YPuD0xjS", "policyVersionId": "vIljmpSeLjgCXREl"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'M6qeRuv1vwVcbKQC' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'k4LIYOpHDR6TNDyJ' \
    --limit '47' \
    --offset '46' \
    --policyVersionId 'aWxJwB9Vuv8V7Y89' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["HHjXTaFZeqsmxh6M", "JKpCl16VUPcnjyIS", "7OkVfJYKFJcxJMMR"], "affectedCountries": ["OmyFRgPx2HVKUajp", "blNRaJAOesB41Zll", "kIPbASvXzy3Wy4qz"], "basePolicyName": "1BlJEWTUrhyC4B7O", "description": "drIza6ERiRIe5Euh", "namespace": "wGbA4yzmiTi9BQ4M", "tags": ["RR7TpOJH6pKT8cQd", "wzag22voQEugXqRm", "zVNXR3OwEjWpI2nA"], "typeId": "Zsm3gOBRRRBl1TO8"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'Ct2QeEpv2Tt8ivKw' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'JilTRU43L18amglw' \
    --body '{"affectedClientIds": ["YifngCUvIR37NBBB", "fCmwNK40NObWRcvx", "zKDDx1D2wslDY2xH"], "affectedCountries": ["DMiUdSDoOUy92Ojq", "0OyI1wt0qS4bT9iq", "k4MO3s1nLgimnwGv"], "basePolicyName": "97grL8D9qMwt7O38", "description": "EKHwWL3rs3u1qB0i", "namespace": "acXWKWU2wioaUTJ0", "tags": ["uVSovv5nYhnF8Tp2", "qjFsEaZ17prtKZ2d", "ZnjkP777fcVHaXVc"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'oBqcJAMMpC4BwT1F' \
    --countryCode '10W4mvZqvkp6WN91' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'CKDyrUVCmiy7dwZs' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId '09PchYMLX8DhGbhO' \
    --body '{"contentType": "BZsU2gEUwwiQLvlM", "description": "TOL5WEOEO7FYMpW1", "localeCode": "msj9L9RB3NybIQxN"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'PS4YZKVWoUj8y8UG' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'o4Y1hgWtfdzvONF1' \
    --body '{"attachmentChecksum": "4Ak8TIAuvYAwkII6", "attachmentLocation": "YAjQPxUbXh3oz1PC", "attachmentVersionIdentifier": "Abc4faaR4fGa2FZ3", "contentType": "XZWfDsI54dI38NaI", "description": "KUx0QMeF9kk64ZCx"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'aFrxMbldK9vnRTgg' \
    --body '{"contentMD5": "dT7JGHvrBxPDwvR4", "contentType": "pLuTihzdPz0FcqX5"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'z11ffhgh7WCnWGGL' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["LhINc0vWYClYbYkA", "burQY1WNcOPqKV5C", "u4hwtxmjcCCS8gju"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'hMT0nO1iD2Xj7CFz' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword '5kKspe39y1htffHa' \
    --limit '51' \
    --offset '93' \
    --policyVersionId 'fEDXdM7HVyg6gbe0' \
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
    --body '{"affectedClientIds": ["QxafJwnQiIlxD7mn", "ddlBE3iqajSp71wa", "fYSV5p256HrV1qq3"], "affectedCountries": ["FkUeEddWwFnZwlif", "G8XNKxRKmIC09qlS", "JrsgAIBUi6aZ3EWU"], "basePolicyName": "aHe9gByYUVdACJvM", "description": "Bz4Fpy6XC0DYiFe8", "tags": ["72au2U6LjEBGlEQ1", "6ADbsPGkrUMJUkRJ", "jNYg1w1hU2bgJEuG"], "typeId": "W1RE5iKyyAeVGpnf"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'JMJve4SsJCTsm5fK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId '502aV1SSgoEjlPw4' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["xUO0c1l53OMtraLx", "8QtDjPQwzA4K9eaF", "N02jlxfu2W13bMjx"], "affectedCountries": ["dwOCOs7DJ1GYMK1T", "4G3hExHCnaOMnBv7", "88dVtHmr2qZdzytu"], "basePolicyName": "z5UaF8TSDlGTXgwR", "description": "n5MjtjbJEVacup0W", "tags": ["bm6B43cPQiJZzxTL", "n7iT52MGOW5U3hJp", "uJRmtTz3iz9d2zwi"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'QcGj9HJZqg81gSES' \
    --countryCode 'isGpakkTpYTagQq0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ioqysZXvtLw5fDeg' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '4f0Xfn5vRVaoEgUV' \
    --body '{"contentType": "rBv4L5Mcndx0quRp", "description": "PQl691WsdoSMPbyL", "localeCode": "n34K9fxNjYYL4rEh"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'q0AnFlZuohx0ewgR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'skWawvYkcCFkleFe' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "CUNRj94JqBTAA694", "attachmentLocation": "wcfUHejXpCQBCXIx", "attachmentVersionIdentifier": "nNUmJaKQQMSXD9p3", "contentType": "c64X6vnzwqsTgzS7", "description": "b7izfLUxIf2xUFkU"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'Is8d7LUcwxqEU10P' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "ed7sHDDsmmJm8dlG", "contentType": "Kq1EnvRT0K2LVnzk"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'QCzEB0JGxy8VffBc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'qgcOJBgFHf1L1oAw' \
    --body '{"description": "WlnF4puci4yasbJM", "displayVersion": "k1JL5GB2KcBzlTrg", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'GzDzybcKfM87TNNO' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'BKooVdDSXS5WD8Ep' \
    --body '{"description": "pbsvSbhkFn9yFtWU", "isDefaultOpted": false, "isMandatory": false, "policyName": "VTyzr1knsTkAACQE", "readableId": "AEBO914mVsH0YeSc", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'Cylh554GmDYiuoPW' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'xARzLQcVr7BLWHJY' \
    --versionId 'Ym1RmzrOs3yRHVMX' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'VV6lTKCRrPKNoHaJ' \
    --body '{"description": "v4cck2XUXr7tSngy", "displayVersion": "eL7lJwyCX3a2Ahql", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '24' \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '8sbMGjts6HEaAT2A' \
    --publisherUserId '39gGiYaRgBTR3XGU' \
    --clientId 'MV6I6C4jdNjvFcyp' \
    --countryCode 'KrvNGE742yHgUk1I' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "XL8lwJjEbZJHV04Z", "policyId": "Kn7KvQ67cWqxpOPw", "policyVersionId": "aV2trdbLb7K5Lftp"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ymIqqoaWmAFE9Xj5", "policyId": "eHgg0XTLEgkHwGSa", "policyVersionId": "GJrP5s2S2Z0IzupM"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1IM5T31SWoP5oaCE", "policyId": "Vo4yNeeQhVf5aAJ9", "policyVersionId": "sUFDZz2lRgW43b7k"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'g1C8ZvgFDkDAEuJb' \
    --publisherUserId 'ZqIQVn7uaA2KN6sp' \
    --clientId 'HRH61OSl2LZZTu4x' \
    --countryCode '7iMFeco06fzpohUG' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'wGcei2RgpdnUFVF0' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'zNTZsdj3OUf941w8' \
    --body '{"description": "mtokvbvzsolRAfe0", "displayVersion": "sxuDj4FJJXR0xMZX", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'jQZOdouEmbg08txc' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'djD7NEUb6wPesZio' \
    --body '{"description": "NXZPTcsH6hBupeZC", "isDefaultOpted": true, "isMandatory": false, "policyName": "cX7EMs4JeBPRGx47", "readableId": "rj3yLc1hWVx7UVDN", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'p4Swked7v3v4UCSk' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '6EQISM4GUmXA8gaK' \
    --versionId 'eknavdy4kteTEymp' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'KuGEcYMYjtpCgUhL' \
    --body '{"description": "WOIHo1g0hwtHON8o", "displayVersion": "XqbcqSk0o9KYZTsY", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '11' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'dwS68z3vlhtvxLvy' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'nlIZsJJ8SXCyR92Y' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'sOCADvSB6Jh7aAhW' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'D8Zg8PJ1RhIvsHrC' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "D3i3n7wFxEZhNPxH", "policyId": "WtUYQ4qmpz0AowrM", "policyVersionId": "jrkJOXFfpwZblhJ2"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "JnsHt58mLp0laO8D", "policyId": "82DKDP1kGDeCCNtX", "policyVersionId": "v34OfKCNWwP07bL6"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "vgP7X9asXvmA0FVI", "policyId": "1gUob2JVoZiXvOuQ", "policyVersionId": "r226cjcULRN7Iqq9"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'VME45TrJ85sR4sHa' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "xYwbDV4gZw2CNgTS", "policyId": "Q7yvgzu4nhWxzspA", "policyVersionId": "523VroNzT4cUm2SK"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QJR534g75zfVaz4T", "policyId": "D6EFR6rFJ0QapQdC", "policyVersionId": "qH3Gnfng6djV0Bbr"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OdONDEkfucy9Guax", "policyId": "ZoB2kQ7a7AquZZV5", "policyVersionId": "6bNK17mHyjrQ7SqN"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'OGMioNoFmmaYDeUA' \
    --countryCode 'uRPpOQg5EcGC0Nx1' \
    --namespace $AB_NAMESPACE \
    --userId 'W61oA7aANI7YRpvc' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "pF8f38s3jWsstRhW", "policyId": "zmkpnVZy4CFS39B3", "policyVersionId": "dNZXX8p16mbnNH4U"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "bO0OdlSUN5z82TFp", "policyId": "6DzG0Wx2kXNzf6CT", "policyVersionId": "jEXISN3AU3mjbVSH"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qN0p8j0t1JXzJkFi", "policyId": "K5jyDsagJR4367yd", "policyVersionId": "iOcnCelt4iZgmOf6"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'L4IniimYl5uXD3Pr' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "VlE2tD1cHXKUOMkR", "policyId": "hi7dyhkiwmVuUssn", "policyVersionId": "blfa9yPxbbhYjd3B"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "M08wkQRNrnWah0wF", "policyId": "LXX1kpcuF36UOVr7", "policyVersionId": "2t9Sg9Jj8jNGrrX2"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "4YjhzF0mWo69KJXP", "policyId": "duzp3Qpbq8oZuMOd", "policyVersionId": "7BCZ8soxj1OcrWph"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId '9tLS8WvuCxbmfOlK' \
    --countryCode 'WHcv4prPM1GWFRjt' \
    --namespace $AB_NAMESPACE \
    --userId 'oUDEBsVo4bIJCkEp' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'KTH4NTn9LN77Cj5J' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'yMlYJopnP9BoI1Y3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'XQvX2PkSIuUCDuAI' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'AYpHwAesI4iwGqoI' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'JTXNWmMaZEl35umX' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'PZg89CsFyen1wIXH' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'sWnsvwf3QYqYFk5N' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE