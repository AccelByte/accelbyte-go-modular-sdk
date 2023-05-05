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
echo "1..67"

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
    --body '{"displayName": "64AGrcOh", "namespace": "dQmCyS0O"}' \
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
    --body '{"actionId": 26, "comment": "JVkJjkQv", "userIds": ["vY26hMIW", "VlSqYTeC", "rCicgDOq"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["UCac4Kfm", "KhW7iak9", "VJqU4mbe"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "PJNU1nww", "description": "weqg5Y8q", "gameSessionId": "A80mGbKJ", "subcategory": "dZcoqIVV", "userId": "dm8k9oU7"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'i38QioLV' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "iUYnVEpY", "userIds": ["7kxdBlrD", "EGwWmWin", "u92E2a4E"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "tp9tbB8S"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "s7PoyY9o", "value": "ShcEqYpU"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey '7PwEtdLr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'qU04L4CH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey '6JxvlM06' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "TvCsLheg"}' \
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
    --body '{"apiKey": "XBc0rJv6"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'CHEP7XeP' \
    --namespace $AB_NAMESPACE \
    --fileType 'xZFSaRI6' \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
samples/cli/sample-apps Basic getCountries \
    --namespace $AB_NAMESPACE \
    --lang 'KH5cMabV' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'XuoPvRB0' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "zlaMt2rT", "name": "5qml0DEE"}, {"code": "GwW98zA8", "name": "ekdi07pq"}, {"code": "EwHKK9sl", "name": "RXMmENeY"}], "countryGroupCode": "Q3kseVSc", "countryGroupName": "TkFjA5jd"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'PeJ8VWUY' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "hdjpmfsZ", "name": "R5sEdJ89"}, {"code": "zJBZ3hTE", "name": "RMPoqNU1"}, {"code": "CC9NX16R", "name": "j8lduNwF"}], "countryGroupName": "FAeLfOYm"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'OFvUZfLx' \
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
    --publicId 'M7jzUZ0V' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KkYrcg1K", "xo6XMZ1p", "DnCUEg2R"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 32 'ChangeNamespaceStatus' test.out

#- 33 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'xPS00w3S' \
    > test.out 2>&1
eval_tap $? 33 'AnonymizeUserProfile' test.out

#- 34 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'RgRAgius' \
    --category 'zrzUC47j' \
    --fileType 'E6bAp14P' \
    > test.out 2>&1
eval_tap $? 34 'GeneratedUserUploadContentUrl' test.out

#- 35 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'kJP6I2SW' \
    > test.out 2>&1
eval_tap $? 35 'GetUserProfileInfo' test.out

#- 36 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'deZo2dqP' \
    --body '{"avatarLargeUrl": "b6HP2P3s", "avatarSmallUrl": "07aTW1lC", "avatarUrl": "6WXt5y86", "customAttributes": {"GrTtA54c": {}, "k8MndS83": {}, "nqGvfupT": {}}, "dateOfBirth": "1993-03-17", "firstName": "uw04hvFh", "language": "za_Jo", "lastName": "dSep69lN", "status": "INACTIVE", "timeZone": "XXQBXHPu", "zipCode": "2xitOOed"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfile' test.out

#- 37 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '6DgcUbKI' \
    > test.out 2>&1
eval_tap $? 37 'DeleteUserProfile' test.out

#- 38 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'woPjbtpe' \
    > test.out 2>&1
eval_tap $? 38 'GetCustomAttributesInfo' test.out

#- 39 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'Uq5LPGMG' \
    --body '{"cjRDP0M1": {}, "BijPf6pz": {}, "hlFuQs3c": {}}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateCustomAttributesPartially' test.out

#- 40 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'IeACYOX7' \
    > test.out 2>&1
eval_tap $? 40 'GetPrivateCustomAttributesInfo' test.out

#- 41 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'sKwJ6GvY' \
    --body '{"tKc1J1Vj": {}, "QOdTqMt6": {}, "VLNsS5uf": {}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePrivateCustomAttributesPartially' test.out

#- 42 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'ppb6vrPn' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateUserProfileStatus' test.out

#- 43 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 43 'PublicGetTime' test.out

#- 44 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetNamespaces' test.out

#- 45 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'CA6XpSP2' \
    --namespace $AB_NAMESPACE \
    --fileType 'V9szj5He' \
    > test.out 2>&1
eval_tap $? 45 'PublicGeneratedUploadUrl' test.out

#- 46 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'teJM9rsd' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetCountries' test.out

#- 47 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'PublicGetLanguages' test.out

#- 48 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'PublicGetTimeZones' test.out

#- 49 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds '8XoYOrDP' \
    > test.out 2>&1
eval_tap $? 49 'PublicGetUserProfilePublicInfoByIds' test.out

#- 50 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'J6bCDjrK' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfileInfoByPublicId' test.out

#- 51 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'PublicGetNamespacePublisher' test.out

#- 52 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetMyProfileInfo' test.out

#- 53 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "RKqmpw3K", "avatarSmallUrl": "7jBJjWAC", "avatarUrl": "o8CByy7O", "customAttributes": {"GJCMLY6X": {}, "KPu7NJRf": {}, "DKMKrm31": {}}, "dateOfBirth": "1983-06-15", "firstName": "Yw4srQEG", "language": "WX", "lastName": "qm3yhVzf", "privateCustomAttributes": {"5ZvJqDJg": {}, "7slvFtBn": {}, "0rUusSnW": {}}, "timeZone": "Diiuu7iT", "zipCode": "ox5pT4B7"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyProfile' test.out

#- 54 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "JMfNJtwY", "avatarSmallUrl": "OZ8IQWql", "avatarUrl": "5yg5g65J", "customAttributes": {"Sq8bHGTj": {}, "0G8U7YVK": {}, "fc0sKySY": {}}, "dateOfBirth": "1995-07-02", "firstName": "bYCuVE0E", "language": "UZRT_DmZI_242", "lastName": "h0PVXUvt", "privateCustomAttributes": {"lDMauPL4": {}, "F4OKSOYI": {}, "VplzmN3F": {}}, "timeZone": "v4J2b5tg"}' \
    > test.out 2>&1
eval_tap $? 54 'CreateMyProfile' test.out

#- 55 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetMyPrivateCustomAttributesInfo' test.out

#- 56 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"nlSNBIGg": {}, "VLm3VLo6": {}, "YUl1ocaJ": {}}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 57 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetMyZipCode' test.out

#- 58 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "sGokYfrs"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateMyZipCode' test.out

#- 59 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'qRtStXbu' \
    --body '{"category": "Oqc1KlCx", "description": "Qw1aEHE7", "gameSessionId": "NYRtVfrL", "subcategory": "mWCPoabU", "userId": "tQnPGJxC"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicReportUser' test.out

#- 60 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '7y00w4AI' \
    --category 'MYOGSEKD' \
    --fileType '7HthNuVP' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratedUserUploadContentUrl' test.out

#- 61 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'QCaFuw6O' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfileInfo' test.out

#- 62 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'vbssoEvV' \
    --body '{"avatarLargeUrl": "hdpQMMJE", "avatarSmallUrl": "566raxpV", "avatarUrl": "K7gEW4n6", "customAttributes": {"cWixiUV5": {}, "dwIaq1wV": {}, "6AcKRnhg": {}}, "dateOfBirth": "1983-06-04", "firstName": "lQ17siju", "language": "ym-014", "lastName": "86pBJ3fQ", "timeZone": "JktjYA3u", "zipCode": "aIhTYcBU"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfile' test.out

#- 63 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 's8jv60UZ' \
    --body '{"avatarLargeUrl": "jymxwUZp", "avatarSmallUrl": "YZNy43Tf", "avatarUrl": "P9jX1Ojz", "customAttributes": {"XhwpXLJp": {}, "suxAfuxz": {}, "AMeiF8Ro": {}}, "dateOfBirth": "1987-08-01", "firstName": "dleRn1DN", "language": "kLUp_BtLZ", "lastName": "IhjGLQqU", "timeZone": "TW0OnmG5"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicCreateUserProfile' test.out

#- 64 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'y9F66D4n' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetCustomAttributesInfo' test.out

#- 65 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'SIR97Sv9' \
    --body '{"XzjQ6GMe": {}, "m0TPBRhv": {}, "ygNmme0n": {}}' \
    > test.out 2>&1
eval_tap $? 65 'PublicUpdateCustomAttributesPartially' test.out

#- 66 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'UYlVcz5s' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetUserProfilePublicInfo' test.out

#- 67 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'nfeBLlGi' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE