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
echo "1..61"

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

#- 2 GetNamespaces
samples/cli/sample-apps Basic getNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "JcGcL5kc", "namespace": "MN3yHsoi"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateNamespace' test.out

#- 4 GetNamespace
samples/cli/sample-apps Basic getNamespace \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 4 'GetNamespace' test.out

#- 5 DeleteNamespace
samples/cli/sample-apps Basic deleteNamespace \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'DeleteNamespace' test.out

#- 6 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "tcq6UU6e"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateNamespace' test.out

#- 7 GetChildNamespaces
samples/cli/sample-apps Basic getChildNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 7 'GetChildNamespaces' test.out

#- 8 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "FXvWEI9o", "value": "1ji5ILju"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey '1YjCdSGX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'TnxDJtCT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey '2n7UNR8b' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "9efFPnbx"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'bOPEAzqH' \
    --namespace $AB_NAMESPACE \
    --fileType 'B9XfHkOd' \
    > test.out 2>&1
eval_tap $? 13 'GeneratedUploadUrl' test.out

#- 14 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 14 'GetGameNamespaces' test.out

#- 15 GetCountries
eval_tap 0 15 'GetCountries # SKIP deprecated' test.out

#- 16 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'oirMZTK5' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "xEtfrPIV", "name": "at6iPU69"}, {"code": "kt4vqWxL", "name": "tMk7uJFB"}, {"code": "NmjUspu4", "name": "EnMBdyXp"}], "countryGroupCode": "lQtnD8Gw", "countryGroupName": "YB09taC6"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'Ul6avtuw' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "QgwsGOG4", "name": "Y9rUaK9a"}, {"code": "j678didc", "name": "iSGUZnoz"}, {"code": "TtEkYeNY", "name": "wtQHiDm2"}], "countryGroupName": "Rz2ZKL2s"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode '4Qysvjbj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteCountryGroup' test.out

#- 20 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetLanguages' test.out

#- 21 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetTimeZones' test.out

#- 22 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'gnP8XZwz' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["JU1Hp2zY", "drN1oomC", "P00Kc6xV"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'Qp9FL0Vf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetPublisherConfig' test.out

#- 26 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'wtfbmKEo' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'puMG1tII' \
    --category 'Dtv4xo67' \
    --fileType 'm1G2B91w' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'G4CGO6Hk' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'lJIEFJ4e' \
    --body '{"avatarLargeUrl": "vzmJJfDD", "avatarSmallUrl": "3XA1rvgW", "avatarUrl": "6RXF8AeU", "customAttributes": {"P8fWlbKb": {}, "Mg4hHcwn": {}, "Krq88GyQ": {}}, "dateOfBirth": "1987-02-21", "firstName": "uHM8Y2eA", "language": "WWay", "lastName": "fq3ovBQA", "privateCustomAttributes": {"0HcfXm0K": {}, "cxvdRFZy": {}, "HH1IZHRC": {}}, "status": "INACTIVE", "timeZone": "S0doyroD", "zipCode": "V5cyGtvi"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'amrYHCzg' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'JIX3rsPv' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'Y8sINq6b' \
    --body '{"vzbgeFlp": {}, "GQz6tyQl": {}, "kaL4UUnO": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '6CbzazS5' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '9GKPPpE7' \
    --body '{"wXZSeAdk": {}, "2dr4ny2O": {}, "Lv88M2iM": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '6euirJ8X' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfileStatus' test.out

#- 37 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 37 'PublicGetTime' test.out

#- 38 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetNamespaces' test.out

#- 39 GetNamespace1
samples/cli/sample-apps Basic getNamespace1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'GetNamespace1' test.out

#- 40 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'JgCYeIjE' \
    --namespace $AB_NAMESPACE \
    --fileType 'jmNGVj7Z' \
    > test.out 2>&1
eval_tap $? 40 'PublicGeneratedUploadUrl' test.out

#- 41 PublicGetCountries
eval_tap 0 41 'PublicGetCountries # SKIP deprecated' test.out

#- 42 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'PublicGetLanguages' test.out

#- 43 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'PublicGetTimeZones' test.out

#- 44 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds '78Vn7PIB' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'o5Oa5F48' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfileInfoByPublicId' test.out

#- 46 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'PublicGetNamespacePublisher' test.out

#- 47 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetMyProfileInfo' test.out

#- 48 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "N9smXDzd", "avatarSmallUrl": "e87YntWl", "avatarUrl": "I0lyfnpP", "customAttributes": {"ydN4YPkt": {}, "HLctt2CY": {}, "KpCb7Gtt": {}}, "dateOfBirth": "1979-05-17", "firstName": "hanNKipV", "language": "hTa_SRzo-473", "lastName": "Xwf08zOr", "privateCustomAttributes": {"XhQjrJWp": {}, "yMJyW74Q": {}, "IvkFHTMO": {}}, "timeZone": "EnWLThfL", "zipCode": "AvsvWGhp"}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "BdTQjwzG", "avatarSmallUrl": "WFKWiTAA", "avatarUrl": "AP35HAYB", "customAttributes": {"Qz9bdf4P": {}, "P53DjvrO": {}, "rNTz2J8W": {}}, "dateOfBirth": "1989-11-13", "firstName": "Y6bvoDNT", "language": "iHkC", "lastName": "NeT91gKJ", "privateCustomAttributes": {"j8ediPk1": {}, "iOh8i7Be": {}, "vAh1JDwy": {}}, "timeZone": "Yjq9QLVD"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateMyProfile' test.out

#- 50 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'GetMyPrivateCustomAttributesInfo' test.out

#- 51 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"ZjbTCVrM": {}, "0BbjmOeX": {}, "soUNhFeO": {}}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 52 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetMyZipCode' test.out

#- 53 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "SgT4fOLo"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyZipCode' test.out

#- 54 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'lkBxlHwm' \
    --category 'B5u2qRL3' \
    --fileType 'e4o0dYoQ' \
    > test.out 2>&1
eval_tap $? 54 'PublicGeneratedUserUploadContentUrl' test.out

#- 55 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '7PUbkLx4' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetUserProfileInfo' test.out

#- 56 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '4epWgNPD' \
    --body '{"avatarLargeUrl": "ESFtvPj2", "avatarSmallUrl": "cXCOLcxM", "avatarUrl": "oho80jzw", "customAttributes": {"mtLBcy29": {}, "8Kd1xtiR": {}, "DkjAfQDo": {}}, "dateOfBirth": "1977-11-10", "firstName": "Kn0LvNGZ", "language": "PLb-iOqY", "lastName": "YQybGtoV", "privateCustomAttributes": {"RJd4oDZs": {}, "GcME7f0M": {}, "q9i5HtJj": {}}, "timeZone": "6PM6xeZx", "zipCode": "pgJXllUY"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicUpdateUserProfile' test.out

#- 57 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ATp7fkFY' \
    --body '{"avatarLargeUrl": "pPwnSRd6", "avatarSmallUrl": "Y24npvrO", "avatarUrl": "9hygc35N", "customAttributes": {"0nwKIvv7": {}, "JLcrogox": {}, "Wh6jYoco": {}}, "dateOfBirth": "1994-03-02", "firstName": "EeNYSClo", "language": "kyAT_wh", "lastName": "pOKJAjNU", "timeZone": "S5zujQ3y"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicCreateUserProfile' test.out

#- 58 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'MIfCdv7M' \
    > test.out 2>&1
eval_tap $? 58 'PublicGetCustomAttributesInfo' test.out

#- 59 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'ssoYtWdm' \
    --body '{"cpdKNyNG": {}, "133qst8r": {}, "9ZqO6sAG": {}}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateCustomAttributesPartially' test.out

#- 60 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'PYkFgctB' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetUserProfilePublicInfo' test.out

#- 61 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '7vBSygVM' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE