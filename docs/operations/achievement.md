# Achievement Service Index

&nbsp;

## Operations

### Achievements Wrapper:  [Achievements](../../achievement-sdk/pkg/wrapper_achievements.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/achievement/v1/admin/namespaces/{namespace}/achievements` | GET | AdminListAchievementsShort | [AdminListAchievementsShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminListAchievementsShort](../../achievement-sdk/pkg/wrapper_achievements.go) | [AdminListAchievementsShort](../../samples/cli/cmd/achievement/achievements/adminListAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements` | POST | AdminCreateNewAchievementShort | [AdminCreateNewAchievementShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminCreateNewAchievementShort](../../achievement-sdk/pkg/wrapper_achievements.go) | [AdminCreateNewAchievementShort](../../samples/cli/cmd/achievement/achievements/adminCreateNewAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/export` | GET | ExportAchievementsShort | [ExportAchievementsShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [ExportAchievementsShort](../../achievement-sdk/pkg/wrapper_achievements.go) | [ExportAchievementsShort](../../samples/cli/cmd/achievement/achievements/exportAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/import` | POST | ImportAchievementsShort | [ImportAchievementsShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [ImportAchievementsShort](../../achievement-sdk/pkg/wrapper_achievements.go) | [ImportAchievementsShort](../../samples/cli/cmd/achievement/achievements/importAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}` | GET | AdminGetAchievementShort | [AdminGetAchievementShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminGetAchievementShort](../../achievement-sdk/pkg/wrapper_achievements.go) | [AdminGetAchievementShort](../../samples/cli/cmd/achievement/achievements/adminGetAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}` | PUT | AdminUpdateAchievementShort | [AdminUpdateAchievementShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminUpdateAchievementShort](../../achievement-sdk/pkg/wrapper_achievements.go) | [AdminUpdateAchievementShort](../../samples/cli/cmd/achievement/achievements/adminUpdateAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}` | DELETE | AdminDeleteAchievementShort | [AdminDeleteAchievementShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminDeleteAchievementShort](../../achievement-sdk/pkg/wrapper_achievements.go) | [AdminDeleteAchievementShort](../../samples/cli/cmd/achievement/achievements/adminDeleteAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}` | PATCH | AdminUpdateAchievementListOrderShort | [AdminUpdateAchievementListOrderShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminUpdateAchievementListOrderShort](../../achievement-sdk/pkg/wrapper_achievements.go) | [AdminUpdateAchievementListOrderShort](../../samples/cli/cmd/achievement/achievements/adminUpdateAchievementListOrder.go) |
| `/achievement/v1/public/namespaces/{namespace}/achievements` | GET | PublicListAchievementsShort | [PublicListAchievementsShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [PublicListAchievementsShort](../../achievement-sdk/pkg/wrapper_achievements.go) | [PublicListAchievementsShort](../../samples/cli/cmd/achievement/achievements/publicListAchievements.go) |
| `/achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode}` | GET | PublicGetAchievementShort | [PublicGetAchievementShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [PublicGetAchievementShort](../../achievement-sdk/pkg/wrapper_achievements.go) | [PublicGetAchievementShort](../../samples/cli/cmd/achievement/achievements/publicGetAchievement.go) |

### Global Achievements Wrapper:  [GlobalAchievements](../../achievement-sdk/pkg/wrapper_globalAchievements.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/achievement/v1/admin/namespaces/{namespace}/global/achievements` | GET | AdminListGlobalAchievementsShort | [AdminListGlobalAchievementsShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [AdminListGlobalAchievementsShort](../../achievement-sdk/pkg/wrapper_globalAchievements.go) | [AdminListGlobalAchievementsShort](../../samples/cli/cmd/achievement/globalAchievements/adminListGlobalAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/contributors` | GET | AdminListGlobalAchievementContributorsShort | [AdminListGlobalAchievementContributorsShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [AdminListGlobalAchievementContributorsShort](../../achievement-sdk/pkg/wrapper_globalAchievements.go) | [AdminListGlobalAchievementContributorsShort](../../samples/cli/cmd/achievement/globalAchievements/adminListGlobalAchievementContributors.go) |
| `/achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/reset` | DELETE | ResetGlobalAchievementShort | [ResetGlobalAchievementShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [ResetGlobalAchievementShort](../../achievement-sdk/pkg/wrapper_globalAchievements.go) | [ResetGlobalAchievementShort](../../samples/cli/cmd/achievement/globalAchievements/resetGlobalAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/global/achievements` | GET | AdminListUserContributionsShort | [AdminListUserContributionsShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [AdminListUserContributionsShort](../../achievement-sdk/pkg/wrapper_globalAchievements.go) | [AdminListUserContributionsShort](../../samples/cli/cmd/achievement/globalAchievements/adminListUserContributions.go) |
| `/achievement/v1/public/namespaces/{namespace}/global/achievements` | GET | PublicListGlobalAchievementsShort | [PublicListGlobalAchievementsShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [PublicListGlobalAchievementsShort](../../achievement-sdk/pkg/wrapper_globalAchievements.go) | [PublicListGlobalAchievementsShort](../../samples/cli/cmd/achievement/globalAchievements/publicListGlobalAchievements.go) |
| `/achievement/v1/public/namespaces/{namespace}/global/achievements/{achievementCode}/contributors` | GET | ListGlobalAchievementContributorsShort | [ListGlobalAchievementContributorsShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [ListGlobalAchievementContributorsShort](../../achievement-sdk/pkg/wrapper_globalAchievements.go) | [ListGlobalAchievementContributorsShort](../../samples/cli/cmd/achievement/globalAchievements/listGlobalAchievementContributors.go) |
| `/achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements` | GET | ListUserContributionsShort | [ListUserContributionsShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [ListUserContributionsShort](../../achievement-sdk/pkg/wrapper_globalAchievements.go) | [ListUserContributionsShort](../../samples/cli/cmd/achievement/globalAchievements/listUserContributions.go) |
| `/achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements/{achievementCode}/claim` | POST | ClaimGlobalAchievementRewardShort | [ClaimGlobalAchievementRewardShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [ClaimGlobalAchievementRewardShort](../../achievement-sdk/pkg/wrapper_globalAchievements.go) | [ClaimGlobalAchievementRewardShort](../../samples/cli/cmd/achievement/globalAchievements/claimGlobalAchievementReward.go) |

### Tags Wrapper:  [Tags](../../achievement-sdk/pkg/wrapper_tags.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/achievement/v1/admin/namespaces/{namespace}/tags` | GET | AdminListTagsShort | [AdminListTagsShort](../../achievement-sdk/pkg/achievementclient/tags/tags_client.go) | [AdminListTagsShort](../../achievement-sdk/pkg/wrapper_tags.go) | [AdminListTagsShort](../../samples/cli/cmd/achievement/tags/adminListTags.go) |
| `/achievement/v1/public/namespaces/{namespace}/tags` | GET | PublicListTagsShort | [PublicListTagsShort](../../achievement-sdk/pkg/achievementclient/tags/tags_client.go) | [PublicListTagsShort](../../achievement-sdk/pkg/wrapper_tags.go) | [PublicListTagsShort](../../samples/cli/cmd/achievement/tags/publicListTags.go) |

### User Achievements Wrapper:  [UserAchievements](../../achievement-sdk/pkg/wrapper_userAchievements.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements` | GET | AdminListUserAchievementsShort | [AdminListUserAchievementsShort](../../achievement-sdk/pkg/achievementclient/user_achievements/user_achievements_client.go) | [AdminListUserAchievementsShort](../../achievement-sdk/pkg/wrapper_userAchievements.go) | [AdminListUserAchievementsShort](../../samples/cli/cmd/achievement/userAchievements/adminListUserAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset` | DELETE | AdminResetAchievementShort | [AdminResetAchievementShort](../../achievement-sdk/pkg/achievementclient/user_achievements/user_achievements_client.go) | [AdminResetAchievementShort](../../achievement-sdk/pkg/wrapper_userAchievements.go) | [AdminResetAchievementShort](../../samples/cli/cmd/achievement/userAchievements/adminResetAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock` | PUT | AdminUnlockAchievementShort | [AdminUnlockAchievementShort](../../achievement-sdk/pkg/achievementclient/user_achievements/user_achievements_client.go) | [AdminUnlockAchievementShort](../../achievement-sdk/pkg/wrapper_userAchievements.go) | [AdminUnlockAchievementShort](../../samples/cli/cmd/achievement/userAchievements/adminUnlockAchievement.go) |
| `/achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements` | GET | PublicListUserAchievementsShort | [PublicListUserAchievementsShort](../../achievement-sdk/pkg/achievementclient/user_achievements/user_achievements_client.go) | [PublicListUserAchievementsShort](../../achievement-sdk/pkg/wrapper_userAchievements.go) | [PublicListUserAchievementsShort](../../samples/cli/cmd/achievement/userAchievements/publicListUserAchievements.go) |
| `/achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock` | PUT | PublicUnlockAchievementShort | [PublicUnlockAchievementShort](../../achievement-sdk/pkg/achievementclient/user_achievements/user_achievements_client.go) | [PublicUnlockAchievementShort](../../achievement-sdk/pkg/wrapper_userAchievements.go) | [PublicUnlockAchievementShort](../../samples/cli/cmd/achievement/userAchievements/publicUnlockAchievement.go) |

### Anonymization Wrapper:  [Anonymization](../../achievement-sdk/pkg/wrapper_anonymization.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/achievements` | DELETE | AdminAnonymizeUserAchievementShort | [AdminAnonymizeUserAchievementShort](../../achievement-sdk/pkg/achievementclient/anonymization/anonymization_client.go) | [AdminAnonymizeUserAchievementShort](../../achievement-sdk/pkg/wrapper_anonymization.go) | [AdminAnonymizeUserAchievementShort](../../samples/cli/cmd/achievement/anonymization/adminAnonymizeUserAchievement.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.AchievementOrderUpdateRequest` | [ModelsAchievementOrderUpdateRequest ](../../achievement-sdk/pkg/achievementclientmodels/models_achievement_order_update_request.go) |
| `models.AchievementRequest` | [ModelsAchievementRequest ](../../achievement-sdk/pkg/achievementclientmodels/models_achievement_request.go) |
| `models.AchievementResponse` | [ModelsAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_achievement_response.go) |
| `models.AchievementUpdateRequest` | [ModelsAchievementUpdateRequest ](../../achievement-sdk/pkg/achievementclientmodels/models_achievement_update_request.go) |
| `models.AdditionalInfo` | [ModelsAdditionalInfo ](../../achievement-sdk/pkg/achievementclientmodels/models_additional_info.go) |
| `models.ContributorResponse` | [ModelsContributorResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_contributor_response.go) |
| `models.GlobalAchievementResponse` | [ModelsGlobalAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_global_achievement_response.go) |
| `models.Icon` | [ModelsIcon ](../../achievement-sdk/pkg/achievementclientmodels/models_icon.go) |
| `models.PaginatedAchievementResponse` | [ModelsPaginatedAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_paginated_achievement_response.go) |
| `models.PaginatedContributorResponse` | [ModelsPaginatedContributorResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_paginated_contributor_response.go) |
| `models.PaginatedGlobalAchievementResponse` | [ModelsPaginatedGlobalAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_paginated_global_achievement_response.go) |
| `models.PaginatedTagResponse` | [ModelsPaginatedTagResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_paginated_tag_response.go) |
| `models.PaginatedUserAchievementResponse` | [ModelsPaginatedUserAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_paginated_user_achievement_response.go) |
| `models.PaginatedUserContributionResponse` | [ModelsPaginatedUserContributionResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_paginated_user_contribution_response.go) |
| `models.Pagination` | [ModelsPagination ](../../achievement-sdk/pkg/achievementclientmodels/models_pagination.go) |
| `models.PublicAchievementResponse` | [ModelsPublicAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_public_achievement_response.go) |
| `models.PublicAchievementsResponse` | [ModelsPublicAchievementsResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_public_achievements_response.go) |
| `models.TagResponse` | [ModelsTagResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_tag_response.go) |
| `models.UserAchievementResponse` | [ModelsUserAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_user_achievement_response.go) |
| `models.UserContributionResponse` | [ModelsUserContributionResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_user_contribution_response.go) |
| `response.Error` | [ResponseError ](../../achievement-sdk/pkg/achievementclientmodels/response_error.go) |
| `service.ImportConfigResponse` | [ServiceImportConfigResponse ](../../achievement-sdk/pkg/achievementclientmodels/service_import_config_response.go) |
