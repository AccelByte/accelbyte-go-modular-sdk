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
    --userId 'nSLgYiN6wcTLR5Zn' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "gJgDtsdgPrIXk1ls", "policyId": "9zzAlqDOnoMMzQwg", "policyVersionId": "faMxxEZTIe7TRtmS"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "4T4moHvXjgiyUycm", "policyId": "8f3cmcnFIIJHQlQz", "policyVersionId": "PuLa6HLErQKOlO55"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "no0ChgvaIvslWNoC", "policyId": "mkWIHWhrwWWASvN6", "policyVersionId": "ho8exgqZyKSicJOg"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'c6g8EXoOwBwgy4Oi' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'zpuJamj81woggtcG' \
    --limit '78' \
    --offset '93' \
    --policyVersionId 'UXvJprIPzNynMUKO' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["8cDs28vRzrnCGiNQ", "qET5TTSG6wwnHybs", "RkMbECXjDJ8eiLLz"], "affectedCountries": ["TsNAvG8h8RRWMNS0", "9sb34ZIHyZkBrpsr", "nKdmU3yqkjt1pP01"], "basePolicyName": "dkP9Cge98RHZPJGC", "description": "SZjVTLPLUql2y1ZE", "namespace": "ulYttoQrY7IIbIkS", "tags": ["7Q7Sgt6oW7DZXNC6", "FKuUuzOpXJP4kt2w", "oMWn9fFMnLNZy3dO"], "typeId": "6EOtfan35z7AFdV8"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'OxrL2E0ZWU7xwHsm' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'EqOkOzzBZkTm1P1t' \
    --body '{"affectedClientIds": ["ReilynvX52cNDNw9", "6JpBg8ipbzLy11Wk", "eV8iSfxPkMRgGwEf"], "affectedCountries": ["PZB0ycIFX2YAaIyD", "xfieTykYWXiF7UlM", "bzIgknX9FO9v64ax"], "basePolicyName": "oqh7BO3qr2v9Esqq", "description": "pYfV57URNiRq2cpL", "namespace": "pE9dIsID4THrCufb", "tags": ["AmKX62JLAta9ongj", "0lckbRq0Cj7T7OMs", "W4kpHo8Ug7fwJioO"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'PtgoIyulU0Lm6jkC' \
    --countryCode '92IRBBxYwXzC4E5i' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'wIwgGq5z3MM7KmcY' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'eiDNCAmnLsQNnhyV' \
    --body '{"contentType": "TrmpLpe1Ludc8wYi", "description": "lTLz8UPTIKetqjFW", "localeCode": "sF8TM6XGiClN5daf"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'b3RptHtABHlJEtr1' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'ttpBVIaK0pOZneqc' \
    --body '{"attachmentChecksum": "tKZE06f4xvbmGggE", "attachmentLocation": "qsWBp1p58fq5sKMv", "attachmentVersionIdentifier": "5Bmt20tKsKB4DUSC", "contentType": "yUEZLX4yKkIhBBIj", "description": "5Ryy6eTnnQaail6y"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'dxzo12OEegGe3LS4' \
    --body '{"contentMD5": "IqdWRvpTkTuaYSY4", "contentType": "iasjPwVWyAlGHl24"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'KugkRK29Gty1FMId' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["TZAI8BWOF8BM4fWZ", "zSsZMpAtonXmMlCC", "3MWp3HkJprh0i6Dl"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'WDl59kX9mP8Qvc8h' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'DeeMgOkYGATQLMWP' \
    --limit '77' \
    --offset '8' \
    --policyVersionId 'HWc5l8WHN2WoM6XF' \
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
    --body '{"affectedClientIds": ["2cmaDsFgKKGu1BTj", "D1qLwx8DcoEAbVfV", "GWxGKCALoCfAM3Za"], "affectedCountries": ["qlFaNEIYhMEV54c1", "T72ge9FCRoROT1TR", "J7ARMuVpt639CtMR"], "basePolicyName": "DBo73Z5oshWvrW8h", "description": "sLla2dVuROPsr9uB", "tags": ["4WJoeZxxTB8ZGYbo", "VnqEQZCmUPXW2mMM", "H2IiJdqdWawnn720"], "typeId": "EJ6sJj7tjNhUtRmv"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'MoQwoGbdtA5cxvdH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'nA49q8mF6U5o18tY' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["gKonqy6g4hn9rdMy", "dyGXc93ASDJ3T9R7", "MaonZjpDQa4jfoaK"], "affectedCountries": ["jRH8WBsN2VyUl1pn", "s2r0siJBMij7PmTX", "gtCK6MzVK96sErmq"], "basePolicyName": "K3Lkuob4eUgbCeYR", "description": "4A5f29sRLgr9qT8Z", "tags": ["jpfbyYCzjNNsGTiI", "h77ppc6Jua7eYDi9", "8fFa1YSAZWEichhZ"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'kVwn5hDMZKJstfkC' \
    --countryCode 'rs0oci08G6gZqosP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '7IuXDRnnFBURRBMS' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'kmSKDTPhILy0dBAZ' \
    --body '{"contentType": "7GGzWU76RWn9z7pT", "description": "6kj3GSv9k5EVYN0f", "localeCode": "wPjnNj5CxDv7zb60"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'iMc2W9k13yCqXnXz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'jNNoilCs3u3Beci9' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "cflnsyD6tvqsd8Ft", "attachmentLocation": "mrvBBgKrhKkDcjin", "attachmentVersionIdentifier": "83D06u3VMBcIQFwL", "contentType": "VTrsPEw8bxBSbsup", "description": "N636RDNxuGuywJn0"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId '76YLxit0bUJgggBl' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "83mJWt8lrud5768R", "contentType": "mavl60TtgWiUZkgl"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'zWtzYF95TSgHxTfl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'pH4JrVTClzPhZ4ul' \
    --body '{"description": "dhU9LlRfMLaG8UlX", "displayVersion": "LaeEW75JKD6G5Sy3", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'OAqhzas6aJZ87mhj' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'Wr4h1tyRT2DJpokA' \
    --body '{"description": "uOFPzoDbA9FpLDom", "isDefaultOpted": true, "isMandatory": false, "policyName": "Upfp8jU4SYBFsL0d", "readableId": "QZie2AeYrnf4E0Wa", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'OZiCxsMLCx8K6vKG' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'P4MmkGTAWEXVCTqY' \
    --versionId '5PagjdXVsgDaOX1L' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'i7E3UrOswitCCjSG' \
    --body '{"description": "xcEduNXSbPw1gnNh", "displayVersion": "HIDgE0MrdINEzqBH", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '27' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'JCCydISLIppdQC4a' \
    --publisherUserId 'MEu3zSBtxKCzn86t' \
    --clientId 'Mr1RUEPLldbgpPGU' \
    --countryCode 'hHHiNX3sTgeP7M0z' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rfV957eHEctTXz8h", "policyId": "tDeXdGDgHs7TJeFK", "policyVersionId": "O7GFOsbre6T9ACOF"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "0jMulqApaRE24uxd", "policyId": "h14vC6zqKsUcYmnf", "policyVersionId": "LlHH1lAdyCmPznk5"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wT4XflQoNYdu9XH5", "policyId": "Ex1Nacz8D5aLYMrG", "policyVersionId": "g8sXu4KNdRplEorA"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'xPSXx8iGsoWKWMIs' \
    --publisherUserId 'DDLeFzvMWd8LuCew' \
    --clientId 'ta29N7pYausXuPIC' \
    --countryCode 'B0dj7CNllRSV0z8U' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'DGD5ycfmEMWjIydG' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'xoZD1AoC1Ys7Aw1E' \
    --body '{"description": "pdhFP1ia6dfG8cdG", "displayVersion": "jFJliQi9HTlGDLYb", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'DJoHFQYSbVgYJDkI' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'Ws6QZ53ilVG4pZkx' \
    --body '{"description": "5i1g0RWklafBJ583", "isDefaultOpted": true, "isMandatory": true, "policyName": "0oaaGIuBWZKQlHlc", "readableId": "aks0E1ahthaB2DJO", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'oa2mEnNPEoQJlXcZ' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '0hIMzeTp4sWQK7Fs' \
    --versionId '3mDmODiFKkgvWgQG' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'mMYdexcxRKjyOahj' \
    --body '{"description": "El1AJoUOIcMjOjdX", "displayVersion": "oI2OOi7eYxErEylD", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '31' \
    --limit '91' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'FoEbDZdmRUVE7xkv' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'jnfX59FSZqnMooeK' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'IhPWcfA8CukjW39J' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '8Il6dMOP2yle8KU9' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "flab8BHsVc3Qf2Lf", "policyId": "HK5OBEyJ6rfFVzTk", "policyVersionId": "Riy9UUfjfDsO4Y0W"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Q5AmlOd5ACPcryxn", "policyId": "CeH6dg57h6AseshN", "policyVersionId": "UOYidld1abqyMJ3E"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "DHd67ItOsbyt74Y2", "policyId": "TmPDrkwi7drFhVv7", "policyVersionId": "dw88ubdXs8NG6afS"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'W90ZcBHfaXxQ2Tdg' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "2zZilTU9BkjLv09A", "policyId": "TrUhgQdUgcXrGn9v", "policyVersionId": "4FpL6RzfxXpP3xjm"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "DjvID89Ek3PBFhmo", "policyId": "vu7HqdUeQav7bxrM", "policyVersionId": "Lhbi8kKMoroWSsMF"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "NXTYSebL0IMnTuGn", "policyId": "Nu5MJmnVZMf0BgRJ", "policyVersionId": "QdiPanK4rsGb0343"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId '8LiiXlahL6qxZ8iN' \
    --countryCode 'HdGRjl5CgbHVjvCB' \
    --namespace $AB_NAMESPACE \
    --userId 'XsYXAzear86yBFJq' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "xQfcBPI22gjlmU2O", "policyId": "LdlTmPrOF7wLxAwi", "policyVersionId": "1XWv0fU6m7XEH6TT"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "EpcOVqABlVUDg2wG", "policyId": "COVHsGr9JLlJBAXd", "policyVersionId": "JdUo0DBHbNQ3WDRu"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "QJ1ovEIxHSJaJqBF", "policyId": "tjp9McOhQh2MVTGS", "policyVersionId": "cQta7TUIZ5x67jtg"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'DbOheDxfM2VfA7xr' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nA50ppGs6k3G0iVS", "policyId": "lVajpUAsyaZo5bkX", "policyVersionId": "PoXiUiXq3Yd0sPsh"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "YM5NyM0xRSLl81U7", "policyId": "BIMVruxMtEjjqjtC", "policyVersionId": "9s6gZRSfg9JBTo94"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "8GTncP1HpYMnLi8k", "policyId": "lIz3pM6k3VPufYx4", "policyVersionId": "NJy6uHL1BiwcQ0pv"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'Ot2DtnNx6LUDycMh' \
    --countryCode 'TNGzDnABzxaQVxFu' \
    --namespace $AB_NAMESPACE \
    --userId 'FuqUlvANXT4guTki' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'rpnFTGXgP2FEEbF5' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'VsDUdhzteNAzSlEa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'ZEIaPvmzrKSMNAwx' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'M7IkkezAQL646Xt0' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'iVmMMniUvvmDAI3O' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'DHkk2h84jy4u00OI' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'GawU3shoG8zWlvhS' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE