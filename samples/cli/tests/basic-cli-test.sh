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
    --body '{"displayName": "t7ES3oTr52yLG1Dt", "namespace": "zYqtcAbpFhyXhn5P"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateNamespace' test.out

#- 4 GetNamespace
samples/cli/sample-apps Basic getNamespace \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
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
    --body '{"actionId": 50, "comment": "Mv0M1TuSbPAYi9vu", "userIds": ["vJXqcArSbH43z6dj", "O4fLVhTg9IM2KOFy", "PZvdoV8dhVgUndrv"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["HpmgPsXL8wcq732F", "rQqS3CcL1BFyNiIU", "efiwHoLL46qG1MEs"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "BeoUKAKe2Cw9uCs4", "description": "RLSNtuQxTHfBoRtD", "gameSessionId": "c8nLmPytCWuowDdb", "subcategory": "TzjflJwbQwXqj1dR", "userId": "1WYaGwi7tjobUHPC"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'vOqiKY1Fqb7s5NrN' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "B5Rw1J9gyHD93Y4x", "userIds": ["zxLYTKUDcb3dVnvM", "ZN3eMioW1HWHMNHu", "HO9CkR1sDWZ8j8tY"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "9H1RxbAHPYRka7RX"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "4O1R9bTZaFSgzcbT", "value": "Gk6Mt8EqgtFbAOtV"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'JryEe7w6d58zwkLn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'GDg6N3Xuogt1xihE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'lzz98KlKHpojTKuT' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "nhO3HtBO7sWZUXjR"}' \
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
    --body '{"apiKey": "f68dyxPBgnlcPSLf"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'AgChOwtss7kHFnA3' \
    --namespace $AB_NAMESPACE \
    --fileType 'vpDrm4aPw3tsCWOb' \
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
    --lang 'URNsCtDBRQv5lSXU' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'OwOOrNtm9aBA5siN' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "wx2orZzUrqxplt8K", "name": "Zo49bYT9289bdeR3"}, {"code": "fIJzdMRYi4NBx5ua", "name": "ydetnVLBaaq8EGny"}, {"code": "JIIGMhEjmECCbaxn", "name": "xDP376mcm4l20E9o"}], "countryGroupCode": "nVtkXpOlQc4j5CUk", "countryGroupName": "0n7UQYN5tdKMMBz7"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode '9ga6GGVEUp8AHRp6' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "P9VzKVAZXYKrRh9b", "name": "bcAioxlQK77LAfmR"}, {"code": "bqHEA3HSlociXYYU", "name": "85wyK97Wvu0lE3uv"}, {"code": "zJDJQYopA7GylorH", "name": "L7WyyFL03y4TI7RY"}], "countryGroupName": "jHPhYVm3zWCdvPJY"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'Pu0RlkhOmOV88ydp' \
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
    --publicId 'eot5vArm87OIFVQY' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["hserQ01IFxoozOh7", "BY0zTYtG3wPrQC0K", "JswUAxF3BQLu9opO"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'Mr0S37lNM5qQEOGK' \
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
    --userId 'iPJ0wAh2IqiZIVbT' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'KIN1e5Y44QDQTSaa' \
    --category 'WHucrH2frOlfJPdF' \
    --fileType 'P573l589FtWv6nJd' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'uSunZYFG9Z2Rkm2m' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'exyysjiqNRDs8eWQ' \
    --body '{"avatarLargeUrl": "o6eXoEMSGisL9vum", "avatarSmallUrl": "5LF9LiH9ob0BYGl5", "avatarUrl": "AXB6gpZ14gDQ5Hvy", "customAttributes": {"cqWmjneWJD1OM3nQ": {}, "DVC6cYKcEs2WjXkn": {}, "SnZ2SNt0Rslc3sEY": {}}, "dateOfBirth": "1976-03-09", "firstName": "mXJvaGjpKLliTht5", "language": "TPG_FPiK-cp", "lastName": "WO0smaKR1WRKBlsT", "privateCustomAttributes": {"WVe6dPA5Pb8vesCg": {}, "Aj1xDVCIuTa7jk9H": {}, "vjUHOlDoBSq7Ihfi": {}}, "status": "INACTIVE", "timeZone": "h96cJQoPu5eu120V", "zipCode": "P64injM5uu7XXRep"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'iQms8tYr9QBpBfuQ' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'FBRoiNoobDDopG1Y' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'oMgs6IUFGcbwGQ9W' \
    --body '{"NDpkY7TD4gbstGIQ": {}, "IOS6SOYEJJk4ruKU": {}, "fZY3K9QLS6SBbPHG": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'kLbKgar5jhWfsyxN' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'wPVh8dTOZDglBA9O' \
    --body '{"LtX3P4Sr0rQVLXfy": {}, "B9J9384O8NOITlb5": {}, "89mOyfpIuTSoyDWZ": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'DjNqi05QG9Nxpllz' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateUserProfileStatus' test.out

#- 44 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 44 'PublicGetTime' test.out

#- 45 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetNamespaces' test.out

#- 46 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'IbViKydPVBtWjdqp' \
    --namespace $AB_NAMESPACE \
    --fileType 'bweZriQov5HWhpbh' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang '4l0xLnh02OiaGbLr' \
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
    --userIds 'D9DQ1PmVfDgOOTvw' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'egKA6N7XnKNgN0tm' \
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
    --body '{"avatarLargeUrl": "TCut83CjzX6I2vWj", "avatarSmallUrl": "9GRJFvFYkAI6RuOc", "avatarUrl": "6DMpb97ZkqgzRurc", "customAttributes": {"s1IvL7uV3yOjOIPp": {}, "NUIg7DTGnDc2HUmL": {}, "ze5iio9mKqBV3TdO": {}}, "dateOfBirth": "1984-11-05", "firstName": "dGwRGldSC251SVHO", "language": "mFP_BgAV", "lastName": "uNP1oqTG5F7HfNjZ", "privateCustomAttributes": {"EAaSEnqYYZFHoB0U": {}, "JykO7hNhGGwlu7Mc": {}, "5ZQk7VzVGfUrs7ln": {}}, "timeZone": "clcHaM8o3PlPbPUG", "zipCode": "5fRZN9LfXRkIM4xs"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "hqNlQ6FupZ2Opz7I", "avatarSmallUrl": "V5RVZesSZvBVGeqd", "avatarUrl": "QuWtMRU1zQZhRLof", "customAttributes": {"QKykW8oy4fxQr1eb": {}, "hSog3fMO7JWmoIVA": {}, "2JguHRlgh4tkDlug": {}}, "dateOfBirth": "1982-10-02", "firstName": "9VOH1n7biQ9BVY2Y", "language": "qOiO-dfjP_Zh", "lastName": "31k6aOOmrvMugE5z", "privateCustomAttributes": {"GlLVnJI0xQ2EUUqb": {}, "u3fKXIHLbow6gx13": {}, "q2KoqJD35JGasgIi": {}}, "timeZone": "yxBMwZbeNSxmzmpI"}' \
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
    --body '{"DwSXhZ7NIdpONqKM": {}, "TTgIjn5YWvqVh5wT": {}, "wbmWYRgSSqevxg67": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "PGNMfwJP883x1cqO"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'TksFnPBsqq6ivpbS' \
    --body '{"category": "gtOLWjpeHsnErqQt", "description": "Gf7K1MvbHWCMBaih", "gameSessionId": "9nWZycdSz5tgNrOE", "subcategory": "fS8Fie8G4QQOKXrj", "userId": "HqNLYwX8bSN2QQGs"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'PE79xhFGmvFXcSEG' \
    --category 'GUnwYjcCOmZwCNEd' \
    --fileType 'zQBVVzXjFdxSbHBK' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'LuVw8fxA5FPnpLZF' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ETmRuWlkyaERfeKU' \
    --body '{"avatarLargeUrl": "IY1m8vvYZMKhyKYH", "avatarSmallUrl": "9whgmZM0bjXBqczL", "avatarUrl": "RKZLkzKlR0ozvl5h", "customAttributes": {"yF4TF0u9nBmdLfl7": {}, "Q12VvKYETXQ6FVK1": {}, "SxKoumJOlR5SN2Pk": {}}, "dateOfBirth": "1979-07-31", "firstName": "nU7lonuoKvwrn1YE", "language": "UxGF_JziV_nB", "lastName": "VZsu2vmpIsHwlx0X", "privateCustomAttributes": {"3hr1PpMaG5xAeQph": {}, "UnoJZs7T6rs7Vl97": {}, "HUJDs2PHcKz8AmTU": {}}, "timeZone": "4m31OjT1RfkMvD4f", "zipCode": "YuSrfaS14Ckts38B"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'uTQD4tIs80xxuQKB' \
    --body '{"avatarLargeUrl": "f4NBKv4dEsG3xpYF", "avatarSmallUrl": "liK0LNQFF7XTBFAV", "avatarUrl": "8bCfryn4RJAolnbd", "customAttributes": {"ZMH305ckX53yrGK1": {}, "p62J1IeK7tennw1R": {}, "N8WmGNg0wCx8GQjx": {}}, "dateOfBirth": "1991-08-11", "firstName": "rRiRZ2uUfEPS0zSL", "language": "ny", "lastName": "PfxIpmMgejtIRq6K", "timeZone": "M7roOJqQ85VE7vFW"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'RmxxY1nOYAHtK5tk' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'KjgmSohTTLsenWdB' \
    --body '{"PDgKMFsDiMCjsgoR": {}, "Mo0lUyX1Bh8mzUqT": {}, "OF0QHwQkqtqnQb9e": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId '7cTtZ4EtboQ4BBNt' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'ylPdi2huidoLkEYB' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE