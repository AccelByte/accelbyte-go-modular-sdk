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
echo "1..63"

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
    --activeOnly 'true' \
    --isTesting 'true' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "ovLRV3S1", "isTesting": false, "namespace": "914WzSqt"}' \
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
    --body '{"displayName": "etaUFeSA"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateNamespace' test.out

#- 7 GetChildNamespaces
samples/cli/sample-apps Basic getChildNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 7 'GetChildNamespaces' test.out

#- 8 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "8m7k1ycd", "value": "6eeS3lgk"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'SxC2W2Km' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'hkggO5wZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'IhtpDdAf' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "xFURN5jQ"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    --refreshOnCacheMiss 'true' \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'ZRLzeIQ8' \
    --namespace $AB_NAMESPACE \
    --fileType 'jTAqWErm' \
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
    --groupCode 'mUMpr3D7' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "m2zut16X", "name": "g6uGoV3j"}, {"code": "F4tXfNh0", "name": "t7F7wwy8"}, {"code": "6fRPOofy", "name": "PwK12w5x"}], "countryGroupCode": "aTzT31Eo", "countryGroupName": "77yh6yG8"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'S4IRquvT' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "Bihgd2Qy", "name": "4TlfPuAA"}, {"code": "AF1JYP64", "name": "BB6qn3Mb"}, {"code": "szLlWCM2", "name": "F0D1jpnA"}], "countryGroupName": "p8qQzZpd"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'qtL8IGyG' \
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
    --publicId 'SzeZw0aM' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["wbskqYTQ", "IFIH8Prw", "aDqMeQqk"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey '9xxRnNxs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetPublisherConfig' test.out

#- 26 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 UpdateTestingFlag
samples/cli/sample-apps Basic updateTestingFlag \
    --namespace $AB_NAMESPACE \
    --body '{"isTesting": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTestingFlag' test.out

#- 28 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'BxRTY7Ib' \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'L6tZrLgv' \
    --category 'AElwdTuu' \
    --fileType 'xPieFzZ9' \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'sH3j0D6j' \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'KMvcZhfH' \
    --body '{"avatarLargeUrl": "mUneZBA9", "avatarSmallUrl": "VqYfpu9U", "avatarUrl": "Ruz5SI9E", "customAttributes": {"xvbUPNlF": {}, "phGeOaFt": {}, "WtD4wYK3": {}}, "dateOfBirth": "1974-07-13", "firstName": "butA3iCR", "language": "ea", "lastName": "SEivKMaf", "privateCustomAttributes": {"vtiZeGbD": {}, "JX5jF8BZ": {}, "DZDbB56a": {}}, "status": "INACTIVE", "timeZone": "QmbbHC33", "zipCode": "il67Wp4T"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'wSJogXfx' \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ayevUYAb' \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'tUkIxj01' \
    --body '{"de8rTliS": {}, "g0ppL0d6": {}, "0tlSLczy": {}}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'zLyfu842' \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '80vVS9y3' \
    --body '{"mNMz7ybt": {}, "YMVD2Egu": {}, "PZf4opWc": {}}' \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'HQKtK8wX' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfileStatus' test.out

#- 38 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 38 'PublicGetTime' test.out

#- 39 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetNamespaces' test.out

#- 40 GetNamespace1
samples/cli/sample-apps Basic getNamespace1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetNamespace1' test.out

#- 41 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'eJS04ccL' \
    --namespace $AB_NAMESPACE \
    --fileType 'bIwt3SFD' \
    > test.out 2>&1
eval_tap $? 41 'PublicGeneratedUploadUrl' test.out

#- 42 PublicGetCountries
eval_tap 0 42 'PublicGetCountries # SKIP deprecated' test.out

#- 43 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'PublicGetLanguages' test.out

#- 44 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'PublicGetTimeZones' test.out

#- 45 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds 'U8rZKpOK' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TZ9klFAU", "nHjuM7JP", "zFSrCHw4"]}' \
    > test.out 2>&1
eval_tap $? 46 'PublicBulkGetUserProfilePublicInfo' test.out

#- 47 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'Z6nqmMGp' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetUserProfileInfoByPublicId' test.out

#- 48 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'PublicGetNamespacePublisher' test.out

#- 49 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'GetMyProfileInfo' test.out

#- 50 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "E5KxXcrb", "avatarSmallUrl": "VubyPFRX", "avatarUrl": "zbh5jT8L", "customAttributes": {"kJdDmt1f": {}, "c3ABwOqU": {}, "d7tb65AH": {}}, "dateOfBirth": "1998-03-30", "firstName": "EKXytbe0", "language": "Iar", "lastName": "JH7W7zS6", "privateCustomAttributes": {"NgPiX4sc": {}, "miDoLRnj": {}, "3bWkAxgf": {}}, "timeZone": "w5zefN9t", "zipCode": "sBK9bHKO"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateMyProfile' test.out

#- 51 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "24ybSk9U", "avatarSmallUrl": "GoDb2oF5", "avatarUrl": "IZScEYs8", "customAttributes": {"IXbFGMNN": {}, "vGFPWEko": {}, "1PmsebuG": {}}, "dateOfBirth": "1979-08-12", "firstName": "O6Q7qeNq", "language": "FlOV-nXMY", "lastName": "Ru46Elhz", "privateCustomAttributes": {"1689X9Nn": {}, "AZgUlxe7": {}, "zbj1xKiM": {}}, "timeZone": "0nNN3MNG"}' \
    > test.out 2>&1
eval_tap $? 51 'CreateMyProfile' test.out

#- 52 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetMyPrivateCustomAttributesInfo' test.out

#- 53 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"43J83tXr": {}, "6y05fVev": {}, "l4YQ28H7": {}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 54 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetMyZipCode' test.out

#- 55 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "adcHdjBS"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateMyZipCode' test.out

#- 56 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'GjO3jnq9' \
    --category '66GHZ86U' \
    --fileType 'uSaUxjYy' \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'vn7t5Mec' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'RgVdzLAj' \
    --body '{"avatarLargeUrl": "Je0gCt5L", "avatarSmallUrl": "W2fvalYb", "avatarUrl": "CPgkKUOG", "customAttributes": {"FROLU2Cn": {}, "KB2wLhz0": {}, "pEXLLOzr": {}}, "dateOfBirth": "1983-08-06", "firstName": "ZP3zEvTq", "language": "ea", "lastName": "nHdf6igY", "privateCustomAttributes": {"TaFB6UxZ": {}, "ICXZYBfc": {}, "q7lu5ysT": {}}, "timeZone": "MUf6KjEi", "zipCode": "FR5nBdiz"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'EIjwPMBk' \
    --body '{"avatarLargeUrl": "gmRxEv7L", "avatarSmallUrl": "IBDoBTqI", "avatarUrl": "uo9s7eVd", "customAttributes": {"VwBduBQb": {}, "X8rSOQhp": {}, "Gh6F2ujP": {}}, "dateOfBirth": "1987-07-19", "firstName": "mO1Ompz5", "language": "jD", "lastName": "pnvNPEdU", "timeZone": "yxOwmjt9"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'mb8Yvuda' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'djR6Q1DN' \
    --body '{"2l4bQ2Lb": {}, "OvRepchB": {}, "iBsDPtAK": {}}' \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'FOi0RvYv' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'QWCU8FM7' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE