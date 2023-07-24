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
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "SL2f8hyjzD0tUfxR", "namespace": "zaOK5r3MVCSFi0o3"}' \
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
    --body '{"actionId": 39, "comment": "cDLE9vC8yJ0Aawxv", "userIds": ["johFm6sIgHiGoPoI", "Vw41rryxHPR4NI0s", "aRB1nKlvDvOeELcY"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["GUv6f2YJ9cv7uMxP", "eViYxAhkp9WIfuhM", "PZuXYvHVZqXr3qT5"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "Zw674Fg9BM81FhW7", "description": "LhA170YGS6u4bcG2", "gameSessionId": "MVLYfabwdr61hfCx", "subcategory": "LfXHk5XkAakKipO8", "userId": "AEVSd7Wy00XP3YHW"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'I0m6SVrm1Cxspz6O' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "FmqqD7jG4fV3YkfB", "userIds": ["SFybb6rsdUH8wBVB", "IWggTKXcippfE4ku", "59gd4BviBK355yu5"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "DNlpZHkpir1hIGNJ"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "mDvhhdF4Lbai33Lm", "value": "B0RAqIlKcli3dC3I"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'ONBIII7CNZhwIUQ9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'cRHBEzSAY8252J5R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'pjJfPk7g9rWxZEaZ' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "UVUSJlZJQjQ01wO1"}' \
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
    --body '{"apiKey": "7UWWmQn6RYY7jI41"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'DKVQ9MgxEHYoo7Gk' \
    --namespace $AB_NAMESPACE \
    --fileType '35Anblj4VtptFVzX' \
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
    --lang 'YcsX32G5EpGd5eO5' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'sfjgUEKRbycutaS9' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "xYiay3virplhryXk", "name": "3ssKc4jV0EzEmwWR"}, {"code": "fisaP3P2Mkp9LeBJ", "name": "bxe1PJIWx2gVJ2xq"}, {"code": "gGj8ItBQWfmHYI4q", "name": "M6k0ap7lc98AQkZ2"}], "countryGroupCode": "pMm4X8k1kMOCY4TJ", "countryGroupName": "m1jKIo4xdHmJnbJf"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'tAT1j2CuvLS26Hwo' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "K1fk0igAZFfaH9ih", "name": "8w0id9AOyNb8RYzo"}, {"code": "uWlcJlugxWzq6j96", "name": "JhU35oeLDoXx37pC"}, {"code": "m7eEmD4KUuQMMXLz", "name": "Jm8LfhrXLlwxnn1B"}], "countryGroupName": "H8YTiupgaxrREkjN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'V41AZmrgSPdyjqEM' \
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
    --publicId 'cFXSGgsM6PnM90xA' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["tTIZIJidjZt3mdai", "iiLckR2x5P87wJ0Q", "PPaX6yPQ2BkjStpU"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'WvJgUYO090ALLG4r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPublisherConfig' test.out

#- 33 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 33 'ChangeNamespaceStatus' test.out

#- 34 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'j4Ov91LDAGS7AXty' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 't9HCRsVI64enlYDn' \
    --category '3y8oOapCWkWmtbbz' \
    --fileType 'R1Hl8MGC3teduWOE' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'rnYw22NSFBbPpSmP' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'mELJv19jlgi9kwhI' \
    --body '{"avatarLargeUrl": "q6alWif7TKAr5Eo7", "avatarSmallUrl": "xsbRoBvquyw0Pvdj", "avatarUrl": "3I2oYi8OM7NKYfOY", "customAttributes": {"JO9j2XfEKJPrhqVA": {}, "NnXoJ4xmmb3lKrhy": {}, "8SPfIVkLVVL7b1hj": {}}, "dateOfBirth": "1973-06-23", "firstName": "sII4v8grWI8aIE9u", "language": "bEZ_901", "lastName": "mPIksUZ3ebxLopSU", "privateCustomAttributes": {"zdOskydy10q9eGrR": {}, "Lz3GAHQyBQOGFq3u": {}, "pnEvUbdDiqoqE4WC": {}}, "status": "ACTIVE", "timeZone": "dat984fQLi0QRZo4", "zipCode": "up9aW44pmW0aRtY4"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Ge0kX4j0He2Wn8X2' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'NBoDyypYGDhgmUkB' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'm229HZlchr9YORvU' \
    --body '{"xFQe65SCzK4ZHt8d": {}, "M4w4Vjyy2YBcjYnz": {}, "SQc2meDgz1ulGsKn": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '6tYjeVcQPJHn71Js' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'GhgLHxnGAnD6GMKh' \
    --body '{"mhWMfZ9bbWT78xyG": {}, "5eDsGMBMwsqQETqL": {}, "YQ0L9VCyqwYavJv9": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'ue3J1pAhbJL7jq7k' \
    --body '{"status": "ACTIVE"}' \
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
    --folder 'nVVaJsRR5BgfGddJ' \
    --namespace $AB_NAMESPACE \
    --fileType 't6rysegJILaxXnyK' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'azQHLNlIPQRf2cN4' \
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
    --userIds 'av5jH9JgQB6KZpjr' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'AybA8WjqhNewz7T6' \
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
    --body '{"avatarLargeUrl": "U4UQpeQYRophqduG", "avatarSmallUrl": "yiHYZnNZCBt4vUoD", "avatarUrl": "EvPJx2Ag732A6k74", "customAttributes": {"m4HxnjwdN4JbSsYA": {}, "f42Yh8oCVMs3rHpm": {}, "tNbTHAVIW3MS63RA": {}}, "dateOfBirth": "1988-05-16", "firstName": "hjoVx6bHuHI3pYCQ", "language": "rVu_lFfZ", "lastName": "ogygXr02f4PntBo9", "privateCustomAttributes": {"KveyzH6XvD5QwdDF": {}, "kaaWMoW63cqOiOMg": {}, "1aoEbn33W8h8qd2n": {}}, "timeZone": "k2GvCq8Pm6W1Wfr1", "zipCode": "4pgffTJmZL74W5yi"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "f1IWhckIUx4yI6K3", "avatarSmallUrl": "pktl02M1A2XF6got", "avatarUrl": "ao885iLMfAoiD0rk", "customAttributes": {"NaiwOttM5yLAUsik": {}, "2A3Y8c7u893b5CQQ": {}, "j7rciFGH3yP5DZnH": {}}, "dateOfBirth": "1976-05-12", "firstName": "oVSdYtftEcDFDGSA", "language": "gT-hFOa", "lastName": "HBGYppyH3FTpwt95", "privateCustomAttributes": {"cBSTbXGeQqJ8ux4R": {}, "QF8x2crXuVkzmCUv": {}, "3inTOPZUvyxAY1xu": {}}, "timeZone": "mkdKAovvizeSNl7X"}' \
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
    --body '{"ZUo02IRO8vOWRDq9": {}, "SBl4gE9aEMh0zSc6": {}, "lD3ckzhfaEZzAJUG": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "aPVPEQprwqImNXsK"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId '0lxBuTTVkAtinZhq' \
    --body '{"category": "PIqtRKkZ0lODKuXm", "description": "P2KKN3rg3mAQwpI9", "gameSessionId": "89mjbfjxVCnlAI1M", "subcategory": "itUw4npdjo355AtB", "userId": "7avt7PiLXQghvmTK"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'DpsWmjsQdbbi5wzR' \
    --category 'PBze6gg0aFXyRaQB' \
    --fileType 'WexRTO9dR4JQtU3b' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'aGH5TCN5IKYvPE4u' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'rpXvNMVSnPfjTfZW' \
    --body '{"avatarLargeUrl": "48DGrdhWYhwenjuB", "avatarSmallUrl": "0iy1d24YOIGDe8g4", "avatarUrl": "ezkpA2iptBmXiNEG", "customAttributes": {"5tM8yVPAXQANH53P": {}, "SRcrikA4wq092opK": {}, "o2Yh4Rzv6XlanjqJ": {}}, "dateOfBirth": "1977-04-01", "firstName": "UFFVtuzenJoN25TN", "language": "iOlF-LPmb", "lastName": "6H12uol6wRdl5dAt", "privateCustomAttributes": {"5N4I5Hn4vRt2oJfY": {}, "zYzO2SeEDxwNVNAF": {}, "1GSQeTw1xA8fvOLF": {}}, "timeZone": "K7YdnjN5HUJRZbat", "zipCode": "jA4FJjZMpDNUbDBG"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'YKC5MXqApwpHOjBq' \
    --body '{"avatarLargeUrl": "RVOYlkgXQ91IPt3p", "avatarSmallUrl": "VKl9eKokv0ppwyV1", "avatarUrl": "43wcQKBDuOhxAmA8", "customAttributes": {"FnYwxg2NlDjPAqpr": {}, "Z8VBgdwe4KUQBtfn": {}, "oMDOsQ7YTAEc8HUw": {}}, "dateOfBirth": "1986-04-25", "firstName": "Ll7iK7adzm3yr9TM", "language": "vPG_XUDR", "lastName": "rEtN3onpte95B0KT", "timeZone": "pSulcpLCgebWv6QV"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Tzy4IeuSEEXxlHsT' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'prJq2VZCCw5WhPiu' \
    --body '{"WxrTWrWoBxHzjzFS": {}, "jHMZ1IXCe7poFT9q": {}, "u9pkvStUAW0FEDFQ": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'MVclJdtRh8VCR7A7' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'ww3C1M1AA2eNYub5' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE