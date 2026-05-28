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
    --body '{"displayName": "Q5HBgKqY", "isTesting": false, "namespace": "QV6Qv5pI"}' \
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
    --body '{"displayName": "OZrosolT"}' \
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
    --body '{"key": "RtRuCA6K", "value": "jgZkZ1hM"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'ZM3RTg0s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'FVRyzqmR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey '2ZdT0IR6' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "4ZRArQ7N"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    --refreshOnCacheMiss 'false' \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'WaShpt9k' \
    --namespace $AB_NAMESPACE \
    --fileType 'cCZtuui0' \
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
    --groupCode '8kNvGKFl' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "PVKTwEnC", "name": "YxQKnLpY"}, {"code": "at5EGNtt", "name": "eFfiWVbr"}, {"code": "T4UYvu2J", "name": "LzMtDMHB"}], "countryGroupCode": "pEDtalZF", "countryGroupName": "AWZZD4jr"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'ZnDhIAFr' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "ImBlvtuy", "name": "Aaqc0QGX"}, {"code": "Lykb0wYE", "name": "FRqTnLyk"}, {"code": "8rc18G03", "name": "AUDrVdRF"}], "countryGroupName": "96sGxPtd"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'isYpv3Rr' \
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
    --publicId 'YbG5Y5X5' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["cI60CLZc", "IDHyyKXf", "e98qURWN"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'HCjn0J9A' \
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
    --userId 'fQCA82Oa' \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'Bd0ZhVwj' \
    --category 'qxsX3X7H' \
    --fileType 'JIcuyMNY' \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ipXRlpvl' \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'SInq4LI1' \
    --body '{"avatarLargeUrl": "dbWamLPH", "avatarSmallUrl": "fxRsvJk5", "avatarUrl": "yQEsSQHw", "customAttributes": {"4aabtdNf": {}, "Z2PtunJf": {}, "judQ5fBi": {}}, "dateOfBirth": "1995-11-20", "firstName": "TurMLM4O", "language": "JJCA_VIdV-817", "lastName": "NA9tfJsu", "privateCustomAttributes": {"hzpjYcXb": {}, "HP9wNKxl": {}, "h5nWnZWG": {}}, "status": "ACTIVE", "timeZone": "XrHjhssY", "zipCode": "We4bFgCy"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '0gCRu7VL' \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ESDhguVp' \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'F3uFJY3Y' \
    --body '{"RI8NjeiZ": {}, "uHC5VW6q": {}, "VOE9KYOI": {}}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'nTwqertm' \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'DFgbFuPm' \
    --body '{"zsRHt7Fe": {}, "Xcgd4vYt": {}, "xc0BYuWA": {}}' \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'AHbXRLX4' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfileStatus' test.out

#- 38 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 38 'PublicGetTime' test.out

#- 39 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetNamespaces' test.out

#- 40 GetNamespace1
samples/cli/sample-apps Basic getNamespace1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetNamespace1' test.out

#- 41 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'BTWV5ces' \
    --namespace $AB_NAMESPACE \
    --fileType 'npoWCrrU' \
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
    --userIds '6jvuZ0Ws' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["7C3RkA2i", "IhuQ1pIS", "clDPbTNT"]}' \
    > test.out 2>&1
eval_tap $? 46 'PublicBulkGetUserProfilePublicInfo' test.out

#- 47 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'AUt0N5ZP' \
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
    --body '{"avatarLargeUrl": "JvvTZYYq", "avatarSmallUrl": "2FMMUsaK", "avatarUrl": "aI7lq2Re", "customAttributes": {"bm3TPdtO": {}, "PnPwKuk2": {}, "ULWYnp9o": {}}, "dateOfBirth": "1994-05-27", "firstName": "lxe5kqRA", "language": "Hu-ZslM", "lastName": "0Fq9i9Gs", "privateCustomAttributes": {"pfv7l3ek": {}, "CcmzQWGF": {}, "nTT9IY9Q": {}}, "timeZone": "27ipgxbM", "zipCode": "NduYQuJf"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateMyProfile' test.out

#- 51 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "K1ZfbPXe", "avatarSmallUrl": "7g3RnKq0", "avatarUrl": "EcU6zvME", "customAttributes": {"Z5fx3QDE": {}, "2S0hc0hl": {}, "w7KmnO8x": {}}, "dateOfBirth": "1999-07-12", "firstName": "e7prYJpV", "language": "AxN_eB", "lastName": "nyRWQL76", "privateCustomAttributes": {"XOo4OZFG": {}, "MEil9sdc": {}, "iCNHwpQ1": {}}, "timeZone": "7AFkTikz"}' \
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
    --body '{"tFKX9sP2": {}, "XJOJEzNp": {}, "WLfXP21V": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "4YiJYtq1"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateMyZipCode' test.out

#- 56 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'KxPH3ZGQ' \
    --category 'cXW8oq3W' \
    --fileType 'bCgCKuPC' \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'at7ggJg1' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'butKDq4T' \
    --body '{"avatarLargeUrl": "HwLGr8k8", "avatarSmallUrl": "uLt7eh72", "avatarUrl": "EEH5bA9G", "customAttributes": {"duLPtQ2q": {}, "URUKQQjN": {}, "7PPVVoEI": {}}, "dateOfBirth": "1979-02-01", "firstName": "PVKSplLM", "language": "PeS_912", "lastName": "ZM2BUqbB", "privateCustomAttributes": {"hppX6nK9": {}, "bAWkruFJ": {}, "HnSXkNh0": {}}, "timeZone": "zaApRcIs", "zipCode": "SMwBoJLu"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'zCYWKS3O' \
    --body '{"avatarLargeUrl": "ykvl1gTN", "avatarSmallUrl": "l4UnXVZB", "avatarUrl": "NG0nwmKK", "customAttributes": {"J5779hLJ": {}, "8ZOgjRRr": {}, "xo98majU": {}}, "dateOfBirth": "1973-04-06", "firstName": "0IaiyGrl", "language": "Zh-aWvr", "lastName": "jQrlH6p6", "timeZone": "SBw1S789"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'VoMAyelM' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'HrcvY4j2' \
    --body '{"ieYiGWoQ": {}, "78buEwu8": {}, "B2cIJ0ee": {}}' \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId '75ITXrP3' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'HwV97sIm' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE