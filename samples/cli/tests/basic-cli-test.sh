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
    --body '{"displayName": "6MVgzdJS9IvgWcKG", "namespace": "uZM4gbhkrufAvmAy"}' \
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
    --body '{"actionId": 11, "comment": "7ZgSrYap1OlYLyPA", "userIds": ["ESGwKDnXijhLTdgA", "DEWwlA1NOfwuYSjN", "rK8Zw14g32h8ZVT3"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["kFJPHxoHCQJJ55nn", "eB2pm3Gj1j0H6xBv", "ul8usPmp7hsHOXiD"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "XYz4LR13PFRgMV6m", "description": "xmPxJkAg0KP7FdBD", "gameSessionId": "myIJ2HpAqJ0TXUPj", "subcategory": "D51YViMIq1OzEmq0", "userId": "oWZBpOquddmaZ6pR"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId '850xbbLqbdavP8EM' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "FUcTXHSAdPvrcojn", "userIds": ["BAfupr76GIqutVkF", "wK79GOS0HGttQf2h", "BsUqanbNcPqg1EZx"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "YGe1khbXvditMe7q"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "oEA5r0ycUzSPx8W3", "value": "a4TzceDQlM1n4CGY"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'dFcrZRYsxYrEPnUd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey '6IZt7QegdTFzUoGk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'J0Q9DQpBXKdkTdRg' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "YXvH64CKaeI7Hjeb"}' \
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
    --body '{"apiKey": "JvbmMTk98xFGTSd9"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'Y4pZ0NGO5UH18ZNL' \
    --namespace $AB_NAMESPACE \
    --fileType 'uti7PtfqUWG5wsJT' \
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
    --lang 'D1Pz1YDj5jZVxJQJ' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'DuR9PfImMwshNBI9' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "3jHzyDR6JVjkdOid", "name": "SitYQ0nw55b2b643"}, {"code": "FhGivkz2h0rTnUcP", "name": "w8CMqSNzxVmk8CAH"}, {"code": "jCa92ErGBjvhdCEk", "name": "JH1S5MdNk1yzTGDj"}], "countryGroupCode": "LREK5h5HRRHFvrJ3", "countryGroupName": "1DHr9g86nsGcxMUx"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'M19xfflMgEsHaDnV' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "txQBadvCzi3f85xY", "name": "t7MBi3ksn00UJERO"}, {"code": "C2GY6DlquzDoUidK", "name": "f4O8203bvzHBPRK1"}, {"code": "O9Ip8Ot0U7h37bmR", "name": "2uQ1vA3wgwJrjZC4"}], "countryGroupName": "l8590vR0Tt32haeM"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'jscWBQg57QsMmeFU' \
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
    --publicId 'w10AoKhNMeiG1FpS' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zqkamzBRlUxXF9Vr", "cniJqWRRMNH5i8yX", "JuULiCYZyBU7NxEk"]}' \
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
    --userId 'qSZTncjbrzHgzXEo' \
    > test.out 2>&1
eval_tap $? 33 'AnonymizeUserProfile' test.out

#- 34 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '4XkOYshTruZKklIJ' \
    --category '1ZInOT1Xjr3UOGPl' \
    --fileType 'qOT34JYyJX9dj9hj' \
    > test.out 2>&1
eval_tap $? 34 'GeneratedUserUploadContentUrl' test.out

#- 35 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'yDBUyY6Cf6N5dOqT' \
    > test.out 2>&1
eval_tap $? 35 'GetUserProfileInfo' test.out

#- 36 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '1f0ZwXILLFKmmG6c' \
    --body '{"avatarLargeUrl": "nr2VpKvbA8KyLXfl", "avatarSmallUrl": "iDPe0pytTySeOr8A", "avatarUrl": "jzK6odIaFuS3ofPL", "customAttributes": {"3CDHmkvLv8qNxr1x": {}, "lW9rTf19jHBn78Lz": {}, "UtgR0hqhwV1d25HP": {}}, "dateOfBirth": "1977-07-04", "firstName": "9ZhemZuJ4pBDy68d", "language": "xtot_YUFJ-wR", "lastName": "gEm3SjGGTghmAop1", "status": "ACTIVE", "timeZone": "PZw0fo7XMCsPgHc5", "zipCode": "7QP3OBhT3GkzeTs2"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfile' test.out

#- 37 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ji5z1Zjre4PVaYT9' \
    > test.out 2>&1
eval_tap $? 37 'DeleteUserProfile' test.out

#- 38 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'vzogPsBRcw74FNIk' \
    > test.out 2>&1
eval_tap $? 38 'GetCustomAttributesInfo' test.out

#- 39 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'CjXrV8fK05aumyXS' \
    --body '{"GWEa88NJPRvmlDgB": {}, "VjSHDffsTkpJtnjw": {}, "kIUdnNafhihswqJX": {}}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateCustomAttributesPartially' test.out

#- 40 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ImSxAz7thocu3qkV' \
    > test.out 2>&1
eval_tap $? 40 'GetPrivateCustomAttributesInfo' test.out

#- 41 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'Jv2qIe4rKmPnKoOv' \
    --body '{"voL51T7E57AF8tpu": {}, "jDS3VKgxnFC4SjXK": {}, "SvQmcTKp75Wq6mCd": {}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePrivateCustomAttributesPartially' test.out

#- 42 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '6KjVlQGgCud1FmIx' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateUserProfileStatus' test.out

#- 43 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 43 'PublicGetTime' test.out

#- 44 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetNamespaces' test.out

#- 45 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder '9MaaWt7xx38s10WR' \
    --namespace $AB_NAMESPACE \
    --fileType 'luVppOvUGrLz4M4G' \
    > test.out 2>&1
eval_tap $? 45 'PublicGeneratedUploadUrl' test.out

#- 46 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'omcLOsy9EHT52BPm' \
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
    --userIds 'iRfpByt7qTHVbaeu' \
    > test.out 2>&1
eval_tap $? 49 'PublicGetUserProfilePublicInfoByIds' test.out

#- 50 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '50CzRxYqId9FP3t2' \
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
    --body '{"avatarLargeUrl": "aX4fbrAAmymwHcXI", "avatarSmallUrl": "PQ1tOcdGuE4IOU9e", "avatarUrl": "Em5oHIkJIrI8aeLK", "customAttributes": {"ZeMeQNsH5WiRU0Pe": {}, "92NQVV43iKqqS2mA": {}, "iviXUwW9NS7Wlq3T": {}}, "dateOfBirth": "1997-07-24", "firstName": "ognjNyuGnVmefKPd", "language": "SgrM", "lastName": "4qVonkOi4FCuQ3nh", "privateCustomAttributes": {"oGlOgYg1Kwcj3YZX": {}, "TYOUzATT0qyKfIqk": {}, "yNmIZXRrPSe9MgOe": {}}, "timeZone": "XFAMF60GulRpZAFk", "zipCode": "QAa4e9pm1F4WYdSW"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyProfile' test.out

#- 54 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "STyDZ5Cpi33VCgO5", "avatarSmallUrl": "dsGZAPI5dAJoWQ8e", "avatarUrl": "NPHc9c7nMbCvzS6D", "customAttributes": {"MS28WWkXoySRU4SG": {}, "uyC62sj7Ky8Lf1Bj": {}, "OzM8bAjrPktXu1Ra": {}}, "dateOfBirth": "1995-04-23", "firstName": "lImnFC2KfZmGOKbQ", "language": "Xbfp", "lastName": "nBmjKEzPy0By1coa", "privateCustomAttributes": {"aFnY0FIrlGTKb4VC": {}, "mDQwysPsktQVD2mb": {}, "wu74LTFFgMM6MozA": {}}, "timeZone": "CweUz8D2DyIN3jT3"}' \
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
    --body '{"xK4xIo5vr2OENeQJ": {}, "WlYlEiX0ySbch94u": {}, "jTZkJ1yWZpDal7nl": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "UTbposA0VnirVb9j"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateMyZipCode' test.out

#- 59 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'ZXflhlV6XZ7lhbJV' \
    --body '{"category": "BThXxJDovdSTqZqT", "description": "Ev7GZn79Yu5WrX7f", "gameSessionId": "JhcLJno4FvCXLfil", "subcategory": "v3Rkqi8bAQLBjmeA", "userId": "W4yyTp42ZSXLr8D7"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicReportUser' test.out

#- 60 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'Ti6jh7VnUhumPvsq' \
    --category 'i7RIDLewwfKBiZBV' \
    --fileType '8Q2wGVxakBg3vgbZ' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratedUserUploadContentUrl' test.out

#- 61 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'SvIDJ0mS0DSvl46N' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfileInfo' test.out

#- 62 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'nNez2TSzGez9XyOQ' \
    --body '{"avatarLargeUrl": "0yg07yfgP8P5hVMw", "avatarSmallUrl": "sTziZ9Owye1iG8Of", "avatarUrl": "Ccbtr2Rbnt0bzUG9", "customAttributes": {"pIGJ9FqYmPtxfr1o": {}, "BUw7YY5TOOwyUmBP": {}, "i9CWqtZ5F7Llr9Tu": {}}, "dateOfBirth": "1983-10-25", "firstName": "gJzFfyDUzFJ2Pfzr", "language": "DOnF_ujDT_Tj", "lastName": "DGscNlu59wDvEKkZ", "timeZone": "2XaqfaNFK6OZ8AQs", "zipCode": "bqj47TV45DQ9PDhJ"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfile' test.out

#- 63 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '3L26fURNzk5b9T91' \
    --body '{"avatarLargeUrl": "7a5l0WcWs7ES6ICf", "avatarSmallUrl": "s7lU0LIDNGhgUeQt", "avatarUrl": "Xe1mZKUf804oU85I", "customAttributes": {"22Ysfwco6MbXde7S": {}, "sWan4JiSvA1i965r": {}, "0ic1QBQE9lEdsOfs": {}}, "dateOfBirth": "1989-09-11", "firstName": "DeizbYOICdI0km7B", "language": "wVaX", "lastName": "tkQ0DwhTiXF1gSWg", "timeZone": "G7mPV41DRio9M7rj"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicCreateUserProfile' test.out

#- 64 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ESBXdxYHLe9nSOKO' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetCustomAttributesInfo' test.out

#- 65 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'BZ1rYEbAQUxR9RMc' \
    --body '{"nVFbRdTRLx8VFTti": {}, "bxxwKG6HJvlV1SJb": {}, "iOc7BFiKouTCdbus": {}}' \
    > test.out 2>&1
eval_tap $? 65 'PublicUpdateCustomAttributesPartially' test.out

#- 66 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'EMEkD7LnZMZb9ZDP' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetUserProfilePublicInfo' test.out

#- 67 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'UG0mplCjUHtXwXnF' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE