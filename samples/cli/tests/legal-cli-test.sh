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
    --userId '0TBaF3hDGIdkzz3r' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "dLBQRzxSYWxmQSCb", "policyId": "kojbyUs0O7XrPZmd", "policyVersionId": "e9U9n3ILOaUbu0nz"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "mwTWIpPlIPJHEBXl", "policyId": "LeKsSpWHYC3aoL2Q", "policyVersionId": "btK7cN7iuR6UBMWn"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "d3haca0xHXk00Fdi", "policyId": "hKIV63yk5PdtLgfk", "policyVersionId": "E1eSi2pijeXvdGei"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'zgssw3J2dCFqjJ0P' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'P0YEywDukrHNdGQV' \
    --limit '28' \
    --offset '83' \
    --policyVersionId 'LeonWt5xxQ3SEic4' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["aChdx90EmFV2z0rX", "KBQe2bFZv0LcOcTK", "UtI05Jq2YbnZ17GM"], "affectedCountries": ["tYgQPecxxHGWoaV2", "4ZCwgkf3YgLlY8oa", "ioZHWxyspEDWL5zI"], "basePolicyName": "Tc8MO9SolxhtFp0D", "description": "zyZsr1YQdmx17npg", "namespace": "OFA58bgRkP5jldLd", "tags": ["7gpkzLnO3jOrNsQy", "Bu53VXSBXAPxIHEP", "77FVyyRttu1GUE6U"], "typeId": "yJBdNKXxZeMjHzkH"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'vl3paUtVYqoUEdCP' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'daYPaHspsNUchgm8' \
    --body '{"affectedClientIds": ["p9iRRy75mFbn4jla", "e10J4Ov6wSSXF6yI", "6NtZoLI51jRXlO1e"], "affectedCountries": ["nnEfKUYRmpbjWnXP", "58h3FPoGAnUycfuN", "ABz4FPTDndnNS27A"], "basePolicyName": "XxuD2yyVMDwpCHE0", "description": "X8Cdwy1S6OBUIvyF", "namespace": "EssZ0c1nQOyvZMzj", "tags": ["u5LJCugAqqpd5ueK", "mUEgfQdH9blxxFlk", "QKqazA8zoaDiO5mW"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'PYQymbXZ7fChb1hB' \
    --countryCode 'N8mvlMakVvn3D2mF' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'YjfsYqw46kMy7Fk0' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId '8pdLdPymA5LMAfE5' \
    --body '{"contentType": "yoorqKmGRuc9GioG", "description": "qBTNCp2lPpzOuDfV", "localeCode": "mkyMIHSX7QM7HEzo"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '1J13PRDkH8p6oKnU' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'GrIulXwcfOT8okvx' \
    --body '{"attachmentChecksum": "EvApPw3rnjXeazkX", "attachmentLocation": "MidGaaacxNW6JN3v", "attachmentVersionIdentifier": "xPTpswE2U3xM5lOw", "contentType": "yaqFJEtmJioGvBLh", "description": "00LJVrtQ4IoUNjjP"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'QLIAK5yOkR7kXjSW' \
    --body '{"contentMD5": "xnMygnidoGxBZPqa", "contentType": "pd332l5zPqzdyFK6"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'GnasZM121imB8hN1' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["qzJ5AsrONqIEUPgk", "tYJhyzJs0bUswgQt", "iOfhMJD6OJv2Zfed"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId '1ZdMUVMD2uvHRne5' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --keyword 'Affy2b8Vr9poC6qR' \
    --limit '88' \
    --offset '67' \
    --policyVersionId 'ELQPPN0xX5Xo3B1h' \
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
    --body '{"affectedClientIds": ["QQmzI059L1CsCiV2", "M0QsPxjssJ4o2QWx", "PZafXs1Fi4dsiDpx"], "affectedCountries": ["tc6oX6Yp9B5G12NN", "950ewZQoxAlyaFCN", "BcdKS8CcOuDwCX3y"], "basePolicyName": "WzO2Ka49k7ZXpgPI", "description": "rBsWGjMTlwEXxAJY", "tags": ["VXOUuJEGw2qy9u19", "jfhVBDuraZZtY3YG", "3MWKPgQYxqu7dypJ"], "typeId": "GMyvn1krWriJSYcZ"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 't92tZup0MsnZwC5u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'mdygQTiWLWCG8K4V' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["1755zypShCJMy2XG", "VF5Q72KuTUjEwkYn", "FQ9URnHjmq6vUBOC"], "affectedCountries": ["CLFFv2PWQB9NvUNw", "DdGPQwcS2bs6O6eE", "976J5lL7f68zcnXM"], "basePolicyName": "oj7g72Uwa9khZsj1", "description": "zdoirDSMbp6Ke6it", "tags": ["AQUaMVzimwm8WmcW", "4cu4F7jliwWPD3Xr", "RmNsT3fiTLDwjZWL"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'URqNFb572o6K4JT7' \
    --countryCode 'kVxLiNZvWWRHL4HK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'vJGRvW5OfuVvRq8U' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'RdtQEZzVJ4gsM4Qa' \
    --body '{"contentType": "Ge5ZiRZF60eX1Tn4", "description": "gHwfqElV0U2Alk4c", "localeCode": "E0zTGOb8C5oHpbKU"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'V3beOFizkL6znpjP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'nsLvW3e6kMEu84S6' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "UkS4ZsHXoMqxpX6k", "attachmentLocation": "YSKxP6uaqr5pH7cN", "attachmentVersionIdentifier": "TcaaRZUt9gbDiqZv", "contentType": "FbtuRUDUpO05YF4e", "description": "2yW8071uLHGxvwVW"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId '3s7JZ4UfmK95bxz7' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "a1Pd12XfmmDyDXVO", "contentType": "GJE8RPzyTSwHqWC7"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'GuriX4vskrweolZa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'P2viihBk5ZsaxGsk' \
    --body '{"description": "kK64HAm2Z6oxa4Yz", "displayVersion": "xLhnBCuCjQgq5ZfC", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'TLreEIB8hiiNSSE8' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'Pi3PW06sFCNGtqqA' \
    --body '{"description": "iMfRB9RRTZD7RfwZ", "isDefaultOpted": false, "isMandatory": true, "policyName": "ihZ9rmEjXjfcjj3r", "readableId": "AD34NrL4FLLzt9Ah", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'jJKTvOuQWHMSTvEw' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'Flt7y2xBq4jrv37l' \
    --versionId 'DYYsKDYaq592I1eh' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'XgKm0enGJgbWflY0' \
    --body '{"description": "TXe8qjxNwCHXGBgW", "displayVersion": "GneP0CCQJZaa1ZVB", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '54' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'zUIpIUB3NGdCYykB' \
    --publisherUserId 'MBGzo29IPAglljbI' \
    --clientId 'wFreuqBtchrJMUFm' \
    --countryCode 'tnEPNe9JIAVQ3wEC' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "hcKaCRVgBnpBFBww", "policyId": "xBVj8vtkC2qJPEJG", "policyVersionId": "7MqeT9rq7KxjNEqg"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7KtjdhJdIln6xPVA", "policyId": "Avm4clezecclcMAI", "policyVersionId": "JC3o9UawS83OWH94"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Tj93mmCjezN3QPN4", "policyId": "2yojutpWPC20FZm3", "policyVersionId": "6RcmKfFLwZXaLbGm"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'tDo0VQ8JgP7PBm7I' \
    --publisherUserId 'R802M2Eq9LR89fHG' \
    --clientId 'HB8OFb8gSlGZtF2R' \
    --countryCode 'MeZr0HJAeQDY6pXZ' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'GyrCT3x9gFHAf7G2' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'HWOkvvdiNbyBqNyg' \
    --body '{"description": "dLzdXWPgZDxU5Cph", "displayVersion": "N88F1445SAh3KL0x", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'fqrztCahJ5NUoZRv' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'BsNeszAy2R2zKo80' \
    --body '{"description": "5WjFjVUJcZCtZBsy", "isDefaultOpted": true, "isMandatory": true, "policyName": "fWYmDwXsVm4FAl8r", "readableId": "41VsHiyq5JjVetWp", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'jXZICtE9h2zGdkTy' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'TzuBLpEpv0ggNHKt' \
    --versionId 'CQakRJjD4aEXZP94' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'dUM297eZjiw6gubg' \
    --body '{"description": "io233dc0Qy5HFaGd", "displayVersion": "76aRtajevtLYlMdw", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '66' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'QZGQQD2T6ZgqDkIL' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace '6bCiISKLxfn6r9Oj' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace '7bEEQzr0vkQEJD6X' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'X9hh15joK0vWQGCV' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "XS1Dmeq3pWnFXaCj", "policyId": "dJGgdMBEj5P9ofzG", "policyVersionId": "0OBmdCA9CGrEbI1m"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "mUwl6cgcjEsVtvse", "policyId": "wn7grFDnc1YEJjOZ", "policyVersionId": "l9lYookJYfOtvntL"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "4W0z6BISjpNgQR2Z", "policyId": "dA4wpxQfHuVEfWNz", "policyVersionId": "AYJI8xax4c4L9S8W"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'qjStHhnPrYGiHsnB' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hPy15NITCupPD4f7", "policyId": "jnCXgFf73msXlmnz", "policyVersionId": "m7u3w3XXe7w0ctDq"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "96jGSiNk2LeiQ5Wd", "policyId": "96PjMasKAFhQi2mE", "policyVersionId": "09fpqaW5tckRmR4v"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "v5yAiul7zu3mHczs", "policyId": "EhKzwsy0BgJmeyfS", "policyVersionId": "IJuoE8Tvn82iBVbl"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'zjg4Fx7Rl1lrGUf9' \
    --countryCode '6As58jgZgjdIHn5q' \
    --namespace $AB_NAMESPACE \
    --userId 'rP7E6RE1OzlvU4N4' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "fCpabOuK8fgy5a9C", "policyId": "3RNSVQU98nBrjF6g", "policyVersionId": "XfJqsZCV8v8VC3oV"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "N1jBEI6SZcFjz1Ds", "policyId": "xTurC3B2K1t1SCeH", "policyVersionId": "HRUEB5KOlNp03dKP"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "bUrHIOwCBCLhmCy4", "policyId": "2TGvcPrNS9fMflbk", "policyVersionId": "2bMTWcmeHNHReKL5"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'YyeuZtnlkwRBW1i3' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "EYgk6cVSaqKn4l6E", "policyId": "0W6E51iYVuWwEaXh", "policyVersionId": "cyEGERuQc4ASnoRH"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rc4fU0X88VfbjLuU", "policyId": "A7OEdHBJDTdCXavj", "policyVersionId": "5JEKEBbYOLttWuL6"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ATOy3jBuA6QPTy7V", "policyId": "5KuvtvKgNybMrkc2", "policyVersionId": "i4ENDIVMswssoYV8"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'sK7KuVWtI8CbmVxY' \
    --countryCode '7hGdJ6PRi4EBU3zd' \
    --namespace $AB_NAMESPACE \
    --userId 'WKDvm121y2cir4BS' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'xqPaUw8KajyE1tUz' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'AmftfyTD67KZM3zZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'piWUhSAl3aw293vN' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'k1yiUs6mVFe7fOFX' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '4Y7Pw3l0G8DoQQFJ' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'trLfVhIiTISxW1x7' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'HTzmWsG6Mg32VIvr' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE