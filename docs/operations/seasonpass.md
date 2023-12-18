[//]: # (Code generated. DO NOT EDIT.)

# Seasonpass Service Index

&nbsp;

## Operations

### Export Wrapper:  [Export](../../seasonpass-sdk/pkg/wrapper_export.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/seasonpass/admin/namespace/{namespace}/export` | GET | ExportSeasonShort | [ExportSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/export/export_client.go) | [ExportSeasonShort](../../seasonpass-sdk/pkg/wrapper_export.go) | [ExportSeasonShort](../../samples/cli/cmd/seasonpass/export/exportSeason.go) |

### Season Wrapper:  [Season](../../seasonpass-sdk/pkg/wrapper_season.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/seasonpass/admin/namespaces/{namespace}/seasons` | GET | QuerySeasonsShort | [QuerySeasonsShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [QuerySeasonsShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [QuerySeasonsShort](../../samples/cli/cmd/seasonpass/season/querySeasons.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons` | POST | CreateSeasonShort | [CreateSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [CreateSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [CreateSeasonShort](../../samples/cli/cmd/seasonpass/season/createSeason.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/current` | GET | GetCurrentSeasonShort | [GetCurrentSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [GetCurrentSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [GetCurrentSeasonShort](../../samples/cli/cmd/seasonpass/season/getCurrentSeason.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/current/users/bulk/progression` | POST | BulkGetUserSeasonProgressionShort | [BulkGetUserSeasonProgressionShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [BulkGetUserSeasonProgressionShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [BulkGetUserSeasonProgressionShort](../../samples/cli/cmd/seasonpass/season/bulkGetUserSeasonProgression.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}` | GET | GetSeasonShort | [GetSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [GetSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [GetSeasonShort](../../samples/cli/cmd/seasonpass/season/getSeason.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}` | DELETE | DeleteSeasonShort | [DeleteSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [DeleteSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [DeleteSeasonShort](../../samples/cli/cmd/seasonpass/season/deleteSeason.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}` | PATCH | UpdateSeasonShort | [UpdateSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [UpdateSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [UpdateSeasonShort](../../samples/cli/cmd/seasonpass/season/updateSeason.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/clone` | POST | CloneSeasonShort | [CloneSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [CloneSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [CloneSeasonShort](../../samples/cli/cmd/seasonpass/season/cloneSeason.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/full` | GET | GetFullSeasonShort | [GetFullSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [GetFullSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [GetFullSeasonShort](../../samples/cli/cmd/seasonpass/season/getFullSeason.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish` | PUT | PublishSeasonShort | [PublishSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [PublishSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [PublishSeasonShort](../../samples/cli/cmd/seasonpass/season/publishSeason.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire` | PUT | RetireSeasonShort | [RetireSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [RetireSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [RetireSeasonShort](../../samples/cli/cmd/seasonpass/season/retireSeason.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish` | PUT | UnpublishSeasonShort | [UnpublishSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [UnpublishSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [UnpublishSeasonShort](../../samples/cli/cmd/seasonpass/season/unpublishSeason.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons` | GET | GetUserParticipatedSeasonsShort | [GetUserParticipatedSeasonsShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [GetUserParticipatedSeasonsShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [GetUserParticipatedSeasonsShort](../../samples/cli/cmd/seasonpass/season/getUserParticipatedSeasons.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any` | GET | ExistsAnyPassByPassCodesShort | [ExistsAnyPassByPassCodesShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [ExistsAnyPassByPassCodesShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [ExistsAnyPassByPassCodesShort](../../samples/cli/cmd/seasonpass/season/existsAnyPassByPassCodes.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression` | GET | GetCurrentUserSeasonProgressionShort | [GetCurrentUserSeasonProgressionShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [GetCurrentUserSeasonProgressionShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [GetCurrentUserSeasonProgressionShort](../../samples/cli/cmd/seasonpass/season/getCurrentUserSeasonProgression.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable` | POST | CheckSeasonPurchasableShort | [CheckSeasonPurchasableShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [CheckSeasonPurchasableShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [CheckSeasonPurchasableShort](../../samples/cli/cmd/seasonpass/season/checkSeasonPurchasable.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/reset` | DELETE | ResetUserSeasonShort | [ResetUserSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [ResetUserSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [ResetUserSeasonShort](../../samples/cli/cmd/seasonpass/season/resetUserSeason.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history` | GET | QueryUserExpGrantHistoryShort | [QueryUserExpGrantHistoryShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [QueryUserExpGrantHistoryShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [QueryUserExpGrantHistoryShort](../../samples/cli/cmd/seasonpass/season/queryUserExpGrantHistory.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history/tags` | GET | QueryUserExpGrantHistoryTagShort | [QueryUserExpGrantHistoryTagShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [QueryUserExpGrantHistoryTagShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [QueryUserExpGrantHistoryTagShort](../../samples/cli/cmd/seasonpass/season/queryUserExpGrantHistoryTag.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data` | GET | GetUserSeasonShort | [GetUserSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [GetUserSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [GetUserSeasonShort](../../samples/cli/cmd/seasonpass/season/getUserSeason.go) |
| `/seasonpass/public/namespaces/{namespace}/seasons/current` | GET | PublicGetCurrentSeasonShort | [PublicGetCurrentSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [PublicGetCurrentSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [PublicGetCurrentSeasonShort](../../samples/cli/cmd/seasonpass/season/publicGetCurrentSeason.go) |
| `/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data` | GET | PublicGetCurrentUserSeasonShort | [PublicGetCurrentUserSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [PublicGetCurrentUserSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [PublicGetCurrentUserSeasonShort](../../samples/cli/cmd/seasonpass/season/publicGetCurrentUserSeason.go) |
| `/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data` | GET | PublicGetUserSeasonShort | [PublicGetUserSeasonShort](../../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [PublicGetUserSeasonShort](../../seasonpass-sdk/pkg/wrapper_season.go) | [PublicGetUserSeasonShort](../../samples/cli/cmd/seasonpass/season/publicGetUserSeason.go) |

### Pass Wrapper:  [Pass](../../seasonpass-sdk/pkg/wrapper_pass.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes` | GET | QueryPassesShort | [QueryPassesShort](../../seasonpass-sdk/pkg/seasonpassclient/pass/pass_client.go) | [QueryPassesShort](../../seasonpass-sdk/pkg/wrapper_pass.go) | [QueryPassesShort](../../samples/cli/cmd/seasonpass/pass/queryPasses.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes` | POST | CreatePassShort | [CreatePassShort](../../seasonpass-sdk/pkg/seasonpassclient/pass/pass_client.go) | [CreatePassShort](../../seasonpass-sdk/pkg/wrapper_pass.go) | [CreatePassShort](../../samples/cli/cmd/seasonpass/pass/createPass.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}` | GET | GetPassShort | [GetPassShort](../../seasonpass-sdk/pkg/seasonpassclient/pass/pass_client.go) | [GetPassShort](../../seasonpass-sdk/pkg/wrapper_pass.go) | [GetPassShort](../../samples/cli/cmd/seasonpass/pass/getPass.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}` | DELETE | DeletePassShort | [DeletePassShort](../../seasonpass-sdk/pkg/seasonpassclient/pass/pass_client.go) | [DeletePassShort](../../seasonpass-sdk/pkg/wrapper_pass.go) | [DeletePassShort](../../samples/cli/cmd/seasonpass/pass/deletePass.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}` | PATCH | UpdatePassShort | [UpdatePassShort](../../seasonpass-sdk/pkg/seasonpassclient/pass/pass_client.go) | [UpdatePassShort](../../seasonpass-sdk/pkg/wrapper_pass.go) | [UpdatePassShort](../../samples/cli/cmd/seasonpass/pass/updatePass.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes` | POST | GrantUserPassShort | [GrantUserPassShort](../../seasonpass-sdk/pkg/seasonpassclient/pass/pass_client.go) | [GrantUserPassShort](../../seasonpass-sdk/pkg/wrapper_pass.go) | [GrantUserPassShort](../../samples/cli/cmd/seasonpass/pass/grantUserPass.go) |

### Reward Wrapper:  [Reward](../../seasonpass-sdk/pkg/wrapper_reward.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards` | GET | QueryRewardsShort | [QueryRewardsShort](../../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [QueryRewardsShort](../../seasonpass-sdk/pkg/wrapper_reward.go) | [QueryRewardsShort](../../samples/cli/cmd/seasonpass/reward/queryRewards.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards` | POST | CreateRewardShort | [CreateRewardShort](../../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [CreateRewardShort](../../seasonpass-sdk/pkg/wrapper_reward.go) | [CreateRewardShort](../../samples/cli/cmd/seasonpass/reward/createReward.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}` | GET | GetRewardShort | [GetRewardShort](../../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [GetRewardShort](../../seasonpass-sdk/pkg/wrapper_reward.go) | [GetRewardShort](../../samples/cli/cmd/seasonpass/reward/getReward.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}` | DELETE | DeleteRewardShort | [DeleteRewardShort](../../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [DeleteRewardShort](../../seasonpass-sdk/pkg/wrapper_reward.go) | [DeleteRewardShort](../../samples/cli/cmd/seasonpass/reward/deleteReward.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}` | PATCH | UpdateRewardShort | [UpdateRewardShort](../../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [UpdateRewardShort](../../seasonpass-sdk/pkg/wrapper_reward.go) | [UpdateRewardShort](../../samples/cli/cmd/seasonpass/reward/updateReward.go) |
| `/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards` | POST | PublicClaimUserRewardShort | [PublicClaimUserRewardShort](../../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [PublicClaimUserRewardShort](../../seasonpass-sdk/pkg/wrapper_reward.go) | [PublicClaimUserRewardShort](../../samples/cli/cmd/seasonpass/reward/publicClaimUserReward.go) |
| `/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk` | POST | PublicBulkClaimUserRewardsShort | [PublicBulkClaimUserRewardsShort](../../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [PublicBulkClaimUserRewardsShort](../../seasonpass-sdk/pkg/wrapper_reward.go) | [PublicBulkClaimUserRewardsShort](../../samples/cli/cmd/seasonpass/reward/publicBulkClaimUserRewards.go) |

### Tier Wrapper:  [Tier](../../seasonpass-sdk/pkg/wrapper_tier.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers` | GET | QueryTiersShort | [QueryTiersShort](../../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [QueryTiersShort](../../seasonpass-sdk/pkg/wrapper_tier.go) | [QueryTiersShort](../../samples/cli/cmd/seasonpass/tier/queryTiers.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers` | POST | CreateTierShort | [CreateTierShort](../../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [CreateTierShort](../../seasonpass-sdk/pkg/wrapper_tier.go) | [CreateTierShort](../../samples/cli/cmd/seasonpass/tier/createTier.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}` | PUT | UpdateTierShort | [UpdateTierShort](../../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [UpdateTierShort](../../seasonpass-sdk/pkg/wrapper_tier.go) | [UpdateTierShort](../../samples/cli/cmd/seasonpass/tier/updateTier.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}` | DELETE | DeleteTierShort | [DeleteTierShort](../../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [DeleteTierShort](../../seasonpass-sdk/pkg/wrapper_tier.go) | [DeleteTierShort](../../samples/cli/cmd/seasonpass/tier/deleteTier.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}/reorder` | PUT | ReorderTierShort | [ReorderTierShort](../../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [ReorderTierShort](../../seasonpass-sdk/pkg/wrapper_tier.go) | [ReorderTierShort](../../samples/cli/cmd/seasonpass/tier/reorderTier.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/exp` | POST | GrantUserExpShort | [GrantUserExpShort](../../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [GrantUserExpShort](../../seasonpass-sdk/pkg/wrapper_tier.go) | [GrantUserExpShort](../../samples/cli/cmd/seasonpass/tier/grantUserExp.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers` | POST | GrantUserTierShort | [GrantUserTierShort](../../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [GrantUserTierShort](../../seasonpass-sdk/pkg/wrapper_tier.go) | [GrantUserTierShort](../../samples/cli/cmd/seasonpass/tier/grantUserTier.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `BulkUserProgressionRequest` | [BulkUserProgressionRequest ](../../seasonpass-sdk/pkg/seasonpassclientmodels/bulk_user_progression_request.go) |
| `ClaimableRewards` | [ClaimableRewards ](../../seasonpass-sdk/pkg/seasonpassclientmodels/claimable_rewards.go) |
| `ClaimableUserSeasonInfo` | [ClaimableUserSeasonInfo ](../../seasonpass-sdk/pkg/seasonpassclientmodels/claimable_user_season_info.go) |
| `ErrorEntity` | [ErrorEntity ](../../seasonpass-sdk/pkg/seasonpassclientmodels/error_entity.go) |
| `ExcessStrategy` | [ExcessStrategy ](../../seasonpass-sdk/pkg/seasonpassclientmodels/excess_strategy.go) |
| `ExpGrantHistoryInfo` | [ExpGrantHistoryInfo ](../../seasonpass-sdk/pkg/seasonpassclientmodels/exp_grant_history_info.go) |
| `ExpGrantHistoryPagingSlicedResult` | [ExpGrantHistoryPagingSlicedResult ](../../seasonpass-sdk/pkg/seasonpassclientmodels/exp_grant_history_paging_sliced_result.go) |
| `FieldValidationError` | [FieldValidationError ](../../seasonpass-sdk/pkg/seasonpassclientmodels/field_validation_error.go) |
| `FullSeasonInfo` | [FullSeasonInfo ](../../seasonpass-sdk/pkg/seasonpassclientmodels/full_season_info.go) |
| `Image` | [Image ](../../seasonpass-sdk/pkg/seasonpassclientmodels/image.go) |
| `ListSeasonInfo` | [ListSeasonInfo ](../../seasonpass-sdk/pkg/seasonpassclientmodels/list_season_info.go) |
| `ListSeasonInfoPagingSlicedResult` | [ListSeasonInfoPagingSlicedResult ](../../seasonpass-sdk/pkg/seasonpassclientmodels/list_season_info_paging_sliced_result.go) |
| `ListUserSeasonInfo` | [ListUserSeasonInfo ](../../seasonpass-sdk/pkg/seasonpassclientmodels/list_user_season_info.go) |
| `ListUserSeasonInfoPagingSlicedResult` | [ListUserSeasonInfoPagingSlicedResult ](../../seasonpass-sdk/pkg/seasonpassclientmodels/list_user_season_info_paging_sliced_result.go) |
| `Localization` | [Localization ](../../seasonpass-sdk/pkg/seasonpassclientmodels/localization.go) |
| `LocalizedPassInfo` | [LocalizedPassInfo ](../../seasonpass-sdk/pkg/seasonpassclientmodels/localized_pass_info.go) |
| `LocalizedSeasonInfo` | [LocalizedSeasonInfo ](../../seasonpass-sdk/pkg/seasonpassclientmodels/localized_season_info.go) |
| `Ownership` | [Ownership ](../../seasonpass-sdk/pkg/seasonpassclientmodels/ownership.go) |
| `Paging` | [Paging ](../../seasonpass-sdk/pkg/seasonpassclientmodels/paging.go) |
| `PassCreate` | [PassCreate ](../../seasonpass-sdk/pkg/seasonpassclientmodels/pass_create.go) |
| `PassInfo` | [PassInfo ](../../seasonpass-sdk/pkg/seasonpassclientmodels/pass_info.go) |
| `PassUpdate` | [PassUpdate ](../../seasonpass-sdk/pkg/seasonpassclientmodels/pass_update.go) |
| `ReasonTagsResult` | [ReasonTagsResult ](../../seasonpass-sdk/pkg/seasonpassclientmodels/reason_tags_result.go) |
| `RewardCreate` | [RewardCreate ](../../seasonpass-sdk/pkg/seasonpassclientmodels/reward_create.go) |
| `RewardCurrency` | [RewardCurrency ](../../seasonpass-sdk/pkg/seasonpassclientmodels/reward_currency.go) |
| `RewardInfo` | [RewardInfo ](../../seasonpass-sdk/pkg/seasonpassclientmodels/reward_info.go) |
| `RewardUpdate` | [RewardUpdate ](../../seasonpass-sdk/pkg/seasonpassclientmodels/reward_update.go) |
| `SeasonCloneRequest` | [SeasonCloneRequest ](../../seasonpass-sdk/pkg/seasonpassclientmodels/season_clone_request.go) |
| `SeasonCreate` | [SeasonCreate ](../../seasonpass-sdk/pkg/seasonpassclientmodels/season_create.go) |
| `SeasonInfo` | [SeasonInfo ](../../seasonpass-sdk/pkg/seasonpassclientmodels/season_info.go) |
| `SeasonSummary` | [SeasonSummary ](../../seasonpass-sdk/pkg/seasonpassclientmodels/season_summary.go) |
| `SeasonUpdate` | [SeasonUpdate ](../../seasonpass-sdk/pkg/seasonpassclientmodels/season_update.go) |
| `Tier` | [Tier ](../../seasonpass-sdk/pkg/seasonpassclientmodels/tier.go) |
| `TierCreate` | [TierCreate ](../../seasonpass-sdk/pkg/seasonpassclientmodels/tier_create.go) |
| `TierInput` | [TierInput ](../../seasonpass-sdk/pkg/seasonpassclientmodels/tier_input.go) |
| `TierPagingSlicedResult` | [TierPagingSlicedResult ](../../seasonpass-sdk/pkg/seasonpassclientmodels/tier_paging_sliced_result.go) |
| `TierReorder` | [TierReorder ](../../seasonpass-sdk/pkg/seasonpassclientmodels/tier_reorder.go) |
| `UserExpGrant` | [UserExpGrant ](../../seasonpass-sdk/pkg/seasonpassclientmodels/user_exp_grant.go) |
| `UserPassGrant` | [UserPassGrant ](../../seasonpass-sdk/pkg/seasonpassclientmodels/user_pass_grant.go) |
| `UserPurchasable` | [UserPurchasable ](../../seasonpass-sdk/pkg/seasonpassclientmodels/user_purchasable.go) |
| `UserRewardClaim` | [UserRewardClaim ](../../seasonpass-sdk/pkg/seasonpassclientmodels/user_reward_claim.go) |
| `UserSeasonSummary` | [UserSeasonSummary ](../../seasonpass-sdk/pkg/seasonpassclientmodels/user_season_summary.go) |
| `UserTierGrant` | [UserTierGrant ](../../seasonpass-sdk/pkg/seasonpassclientmodels/user_tier_grant.go) |
| `ValidationErrorEntity` | [ValidationErrorEntity ](../../seasonpass-sdk/pkg/seasonpassclientmodels/validation_error_entity.go) |
