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
echo "1..68"

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
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "KMQ5jD9HaJBErYi0", "namespace": "7veRg779Q5scKa32"}' \
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

#- 6 GetActions
samples/cli/sample-apps Basic getActions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetActions' test.out

#- 7 BanUsers
samples/cli/sample-apps Basic banUsers \
    --namespace $AB_NAMESPACE \
    --body '{"actionId": 69, "comment": "anQedw5PTDcS0Ihn", "userIds": ["PqCnrOlyWcU4Evi7", "Auvzt0vWbSidPnEU", "CVURI5ZXP4Sagbse"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["5Eq62zdG3iRae1A8", "g4R2VX04DEPGnWqO", "qX1uolrAqxfXnB3f"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "9F4gQkZhLy04CVDE", "description": "rBZRK0AEMoGPCgJ2", "gameSessionId": "J7iHqJGpoY2YBcmQ", "subcategory": "tNjzUwNW6nlJ4kP3", "userId": "lQfnc9qrzTlq9IQK"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'IKwwQhsxFaEENU3e' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "5AzAYJf1Q8J82HVv", "userIds": ["DKK7dmo7ZnFcksrH", "V2yiXd1dmsctlch4", "kulWHYwWwRCuJCYM"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "aID4QwoBZXLHs9er"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "1cuCmIwYwdV7K8fZ", "value": "Fa1LHJYr4qsGDoj4"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'Ne2T6AcRWCfUaVwv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'Mxc0aEEA7Swll8n6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'uHDicJwiQ9tU7mtX' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "d7yCqoZLYot0rgGN"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateConfig1' test.out

#- 17 GetConfig
samples/cli/sample-apps Basic getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetConfig' test.out

#- 18 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'DeleteConfig' test.out

#- 19 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "RRQy28p99NvKgiy1"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'dt3zJyQIuJlUZzAU' \
    --namespace $AB_NAMESPACE \
    --fileType 'lQq97rGOeTj2rmhM' \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
samples/cli/sample-apps Basic getCountries \
    --namespace $AB_NAMESPACE \
    --lang 'DEYXdmZqXuM2KQ7p' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'Fn0B8rf5geUWW9Fx' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "0tJDDt3to2WuWlPN", "name": "Cw4kwBj9T1c4faX1"}, {"code": "wN5OInTcZl6BQsFZ", "name": "gz5HbgHVzFFo9Rhj"}, {"code": "ZRMFMWrjqySMnhBT", "name": "IwXx9Pvr2c18l6Cc"}], "countryGroupCode": "smIVYv7avUhit5ZC", "countryGroupName": "H17o1ndivSr3Gj4C"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'mqQDAnBQvjSa0aMQ' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "x8yIv3QncUu3RkUD", "name": "mCMKcP1Z3hYvDTdM"}, {"code": "mWDCGvbsF4YgANL1", "name": "DBiUKlfKpRDZQ0j2"}, {"code": "fcGtkYa7NHZYd7Pv", "name": "ChVDp6cxrCpiz3yb"}], "countryGroupName": "6sQQMSwP5pT26SI1"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'jbOPL107HcQfuoqt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteCountryGroup' test.out

#- 27 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetLanguages' test.out

#- 28 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetTimeZones' test.out

#- 29 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'hiWQlJNQVwiQCLd3' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["s8y3TwbffhO6TQUa", "iMlFrNYvvOOOEIPe", "WNqmdgdAGuVyxb1R"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'rWTUAENZeXEvg5kV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPublisherConfig' test.out

#- 33 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 33 'ChangeNamespaceStatus' test.out

#- 34 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '3rhfjStMk9Nl8drV' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'NLTb1m8WWOuNfma5' \
    --category 'yfjk88RP2QlTMjLK' \
    --fileType 'CshXhwvRrLDWU1gi' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'V0nndQL8AZrboE2b' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Kx4hkCY3j7Be01Zf' \
    --body '{"avatarLargeUrl": "6QPGmkHuguSTKmHd", "avatarSmallUrl": "Hw3U8oKt5GptXHk8", "avatarUrl": "YV2asvWjRxkUURJk", "customAttributes": {"bl13wkz6Kpt3HgPQ": {}, "pcWURaam7sRUmx4U": {}, "4R8Yxk0LG5dxRDxy": {}}, "dateOfBirth": "1990-07-23", "firstName": "TVkhg53OOzAZcl2B", "language": "qTMr", "lastName": "mXJSfRHr9X5PQdUl", "privateCustomAttributes": {"iGn5ZViCUOxWFgpl": {}, "qPANPr1WzEbUz3tG": {}, "aaOq3kUfsJMs94Yd": {}}, "status": "ACTIVE", "timeZone": "YoDUbdbjxIXALdpW", "zipCode": "xxa4Buzng0x8UsOn"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'QImwtfG3Qctwzm0O' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '2xurnEYca22nKYc7' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'LYrPB91SDbZnLlF6' \
    --body '{"AnY3c9OJe5p7T6JM": {}, "q72RZZsyv2Nsm7Ta": {}, "oOH78IG0GWBtpqCO": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ZTtc6scBtqpto60Z' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'ezJgzirgUmbne3k0' \
    --body '{"U11ssF0c4zt4bC1d": {}, "alK3DVVvx0cSwYtW": {}, "iXwPXSkX6W3v4Dra": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'CX4lR6lmHaiP3Syi' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateUserProfileStatus' test.out

#- 44 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 44 'PublicGetTime' test.out

#- 45 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetNamespaces' test.out

#- 46 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder '3RoKOQ1AFsAmQ825' \
    --namespace $AB_NAMESPACE \
    --fileType 'BOZ2OGL10dh1aUwq' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'dOI9HjojZ6FOK3JJ' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetCountries' test.out

#- 48 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'PublicGetLanguages' test.out

#- 49 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'PublicGetTimeZones' test.out

#- 50 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds '4Swa4zBeLXmd1Syc' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '1YbTL4c7tE1zrSWX' \
    > test.out 2>&1
eval_tap $? 51 'PublicGetUserProfileInfoByPublicId' test.out

#- 52 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'PublicGetNamespacePublisher' test.out

#- 53 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetMyProfileInfo' test.out

#- 54 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "29dJ1BOQmFpKkST3", "avatarSmallUrl": "b4xWeUG957ITvT7c", "avatarUrl": "9EZQfe3dAz0nU9ok", "customAttributes": {"pn0rjg6rbtAZhT5z": {}, "WDyplujrbSozJN02": {}, "c6taGMu47J0ZsCO8": {}}, "dateOfBirth": "1985-06-07", "firstName": "Orkh3tCjyeaODdab", "language": "giEE_hc", "lastName": "hHqflMM4XpgWafsK", "privateCustomAttributes": {"6hr2Fn6UUObvzl7Y": {}, "4NnhKiUCNC8k7U7t": {}, "r83Ye1FsOnQmxzNX": {}}, "timeZone": "5Oby7ERBpFoZQ6By", "zipCode": "Fbad6Hz7PjQeSU0j"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "hNgmoXWdCCdejQXN", "avatarSmallUrl": "R9MqG8nQIZDZV12e", "avatarUrl": "CZ41kl1gQXNQll0R", "customAttributes": {"MAwHV7O1bBKWYXgc": {}, "75gRpMh3ZEERhzTR": {}, "C4rmF3PWzdiy2h55": {}}, "dateOfBirth": "1992-02-11", "firstName": "EfftruJ13q5xyGM5", "language": "skJm", "lastName": "0nSMlSSdxhSi6qJC", "privateCustomAttributes": {"R9xFLb73mAViXZmJ": {}, "9XsY2WLPrIN2aTpO": {}, "Ml9H73aTgpPuTahC": {}}, "timeZone": "yDaCVutJRFFGDrx8"}' \
    > test.out 2>&1
eval_tap $? 55 'CreateMyProfile' test.out

#- 56 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetMyPrivateCustomAttributesInfo' test.out

#- 57 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"jdXNmwmfw61UwH93": {}, "dAwA6CC29TBLBVnq": {}, "FfOoO3NfblTZ4E90": {}}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 58 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetMyZipCode' test.out

#- 59 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "QaAhZAPobWJwdRQl"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'aw1CtS69FPvBdpGt' \
    --body '{"category": "1Ztl2qw0bLfSfTFR", "description": "GUebqYY3oroDUG33", "gameSessionId": "HSUGAQytNCetGrkq", "subcategory": "UgmU77Is8bYwmZwm", "userId": "hvplsVs72O1da8m2"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'to4dCJtfbPLUFAma' \
    --category 'F5aC0sXaic5K4q0c' \
    --fileType 'gIddDz39rWchYe4f' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'sgn8xpzHCqQLBOqo' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'EFBZXfL2rbkjTyhi' \
    --body '{"avatarLargeUrl": "5fBTyoRlTnTMWV5E", "avatarSmallUrl": "Ppx72YKauNLTmvgW", "avatarUrl": "CYHmMOPFVAewUcAt", "customAttributes": {"sfIqbiZ4q9ukuqZk": {}, "iwvKuT3Kl8AoJ0Pd": {}, "aQ97KXtnyMaXYSvk": {}}, "dateOfBirth": "1985-09-25", "firstName": "MKm28I3NAjgJoo5r", "language": "dVw", "lastName": "POFJ2N1KCvAgSpdc", "privateCustomAttributes": {"VidQDZSMyvM6bu4f": {}, "Je2SpW4WDjAZZS56": {}, "36oeoifoVfRT0BAt": {}}, "timeZone": "h7xyrkvQ1fk2L8pd", "zipCode": "vrsUuEvM9jz7UIrZ"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'LyxVU1OLjccjmPjq' \
    --body '{"avatarLargeUrl": "jOnLoMn3100jmQcQ", "avatarSmallUrl": "YlYUehuWyZzjjaNa", "avatarUrl": "TEyu6vGsMQ96qHhg", "customAttributes": {"UFfAZujEAQavgytr": {}, "5wIGy1llvZYkIduT": {}, "ZoPimfQl1C70z4G4": {}}, "dateOfBirth": "1986-04-02", "firstName": "a2qZ2M0qNrLpruPf", "language": "gh_788", "lastName": "nxxYnf64SdjGyjqV", "timeZone": "b1cEoSxtfnYDc3hI"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'oaJEsRThGM4Y2T74' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'KuJMBbfhlgVoPKT5' \
    --body '{"OudExTvd9eAaHH0L": {}, "cIrSXUEOBBdAzRlf": {}, "vPrZ1ZvC50X31bvN": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'JvhYjvMhgfN3X8Sx' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'ubdSAbMPVxtriyE5' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE