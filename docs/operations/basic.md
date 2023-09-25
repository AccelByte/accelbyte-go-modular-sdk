# Basic Service Index

&nbsp;

## Operations

### Namespace Wrapper:  [Namespace](../../basic-sdk/pkg/wrapper_namespace.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/basic/v1/admin/namespaces` | GET | GetNamespacesShort | [GetNamespacesShort](../../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [GetNamespacesShort](../../basic-sdk/pkg/wrapper_namespace.go) | [GetNamespacesShort](../../samples/cli/cmd/basic/namespace/getNamespaces.go) |
| `/basic/v1/admin/namespaces` | POST | CreateNamespaceShort | [CreateNamespaceShort](../../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [CreateNamespaceShort](../../basic-sdk/pkg/wrapper_namespace.go) | [CreateNamespaceShort](../../samples/cli/cmd/basic/namespace/createNamespace.go) |
| `/basic/v1/admin/namespaces/{namespace}` | GET | GetNamespaceShort | [GetNamespaceShort](../../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [GetNamespaceShort](../../basic-sdk/pkg/wrapper_namespace.go) | [GetNamespaceShort](../../samples/cli/cmd/basic/namespace/getNamespace.go) |
| `/basic/v1/admin/namespaces/{namespace}` | DELETE | DeleteNamespaceShort | [DeleteNamespaceShort](../../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [DeleteNamespaceShort](../../basic-sdk/pkg/wrapper_namespace.go) | [DeleteNamespaceShort](../../samples/cli/cmd/basic/namespace/deleteNamespace.go) |
| `/basic/v1/admin/namespaces/{namespace}/basic` | PATCH | UpdateNamespaceShort | [UpdateNamespaceShort](../../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [UpdateNamespaceShort](../../basic-sdk/pkg/wrapper_namespace.go) | [UpdateNamespaceShort](../../samples/cli/cmd/basic/namespace/updateNamespace.go) |
| `/basic/v1/admin/namespaces/{namespace}/game` | GET | GetGameNamespacesShort | [GetGameNamespacesShort](../../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [GetGameNamespacesShort](../../basic-sdk/pkg/wrapper_namespace.go) | [GetGameNamespacesShort](../../samples/cli/cmd/basic/namespace/getGameNamespaces.go) |
| `/basic/v1/admin/namespaces/{namespace}/publisher` | GET | GetNamespacePublisherShort | [GetNamespacePublisherShort](../../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [GetNamespacePublisherShort](../../basic-sdk/pkg/wrapper_namespace.go) | [GetNamespacePublisherShort](../../samples/cli/cmd/basic/namespace/getNamespacePublisher.go) |
| `/basic/v1/admin/namespaces/{namespace}/status` | PATCH | ChangeNamespaceStatusShort | [ChangeNamespaceStatusShort](../../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [ChangeNamespaceStatusShort](../../basic-sdk/pkg/wrapper_namespace.go) | [ChangeNamespaceStatusShort](../../samples/cli/cmd/basic/namespace/changeNamespaceStatus.go) |
| `/basic/v1/public/namespaces` | GET | PublicGetNamespacesShort | [PublicGetNamespacesShort](../../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [PublicGetNamespacesShort](../../basic-sdk/pkg/wrapper_namespace.go) | [PublicGetNamespacesShort](../../samples/cli/cmd/basic/namespace/publicGetNamespaces.go) |
| `/basic/v1/public/namespaces/{namespace}/publisher` | GET | PublicGetNamespacePublisherShort | [PublicGetNamespacePublisherShort](../../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [PublicGetNamespacePublisherShort](../../basic-sdk/pkg/wrapper_namespace.go) | [PublicGetNamespacePublisherShort](../../samples/cli/cmd/basic/namespace/publicGetNamespacePublisher.go) |

### UserAction Wrapper:  [UserAction](../../basic-sdk/pkg/wrapper_userAction.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/basic/v1/admin/namespaces/{namespace}/actions` | GET | GetActionsShort | [GetActionsShort](../../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [GetActionsShort](../../basic-sdk/pkg/wrapper_userAction.go) | [GetActionsShort](../../samples/cli/cmd/basic/userAction/getActions.go) |
| `/basic/v1/admin/namespaces/{namespace}/actions/ban` | POST | BanUsersShort | [BanUsersShort](../../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [BanUsersShort](../../basic-sdk/pkg/wrapper_userAction.go) | [BanUsersShort](../../samples/cli/cmd/basic/userAction/banUsers.go) |
| `/basic/v1/admin/namespaces/{namespace}/actions/banned` | GET | GetBannedUsersShort | [GetBannedUsersShort](../../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [GetBannedUsersShort](../../basic-sdk/pkg/wrapper_userAction.go) | [GetBannedUsersShort](../../samples/cli/cmd/basic/userAction/getBannedUsers.go) |
| `/basic/v1/admin/namespaces/{namespace}/actions/report` | POST | ReportUserShort | [ReportUserShort](../../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [ReportUserShort](../../basic-sdk/pkg/wrapper_userAction.go) | [ReportUserShort](../../samples/cli/cmd/basic/userAction/reportUser.go) |
| `/basic/v1/admin/namespaces/{namespace}/actions/status` | GET | GetUserStatusShort | [GetUserStatusShort](../../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [GetUserStatusShort](../../basic-sdk/pkg/wrapper_userAction.go) | [GetUserStatusShort](../../samples/cli/cmd/basic/userAction/getUserStatus.go) |
| `/basic/v1/admin/namespaces/{namespace}/actions/unban` | POST | UnBanUsersShort | [UnBanUsersShort](../../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [UnBanUsersShort](../../basic-sdk/pkg/wrapper_userAction.go) | [UnBanUsersShort](../../samples/cli/cmd/basic/userAction/unBanUsers.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report` | POST | PublicReportUserShort | [PublicReportUserShort](../../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [PublicReportUserShort](../../basic-sdk/pkg/wrapper_userAction.go) | [PublicReportUserShort](../../samples/cli/cmd/basic/userAction/publicReportUser.go) |

### Config Wrapper:  [Config](../../basic-sdk/pkg/wrapper_config.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/basic/v1/admin/namespaces/{namespace}/configs` | POST | CreateConfigShort | [CreateConfigShort](../../basic-sdk/pkg/basicclient/config/config_client.go) | [CreateConfigShort](../../basic-sdk/pkg/wrapper_config.go) | [CreateConfigShort](../../samples/cli/cmd/basic/config/createConfig.go) |
| `/basic/v1/admin/namespaces/{namespace}/configs/{configKey}` | GET | GetConfig1Short | [GetConfig1Short](../../basic-sdk/pkg/basicclient/config/config_client.go) | [GetConfig1Short](../../basic-sdk/pkg/wrapper_config.go) | [GetConfig1Short](../../samples/cli/cmd/basic/config/getConfig1.go) |
| `/basic/v1/admin/namespaces/{namespace}/configs/{configKey}` | DELETE | DeleteConfig1Short | [DeleteConfig1Short](../../basic-sdk/pkg/basicclient/config/config_client.go) | [DeleteConfig1Short](../../basic-sdk/pkg/wrapper_config.go) | [DeleteConfig1Short](../../samples/cli/cmd/basic/config/deleteConfig1.go) |
| `/basic/v1/admin/namespaces/{namespace}/configs/{configKey}` | PATCH | UpdateConfig1Short | [UpdateConfig1Short](../../basic-sdk/pkg/basicclient/config/config_client.go) | [UpdateConfig1Short](../../basic-sdk/pkg/wrapper_config.go) | [UpdateConfig1Short](../../samples/cli/cmd/basic/config/updateConfig1.go) |
| `/basic/v1/admin/namespaces/{namespace}/publisher/configs/{configKey}` | GET | GetPublisherConfigShort | [GetPublisherConfigShort](../../basic-sdk/pkg/basicclient/config/config_client.go) | [GetPublisherConfigShort](../../basic-sdk/pkg/wrapper_config.go) | [GetPublisherConfigShort](../../samples/cli/cmd/basic/config/getPublisherConfig.go) |

### EQU8Config Wrapper:  [EQU8Config](../../basic-sdk/pkg/wrapper_equ8Config.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/basic/v1/admin/namespaces/{namespace}/equ8/config` | GET | GetConfigShort | [GetConfigShort](../../basic-sdk/pkg/basicclient/equ8_config/equ8_config_client.go) | [GetConfigShort](../../basic-sdk/pkg/wrapper_equ8Config.go) | [GetConfigShort](../../samples/cli/cmd/basic/equ8Config/getConfig.go) |
| `/basic/v1/admin/namespaces/{namespace}/equ8/config` | DELETE | DeleteConfigShort | [DeleteConfigShort](../../basic-sdk/pkg/basicclient/equ8_config/equ8_config_client.go) | [DeleteConfigShort](../../basic-sdk/pkg/wrapper_equ8Config.go) | [DeleteConfigShort](../../samples/cli/cmd/basic/equ8Config/deleteConfig.go) |
| `/basic/v1/admin/namespaces/{namespace}/equ8/config` | PATCH | UpdateConfigShort | [UpdateConfigShort](../../basic-sdk/pkg/basicclient/equ8_config/equ8_config_client.go) | [UpdateConfigShort](../../basic-sdk/pkg/wrapper_equ8Config.go) | [UpdateConfigShort](../../samples/cli/cmd/basic/equ8Config/updateConfig.go) |

### FileUpload Wrapper:  [FileUpload](../../basic-sdk/pkg/wrapper_fileUpload.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/basic/v1/admin/namespaces/{namespace}/folders/{folder}/files` | POST | GeneratedUploadUrlShort | [GeneratedUploadUrlShort](../../basic-sdk/pkg/basicclient/file_upload/file_upload_client.go) | [GeneratedUploadUrlShort](../../basic-sdk/pkg/wrapper_fileUpload.go) | [GeneratedUploadUrlShort](../../samples/cli/cmd/basic/fileUpload/generatedUploadUrl.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/files` | POST | GeneratedUserUploadContentUrlShort | [GeneratedUserUploadContentUrlShort](../../basic-sdk/pkg/basicclient/file_upload/file_upload_client.go) | [GeneratedUserUploadContentUrlShort](../../basic-sdk/pkg/wrapper_fileUpload.go) | [GeneratedUserUploadContentUrlShort](../../samples/cli/cmd/basic/fileUpload/generatedUserUploadContentUrl.go) |
| `/basic/v1/public/namespaces/{namespace}/folders/{folder}/files` | POST | PublicGeneratedUploadUrlShort | [PublicGeneratedUploadUrlShort](../../basic-sdk/pkg/basicclient/file_upload/file_upload_client.go) | [PublicGeneratedUploadUrlShort](../../basic-sdk/pkg/wrapper_fileUpload.go) | [PublicGeneratedUploadUrlShort](../../samples/cli/cmd/basic/fileUpload/publicGeneratedUploadUrl.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/files` | POST | PublicGeneratedUserUploadContentUrlShort | [PublicGeneratedUserUploadContentUrlShort](../../basic-sdk/pkg/basicclient/file_upload/file_upload_client.go) | [PublicGeneratedUserUploadContentUrlShort](../../basic-sdk/pkg/wrapper_fileUpload.go) | [PublicGeneratedUserUploadContentUrlShort](../../samples/cli/cmd/basic/fileUpload/publicGeneratedUserUploadContentUrl.go) |

### Misc Wrapper:  [Misc](../../basic-sdk/pkg/wrapper_misc.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| [DEPRECATED] `/basic/v1/admin/namespaces/{namespace}/misc/countries` | GET | GetCountriesShort | [GetCountriesShort](../../basic-sdk/pkg/basicclient/misc/misc_client.go) | [GetCountriesShort](../../basic-sdk/pkg/wrapper_misc.go) | [GetCountriesShort](../../samples/cli/cmd/basic/misc/getCountries.go) |
| `/basic/v1/admin/namespaces/{namespace}/misc/countrygroups` | GET | GetCountryGroupsShort | [GetCountryGroupsShort](../../basic-sdk/pkg/basicclient/misc/misc_client.go) | [GetCountryGroupsShort](../../basic-sdk/pkg/wrapper_misc.go) | [GetCountryGroupsShort](../../samples/cli/cmd/basic/misc/getCountryGroups.go) |
| `/basic/v1/admin/namespaces/{namespace}/misc/countrygroups` | POST | AddCountryGroupShort | [AddCountryGroupShort](../../basic-sdk/pkg/basicclient/misc/misc_client.go) | [AddCountryGroupShort](../../basic-sdk/pkg/wrapper_misc.go) | [AddCountryGroupShort](../../samples/cli/cmd/basic/misc/addCountryGroup.go) |
| `/basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}` | PUT | UpdateCountryGroupShort | [UpdateCountryGroupShort](../../basic-sdk/pkg/basicclient/misc/misc_client.go) | [UpdateCountryGroupShort](../../basic-sdk/pkg/wrapper_misc.go) | [UpdateCountryGroupShort](../../samples/cli/cmd/basic/misc/updateCountryGroup.go) |
| `/basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}` | DELETE | DeleteCountryGroupShort | [DeleteCountryGroupShort](../../basic-sdk/pkg/basicclient/misc/misc_client.go) | [DeleteCountryGroupShort](../../basic-sdk/pkg/wrapper_misc.go) | [DeleteCountryGroupShort](../../samples/cli/cmd/basic/misc/deleteCountryGroup.go) |
| `/basic/v1/admin/namespaces/{namespace}/misc/languages` | GET | GetLanguagesShort | [GetLanguagesShort](../../basic-sdk/pkg/basicclient/misc/misc_client.go) | [GetLanguagesShort](../../basic-sdk/pkg/wrapper_misc.go) | [GetLanguagesShort](../../samples/cli/cmd/basic/misc/getLanguages.go) |
| `/basic/v1/admin/namespaces/{namespace}/misc/timezones` | GET | GetTimeZonesShort | [GetTimeZonesShort](../../basic-sdk/pkg/basicclient/misc/misc_client.go) | [GetTimeZonesShort](../../basic-sdk/pkg/wrapper_misc.go) | [GetTimeZonesShort](../../samples/cli/cmd/basic/misc/getTimeZones.go) |
| `/basic/v1/public/misc/time` | GET | PublicGetTimeShort | [PublicGetTimeShort](../../basic-sdk/pkg/basicclient/misc/misc_client.go) | [PublicGetTimeShort](../../basic-sdk/pkg/wrapper_misc.go) | [PublicGetTimeShort](../../samples/cli/cmd/basic/misc/publicGetTime.go) |
| [DEPRECATED] `/basic/v1/public/namespaces/{namespace}/misc/countries` | GET | PublicGetCountriesShort | [PublicGetCountriesShort](../../basic-sdk/pkg/basicclient/misc/misc_client.go) | [PublicGetCountriesShort](../../basic-sdk/pkg/wrapper_misc.go) | [PublicGetCountriesShort](../../samples/cli/cmd/basic/misc/publicGetCountries.go) |
| `/basic/v1/public/namespaces/{namespace}/misc/languages` | GET | PublicGetLanguagesShort | [PublicGetLanguagesShort](../../basic-sdk/pkg/basicclient/misc/misc_client.go) | [PublicGetLanguagesShort](../../basic-sdk/pkg/wrapper_misc.go) | [PublicGetLanguagesShort](../../samples/cli/cmd/basic/misc/publicGetLanguages.go) |
| `/basic/v1/public/namespaces/{namespace}/misc/timezones` | GET | PublicGetTimeZonesShort | [PublicGetTimeZonesShort](../../basic-sdk/pkg/basicclient/misc/misc_client.go) | [PublicGetTimeZonesShort](../../basic-sdk/pkg/wrapper_misc.go) | [PublicGetTimeZonesShort](../../samples/cli/cmd/basic/misc/publicGetTimeZones.go) |

### UserProfile Wrapper:  [UserProfile](../../basic-sdk/pkg/wrapper_userProfile.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/basic/v1/admin/namespaces/{namespace}/profiles/byPublicId` | GET | GetUserProfileInfoByPublicIdShort | [GetUserProfileInfoByPublicIdShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [GetUserProfileInfoByPublicIdShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [GetUserProfileInfoByPublicIdShort](../../samples/cli/cmd/basic/userProfile/getUserProfileInfoByPublicId.go) |
| `/basic/v1/admin/namespaces/{namespace}/profiles/public` | POST | AdminGetUserProfilePublicInfoByIdsShort | [AdminGetUserProfilePublicInfoByIdsShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [AdminGetUserProfilePublicInfoByIdsShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [AdminGetUserProfilePublicInfoByIdsShort](../../samples/cli/cmd/basic/userProfile/adminGetUserProfilePublicInfoByIds.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles` | GET | GetUserProfileInfoShort | [GetUserProfileInfoShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [GetUserProfileInfoShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [GetUserProfileInfoShort](../../samples/cli/cmd/basic/userProfile/getUserProfileInfo.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles` | PUT | UpdateUserProfileShort | [UpdateUserProfileShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdateUserProfileShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [UpdateUserProfileShort](../../samples/cli/cmd/basic/userProfile/updateUserProfile.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles` | DELETE | DeleteUserProfileShort | [DeleteUserProfileShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [DeleteUserProfileShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [DeleteUserProfileShort](../../samples/cli/cmd/basic/userProfile/deleteUserProfile.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes` | GET | GetCustomAttributesInfoShort | [GetCustomAttributesInfoShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [GetCustomAttributesInfoShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [GetCustomAttributesInfoShort](../../samples/cli/cmd/basic/userProfile/getCustomAttributesInfo.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes` | PUT | UpdateCustomAttributesPartiallyShort | [UpdateCustomAttributesPartiallyShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdateCustomAttributesPartiallyShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [UpdateCustomAttributesPartiallyShort](../../samples/cli/cmd/basic/userProfile/updateCustomAttributesPartially.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes` | GET | GetPrivateCustomAttributesInfoShort | [GetPrivateCustomAttributesInfoShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [GetPrivateCustomAttributesInfoShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [GetPrivateCustomAttributesInfoShort](../../samples/cli/cmd/basic/userProfile/getPrivateCustomAttributesInfo.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes` | PUT | UpdatePrivateCustomAttributesPartiallyShort | [UpdatePrivateCustomAttributesPartiallyShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdatePrivateCustomAttributesPartiallyShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [UpdatePrivateCustomAttributesPartiallyShort](../../samples/cli/cmd/basic/userProfile/updatePrivateCustomAttributesPartially.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status` | PATCH | UpdateUserProfileStatusShort | [UpdateUserProfileStatusShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdateUserProfileStatusShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [UpdateUserProfileStatusShort](../../samples/cli/cmd/basic/userProfile/updateUserProfileStatus.go) |
| `/basic/v1/public/namespaces/{namespace}/profiles/public` | GET | PublicGetUserProfilePublicInfoByIdsShort | [PublicGetUserProfilePublicInfoByIdsShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicGetUserProfilePublicInfoByIdsShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [PublicGetUserProfilePublicInfoByIdsShort](../../samples/cli/cmd/basic/userProfile/publicGetUserProfilePublicInfoByIds.go) |
| `/basic/v1/public/namespaces/{namespace}/profiles/public/byPublicId` | GET | PublicGetUserProfileInfoByPublicIdShort | [PublicGetUserProfileInfoByPublicIdShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicGetUserProfileInfoByPublicIdShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [PublicGetUserProfileInfoByPublicIdShort](../../samples/cli/cmd/basic/userProfile/publicGetUserProfileInfoByPublicId.go) |
| `/basic/v1/public/namespaces/{namespace}/users/me/profiles` | GET | GetMyProfileInfoShort | [GetMyProfileInfoShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [GetMyProfileInfoShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [GetMyProfileInfoShort](../../samples/cli/cmd/basic/userProfile/getMyProfileInfo.go) |
| `/basic/v1/public/namespaces/{namespace}/users/me/profiles` | PUT | UpdateMyProfileShort | [UpdateMyProfileShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdateMyProfileShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [UpdateMyProfileShort](../../samples/cli/cmd/basic/userProfile/updateMyProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/me/profiles` | POST | CreateMyProfileShort | [CreateMyProfileShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [CreateMyProfileShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [CreateMyProfileShort](../../samples/cli/cmd/basic/userProfile/createMyProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes` | GET | GetMyPrivateCustomAttributesInfoShort | [GetMyPrivateCustomAttributesInfoShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [GetMyPrivateCustomAttributesInfoShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [GetMyPrivateCustomAttributesInfoShort](../../samples/cli/cmd/basic/userProfile/getMyPrivateCustomAttributesInfo.go) |
| `/basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes` | PUT | UpdateMyPrivateCustomAttributesPartiallyShort | [UpdateMyPrivateCustomAttributesPartiallyShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdateMyPrivateCustomAttributesPartiallyShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [UpdateMyPrivateCustomAttributesPartiallyShort](../../samples/cli/cmd/basic/userProfile/updateMyPrivateCustomAttributesPartially.go) |
| `/basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode` | GET | GetMyZipCodeShort | [GetMyZipCodeShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [GetMyZipCodeShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [GetMyZipCodeShort](../../samples/cli/cmd/basic/userProfile/getMyZipCode.go) |
| `/basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode` | PATCH | UpdateMyZipCodeShort | [UpdateMyZipCodeShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdateMyZipCodeShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [UpdateMyZipCodeShort](../../samples/cli/cmd/basic/userProfile/updateMyZipCode.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles` | GET | PublicGetUserProfileInfoShort | [PublicGetUserProfileInfoShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicGetUserProfileInfoShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [PublicGetUserProfileInfoShort](../../samples/cli/cmd/basic/userProfile/publicGetUserProfileInfo.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles` | PUT | PublicUpdateUserProfileShort | [PublicUpdateUserProfileShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicUpdateUserProfileShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [PublicUpdateUserProfileShort](../../samples/cli/cmd/basic/userProfile/publicUpdateUserProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles` | POST | PublicCreateUserProfileShort | [PublicCreateUserProfileShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicCreateUserProfileShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [PublicCreateUserProfileShort](../../samples/cli/cmd/basic/userProfile/publicCreateUserProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes` | GET | PublicGetCustomAttributesInfoShort | [PublicGetCustomAttributesInfoShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicGetCustomAttributesInfoShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [PublicGetCustomAttributesInfoShort](../../samples/cli/cmd/basic/userProfile/publicGetCustomAttributesInfo.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes` | PUT | PublicUpdateCustomAttributesPartiallyShort | [PublicUpdateCustomAttributesPartiallyShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicUpdateCustomAttributesPartiallyShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [PublicUpdateCustomAttributesPartiallyShort](../../samples/cli/cmd/basic/userProfile/publicUpdateCustomAttributesPartially.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/public` | GET | PublicGetUserProfilePublicInfoShort | [PublicGetUserProfilePublicInfoShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicGetUserProfilePublicInfoShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [PublicGetUserProfilePublicInfoShort](../../samples/cli/cmd/basic/userProfile/publicGetUserProfilePublicInfo.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status` | PATCH | PublicUpdateUserProfileStatusShort | [PublicUpdateUserProfileStatusShort](../../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicUpdateUserProfileStatusShort](../../basic-sdk/pkg/wrapper_userProfile.go) | [PublicUpdateUserProfileStatusShort](../../samples/cli/cmd/basic/userProfile/publicUpdateUserProfileStatus.go) |

### Anonymization Wrapper:  [Anonymization](../../basic-sdk/pkg/wrapper_anonymization.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/profiles` | DELETE | AnonymizeUserProfileShort | [AnonymizeUserProfileShort](../../basic-sdk/pkg/basicclient/anonymization/anonymization_client.go) | [AnonymizeUserProfileShort](../../basic-sdk/pkg/wrapper_anonymization.go) | [AnonymizeUserProfileShort](../../samples/cli/cmd/basic/anonymization/anonymizeUserProfile.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `A DTO for unban user API call.` | [ADTOForUnbanUserAPICall ](../../basic-sdk/pkg/basicclientmodels/a_dto_for_unban_user_api_call.go) |
| `A DTO for update equ8 config API call.` | [ADTOForUpdateEqu8ConfigAPICall ](../../basic-sdk/pkg/basicclientmodels/a_dto_for_update_equ8_config_api_call.go) |
| `A DTO object for equ8 user ban status` | [ADTOObjectForEqu8UserBanStatus ](../../basic-sdk/pkg/basicclientmodels/a_dto_object_for_equ8_user_ban_status.go) |
| `A DTO object for equ8 user status` | [ADTOObjectForEqu8UserStatus ](../../basic-sdk/pkg/basicclientmodels/a_dto_object_for_equ8_user_status.go) |
| `Action` | [Action ](../../basic-sdk/pkg/basicclientmodels/action.go) |
| `AddCountryGroupRequest` | [AddCountryGroupRequest ](../../basic-sdk/pkg/basicclientmodels/add_country_group_request.go) |
| `AddCountryGroupResponse` | [AddCountryGroupResponse ](../../basic-sdk/pkg/basicclientmodels/add_country_group_response.go) |
| `ConfigCreate` | [ConfigCreate ](../../basic-sdk/pkg/basicclientmodels/config_create.go) |
| `ConfigInfo` | [ConfigInfo ](../../basic-sdk/pkg/basicclientmodels/config_info.go) |
| `ConfigUpdate` | [ConfigUpdate ](../../basic-sdk/pkg/basicclientmodels/config_update.go) |
| `CountryGroupObject` | [CountryGroupObject ](../../basic-sdk/pkg/basicclientmodels/country_group_object.go) |
| `CountryObject` | [CountryObject ](../../basic-sdk/pkg/basicclientmodels/country_object.go) |
| `Equ8Config` | [Equ8Config ](../../basic-sdk/pkg/basicclientmodels/equ8_config.go) |
| `ErrorEntity` | [ErrorEntity ](../../basic-sdk/pkg/basicclientmodels/error_entity.go) |
| `FieldValidationError` | [FieldValidationError ](../../basic-sdk/pkg/basicclientmodels/field_validation_error.go) |
| `FileUploadUrlInfo` | [FileUploadUrlInfo ](../../basic-sdk/pkg/basicclientmodels/file_upload_url_info.go) |
| `NamespaceCreate` | [NamespaceCreate ](../../basic-sdk/pkg/basicclientmodels/namespace_create.go) |
| `NamespaceInfo` | [NamespaceInfo ](../../basic-sdk/pkg/basicclientmodels/namespace_info.go) |
| `NamespacePublisherInfo` | [NamespacePublisherInfo ](../../basic-sdk/pkg/basicclientmodels/namespace_publisher_info.go) |
| `NamespaceStatusUpdate` | [NamespaceStatusUpdate ](../../basic-sdk/pkg/basicclientmodels/namespace_status_update.go) |
| `NamespaceUpdate` | [NamespaceUpdate ](../../basic-sdk/pkg/basicclientmodels/namespace_update.go) |
| `RetrieveCountryGroupResponse` | [RetrieveCountryGroupResponse ](../../basic-sdk/pkg/basicclientmodels/retrieve_country_group_response.go) |
| `RetrieveTimeResponse` | [RetrieveTimeResponse ](../../basic-sdk/pkg/basicclientmodels/retrieve_time_response.go) |
| `UpdateCountryGroupRequest` | [UpdateCountryGroupRequest ](../../basic-sdk/pkg/basicclientmodels/update_country_group_request.go) |
| `UserBanRequest` | [UserBanRequest ](../../basic-sdk/pkg/basicclientmodels/user_ban_request.go) |
| `UserProfileAdmin` | [UserProfileAdmin ](../../basic-sdk/pkg/basicclientmodels/user_profile_admin.go) |
| `UserProfileBulkRequest` | [UserProfileBulkRequest ](../../basic-sdk/pkg/basicclientmodels/user_profile_bulk_request.go) |
| `UserProfileCreate` | [UserProfileCreate ](../../basic-sdk/pkg/basicclientmodels/user_profile_create.go) |
| `UserProfileInfo` | [UserProfileInfo ](../../basic-sdk/pkg/basicclientmodels/user_profile_info.go) |
| `UserProfilePrivateCreate` | [UserProfilePrivateCreate ](../../basic-sdk/pkg/basicclientmodels/user_profile_private_create.go) |
| `UserProfilePrivateInfo` | [UserProfilePrivateInfo ](../../basic-sdk/pkg/basicclientmodels/user_profile_private_info.go) |
| `UserProfilePublicInfo` | [UserProfilePublicInfo ](../../basic-sdk/pkg/basicclientmodels/user_profile_public_info.go) |
| `UserProfileStatusUpdate` | [UserProfileStatusUpdate ](../../basic-sdk/pkg/basicclientmodels/user_profile_status_update.go) |
| `UserProfileUpdate` | [UserProfileUpdate ](../../basic-sdk/pkg/basicclientmodels/user_profile_update.go) |
| `UserReportRequest` | [UserReportRequest ](../../basic-sdk/pkg/basicclientmodels/user_report_request.go) |
| `UserZipCode` | [UserZipCode ](../../basic-sdk/pkg/basicclientmodels/user_zip_code.go) |
| `UserZipCodeUpdate` | [UserZipCodeUpdate ](../../basic-sdk/pkg/basicclientmodels/user_zip_code_update.go) |
| `ValidationErrorEntity` | [ValidationErrorEntity ](../../basic-sdk/pkg/basicclientmodels/validation_error_entity.go) |
