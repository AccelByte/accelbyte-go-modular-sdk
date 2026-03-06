# Deprecated Constants Report

> Generated on: 2026-03-05  
> Updated on: 2026-03-06  
> 
> All constants marked with `// Deprecated: 2025-07-16 - Use ...<EnumValue>Constant instead.`

## Summary

| Metric | Count |
|--------|-------|
| SDKs affected | 12 |
| Total deprecated `const` blocks | 197 |
| Total deprecated constant names | 1110 |
| Removal phases | 25 |

### Per-SDK Breakdown

| SDK | Deprecated `const` Blocks | Deprecated Constant Names |
|-----|--------------------------|--------------------------|
| `achievement-sdk` | 12 | 66 |
| `ams-sdk` | 7 | 20 |
| `challenge-sdk` | 10 | 54 |
| `chat-sdk` | 8 | 24 |
| `iam-sdk` | 19 | 56 |
| `inventory-sdk` | 11 | 72 |
| `legal-sdk` | 3 | 6 |
| `platform-sdk` | 111 | 751 |
| `reporting-sdk` | 3 | 8 |
| `seasonpass-sdk` | 2 | 5 |
| `session-sdk` | 7 | 32 |
| `social-sdk` | 4 | 16 |

### Phase Overview

| Phase | Scope | Files | Constants |
|-------|-------|------:|----------:|
| Phase 1 | `achievement-sdk`: package `achievements` | 2 | 18 |
| Phase 2 | `achievement-sdk`: package `global_achievements` | 6 | 24 |
| Phase 3 | `achievement-sdk`: packages `tags`, `user_achievements` | 4 | 24 |
| Phase 4 | `ams-sdk` | 4 | 20 |
| Phase 5 | `challenge-sdk` | 6 | 54 |
| Phase 6 | `chat-sdk` | 5 | 24 |
| Phase 7 | `iam-sdk`: packages `o_auth`, `o_auth2_0` | 5 | 16 |
| Phase 8 | `iam-sdk`: packages `o_auth2_0_extension`, `o_auth2_0_v4` | 4 | 16 |
| Phase 9 | `iam-sdk`: packages `override_role_config_v3`, `profile_update_strategy` | 7 | 24 |
| Phase 10 | `inventory-sdk`: admin packages | 6 | 39 |
| Phase 11 | `inventory-sdk`: public packages | 5 | 33 |
| Phase 12 | `legal-sdk` · `reporting-sdk` · `seasonpass-sdk` | 7 | 19 |
| Phase 13 | `session-sdk` · `social-sdk` | 7 | 48 |
| Phase 14 | `platform-sdk`: package `catalog_changes` | 3 | 65 |
| Phase 15 | `platform-sdk`: packages `clawback`, `currency`, `dlc` | 7 | 36 |
| Phase 16 | `platform-sdk`: package `entitlement` (admin-side) | 9 | 94 |
| Phase 17 | `platform-sdk`: package `entitlement` (public-side) | 9 | 64 |
| Phase 18 | `platform-sdk`: packages `fulfillment`, `iap`, `iap_notification` | 7 | 58 |
| Phase 19 | `platform-sdk`: package `iap_subscription` | 6 | 54 |
| Phase 20 | `platform-sdk`: package `invoice` · `item` (public-side) | 4 | 60 |
| Phase 21 | `platform-sdk`: package `item` (admin-side) | 7 | 102 |
| Phase 22 | `platform-sdk`: packages `key_group`, `order`, `payment` | 6 | 63 |
| Phase 23 | `platform-sdk`: packages `payment_account`, `payment_station` | 6 | 47 |
| Phase 24 | `platform-sdk`: packages `revocation`, `reward`, `store`, `subscription` | 7 | 56 |
| Phase 25 | `platform-sdk`: packages `trade_action`, `wallet` | 6 | 52 |

---

## Removal / Replacement Phases

### Phase 1 — `achievement-sdk`: package `achievements`

> **2 file(s)** · **2 deprecated `const` block(s)** · **18 deprecated constant name(s)**

#### `achievement-sdk/pkg/achievementclient/achievements/admin_list_achievements_parameters.go`

- **Location:** [Line 22](achievement-sdk/pkg/achievementclient/achievements/admin_list_achievements_parameters.go#L22)
- **Replacement:** `AdminListAchievementsSortBy<EnumValue>Constant`
- **Deprecated constants (9):**
  - `AdminListAchievementsListOrderConstant`
  - `AdminListAchievementsListOrderAscConstant`
  - `AdminListAchievementsListOrderDescConstant`
  - `AdminListAchievementsCreatedAtConstant`
  - `AdminListAchievementsCreatedAtAscConstant`
  - `AdminListAchievementsCreatedAtDescConstant`
  - `AdminListAchievementsUpdatedAtConstant`
  - `AdminListAchievementsUpdatedAtAscConstant`
  - `AdminListAchievementsUpdatedAtDescConstant`

#### `achievement-sdk/pkg/achievementclient/achievements/public_list_achievements_parameters.go`

- **Location:** [Line 22](achievement-sdk/pkg/achievementclient/achievements/public_list_achievements_parameters.go#L22)
- **Replacement:** `PublicListAchievementsSortBy<EnumValue>Constant`
- **Deprecated constants (9):**
  - `PublicListAchievementsListOrderConstant`
  - `PublicListAchievementsListOrderAscConstant`
  - `PublicListAchievementsListOrderDescConstant`
  - `PublicListAchievementsCreatedAtConstant`
  - `PublicListAchievementsCreatedAtAscConstant`
  - `PublicListAchievementsCreatedAtDescConstant`
  - `PublicListAchievementsUpdatedAtConstant`
  - `PublicListAchievementsUpdatedAtAscConstant`
  - `PublicListAchievementsUpdatedAtDescConstant`

### Phase 2 — `achievement-sdk`: package `global_achievements`

> **6 file(s)** · **6 deprecated `const` block(s)** · **24 deprecated constant name(s)**

#### `achievement-sdk/pkg/achievementclient/global_achievements/admin_list_global_achievement_contributors_parameters.go`

- **Location:** [Line 22](achievement-sdk/pkg/achievementclient/global_achievements/admin_list_global_achievement_contributors_parameters.go#L22)
- **Replacement:** `AdminListGlobalAchievementContributorsSortBy<EnumValue>Constant`
- **Deprecated constants (3):**
  - `AdminListGlobalAchievementContributorsContributedValueConstant`
  - `AdminListGlobalAchievementContributorsContributedValueAscConstant`
  - `AdminListGlobalAchievementContributorsContributedValueDescConstant`

#### `achievement-sdk/pkg/achievementclient/global_achievements/admin_list_global_achievements_parameters.go`

- **Location:** [Line 22](achievement-sdk/pkg/achievementclient/global_achievements/admin_list_global_achievements_parameters.go#L22)
- **Replacement:** `AdminListGlobalAchievementsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `AdminListGlobalAchievementsAchievedAtConstant`
  - `AdminListGlobalAchievementsAchievedAtAscConstant`
  - `AdminListGlobalAchievementsAchievedAtDescConstant`
  - `AdminListGlobalAchievementsCreatedAtConstant`
  - `AdminListGlobalAchievementsCreatedAtAscConstant`
  - `AdminListGlobalAchievementsCreatedAtDescConstant`

#### `achievement-sdk/pkg/achievementclient/global_achievements/admin_list_user_contributions_parameters.go`

- **Location:** [Line 22](achievement-sdk/pkg/achievementclient/global_achievements/admin_list_user_contributions_parameters.go#L22)
- **Replacement:** `AdminListUserContributionsSortBy<EnumValue>Constant`
- **Deprecated constants (3):**
  - `AdminListUserContributionsContributedValueConstant`
  - `AdminListUserContributionsContributedValueAscConstant`
  - `AdminListUserContributionsContributedValueDescConstant`

#### `achievement-sdk/pkg/achievementclient/global_achievements/list_global_achievement_contributors_parameters.go`

- **Location:** [Line 22](achievement-sdk/pkg/achievementclient/global_achievements/list_global_achievement_contributors_parameters.go#L22)
- **Replacement:** `ListGlobalAchievementContributorsSortBy<EnumValue>Constant`
- **Deprecated constants (3):**
  - `ListGlobalAchievementContributorsContributedValueConstant`
  - `ListGlobalAchievementContributorsContributedValueAscConstant`
  - `ListGlobalAchievementContributorsContributedValueDescConstant`

#### `achievement-sdk/pkg/achievementclient/global_achievements/list_user_contributions_parameters.go`

- **Location:** [Line 22](achievement-sdk/pkg/achievementclient/global_achievements/list_user_contributions_parameters.go#L22)
- **Replacement:** `ListUserContributionsSortBy<EnumValue>Constant`
- **Deprecated constants (3):**
  - `ListUserContributionsContributedValueConstant`
  - `ListUserContributionsContributedValueAscConstant`
  - `ListUserContributionsContributedValueDescConstant`

#### `achievement-sdk/pkg/achievementclient/global_achievements/public_list_global_achievements_parameters.go`

- **Location:** [Line 22](achievement-sdk/pkg/achievementclient/global_achievements/public_list_global_achievements_parameters.go#L22)
- **Replacement:** `PublicListGlobalAchievementsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `PublicListGlobalAchievementsAchievedAtConstant`
  - `PublicListGlobalAchievementsAchievedAtAscConstant`
  - `PublicListGlobalAchievementsAchievedAtDescConstant`
  - `PublicListGlobalAchievementsCreatedAtConstant`
  - `PublicListGlobalAchievementsCreatedAtAscConstant`
  - `PublicListGlobalAchievementsCreatedAtDescConstant`

### Phase 3 — `achievement-sdk`: packages `tags`, `user_achievements`

> **4 file(s)** · **4 deprecated `const` block(s)** · **24 deprecated constant name(s)**

#### `achievement-sdk/pkg/achievementclient/tags/admin_list_tags_parameters.go`

- **Location:** [Line 22](achievement-sdk/pkg/achievementclient/tags/admin_list_tags_parameters.go#L22)
- **Replacement:** `AdminListTagsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `AdminListTagsCreatedAtConstant`
  - `AdminListTagsCreatedAtAscConstant`
  - `AdminListTagsCreatedAtDescConstant`
  - `AdminListTagsNameConstant`
  - `AdminListTagsNameAscConstant`
  - `AdminListTagsNameDescConstant`

#### `achievement-sdk/pkg/achievementclient/tags/public_list_tags_parameters.go`

- **Location:** [Line 22](achievement-sdk/pkg/achievementclient/tags/public_list_tags_parameters.go#L22)
- **Replacement:** `PublicListTagsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `PublicListTagsCreatedAtConstant`
  - `PublicListTagsCreatedAtAscConstant`
  - `PublicListTagsCreatedAtDescConstant`
  - `PublicListTagsNameConstant`
  - `PublicListTagsNameAscConstant`
  - `PublicListTagsNameDescConstant`

#### `achievement-sdk/pkg/achievementclient/user_achievements/admin_list_user_achievements_parameters.go`

- **Location:** [Line 22](achievement-sdk/pkg/achievementclient/user_achievements/admin_list_user_achievements_parameters.go#L22)
- **Replacement:** `AdminListUserAchievementsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `AdminListUserAchievementsAchievedAtConstant`
  - `AdminListUserAchievementsAchievedAtAscConstant`
  - `AdminListUserAchievementsAchievedAtDescConstant`
  - `AdminListUserAchievementsCreatedAtConstant`
  - `AdminListUserAchievementsCreatedAtAscConstant`
  - `AdminListUserAchievementsCreatedAtDescConstant`

#### `achievement-sdk/pkg/achievementclient/user_achievements/public_list_user_achievements_parameters.go`

- **Location:** [Line 22](achievement-sdk/pkg/achievementclient/user_achievements/public_list_user_achievements_parameters.go#L22)
- **Replacement:** `PublicListUserAchievementsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `PublicListUserAchievementsAchievedAtConstant`
  - `PublicListUserAchievementsAchievedAtAscConstant`
  - `PublicListUserAchievementsAchievedAtDescConstant`
  - `PublicListUserAchievementsCreatedAtConstant`
  - `PublicListUserAchievementsCreatedAtAscConstant`
  - `PublicListUserAchievementsCreatedAtDescConstant`

### Phase 4 — `ams-sdk`

> **4 file(s)** · **7 deprecated `const` block(s)** · **20 deprecated constant name(s)**

#### `ams-sdk/pkg/amsclient/artifacts/artifact_get_parameters.go`

- **Location:** [Line 22](ams-sdk/pkg/amsclient/artifacts/artifact_get_parameters.go#L22)
- **Replacement:** `ArtifactGetSortDirection<EnumValue>Constant`
- **Deprecated constants (2):**
  - `ArtifactGetAscConstant`
  - `ArtifactGetDescConstant`

#### `ams-sdk/pkg/amsclient/development/development_server_configuration_list_parameters.go`

- **Location:** [Line 22](ams-sdk/pkg/amsclient/development/development_server_configuration_list_parameters.go#L22)
- **Replacement:** `DevelopmentServerConfigurationListSortBy<EnumValue>Constant`
- **Deprecated constants (3):**
  - `DevelopmentServerConfigurationListCreatedAtConstant`
  - `DevelopmentServerConfigurationListExpiresAtConstant`
  - `DevelopmentServerConfigurationListNameConstant`

- **Location:** [Line 30](ams-sdk/pkg/amsclient/development/development_server_configuration_list_parameters.go#L30)
- **Replacement:** `DevelopmentServerConfigurationListSortDirection<EnumValue>Constant`
- **Deprecated constants (2):**
  - `DevelopmentServerConfigurationListAscConstant`
  - `DevelopmentServerConfigurationListDescConstant`

#### `ams-sdk/pkg/amsclient/fleets/fleet_list_parameters.go`

- **Location:** [Line 22](ams-sdk/pkg/amsclient/fleets/fleet_list_parameters.go#L22)
- **Replacement:** `FleetListSortBy<EnumValue>Constant`
- **Deprecated constants (2):**
  - `FleetListActiveConstant`
  - `FleetListNameConstant`

- **Location:** [Line 29](ams-sdk/pkg/amsclient/fleets/fleet_list_parameters.go#L29)
- **Replacement:** `FleetListSortDirection<EnumValue>Constant`
- **Deprecated constants (2):**
  - `FleetListAscConstant`
  - `FleetListDescConstant`

#### `ams-sdk/pkg/amsclient/fleets/fleet_servers_parameters.go`

- **Location:** [Line 22](ams-sdk/pkg/amsclient/fleets/fleet_servers_parameters.go#L22)
- **Replacement:** `FleetServersSortDirection<EnumValue>Constant`
- **Deprecated constants (2):**
  - `FleetServersAscConstant`
  - `FleetServersDescConstant`

- **Location:** [Line 29](ams-sdk/pkg/amsclient/fleets/fleet_servers_parameters.go#L29)
- **Replacement:** `FleetServersStatus<EnumValue>Constant`
- **Deprecated constants (7):**
  - `FleetServersClaimedConstant`
  - `FleetServersClaimingConstant`
  - `FleetServersCrashBackoffConstant`
  - `FleetServersCreatingConstant`
  - `FleetServersDrainingConstant`
  - `FleetServersReadyConstant`
  - `FleetServersUnresponsiveConstant`

### Phase 5 — `challenge-sdk`

> **6 file(s)** · **10 deprecated `const` block(s)** · **54 deprecated constant name(s)**

#### `challenge-sdk/pkg/challengeclient/challenge_configuration/admin_get_challenges_parameters.go`

- **Location:** [Line 22](challenge-sdk/pkg/challengeclient/challenge_configuration/admin_get_challenges_parameters.go#L22)
- **Replacement:** `AdminGetChallengesSortBy<EnumValue>Constant`
- **Deprecated constants (10):**
  - `AdminGetChallengesCodeAscConstant`
  - `AdminGetChallengesCodeDescConstant`
  - `AdminGetChallengesCreatedAtConstant`
  - `AdminGetChallengesCreatedAtAscConstant`
  - `AdminGetChallengesCreatedAtDescConstant`
  - `AdminGetChallengesNameAscConstant`
  - `AdminGetChallengesNameDescConstant`
  - `AdminGetChallengesUpdatedAtConstant`
  - `AdminGetChallengesUpdatedAtAscConstant`
  - `AdminGetChallengesUpdatedAtDescConstant`

- **Location:** [Line 37](challenge-sdk/pkg/challengeclient/challenge_configuration/admin_get_challenges_parameters.go#L37)
- **Replacement:** `AdminGetChallengesStatus<EnumValue>Constant`
- **Deprecated constants (3):**
  - `AdminGetChallengesINITConstant`
  - `AdminGetChallengesRETIREDConstant`
  - `AdminGetChallengesTIEDConstant`

#### `challenge-sdk/pkg/challengeclient/challenge_list/get_challenges_parameters.go`

- **Location:** [Line 22](challenge-sdk/pkg/challengeclient/challenge_list/get_challenges_parameters.go#L22)
- **Replacement:** `GetChallengesSortBy<EnumValue>Constant`
- **Deprecated constants (10):**
  - `GetChallengesCodeAscConstant`
  - `GetChallengesCodeDescConstant`
  - `GetChallengesCreatedAtConstant`
  - `GetChallengesCreatedAtAscConstant`
  - `GetChallengesCreatedAtDescConstant`
  - `GetChallengesNameAscConstant`
  - `GetChallengesNameDescConstant`
  - `GetChallengesUpdatedAtConstant`
  - `GetChallengesUpdatedAtAscConstant`
  - `GetChallengesUpdatedAtDescConstant`

- **Location:** [Line 37](challenge-sdk/pkg/challengeclient/challenge_list/get_challenges_parameters.go#L37)
- **Replacement:** `GetChallengesStatus<EnumValue>Constant`
- **Deprecated constants (3):**
  - `GetChallengesINITConstant`
  - `GetChallengesRETIREDConstant`
  - `GetChallengesTIEDConstant`

#### `challenge-sdk/pkg/challengeclient/challenge_list/public_get_scheduled_goals_parameters.go`

- **Location:** [Line 22](challenge-sdk/pkg/challengeclient/challenge_list/public_get_scheduled_goals_parameters.go#L22)
- **Replacement:** `PublicGetScheduledGoalsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `PublicGetScheduledGoalsCreatedAtConstant`
  - `PublicGetScheduledGoalsCreatedAtAscConstant`
  - `PublicGetScheduledGoalsCreatedAtDescConstant`
  - `PublicGetScheduledGoalsUpdatedAtConstant`
  - `PublicGetScheduledGoalsUpdatedAtAscConstant`
  - `PublicGetScheduledGoalsUpdatedAtDescConstant`

#### `challenge-sdk/pkg/challengeclient/goal_configuration/admin_get_goals_parameters.go`

- **Location:** [Line 22](challenge-sdk/pkg/challengeclient/goal_configuration/admin_get_goals_parameters.go#L22)
- **Replacement:** `AdminGetGoalsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `AdminGetGoalsCreatedAtConstant`
  - `AdminGetGoalsCreatedAtAscConstant`
  - `AdminGetGoalsCreatedAtDescConstant`
  - `AdminGetGoalsUpdatedAtConstant`
  - `AdminGetGoalsUpdatedAtAscConstant`
  - `AdminGetGoalsUpdatedAtDescConstant`

#### `challenge-sdk/pkg/challengeclient/player_reward/admin_get_user_rewards_parameters.go`

- **Location:** [Line 22](challenge-sdk/pkg/challengeclient/player_reward/admin_get_user_rewards_parameters.go#L22)
- **Replacement:** `AdminGetUserRewardsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `AdminGetUserRewardsCreatedAtConstant`
  - `AdminGetUserRewardsCreatedAtAscConstant`
  - `AdminGetUserRewardsCreatedAtDescConstant`
  - `AdminGetUserRewardsUpdatedAtConstant`
  - `AdminGetUserRewardsUpdatedAtAscConstant`
  - `AdminGetUserRewardsUpdatedAtDescConstant`

- **Location:** [Line 33](challenge-sdk/pkg/challengeclient/player_reward/admin_get_user_rewards_parameters.go#L33)
- **Replacement:** `AdminGetUserRewardsStatus<EnumValue>Constant`
- **Deprecated constants (2):**
  - `AdminGetUserRewardsCLAIMEDConstant`
  - `AdminGetUserRewardsUNCLAIMEDConstant`

#### `challenge-sdk/pkg/challengeclient/player_reward/public_get_user_rewards_parameters.go`

- **Location:** [Line 22](challenge-sdk/pkg/challengeclient/player_reward/public_get_user_rewards_parameters.go#L22)
- **Replacement:** `PublicGetUserRewardsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `PublicGetUserRewardsCreatedAtConstant`
  - `PublicGetUserRewardsCreatedAtAscConstant`
  - `PublicGetUserRewardsCreatedAtDescConstant`
  - `PublicGetUserRewardsUpdatedAtConstant`
  - `PublicGetUserRewardsUpdatedAtAscConstant`
  - `PublicGetUserRewardsUpdatedAtDescConstant`

- **Location:** [Line 33](challenge-sdk/pkg/challengeclient/player_reward/public_get_user_rewards_parameters.go#L33)
- **Replacement:** `PublicGetUserRewardsStatus<EnumValue>Constant`
- **Deprecated constants (2):**
  - `PublicGetUserRewardsCLAIMEDConstant`
  - `PublicGetUserRewardsUNCLAIMEDConstant`

### Phase 6 — `chat-sdk`

> **5 file(s)** · **8 deprecated `const` block(s)** · **24 deprecated constant name(s)**

#### `chat-sdk/pkg/chatclient/inbox/admin_get_inbox_messages_parameters.go`

- **Location:** [Line 22](chat-sdk/pkg/chatclient/inbox/admin_get_inbox_messages_parameters.go#L22)
- **Replacement:** `AdminGetInboxMessagesScope<EnumValue>Constant`
- **Deprecated constants (2):**
  - `AdminGetInboxMessagesNAMESPACEConstant`
  - `AdminGetInboxMessagesUSERConstant`

- **Location:** [Line 29](chat-sdk/pkg/chatclient/inbox/admin_get_inbox_messages_parameters.go#L29)
- **Replacement:** `AdminGetInboxMessagesStatus<EnumValue>Constant`
- **Deprecated constants (3):**
  - `AdminGetInboxMessagesDRAFTConstant`
  - `AdminGetInboxMessagesSENTConstant`
  - `AdminGetInboxMessagesUNSENTConstant`

#### `chat-sdk/pkg/chatclient/inbox/admin_get_inbox_users_parameters.go`

- **Location:** [Line 22](chat-sdk/pkg/chatclient/inbox/admin_get_inbox_users_parameters.go#L22)
- **Replacement:** `AdminGetInboxUsersStatus<EnumValue>Constant`
- **Deprecated constants (2):**
  - `AdminGetInboxUsersREADConstant`
  - `AdminGetInboxUsersUNREADConstant`

#### `chat-sdk/pkg/chatclient/profanity/admin_profanity_import_parameters.go`

- **Location:** [Line 22](chat-sdk/pkg/chatclient/profanity/admin_profanity_import_parameters.go#L22)
- **Replacement:** `AdminProfanityImportAction<EnumValue>Constant`
- **Deprecated constants (3):**
  - `AdminProfanityImportFULLREPLACEConstant`
  - `AdminProfanityImportLEAVEOUTConstant`
  - `AdminProfanityImportREPLACEConstant`

#### `chat-sdk/pkg/chatclient/topic/admin_query_topic_parameters.go`

- **Location:** [Line 22](chat-sdk/pkg/chatclient/topic/admin_query_topic_parameters.go#L22)
- **Replacement:** `AdminQueryTopicTopicSubType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `AdminQueryTopicCLANConstant`
  - `AdminQueryTopicNAMESPACEConstant`
  - `AdminQueryTopicNORMALConstant`
  - `AdminQueryTopicPARTYConstant`
  - `AdminQueryTopicSESSIONConstant`

- **Location:** [Line 32](chat-sdk/pkg/chatclient/topic/admin_query_topic_parameters.go#L32)
- **Replacement:** `AdminQueryTopicTopicType<EnumValue>Constant`
- **Deprecated constants (2):**
  - `AdminQueryTopicGROUPConstant`
  - `AdminQueryTopicPERSONALConstant`

#### `chat-sdk/pkg/chatclient/topic/admin_query_users_topic_parameters.go`

- **Location:** [Line 22](chat-sdk/pkg/chatclient/topic/admin_query_users_topic_parameters.go#L22)
- **Replacement:** `AdminQueryUsersTopicTopicSubType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `AdminQueryUsersTopicCLANConstant`
  - `AdminQueryUsersTopicNAMESPACEConstant`
  - `AdminQueryUsersTopicNORMALConstant`
  - `AdminQueryUsersTopicPARTYConstant`
  - `AdminQueryUsersTopicSESSIONConstant`

- **Location:** [Line 32](chat-sdk/pkg/chatclient/topic/admin_query_users_topic_parameters.go#L32)
- **Replacement:** `AdminQueryUsersTopicTopicType<EnumValue>Constant`
- **Deprecated constants (2):**
  - `AdminQueryUsersTopicGROUPConstant`
  - `AdminQueryUsersTopicPERSONALConstant`

### Phase 7 — `iam-sdk`: packages `o_auth`, `o_auth2_0`

> **5 file(s)** · **6 deprecated `const` block(s)** · **16 deprecated constant name(s)**

#### `iam-sdk/pkg/iamclient/o_auth/authorization_parameters.go`

- **Location:** [Line 21](iam-sdk/pkg/iamclient/o_auth/authorization_parameters.go#L21)
- **Replacement:** `AuthorizationResponseType<EnumValue>Constant`
- **Deprecated constants (2):**
  - `AuthorizationCodeConstant`
  - `AuthorizationTokenConstant`

#### `iam-sdk/pkg/iamclient/o_auth/token_grant_parameters.go`

- **Location:** [Line 22](iam-sdk/pkg/iamclient/o_auth/token_grant_parameters.go#L22)
- **Replacement:** `TokenGrantGrantType<EnumValue>Constant`
- **Deprecated constants (4):**
  - `TokenGrantAuthorizationCodeConstant`
  - `TokenGrantClientCredentialsConstant`
  - `TokenGrantPasswordConstant`
  - `TokenGrantRefreshTokenConstant`

#### `iam-sdk/pkg/iamclient/o_auth2_0/authorize_v3_parameters.go`

- **Location:** [Line 22](iam-sdk/pkg/iamclient/o_auth2_0/authorize_v3_parameters.go#L22)
- **Replacement:** `AuthorizeV3CodeChallengeMethod<EnumValue>Constant`
- **Deprecated constants (2):**
  - `AuthorizeV3S256Constant`
  - `AuthorizeV3PlainConstant`

- **Location:** [Line 29](iam-sdk/pkg/iamclient/o_auth2_0/authorize_v3_parameters.go#L29)
- **Replacement:** `AuthorizeV3ResponseType<EnumValue>Constant`
- **Deprecated constants (1):**
  - `AuthorizeV3CodeConstant`

#### `iam-sdk/pkg/iamclient/o_auth2_0/simultaneous_login_v3_parameters.go`

- **Location:** [Line 21](iam-sdk/pkg/iamclient/o_auth2_0/simultaneous_login_v3_parameters.go#L21)
- **Replacement:** `SimultaneousLoginV3NativePlatform<EnumValue>Constant`
- **Deprecated constants (2):**
  - `SimultaneousLoginV3EpicgamesConstant`
  - `SimultaneousLoginV3SteamConstant`

#### `iam-sdk/pkg/iamclient/o_auth2_0/token_grant_v3_parameters.go`

- **Location:** [Line 22](iam-sdk/pkg/iamclient/o_auth2_0/token_grant_v3_parameters.go#L22)
- **Replacement:** `TokenGrantV3GrantType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `TokenGrantV3AuthorizationCodeConstant`
  - `TokenGrantV3ClientCredentialsConstant`
  - `TokenGrantV3PasswordConstant`
  - `TokenGrantV3RefreshTokenConstant`
  - `TokenGrantV3UrnIetfParamsOauthGrantTypeExtendClientCredentialsConstant`

### Phase 8 — `iam-sdk`: packages `o_auth2_0_extension`, `o_auth2_0_v4`

> **4 file(s)** · **6 deprecated `const` block(s)** · **16 deprecated constant name(s)**

#### `iam-sdk/pkg/iamclient/o_auth2_0_extension/request_token_exchange_code_v3_parameters.go`

- **Location:** [Line 21](iam-sdk/pkg/iamclient/o_auth2_0_extension/request_token_exchange_code_v3_parameters.go#L21)
- **Replacement:** `RequestTokenExchangeCodeV3CodeChallengeMethod<EnumValue>Constant`
- **Deprecated constants (2):**
  - `RequestTokenExchangeCodeV3S256Constant`
  - `RequestTokenExchangeCodeV3PlainConstant`

#### `iam-sdk/pkg/iamclient/o_auth2_0_v4/platform_token_grant_v4_parameters.go`

- **Location:** [Line 22](iam-sdk/pkg/iamclient/o_auth2_0_v4/platform_token_grant_v4_parameters.go#L22)
- **Replacement:** `PlatformTokenGrantV4CodeChallengeMethod<EnumValue>Constant`
- **Deprecated constants (2):**
  - `PlatformTokenGrantV4S256Constant`
  - `PlatformTokenGrantV4PlainConstant`

#### `iam-sdk/pkg/iamclient/o_auth2_0_v4/simultaneous_login_v4_parameters.go`

- **Location:** [Line 21](iam-sdk/pkg/iamclient/o_auth2_0_v4/simultaneous_login_v4_parameters.go#L21)
- **Replacement:** `SimultaneousLoginV4NativePlatform<EnumValue>Constant`
- **Deprecated constants (2):**
  - `SimultaneousLoginV4EpicgamesConstant`
  - `SimultaneousLoginV4SteamConstant`

- **Location:** [Line 28](iam-sdk/pkg/iamclient/o_auth2_0_v4/simultaneous_login_v4_parameters.go#L28)
- **Replacement:** `SimultaneousLoginV4CodeChallengeMethod<EnumValue>Constant`
- **Deprecated constants (2):**
  - `SimultaneousLoginV4S256Constant`
  - `SimultaneousLoginV4PlainConstant`

#### `iam-sdk/pkg/iamclient/o_auth2_0_v4/token_grant_v4_parameters.go`

- **Location:** [Line 22](iam-sdk/pkg/iamclient/o_auth2_0_v4/token_grant_v4_parameters.go#L22)
- **Replacement:** `TokenGrantV4GrantType<EnumValue>Constant`
- **Deprecated constants (6):**
  - `TokenGrantV4AuthorizationCodeConstant`
  - `TokenGrantV4ClientCredentialsConstant`
  - `TokenGrantV4PasswordConstant`
  - `TokenGrantV4RefreshTokenConstant`
  - `TokenGrantV4UrnIetfParamsOauthGrantTypeExtendClientCredentialsConstant`
  - `TokenGrantV4UrnIetfParamsOauthGrantTypeLoginQueueTicketConstant`

- **Location:** [Line 33](iam-sdk/pkg/iamclient/o_auth2_0_v4/token_grant_v4_parameters.go#L33)
- **Replacement:** `TokenGrantV4CodeChallengeMethod<EnumValue>Constant`
- **Deprecated constants (2):**
  - `TokenGrantV4S256Constant`
  - `TokenGrantV4PlainConstant`

### Phase 9 — `iam-sdk`: packages `override_role_config_v3`, `profile_update_strategy`

> **7 file(s)** · **7 deprecated `const` block(s)** · **24 deprecated constant name(s)**

#### `iam-sdk/pkg/iamclient/override_role_config_v3/admin_change_role_override_config_status_v3_parameters.go`

- **Location:** [Line 23](iam-sdk/pkg/iamclient/override_role_config_v3/admin_change_role_override_config_status_v3_parameters.go#L23)
- **Replacement:** `AdminChangeRoleOverrideConfigStatusV3Identity<EnumValue>Constant`
- **Deprecated constants (3):**
  - `AdminChangeRoleOverrideConfigStatusV3GAMEADMINConstant`
  - `AdminChangeRoleOverrideConfigStatusV3USERConstant`
  - `AdminChangeRoleOverrideConfigStatusV3VIEWONLYConstant`

#### `iam-sdk/pkg/iamclient/override_role_config_v3/admin_get_role_override_config_v3_parameters.go`

- **Location:** [Line 21](iam-sdk/pkg/iamclient/override_role_config_v3/admin_get_role_override_config_v3_parameters.go#L21)
- **Replacement:** `AdminGetRoleOverrideConfigV3Identity<EnumValue>Constant`
- **Deprecated constants (3):**
  - `AdminGetRoleOverrideConfigV3GAMEADMINConstant`
  - `AdminGetRoleOverrideConfigV3USERConstant`
  - `AdminGetRoleOverrideConfigV3VIEWONLYConstant`

#### `iam-sdk/pkg/iamclient/override_role_config_v3/admin_get_role_source_v3_parameters.go`

- **Location:** [Line 21](iam-sdk/pkg/iamclient/override_role_config_v3/admin_get_role_source_v3_parameters.go#L21)
- **Replacement:** `AdminGetRoleSourceV3Identity<EnumValue>Constant`
- **Deprecated constants (3):**
  - `AdminGetRoleSourceV3GAMEADMINConstant`
  - `AdminGetRoleSourceV3USERConstant`
  - `AdminGetRoleSourceV3VIEWONLYConstant`

#### `iam-sdk/pkg/iamclient/override_role_config_v3/admin_update_role_override_config_v3_parameters.go`

- **Location:** [Line 23](iam-sdk/pkg/iamclient/override_role_config_v3/admin_update_role_override_config_v3_parameters.go#L23)
- **Replacement:** `AdminUpdateRoleOverrideConfigV3Identity<EnumValue>Constant`
- **Deprecated constants (3):**
  - `AdminUpdateRoleOverrideConfigV3GAMEADMINConstant`
  - `AdminUpdateRoleOverrideConfigV3USERConstant`
  - `AdminUpdateRoleOverrideConfigV3VIEWONLYConstant`

#### `iam-sdk/pkg/iamclient/profile_update_strategy/admin_get_profile_update_strategy_v3_parameters.go`

- **Location:** [Line 21](iam-sdk/pkg/iamclient/profile_update_strategy/admin_get_profile_update_strategy_v3_parameters.go#L21)
- **Replacement:** `AdminGetProfileUpdateStrategyV3Field<EnumValue>Constant`
- **Deprecated constants (4):**
  - `AdminGetProfileUpdateStrategyV3CountryConstant`
  - `AdminGetProfileUpdateStrategyV3DisplayNameConstant`
  - `AdminGetProfileUpdateStrategyV3DobConstant`
  - `AdminGetProfileUpdateStrategyV3UsernameConstant`

#### `iam-sdk/pkg/iamclient/profile_update_strategy/admin_update_profile_update_strategy_v3_parameters.go`

- **Location:** [Line 23](iam-sdk/pkg/iamclient/profile_update_strategy/admin_update_profile_update_strategy_v3_parameters.go#L23)
- **Replacement:** `AdminUpdateProfileUpdateStrategyV3Field<EnumValue>Constant`
- **Deprecated constants (4):**
  - `AdminUpdateProfileUpdateStrategyV3CountryConstant`
  - `AdminUpdateProfileUpdateStrategyV3DisplayNameConstant`
  - `AdminUpdateProfileUpdateStrategyV3DobConstant`
  - `AdminUpdateProfileUpdateStrategyV3UsernameConstant`

#### `iam-sdk/pkg/iamclient/profile_update_strategy/public_get_profile_update_strategy_v3_parameters.go`

- **Location:** [Line 21](iam-sdk/pkg/iamclient/profile_update_strategy/public_get_profile_update_strategy_v3_parameters.go#L21)
- **Replacement:** `PublicGetProfileUpdateStrategyV3Field<EnumValue>Constant`
- **Deprecated constants (4):**
  - `PublicGetProfileUpdateStrategyV3CountryConstant`
  - `PublicGetProfileUpdateStrategyV3DisplayNameConstant`
  - `PublicGetProfileUpdateStrategyV3DobConstant`
  - `PublicGetProfileUpdateStrategyV3UsernameConstant`

### Phase 10 — `inventory-sdk`: admin packages

> **6 file(s)** · **6 deprecated `const` block(s)** · **39 deprecated constant name(s)**

#### `inventory-sdk/pkg/inventoryclient/admin_integration_configurations/admin_list_integration_configurations_parameters.go`

- **Location:** [Line 22](inventory-sdk/pkg/inventoryclient/admin_integration_configurations/admin_list_integration_configurations_parameters.go#L22)
- **Replacement:** `AdminListIntegrationConfigurationsSortBy<EnumValue>Constant`
- **Deprecated constants (3):**
  - `AdminListIntegrationConfigurationsCreatedAtConstant`
  - `AdminListIntegrationConfigurationsCreatedAtAscConstant`
  - `AdminListIntegrationConfigurationsCreatedAtDescConstant`

#### `inventory-sdk/pkg/inventoryclient/admin_inventories/admin_list_inventories_parameters.go`

- **Location:** [Line 22](inventory-sdk/pkg/inventoryclient/admin_inventories/admin_list_inventories_parameters.go#L22)
- **Replacement:** `AdminListInventoriesSortBy<EnumValue>Constant`
- **Deprecated constants (9):**
  - `AdminListInventoriesCreatedAtConstant`
  - `AdminListInventoriesCreatedAtAscConstant`
  - `AdminListInventoriesCreatedAtDescConstant`
  - `AdminListInventoriesInventoryConfigurationCodeConstant`
  - `AdminListInventoriesInventoryConfigurationCodeAscConstant`
  - `AdminListInventoriesInventoryConfigurationCodeDescConstant`
  - `AdminListInventoriesUpdatedAtConstant`
  - `AdminListInventoriesUpdatedAtAscConstant`
  - `AdminListInventoriesUpdatedAtDescConstant`

#### `inventory-sdk/pkg/inventoryclient/admin_inventory_configurations/admin_list_inventory_configurations_parameters.go`

- **Location:** [Line 22](inventory-sdk/pkg/inventoryclient/admin_inventory_configurations/admin_list_inventory_configurations_parameters.go#L22)
- **Replacement:** `AdminListInventoryConfigurationsSortBy<EnumValue>Constant`
- **Deprecated constants (9):**
  - `AdminListInventoryConfigurationsCodeConstant`
  - `AdminListInventoryConfigurationsCodeAscConstant`
  - `AdminListInventoryConfigurationsCodeDescConstant`
  - `AdminListInventoryConfigurationsCreatedAtConstant`
  - `AdminListInventoryConfigurationsCreatedAtAscConstant`
  - `AdminListInventoryConfigurationsCreatedAtDescConstant`
  - `AdminListInventoryConfigurationsUpdatedAtConstant`
  - `AdminListInventoryConfigurationsUpdatedAtAscConstant`
  - `AdminListInventoryConfigurationsUpdatedAtDescConstant`

#### `inventory-sdk/pkg/inventoryclient/admin_item_types/admin_list_item_types_parameters.go`

- **Location:** [Line 22](inventory-sdk/pkg/inventoryclient/admin_item_types/admin_list_item_types_parameters.go#L22)
- **Replacement:** `AdminListItemTypesSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `AdminListItemTypesCreatedAtConstant`
  - `AdminListItemTypesCreatedAtAscConstant`
  - `AdminListItemTypesCreatedAtDescConstant`
  - `AdminListItemTypesNameConstant`
  - `AdminListItemTypesNameAscConstant`
  - `AdminListItemTypesNameDescConstant`

#### `inventory-sdk/pkg/inventoryclient/admin_items/admin_list_items_parameters.go`

- **Location:** [Line 22](inventory-sdk/pkg/inventoryclient/admin_items/admin_list_items_parameters.go#L22)
- **Replacement:** `AdminListItemsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `AdminListItemsCreatedAtConstant`
  - `AdminListItemsCreatedAtAscConstant`
  - `AdminListItemsCreatedAtDescConstant`
  - `AdminListItemsUpdatedAtConstant`
  - `AdminListItemsUpdatedAtAscConstant`
  - `AdminListItemsUpdatedAtDescConstant`

#### `inventory-sdk/pkg/inventoryclient/admin_tags/admin_list_tags_parameters.go`

- **Location:** [Line 22](inventory-sdk/pkg/inventoryclient/admin_tags/admin_list_tags_parameters.go#L22)
- **Replacement:** `AdminListTagsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `AdminListTagsCreatedAtConstant`
  - `AdminListTagsCreatedAtAscConstant`
  - `AdminListTagsCreatedAtDescConstant`
  - `AdminListTagsNameConstant`
  - `AdminListTagsNameAscConstant`
  - `AdminListTagsNameDescConstant`

### Phase 11 — `inventory-sdk`: public packages

> **5 file(s)** · **5 deprecated `const` block(s)** · **33 deprecated constant name(s)**

#### `inventory-sdk/pkg/inventoryclient/public_inventories/public_list_inventories_parameters.go`

- **Location:** [Line 22](inventory-sdk/pkg/inventoryclient/public_inventories/public_list_inventories_parameters.go#L22)
- **Replacement:** `PublicListInventoriesSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `PublicListInventoriesCreatedAtConstant`
  - `PublicListInventoriesCreatedAtAscConstant`
  - `PublicListInventoriesCreatedAtDescConstant`
  - `PublicListInventoriesUpdatedAtConstant`
  - `PublicListInventoriesUpdatedAtAscConstant`
  - `PublicListInventoriesUpdatedAtDescConstant`

#### `inventory-sdk/pkg/inventoryclient/public_inventory_configurations/public_list_inventory_configurations_parameters.go`

- **Location:** [Line 22](inventory-sdk/pkg/inventoryclient/public_inventory_configurations/public_list_inventory_configurations_parameters.go#L22)
- **Replacement:** `PublicListInventoryConfigurationsSortBy<EnumValue>Constant`
- **Deprecated constants (9):**
  - `PublicListInventoryConfigurationsCodeConstant`
  - `PublicListInventoryConfigurationsCodeAscConstant`
  - `PublicListInventoryConfigurationsCodeDescConstant`
  - `PublicListInventoryConfigurationsCreatedAtConstant`
  - `PublicListInventoryConfigurationsCreatedAtAscConstant`
  - `PublicListInventoryConfigurationsCreatedAtDescConstant`
  - `PublicListInventoryConfigurationsUpdatedAtConstant`
  - `PublicListInventoryConfigurationsUpdatedAtAscConstant`
  - `PublicListInventoryConfigurationsUpdatedAtDescConstant`

#### `inventory-sdk/pkg/inventoryclient/public_item_types/public_list_item_types_parameters.go`

- **Location:** [Line 22](inventory-sdk/pkg/inventoryclient/public_item_types/public_list_item_types_parameters.go#L22)
- **Replacement:** `PublicListItemTypesSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `PublicListItemTypesCreatedAtConstant`
  - `PublicListItemTypesCreatedAtAscConstant`
  - `PublicListItemTypesCreatedAtDescConstant`
  - `PublicListItemTypesNameConstant`
  - `PublicListItemTypesNameAscConstant`
  - `PublicListItemTypesNameDescConstant`

#### `inventory-sdk/pkg/inventoryclient/public_items/public_list_items_parameters.go`

- **Location:** [Line 22](inventory-sdk/pkg/inventoryclient/public_items/public_list_items_parameters.go#L22)
- **Replacement:** `PublicListItemsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `PublicListItemsCreatedAtConstant`
  - `PublicListItemsCreatedAtAscConstant`
  - `PublicListItemsCreatedAtDescConstant`
  - `PublicListItemsUpdatedAtConstant`
  - `PublicListItemsUpdatedAtAscConstant`
  - `PublicListItemsUpdatedAtDescConstant`

#### `inventory-sdk/pkg/inventoryclient/public_tags/public_list_tags_parameters.go`

- **Location:** [Line 22](inventory-sdk/pkg/inventoryclient/public_tags/public_list_tags_parameters.go#L22)
- **Replacement:** `PublicListTagsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `PublicListTagsCreatedAtConstant`
  - `PublicListTagsCreatedAtAscConstant`
  - `PublicListTagsCreatedAtDescConstant`
  - `PublicListTagsNameConstant`
  - `PublicListTagsNameAscConstant`
  - `PublicListTagsNameDescConstant`

### Phase 12 — `legal-sdk` · `reporting-sdk` · `seasonpass-sdk`

> **7 file(s)** · **8 deprecated `const` block(s)** · **19 deprecated constant name(s)**

#### `legal-sdk/pkg/legalclient/policies/old_retrieve_latest_policies_by_namespace_and_country_public_parameters.go`

- **Location:** [Line 22](legal-sdk/pkg/legalclient/policies/old_retrieve_latest_policies_by_namespace_and_country_public_parameters.go#L22)
- **Replacement:** `OldRetrieveLatestPoliciesByNamespaceAndCountryPublicPolicyType<EnumValue>Constant`
- **Deprecated constants (2):**
  - `OldRetrieveLatestPoliciesByNamespaceAndCountryPublicLEGALDOCUMENTTYPEConstant`
  - `OldRetrieveLatestPoliciesByNamespaceAndCountryPublicMARKETINGPREFERENCETYPEConstant`

#### `legal-sdk/pkg/legalclient/policies/retrieve_latest_policies_parameters.go`

- **Location:** [Line 22](legal-sdk/pkg/legalclient/policies/retrieve_latest_policies_parameters.go#L22)
- **Replacement:** `RetrieveLatestPoliciesPolicyType<EnumValue>Constant`
- **Deprecated constants (2):**
  - `RetrieveLatestPoliciesLEGALDOCUMENTTYPEConstant`
  - `RetrieveLatestPoliciesMARKETINGPREFERENCETYPEConstant`

#### `legal-sdk/pkg/legalclient/policies/retrieve_latest_policies_public_parameters.go`

- **Location:** [Line 22](legal-sdk/pkg/legalclient/policies/retrieve_latest_policies_public_parameters.go#L22)
- **Replacement:** `RetrieveLatestPoliciesPublicPolicyType<EnumValue>Constant`
- **Deprecated constants (2):**
  - `RetrieveLatestPoliciesPublicLEGALDOCUMENTTYPEConstant`
  - `RetrieveLatestPoliciesPublicMARKETINGPREFERENCETYPEConstant`

#### `reporting-sdk/pkg/reportingclient/admin_configurations/get_parameters.go`

- **Location:** [Line 21](reporting-sdk/pkg/reportingclient/admin_configurations/get_parameters.go#L21)
- **Replacement:** `GetCategory<EnumValue>Constant`
- **Deprecated constants (2):**
  - `GetAllConstant`
  - `GetExtensionConstant`

#### `reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions/admin_find_extension_category_list_parameters.go`

- **Location:** [Line 21](reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions/admin_find_extension_category_list_parameters.go#L21)
- **Replacement:** `AdminFindExtensionCategoryListOrder<EnumValue>Constant`
- **Deprecated constants (4):**
  - `AdminFindExtensionCategoryListAscConstant`
  - `AdminFindExtensionCategoryListAscendingConstant`
  - `AdminFindExtensionCategoryListDescConstant`
  - `AdminFindExtensionCategoryListDescendingConstant`

- **Location:** [Line 30](reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions/admin_find_extension_category_list_parameters.go#L30)
- **Replacement:** `AdminFindExtensionCategoryListSortBy<EnumValue>Constant`
- **Deprecated constants (2):**
  - `AdminFindExtensionCategoryListExtensionCategoryConstant`
  - `AdminFindExtensionCategoryListExtensionCategoryNameConstant`

#### `seasonpass-sdk/pkg/seasonpassclient/season/query_seasons_parameters.go`

- **Location:** [Line 22](seasonpass-sdk/pkg/seasonpassclient/season/query_seasons_parameters.go#L22)
- **Replacement:** `QuerySeasonsStatus<EnumValue>Constant`
- **Deprecated constants (3):**
  - `QuerySeasonsDRAFTConstant`
  - `QuerySeasonsPUBLISHEDConstant`
  - `QuerySeasonsRETIREDConstant`

#### `seasonpass-sdk/pkg/seasonpassclient/season/query_user_exp_grant_history_parameters.go`

- **Location:** [Line 22](seasonpass-sdk/pkg/seasonpassclient/season/query_user_exp_grant_history_parameters.go#L22)
- **Replacement:** `QueryUserExpGrantHistorySource<EnumValue>Constant`
- **Deprecated constants (2):**
  - `QueryUserExpGrantHistoryPAIDFORConstant`
  - `QueryUserExpGrantHistorySWEATConstant`

### Phase 13 — `session-sdk` · `social-sdk`

> **7 file(s)** · **11 deprecated `const` block(s)** · **48 deprecated constant name(s)**

#### `session-sdk/pkg/sessionclient/game_session/admin_query_game_sessions_parameters.go`

- **Location:** [Line 22](session-sdk/pkg/sessionclient/game_session/admin_query_game_sessions_parameters.go#L22)
- **Replacement:** `AdminQueryGameSessionsJoinability<EnumValue>Constant`
- **Deprecated constants (6):**
  - `AdminQueryGameSessionsCLOSEDConstant`
  - `AdminQueryGameSessionsFRIENDSOFFRIENDSConstant`
  - `AdminQueryGameSessionsFRIENDSOFLEADERConstant`
  - `AdminQueryGameSessionsFRIENDSOFMEMBERSConstant`
  - `AdminQueryGameSessionsINVITEONLYConstant`
  - `AdminQueryGameSessionsOPENConstant`

- **Location:** [Line 33](session-sdk/pkg/sessionclient/game_session/admin_query_game_sessions_parameters.go#L33)
- **Replacement:** `AdminQueryGameSessionsStatus<EnumValue>Constant`
- **Deprecated constants (6):**
  - `AdminQueryGameSessionsAVAILABLEConstant`
  - `AdminQueryGameSessionsDSERRORConstant`
  - `AdminQueryGameSessionsFAILEDTOREQUESTConstant`
  - `AdminQueryGameSessionsNEEDTOREQUESTConstant`
  - `AdminQueryGameSessionsPREPARINGConstant`
  - `AdminQueryGameSessionsREQUESTEDConstant`

#### `session-sdk/pkg/sessionclient/party/admin_query_parties_parameters.go`

- **Location:** [Line 22](session-sdk/pkg/sessionclient/party/admin_query_parties_parameters.go#L22)
- **Replacement:** `AdminQueryPartiesJoinability<EnumValue>Constant`
- **Deprecated constants (6):**
  - `AdminQueryPartiesCLOSEDConstant`
  - `AdminQueryPartiesFRIENDSOFFRIENDSConstant`
  - `AdminQueryPartiesFRIENDSOFLEADERConstant`
  - `AdminQueryPartiesFRIENDSOFMEMBERSConstant`
  - `AdminQueryPartiesINVITEONLYConstant`
  - `AdminQueryPartiesOPENConstant`

- **Location:** [Line 33](session-sdk/pkg/sessionclient/party/admin_query_parties_parameters.go#L33)
- **Replacement:** `AdminQueryPartiesMemberStatus<EnumValue>Constant`
- **Deprecated constants (10):**
  - `AdminQueryPartiesCANCELLEDConstant`
  - `AdminQueryPartiesCONNECTEDConstant`
  - `AdminQueryPartiesDISCONNECTEDConstant`
  - `AdminQueryPartiesDROPPEDConstant`
  - `AdminQueryPartiesINVITEDConstant`
  - `AdminQueryPartiesJOINEDConstant`
  - `AdminQueryPartiesKICKEDConstant`
  - `AdminQueryPartiesLEFTConstant`
  - `AdminQueryPartiesREJECTEDConstant`
  - `AdminQueryPartiesTIMEOUTConstant`

#### `session-sdk/pkg/sessionclient/platform_credential/admin_delete_platform_credentials_by_platform_id_parameters.go`

- **Location:** [Line 21](session-sdk/pkg/sessionclient/platform_credential/admin_delete_platform_credentials_by_platform_id_parameters.go#L21)
- **Replacement:** `AdminDeletePlatformCredentialsByPlatformIDPlatformID<EnumValue>Constant`
- **Deprecated constants (2):**
  - `AdminDeletePlatformCredentialsByPlatformIDPSNConstant`
  - `AdminDeletePlatformCredentialsByPlatformIDXBOXConstant`

#### `session-sdk/pkg/sessionclient/platform_credential/admin_sync_platform_credentials_parameters.go`

- **Location:** [Line 21](session-sdk/pkg/sessionclient/platform_credential/admin_sync_platform_credentials_parameters.go#L21)
- **Replacement:** `AdminSyncPlatformCredentialsPlatformID<EnumValue>Constant`
- **Deprecated constants (1):**
  - `AdminSyncPlatformCredentialsXBOXConstant`

#### `session-sdk/pkg/sessionclient/platform_credential/admin_upload_platform_credentials_parameters.go`

- **Location:** [Line 21](session-sdk/pkg/sessionclient/platform_credential/admin_upload_platform_credentials_parameters.go#L21)
- **Replacement:** `AdminUploadPlatformCredentialsPlatformID<EnumValue>Constant`
- **Deprecated constants (1):**
  - `AdminUploadPlatformCredentialsXBOXConstant`

#### `social-sdk/pkg/socialclient/stat_cycle_configuration/get_stat_cycles_1_parameters.go`

- **Location:** [Line 22](social-sdk/pkg/socialclient/stat_cycle_configuration/get_stat_cycles_1_parameters.go#L22)
- **Replacement:** `GetStatCycles1CycleType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `GetStatCycles1ANNUALLYConstant`
  - `GetStatCycles1DAILYConstant`
  - `GetStatCycles1MONTHLYConstant`
  - `GetStatCycles1SEASONALConstant`
  - `GetStatCycles1WEEKLYConstant`

- **Location:** [Line 32](social-sdk/pkg/socialclient/stat_cycle_configuration/get_stat_cycles_1_parameters.go#L32)
- **Replacement:** `GetStatCycles1Status<EnumValue>Constant`
- **Deprecated constants (3):**
  - `GetStatCycles1ACTIVEConstant`
  - `GetStatCycles1INITConstant`
  - `GetStatCycles1STOPPEDConstant`

#### `social-sdk/pkg/socialclient/stat_cycle_configuration/get_stat_cycles_parameters.go`

- **Location:** [Line 22](social-sdk/pkg/socialclient/stat_cycle_configuration/get_stat_cycles_parameters.go#L22)
- **Replacement:** `GetStatCyclesCycleType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `GetStatCyclesANNUALLYConstant`
  - `GetStatCyclesDAILYConstant`
  - `GetStatCyclesMONTHLYConstant`
  - `GetStatCyclesSEASONALConstant`
  - `GetStatCyclesWEEKLYConstant`

- **Location:** [Line 32](social-sdk/pkg/socialclient/stat_cycle_configuration/get_stat_cycles_parameters.go#L32)
- **Replacement:** `GetStatCyclesStatus<EnumValue>Constant`
- **Deprecated constants (3):**
  - `GetStatCyclesACTIVEConstant`
  - `GetStatCyclesINITConstant`
  - `GetStatCyclesSTOPPEDConstant`

### Phase 14 — `platform-sdk`: package `catalog_changes`

> **3 file(s)** · **11 deprecated `const` block(s)** · **65 deprecated constant name(s)**

#### `platform-sdk/pkg/platformclient/catalog_changes/get_statistic_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/catalog_changes/get_statistic_parameters.go#L21)
- **Replacement:** `GetStatisticAction<EnumValue>Constant`
- **Deprecated constants (3):**
  - `GetStatisticCREATEConstant`
  - `GetStatisticDELETEConstant`
  - `GetStatisticUPDATEConstant`

- **Location:** [Line 29](platform-sdk/pkg/platformclient/catalog_changes/get_statistic_parameters.go#L29)
- **Replacement:** `GetStatisticItemType<EnumValue>Constant`
- **Deprecated constants (11):**
  - `GetStatisticAPPConstant`
  - `GetStatisticBUNDLEConstant`
  - `GetStatisticCODEConstant`
  - `GetStatisticCOINSConstant`
  - `GetStatisticEXTENSIONConstant`
  - `GetStatisticINGAMEITEMConstant`
  - `GetStatisticLOOTBOXConstant`
  - `GetStatisticMEDIAConstant`
  - `GetStatisticOPTIONBOXConstant`
  - `GetStatisticSEASONConstant`
  - `GetStatisticSUBSCRIPTIONConstant`

- **Location:** [Line 45](platform-sdk/pkg/platformclient/catalog_changes/get_statistic_parameters.go#L45)
- **Replacement:** `GetStatisticType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `GetStatisticCATEGORYConstant`
  - `GetStatisticITEMConstant`
  - `GetStatisticSECTIONConstant`
  - `GetStatisticSTOREConstant`
  - `GetStatisticVIEWConstant`

#### `platform-sdk/pkg/platformclient/catalog_changes/query_changes_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/catalog_changes/query_changes_parameters.go#L22)
- **Replacement:** `QueryChangesAction<EnumValue>Constant`
- **Deprecated constants (3):**
  - `QueryChangesCREATEConstant`
  - `QueryChangesDELETEConstant`
  - `QueryChangesUPDATEConstant`

- **Location:** [Line 30](platform-sdk/pkg/platformclient/catalog_changes/query_changes_parameters.go#L30)
- **Replacement:** `QueryChangesItemType<EnumValue>Constant`
- **Deprecated constants (11):**
  - `QueryChangesAPPConstant`
  - `QueryChangesBUNDLEConstant`
  - `QueryChangesCODEConstant`
  - `QueryChangesCOINSConstant`
  - `QueryChangesEXTENSIONConstant`
  - `QueryChangesINGAMEITEMConstant`
  - `QueryChangesLOOTBOXConstant`
  - `QueryChangesMEDIAConstant`
  - `QueryChangesOPTIONBOXConstant`
  - `QueryChangesSEASONConstant`
  - `QueryChangesSUBSCRIPTIONConstant`

- **Location:** [Line 46](platform-sdk/pkg/platformclient/catalog_changes/query_changes_parameters.go#L46)
- **Replacement:** `QueryChangesSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `QueryChangesCreatedAtConstant`
  - `QueryChangesCreatedAtAscConstant`
  - `QueryChangesCreatedAtDescConstant`
  - `QueryChangesUpdatedAtConstant`
  - `QueryChangesUpdatedAtAscConstant`
  - `QueryChangesUpdatedAtDescConstant`

- **Location:** [Line 57](platform-sdk/pkg/platformclient/catalog_changes/query_changes_parameters.go#L57)
- **Replacement:** `QueryChangesStatus<EnumValue>Constant`
- **Deprecated constants (2):**
  - `QueryChangesPUBLISHEDConstant`
  - `QueryChangesUNPUBLISHEDConstant`

- **Location:** [Line 64](platform-sdk/pkg/platformclient/catalog_changes/query_changes_parameters.go#L64)
- **Replacement:** `QueryChangesType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `QueryChangesCATEGORYConstant`
  - `QueryChangesITEMConstant`
  - `QueryChangesSECTIONConstant`
  - `QueryChangesSTOREConstant`
  - `QueryChangesVIEWConstant`

#### `platform-sdk/pkg/platformclient/catalog_changes/select_all_records_by_criteria_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/catalog_changes/select_all_records_by_criteria_parameters.go#L22)
- **Replacement:** `SelectAllRecordsByCriteriaAction<EnumValue>Constant`
- **Deprecated constants (3):**
  - `SelectAllRecordsByCriteriaCREATEConstant`
  - `SelectAllRecordsByCriteriaDELETEConstant`
  - `SelectAllRecordsByCriteriaUPDATEConstant`

- **Location:** [Line 30](platform-sdk/pkg/platformclient/catalog_changes/select_all_records_by_criteria_parameters.go#L30)
- **Replacement:** `SelectAllRecordsByCriteriaItemType<EnumValue>Constant`
- **Deprecated constants (11):**
  - `SelectAllRecordsByCriteriaAPPConstant`
  - `SelectAllRecordsByCriteriaBUNDLEConstant`
  - `SelectAllRecordsByCriteriaCODEConstant`
  - `SelectAllRecordsByCriteriaCOINSConstant`
  - `SelectAllRecordsByCriteriaEXTENSIONConstant`
  - `SelectAllRecordsByCriteriaINGAMEITEMConstant`
  - `SelectAllRecordsByCriteriaLOOTBOXConstant`
  - `SelectAllRecordsByCriteriaMEDIAConstant`
  - `SelectAllRecordsByCriteriaOPTIONBOXConstant`
  - `SelectAllRecordsByCriteriaSEASONConstant`
  - `SelectAllRecordsByCriteriaSUBSCRIPTIONConstant`

- **Location:** [Line 46](platform-sdk/pkg/platformclient/catalog_changes/select_all_records_by_criteria_parameters.go#L46)
- **Replacement:** `SelectAllRecordsByCriteriaType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `SelectAllRecordsByCriteriaCATEGORYConstant`
  - `SelectAllRecordsByCriteriaITEMConstant`
  - `SelectAllRecordsByCriteriaSECTIONConstant`
  - `SelectAllRecordsByCriteriaSTOREConstant`
  - `SelectAllRecordsByCriteriaVIEWConstant`

### Phase 15 — `platform-sdk`: packages `clawback`, `currency`, `dlc`

> **7 file(s)** · **9 deprecated `const` block(s)** · **36 deprecated constant name(s)**

#### `platform-sdk/pkg/platformclient/clawback/query_iap_clawback_history_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/clawback/query_iap_clawback_history_parameters.go#L22)
- **Replacement:** `QueryIAPClawbackHistoryEventType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `QueryIAPClawbackHistoryCHARGEBACKConstant`
  - `QueryIAPClawbackHistoryCHARGEBACKREVERSEDConstant`
  - `QueryIAPClawbackHistoryOTHERConstant`
  - `QueryIAPClawbackHistoryREFUNDConstant`
  - `QueryIAPClawbackHistoryREVOKEDConstant`

- **Location:** [Line 32](platform-sdk/pkg/platformclient/clawback/query_iap_clawback_history_parameters.go#L32)
- **Replacement:** `QueryIAPClawbackHistoryStatus<EnumValue>Constant`
- **Deprecated constants (4):**
  - `QueryIAPClawbackHistoryFAILConstant`
  - `QueryIAPClawbackHistoryIGNOREDConstant`
  - `QueryIAPClawbackHistoryINITConstant`
  - `QueryIAPClawbackHistorySUCCESSConstant`

#### `platform-sdk/pkg/platformclient/currency/list_currencies_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/currency/list_currencies_parameters.go#L21)
- **Replacement:** `ListCurrenciesCurrencyType<EnumValue>Constant`
- **Deprecated constants (2):**
  - `ListCurrenciesREALConstant`
  - `ListCurrenciesVIRTUALConstant`

#### `platform-sdk/pkg/platformclient/currency/public_list_currencies_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/currency/public_list_currencies_parameters.go#L21)
- **Replacement:** `PublicListCurrenciesCurrencyType<EnumValue>Constant`
- **Deprecated constants (2):**
  - `PublicListCurrenciesREALConstant`
  - `PublicListCurrenciesVIRTUALConstant`

#### `platform-sdk/pkg/platformclient/dlc/ge_dlc_durable_reward_short_map_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/dlc/ge_dlc_durable_reward_short_map_parameters.go#L21)
- **Replacement:** `GeDLCDurableRewardShortMapDLCType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `GeDLCDurableRewardShortMapEPICGAMESConstant`
  - `GeDLCDurableRewardShortMapOCULUSConstant`
  - `GeDLCDurableRewardShortMapPSNConstant`
  - `GeDLCDurableRewardShortMapSTEAMConstant`
  - `GeDLCDurableRewardShortMapXBOXConstant`

#### `platform-sdk/pkg/platformclient/dlc/get_user_dlc_by_platform_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/dlc/get_user_dlc_by_platform_parameters.go#L21)
- **Replacement:** `GetUserDLCByPlatformType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `GetUserDLCByPlatformEPICGAMESConstant`
  - `GetUserDLCByPlatformOCULUSConstant`
  - `GetUserDLCByPlatformPSNConstant`
  - `GetUserDLCByPlatformSTEAMConstant`
  - `GetUserDLCByPlatformXBOXConstant`

#### `platform-sdk/pkg/platformclient/dlc/get_user_dlc_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/dlc/get_user_dlc_parameters.go#L22)
- **Replacement:** `GetUserDLCStatus<EnumValue>Constant`
- **Deprecated constants (3):**
  - `GetUserDLCFULFILLEDConstant`
  - `GetUserDLCREVOKEDConstant`
  - `GetUserDLCREVOKEFAILEDConstant`

- **Location:** [Line 30](platform-sdk/pkg/platformclient/dlc/get_user_dlc_parameters.go#L30)
- **Replacement:** `GetUserDLCType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `GetUserDLCEPICGAMESConstant`
  - `GetUserDLCOCULUSConstant`
  - `GetUserDLCPSNConstant`
  - `GetUserDLCSTEAMConstant`
  - `GetUserDLCXBOXConstant`

#### `platform-sdk/pkg/platformclient/dlc/public_get_my_dlc_content_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/dlc/public_get_my_dlc_content_parameters.go#L22)
- **Replacement:** `PublicGetMyDLCContentType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `PublicGetMyDLCContentEPICGAMESConstant`
  - `PublicGetMyDLCContentOCULUSConstant`
  - `PublicGetMyDLCContentPSNConstant`
  - `PublicGetMyDLCContentSTEAMConstant`
  - `PublicGetMyDLCContentXBOXConstant`

### Phase 16 — `platform-sdk`: package `entitlement` (admin-side)

> **9 file(s)** · **13 deprecated `const` block(s)** · **94 deprecated constant name(s)**

#### `platform-sdk/pkg/platformclient/entitlement/get_platform_entitlement_config_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/entitlement/get_platform_entitlement_config_parameters.go#L21)
- **Replacement:** `GetPlatformEntitlementConfigPlatform<EnumValue>Constant`
- **Deprecated constants (9):**
  - `GetPlatformEntitlementConfigEpicConstant`
  - `GetPlatformEntitlementConfigGooglePlayConstant`
  - `GetPlatformEntitlementConfigIOSConstant`
  - `GetPlatformEntitlementConfigNintendoConstant`
  - `GetPlatformEntitlementConfigOculusConstant`
  - `GetPlatformEntitlementConfigOtherConstant`
  - `GetPlatformEntitlementConfigPlaystationConstant`
  - `GetPlatformEntitlementConfigSteamConstant`
  - `GetPlatformEntitlementConfigXboxConstant`

#### `platform-sdk/pkg/platformclient/entitlement/get_user_entitlement_by_item_id_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/entitlement/get_user_entitlement_by_item_id_parameters.go#L22)
- **Replacement:** `GetUserEntitlementByItemIDEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `GetUserEntitlementByItemIDAPPConstant`
  - `GetUserEntitlementByItemIDCODEConstant`
  - `GetUserEntitlementByItemIDENTITLEMENTConstant`
  - `GetUserEntitlementByItemIDLOOTBOXConstant`
  - `GetUserEntitlementByItemIDMEDIAConstant`
  - `GetUserEntitlementByItemIDOPTIONBOXConstant`
  - `GetUserEntitlementByItemIDSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/entitlement/get_user_entitlement_by_sku_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/entitlement/get_user_entitlement_by_sku_parameters.go#L22)
- **Replacement:** `GetUserEntitlementBySkuEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `GetUserEntitlementBySkuAPPConstant`
  - `GetUserEntitlementBySkuCODEConstant`
  - `GetUserEntitlementBySkuENTITLEMENTConstant`
  - `GetUserEntitlementBySkuLOOTBOXConstant`
  - `GetUserEntitlementBySkuMEDIAConstant`
  - `GetUserEntitlementBySkuOPTIONBOXConstant`
  - `GetUserEntitlementBySkuSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/entitlement/get_user_entitlement_ownership_by_item_id_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/entitlement/get_user_entitlement_ownership_by_item_id_parameters.go#L21)
- **Replacement:** `GetUserEntitlementOwnershipByItemIDEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `GetUserEntitlementOwnershipByItemIDAPPConstant`
  - `GetUserEntitlementOwnershipByItemIDCODEConstant`
  - `GetUserEntitlementOwnershipByItemIDENTITLEMENTConstant`
  - `GetUserEntitlementOwnershipByItemIDLOOTBOXConstant`
  - `GetUserEntitlementOwnershipByItemIDMEDIAConstant`
  - `GetUserEntitlementOwnershipByItemIDOPTIONBOXConstant`
  - `GetUserEntitlementOwnershipByItemIDSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/entitlement/get_user_entitlement_ownership_by_sku_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/entitlement/get_user_entitlement_ownership_by_sku_parameters.go#L21)
- **Replacement:** `GetUserEntitlementOwnershipBySkuEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `GetUserEntitlementOwnershipBySkuAPPConstant`
  - `GetUserEntitlementOwnershipBySkuCODEConstant`
  - `GetUserEntitlementOwnershipBySkuENTITLEMENTConstant`
  - `GetUserEntitlementOwnershipBySkuLOOTBOXConstant`
  - `GetUserEntitlementOwnershipBySkuMEDIAConstant`
  - `GetUserEntitlementOwnershipBySkuOPTIONBOXConstant`
  - `GetUserEntitlementOwnershipBySkuSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/entitlement/query_entitlements_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/entitlement/query_entitlements_parameters.go#L22)
- **Replacement:** `QueryEntitlementsAppType<EnumValue>Constant`
- **Deprecated constants (4):**
  - `QueryEntitlementsDEMOConstant`
  - `QueryEntitlementsDLCConstant`
  - `QueryEntitlementsGAMEConstant`
  - `QueryEntitlementsSOFTWAREConstant`

- **Location:** [Line 31](platform-sdk/pkg/platformclient/entitlement/query_entitlements_parameters.go#L31)
- **Replacement:** `QueryEntitlementsEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `QueryEntitlementsAPPConstant`
  - `QueryEntitlementsCODEConstant`
  - `QueryEntitlementsENTITLEMENTConstant`
  - `QueryEntitlementsLOOTBOXConstant`
  - `QueryEntitlementsMEDIAConstant`
  - `QueryEntitlementsOPTIONBOXConstant`
  - `QueryEntitlementsSUBSCRIPTIONConstant`

- **Location:** [Line 43](platform-sdk/pkg/platformclient/entitlement/query_entitlements_parameters.go#L43)
- **Replacement:** `QueryEntitlementsOrigin<EnumValue>Constant`
- **Deprecated constants (11):**
  - `QueryEntitlementsEpicConstant`
  - `QueryEntitlementsGooglePlayConstant`
  - `QueryEntitlementsIOSConstant`
  - `QueryEntitlementsNintendoConstant`
  - `QueryEntitlementsOculusConstant`
  - `QueryEntitlementsOtherConstant`
  - `QueryEntitlementsPlaystationConstant`
  - `QueryEntitlementsSteamConstant`
  - `QueryEntitlementsSystemConstant`
  - `QueryEntitlementsTwitchConstant`
  - `QueryEntitlementsXboxConstant`

#### `platform-sdk/pkg/platformclient/entitlement/query_user_entitlements_by_app_type_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/entitlement/query_user_entitlements_by_app_type_parameters.go#L22)
- **Replacement:** `QueryUserEntitlementsByAppTypeAppType<EnumValue>Constant`
- **Deprecated constants (4):**
  - `QueryUserEntitlementsByAppTypeDEMOConstant`
  - `QueryUserEntitlementsByAppTypeDLCConstant`
  - `QueryUserEntitlementsByAppTypeGAMEConstant`
  - `QueryUserEntitlementsByAppTypeSOFTWAREConstant`

#### `platform-sdk/pkg/platformclient/entitlement/query_user_entitlements_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/entitlement/query_user_entitlements_parameters.go#L22)
- **Replacement:** `QueryUserEntitlementsAppType<EnumValue>Constant`
- **Deprecated constants (4):**
  - `QueryUserEntitlementsDEMOConstant`
  - `QueryUserEntitlementsDLCConstant`
  - `QueryUserEntitlementsGAMEConstant`
  - `QueryUserEntitlementsSOFTWAREConstant`

- **Location:** [Line 31](platform-sdk/pkg/platformclient/entitlement/query_user_entitlements_parameters.go#L31)
- **Replacement:** `QueryUserEntitlementsEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `QueryUserEntitlementsAPPConstant`
  - `QueryUserEntitlementsCODEConstant`
  - `QueryUserEntitlementsENTITLEMENTConstant`
  - `QueryUserEntitlementsLOOTBOXConstant`
  - `QueryUserEntitlementsMEDIAConstant`
  - `QueryUserEntitlementsOPTIONBOXConstant`
  - `QueryUserEntitlementsSUBSCRIPTIONConstant`

- **Location:** [Line 43](platform-sdk/pkg/platformclient/entitlement/query_user_entitlements_parameters.go#L43)
- **Replacement:** `QueryUserEntitlementsOrigin<EnumValue>Constant`
- **Deprecated constants (11):**
  - `QueryUserEntitlementsEpicConstant`
  - `QueryUserEntitlementsGooglePlayConstant`
  - `QueryUserEntitlementsIOSConstant`
  - `QueryUserEntitlementsNintendoConstant`
  - `QueryUserEntitlementsOculusConstant`
  - `QueryUserEntitlementsOtherConstant`
  - `QueryUserEntitlementsPlaystationConstant`
  - `QueryUserEntitlementsSteamConstant`
  - `QueryUserEntitlementsSystemConstant`
  - `QueryUserEntitlementsTwitchConstant`
  - `QueryUserEntitlementsXboxConstant`

#### `platform-sdk/pkg/platformclient/entitlement/update_platform_entitlement_config_parameters.go`

- **Location:** [Line 23](platform-sdk/pkg/platformclient/entitlement/update_platform_entitlement_config_parameters.go#L23)
- **Replacement:** `UpdatePlatformEntitlementConfigPlatform<EnumValue>Constant`
- **Deprecated constants (9):**
  - `UpdatePlatformEntitlementConfigEpicConstant`
  - `UpdatePlatformEntitlementConfigGooglePlayConstant`
  - `UpdatePlatformEntitlementConfigIOSConstant`
  - `UpdatePlatformEntitlementConfigNintendoConstant`
  - `UpdatePlatformEntitlementConfigOculusConstant`
  - `UpdatePlatformEntitlementConfigOtherConstant`
  - `UpdatePlatformEntitlementConfigPlaystationConstant`
  - `UpdatePlatformEntitlementConfigSteamConstant`
  - `UpdatePlatformEntitlementConfigXboxConstant`

### Phase 17 — `platform-sdk`: package `entitlement` (public-side)

> **9 file(s)** · **10 deprecated `const` block(s)** · **64 deprecated constant name(s)**

#### `platform-sdk/pkg/platformclient/entitlement/public_get_my_entitlement_ownership_by_item_id_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/entitlement/public_get_my_entitlement_ownership_by_item_id_parameters.go#L21)
- **Replacement:** `PublicGetMyEntitlementOwnershipByItemIDEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `PublicGetMyEntitlementOwnershipByItemIDAPPConstant`
  - `PublicGetMyEntitlementOwnershipByItemIDCODEConstant`
  - `PublicGetMyEntitlementOwnershipByItemIDENTITLEMENTConstant`
  - `PublicGetMyEntitlementOwnershipByItemIDLOOTBOXConstant`
  - `PublicGetMyEntitlementOwnershipByItemIDMEDIAConstant`
  - `PublicGetMyEntitlementOwnershipByItemIDOPTIONBOXConstant`
  - `PublicGetMyEntitlementOwnershipByItemIDSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/entitlement/public_get_my_entitlement_ownership_by_sku_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/entitlement/public_get_my_entitlement_ownership_by_sku_parameters.go#L21)
- **Replacement:** `PublicGetMyEntitlementOwnershipBySkuEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `PublicGetMyEntitlementOwnershipBySkuAPPConstant`
  - `PublicGetMyEntitlementOwnershipBySkuCODEConstant`
  - `PublicGetMyEntitlementOwnershipBySkuENTITLEMENTConstant`
  - `PublicGetMyEntitlementOwnershipBySkuLOOTBOXConstant`
  - `PublicGetMyEntitlementOwnershipBySkuMEDIAConstant`
  - `PublicGetMyEntitlementOwnershipBySkuOPTIONBOXConstant`
  - `PublicGetMyEntitlementOwnershipBySkuSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/entitlement/public_get_user_entitlement_by_item_id_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/entitlement/public_get_user_entitlement_by_item_id_parameters.go#L21)
- **Replacement:** `PublicGetUserEntitlementByItemIDEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `PublicGetUserEntitlementByItemIDAPPConstant`
  - `PublicGetUserEntitlementByItemIDCODEConstant`
  - `PublicGetUserEntitlementByItemIDENTITLEMENTConstant`
  - `PublicGetUserEntitlementByItemIDLOOTBOXConstant`
  - `PublicGetUserEntitlementByItemIDMEDIAConstant`
  - `PublicGetUserEntitlementByItemIDOPTIONBOXConstant`
  - `PublicGetUserEntitlementByItemIDSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/entitlement/public_get_user_entitlement_by_sku_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/entitlement/public_get_user_entitlement_by_sku_parameters.go#L21)
- **Replacement:** `PublicGetUserEntitlementBySkuEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `PublicGetUserEntitlementBySkuAPPConstant`
  - `PublicGetUserEntitlementBySkuCODEConstant`
  - `PublicGetUserEntitlementBySkuENTITLEMENTConstant`
  - `PublicGetUserEntitlementBySkuLOOTBOXConstant`
  - `PublicGetUserEntitlementBySkuMEDIAConstant`
  - `PublicGetUserEntitlementBySkuOPTIONBOXConstant`
  - `PublicGetUserEntitlementBySkuSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/entitlement/public_get_user_entitlement_ownership_by_item_id_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/entitlement/public_get_user_entitlement_ownership_by_item_id_parameters.go#L21)
- **Replacement:** `PublicGetUserEntitlementOwnershipByItemIDEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `PublicGetUserEntitlementOwnershipByItemIDAPPConstant`
  - `PublicGetUserEntitlementOwnershipByItemIDCODEConstant`
  - `PublicGetUserEntitlementOwnershipByItemIDENTITLEMENTConstant`
  - `PublicGetUserEntitlementOwnershipByItemIDLOOTBOXConstant`
  - `PublicGetUserEntitlementOwnershipByItemIDMEDIAConstant`
  - `PublicGetUserEntitlementOwnershipByItemIDOPTIONBOXConstant`
  - `PublicGetUserEntitlementOwnershipByItemIDSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/entitlement/public_get_user_entitlement_ownership_by_sku_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/entitlement/public_get_user_entitlement_ownership_by_sku_parameters.go#L21)
- **Replacement:** `PublicGetUserEntitlementOwnershipBySkuEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `PublicGetUserEntitlementOwnershipBySkuAPPConstant`
  - `PublicGetUserEntitlementOwnershipBySkuCODEConstant`
  - `PublicGetUserEntitlementOwnershipBySkuENTITLEMENTConstant`
  - `PublicGetUserEntitlementOwnershipBySkuLOOTBOXConstant`
  - `PublicGetUserEntitlementOwnershipBySkuMEDIAConstant`
  - `PublicGetUserEntitlementOwnershipBySkuOPTIONBOXConstant`
  - `PublicGetUserEntitlementOwnershipBySkuSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/entitlement/public_query_user_entitlements_by_app_type_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/entitlement/public_query_user_entitlements_by_app_type_parameters.go#L22)
- **Replacement:** `PublicQueryUserEntitlementsByAppTypeAppType<EnumValue>Constant`
- **Deprecated constants (4):**
  - `PublicQueryUserEntitlementsByAppTypeDEMOConstant`
  - `PublicQueryUserEntitlementsByAppTypeDLCConstant`
  - `PublicQueryUserEntitlementsByAppTypeGAMEConstant`
  - `PublicQueryUserEntitlementsByAppTypeSOFTWAREConstant`

#### `platform-sdk/pkg/platformclient/entitlement/public_query_user_entitlements_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/entitlement/public_query_user_entitlements_parameters.go#L22)
- **Replacement:** `PublicQueryUserEntitlementsAppType<EnumValue>Constant`
- **Deprecated constants (4):**
  - `PublicQueryUserEntitlementsDEMOConstant`
  - `PublicQueryUserEntitlementsDLCConstant`
  - `PublicQueryUserEntitlementsGAMEConstant`
  - `PublicQueryUserEntitlementsSOFTWAREConstant`

- **Location:** [Line 31](platform-sdk/pkg/platformclient/entitlement/public_query_user_entitlements_parameters.go#L31)
- **Replacement:** `PublicQueryUserEntitlementsEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `PublicQueryUserEntitlementsAPPConstant`
  - `PublicQueryUserEntitlementsCODEConstant`
  - `PublicQueryUserEntitlementsENTITLEMENTConstant`
  - `PublicQueryUserEntitlementsLOOTBOXConstant`
  - `PublicQueryUserEntitlementsMEDIAConstant`
  - `PublicQueryUserEntitlementsOPTIONBOXConstant`
  - `PublicQueryUserEntitlementsSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/entitlement/public_user_entitlement_history_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/entitlement/public_user_entitlement_history_parameters.go#L22)
- **Replacement:** `PublicUserEntitlementHistoryEntitlementClazz<EnumValue>Constant`
- **Deprecated constants (7):**
  - `PublicUserEntitlementHistoryAPPConstant`
  - `PublicUserEntitlementHistoryCODEConstant`
  - `PublicUserEntitlementHistoryENTITLEMENTConstant`
  - `PublicUserEntitlementHistoryLOOTBOXConstant`
  - `PublicUserEntitlementHistoryMEDIAConstant`
  - `PublicUserEntitlementHistoryOPTIONBOXConstant`
  - `PublicUserEntitlementHistorySUBSCRIPTIONConstant`

### Phase 18 — `platform-sdk`: packages `fulfillment`, `iap`, `iap_notification`

> **7 file(s)** · **10 deprecated `const` block(s)** · **58 deprecated constant name(s)**

#### `platform-sdk/pkg/platformclient/fulfillment/query_fulfillment_histories_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/fulfillment/query_fulfillment_histories_parameters.go#L22)
- **Replacement:** `QueryFulfillmentHistoriesStatus<EnumValue>Constant`
- **Deprecated constants (2):**
  - `QueryFulfillmentHistoriesFAILConstant`
  - `QueryFulfillmentHistoriesSUCCESSConstant`

#### `platform-sdk/pkg/platformclient/fulfillment/query_fulfillments_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/fulfillment/query_fulfillments_parameters.go#L22)
- **Replacement:** `QueryFulfillmentsState<EnumValue>Constant`
- **Deprecated constants (4):**
  - `QueryFulfillmentsFULFILLEDConstant`
  - `QueryFulfillmentsFULFILLFAILEDConstant`
  - `QueryFulfillmentsREVOKEDConstant`
  - `QueryFulfillmentsREVOKEFAILEDConstant`

#### `platform-sdk/pkg/platformclient/iap/get_iap_item_mapping_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/iap/get_iap_item_mapping_parameters.go#L21)
- **Replacement:** `GetIAPItemMappingPlatform<EnumValue>Constant`
- **Deprecated constants (9):**
  - `GetIAPItemMappingAPPLEConstant`
  - `GetIAPItemMappingEPICGAMESConstant`
  - `GetIAPItemMappingGOOGLEConstant`
  - `GetIAPItemMappingOCULUSConstant`
  - `GetIAPItemMappingPLAYSTATIONConstant`
  - `GetIAPItemMappingSTADIAConstant`
  - `GetIAPItemMappingSTEAMConstant`
  - `GetIAPItemMappingTWITCHConstant`
  - `GetIAPItemMappingXBOXConstant`

#### `platform-sdk/pkg/platformclient/iap/query_steam_report_histories_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/iap/query_steam_report_histories_parameters.go#L22)
- **Replacement:** `QuerySteamReportHistoriesProcessStatus<EnumValue>Constant`
- **Deprecated constants (3):**
  - `QuerySteamReportHistoriesERRORConstant`
  - `QuerySteamReportHistoriesIGNOREDConstant`
  - `QuerySteamReportHistoriesPROCESSEDConstant`

#### `platform-sdk/pkg/platformclient/iap/query_user_iap_consume_history_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/iap/query_user_iap_consume_history_parameters.go#L22)
- **Replacement:** `QueryUserIAPConsumeHistoryStatus<EnumValue>Constant`
- **Deprecated constants (3):**
  - `QueryUserIAPConsumeHistoryFAILConstant`
  - `QueryUserIAPConsumeHistoryPENDINGConstant`
  - `QueryUserIAPConsumeHistorySUCCESSConstant`

- **Location:** [Line 30](platform-sdk/pkg/platformclient/iap/query_user_iap_consume_history_parameters.go#L30)
- **Replacement:** `QueryUserIAPConsumeHistoryType<EnumValue>Constant`
- **Deprecated constants (9):**
  - `QueryUserIAPConsumeHistoryAPPLEConstant`
  - `QueryUserIAPConsumeHistoryEPICGAMESConstant`
  - `QueryUserIAPConsumeHistoryGOOGLEConstant`
  - `QueryUserIAPConsumeHistoryOCULUSConstant`
  - `QueryUserIAPConsumeHistoryPLAYSTATIONConstant`
  - `QueryUserIAPConsumeHistorySTADIAConstant`
  - `QueryUserIAPConsumeHistorySTEAMConstant`
  - `QueryUserIAPConsumeHistoryTWITCHConstant`
  - `QueryUserIAPConsumeHistoryXBOXConstant`

#### `platform-sdk/pkg/platformclient/iap/query_user_iap_orders_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/iap/query_user_iap_orders_parameters.go#L22)
- **Replacement:** `QueryUserIAPOrdersStatus<EnumValue>Constant`
- **Deprecated constants (6):**
  - `QueryUserIAPOrdersFAILEDConstant`
  - `QueryUserIAPOrdersFULFILLEDConstant`
  - `QueryUserIAPOrdersPARTIALREVOKEDConstant`
  - `QueryUserIAPOrdersREVOKEDConstant`
  - `QueryUserIAPOrdersREVOKEFAILEDConstant`
  - `QueryUserIAPOrdersVERIFIEDConstant`

- **Location:** [Line 33](platform-sdk/pkg/platformclient/iap/query_user_iap_orders_parameters.go#L33)
- **Replacement:** `QueryUserIAPOrdersType<EnumValue>Constant`
- **Deprecated constants (9):**
  - `QueryUserIAPOrdersAPPLEConstant`
  - `QueryUserIAPOrdersEPICGAMESConstant`
  - `QueryUserIAPOrdersGOOGLEConstant`
  - `QueryUserIAPOrdersOCULUSConstant`
  - `QueryUserIAPOrdersPLAYSTATIONConstant`
  - `QueryUserIAPOrdersSTADIAConstant`
  - `QueryUserIAPOrdersSTEAMConstant`
  - `QueryUserIAPOrdersTWITCHConstant`
  - `QueryUserIAPOrdersXBOXConstant`

#### `platform-sdk/pkg/platformclient/iap_notification/query_third_party_notifications_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/iap_notification/query_third_party_notifications_parameters.go#L22)
- **Replacement:** `QueryThirdPartyNotificationsSource<EnumValue>Constant`
- **Deprecated constants (9):**
  - `QueryThirdPartyNotificationsAPPLEConstant`
  - `QueryThirdPartyNotificationsEPICGAMESConstant`
  - `QueryThirdPartyNotificationsGOOGLEConstant`
  - `QueryThirdPartyNotificationsOCULUSConstant`
  - `QueryThirdPartyNotificationsPLAYSTATIONConstant`
  - `QueryThirdPartyNotificationsSTADIAConstant`
  - `QueryThirdPartyNotificationsSTEAMConstant`
  - `QueryThirdPartyNotificationsTWITCHConstant`
  - `QueryThirdPartyNotificationsXBOXConstant`

- **Location:** [Line 36](platform-sdk/pkg/platformclient/iap_notification/query_third_party_notifications_parameters.go#L36)
- **Replacement:** `QueryThirdPartyNotificationsStatus<EnumValue>Constant`
- **Deprecated constants (4):**
  - `QueryThirdPartyNotificationsERRORConstant`
  - `QueryThirdPartyNotificationsIGNOREDConstant`
  - `QueryThirdPartyNotificationsPROCESSEDConstant`
  - `QueryThirdPartyNotificationsWARNConstant`

### Phase 19 — `platform-sdk`: package `iap_subscription`

> **6 file(s)** · **6 deprecated `const` block(s)** · **54 deprecated constant name(s)**

#### `platform-sdk/pkg/platformclient/iap_subscription/get_third_party_platform_subscription_ownership_by_group_id_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/iap_subscription/get_third_party_platform_subscription_ownership_by_group_id_parameters.go#L21)
- **Replacement:** `GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPlatform<EnumValue>Constant`
- **Deprecated constants (9):**
  - `GetThirdPartyPlatformSubscriptionOwnershipByGroupIDAPPLEConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByGroupIDEPICGAMESConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByGroupIDGOOGLEConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByGroupIDOCULUSConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPLAYSTATIONConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByGroupIDSTADIAConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByGroupIDSTEAMConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByGroupIDTWITCHConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByGroupIDXBOXConstant`

#### `platform-sdk/pkg/platformclient/iap_subscription/get_third_party_platform_subscription_ownership_by_product_id_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/iap_subscription/get_third_party_platform_subscription_ownership_by_product_id_parameters.go#L21)
- **Replacement:** `GetThirdPartyPlatformSubscriptionOwnershipByProductIDPlatform<EnumValue>Constant`
- **Deprecated constants (9):**
  - `GetThirdPartyPlatformSubscriptionOwnershipByProductIDAPPLEConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByProductIDEPICGAMESConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByProductIDGOOGLEConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByProductIDOCULUSConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByProductIDPLAYSTATIONConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByProductIDSTADIAConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByProductIDSTEAMConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByProductIDTWITCHConstant`
  - `GetThirdPartyPlatformSubscriptionOwnershipByProductIDXBOXConstant`

#### `platform-sdk/pkg/platformclient/iap_subscription/public_query_user_third_party_subscription_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/iap_subscription/public_query_user_third_party_subscription_parameters.go#L22)
- **Replacement:** `PublicQueryUserThirdPartySubscriptionPlatform<EnumValue>Constant`
- **Deprecated constants (9):**
  - `PublicQueryUserThirdPartySubscriptionAPPLEConstant`
  - `PublicQueryUserThirdPartySubscriptionEPICGAMESConstant`
  - `PublicQueryUserThirdPartySubscriptionGOOGLEConstant`
  - `PublicQueryUserThirdPartySubscriptionOCULUSConstant`
  - `PublicQueryUserThirdPartySubscriptionPLAYSTATIONConstant`
  - `PublicQueryUserThirdPartySubscriptionSTADIAConstant`
  - `PublicQueryUserThirdPartySubscriptionSTEAMConstant`
  - `PublicQueryUserThirdPartySubscriptionTWITCHConstant`
  - `PublicQueryUserThirdPartySubscriptionXBOXConstant`

#### `platform-sdk/pkg/platformclient/iap_subscription/query_third_party_subscription_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/iap_subscription/query_third_party_subscription_parameters.go#L22)
- **Replacement:** `QueryThirdPartySubscriptionPlatform<EnumValue>Constant`
- **Deprecated constants (9):**
  - `QueryThirdPartySubscriptionAPPLEConstant`
  - `QueryThirdPartySubscriptionEPICGAMESConstant`
  - `QueryThirdPartySubscriptionGOOGLEConstant`
  - `QueryThirdPartySubscriptionOCULUSConstant`
  - `QueryThirdPartySubscriptionPLAYSTATIONConstant`
  - `QueryThirdPartySubscriptionSTADIAConstant`
  - `QueryThirdPartySubscriptionSTEAMConstant`
  - `QueryThirdPartySubscriptionTWITCHConstant`
  - `QueryThirdPartySubscriptionXBOXConstant`

#### `platform-sdk/pkg/platformclient/iap_subscription/query_user_third_party_subscription_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/iap_subscription/query_user_third_party_subscription_parameters.go#L22)
- **Replacement:** `QueryUserThirdPartySubscriptionPlatform<EnumValue>Constant`
- **Deprecated constants (9):**
  - `QueryUserThirdPartySubscriptionAPPLEConstant`
  - `QueryUserThirdPartySubscriptionEPICGAMESConstant`
  - `QueryUserThirdPartySubscriptionGOOGLEConstant`
  - `QueryUserThirdPartySubscriptionOCULUSConstant`
  - `QueryUserThirdPartySubscriptionPLAYSTATIONConstant`
  - `QueryUserThirdPartySubscriptionSTADIAConstant`
  - `QueryUserThirdPartySubscriptionSTEAMConstant`
  - `QueryUserThirdPartySubscriptionTWITCHConstant`
  - `QueryUserThirdPartySubscriptionXBOXConstant`

#### `platform-sdk/pkg/platformclient/iap_subscription/query_user_third_party_subscription_transactions_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/iap_subscription/query_user_third_party_subscription_transactions_parameters.go#L22)
- **Replacement:** `QueryUserThirdPartySubscriptionTransactionsPlatform<EnumValue>Constant`
- **Deprecated constants (9):**
  - `QueryUserThirdPartySubscriptionTransactionsAPPLEConstant`
  - `QueryUserThirdPartySubscriptionTransactionsEPICGAMESConstant`
  - `QueryUserThirdPartySubscriptionTransactionsGOOGLEConstant`
  - `QueryUserThirdPartySubscriptionTransactionsOCULUSConstant`
  - `QueryUserThirdPartySubscriptionTransactionsPLAYSTATIONConstant`
  - `QueryUserThirdPartySubscriptionTransactionsSTADIAConstant`
  - `QueryUserThirdPartySubscriptionTransactionsSTEAMConstant`
  - `QueryUserThirdPartySubscriptionTransactionsTWITCHConstant`
  - `QueryUserThirdPartySubscriptionTransactionsXBOXConstant`

### Phase 20 — `platform-sdk`: package `invoice` · `item` (public-side)

> **4 file(s)** · **6 deprecated `const` block(s)** · **60 deprecated constant name(s)**

#### `platform-sdk/pkg/platformclient/invoice/download_invoice_details_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/invoice/download_invoice_details_parameters.go#L21)
- **Replacement:** `DownloadInvoiceDetailsItemType<EnumValue>Constant`
- **Deprecated constants (11):**
  - `DownloadInvoiceDetailsAPPConstant`
  - `DownloadInvoiceDetailsBUNDLEConstant`
  - `DownloadInvoiceDetailsCODEConstant`
  - `DownloadInvoiceDetailsCOINSConstant`
  - `DownloadInvoiceDetailsEXTENSIONConstant`
  - `DownloadInvoiceDetailsINGAMEITEMConstant`
  - `DownloadInvoiceDetailsLOOTBOXConstant`
  - `DownloadInvoiceDetailsMEDIAConstant`
  - `DownloadInvoiceDetailsOPTIONBOXConstant`
  - `DownloadInvoiceDetailsSEASONConstant`
  - `DownloadInvoiceDetailsSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/invoice/generate_invoice_summary_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/invoice/generate_invoice_summary_parameters.go#L21)
- **Replacement:** `GenerateInvoiceSummaryItemType<EnumValue>Constant`
- **Deprecated constants (11):**
  - `GenerateInvoiceSummaryAPPConstant`
  - `GenerateInvoiceSummaryBUNDLEConstant`
  - `GenerateInvoiceSummaryCODEConstant`
  - `GenerateInvoiceSummaryCOINSConstant`
  - `GenerateInvoiceSummaryEXTENSIONConstant`
  - `GenerateInvoiceSummaryINGAMEITEMConstant`
  - `GenerateInvoiceSummaryLOOTBOXConstant`
  - `GenerateInvoiceSummaryMEDIAConstant`
  - `GenerateInvoiceSummaryOPTIONBOXConstant`
  - `GenerateInvoiceSummarySEASONConstant`
  - `GenerateInvoiceSummarySUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/item/public_query_items_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/item/public_query_items_parameters.go#L22)
- **Replacement:** `PublicQueryItemsAppType<EnumValue>Constant`
- **Deprecated constants (4):**
  - `PublicQueryItemsDEMOConstant`
  - `PublicQueryItemsDLCConstant`
  - `PublicQueryItemsGAMEConstant`
  - `PublicQueryItemsSOFTWAREConstant`

- **Location:** [Line 31](platform-sdk/pkg/platformclient/item/public_query_items_parameters.go#L31)
- **Replacement:** `PublicQueryItemsItemType<EnumValue>Constant`
- **Deprecated constants (11):**
  - `PublicQueryItemsAPPConstant`
  - `PublicQueryItemsBUNDLEConstant`
  - `PublicQueryItemsCODEConstant`
  - `PublicQueryItemsCOINSConstant`
  - `PublicQueryItemsEXTENSIONConstant`
  - `PublicQueryItemsINGAMEITEMConstant`
  - `PublicQueryItemsLOOTBOXConstant`
  - `PublicQueryItemsMEDIAConstant`
  - `PublicQueryItemsOPTIONBOXConstant`
  - `PublicQueryItemsSEASONConstant`
  - `PublicQueryItemsSUBSCRIPTIONConstant`

- **Location:** [Line 47](platform-sdk/pkg/platformclient/item/public_query_items_parameters.go#L47)
- **Replacement:** `PublicQueryItemsSortBy<EnumValue>Constant`
- **Deprecated constants (12):**
  - `PublicQueryItemsNameConstant`
  - `PublicQueryItemsNameAscConstant`
  - `PublicQueryItemsNameDescConstant`
  - `PublicQueryItemsCreatedAtConstant`
  - `PublicQueryItemsCreatedAtAscConstant`
  - `PublicQueryItemsCreatedAtDescConstant`
  - `PublicQueryItemsUpdatedAtConstant`
  - `PublicQueryItemsUpdatedAtAscConstant`
  - `PublicQueryItemsUpdatedAtDescConstant`
  - `PublicQueryItemsDisplayOrderConstant`
  - `PublicQueryItemsDisplayOrderAscConstant`
  - `PublicQueryItemsDisplayOrderDescConstant`

#### `platform-sdk/pkg/platformclient/item/public_search_items_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/item/public_search_items_parameters.go#L22)
- **Replacement:** `PublicSearchItemsItemType<EnumValue>Constant`
- **Deprecated constants (11):**
  - `PublicSearchItemsAPPConstant`
  - `PublicSearchItemsBUNDLEConstant`
  - `PublicSearchItemsCODEConstant`
  - `PublicSearchItemsCOINSConstant`
  - `PublicSearchItemsEXTENSIONConstant`
  - `PublicSearchItemsINGAMEITEMConstant`
  - `PublicSearchItemsLOOTBOXConstant`
  - `PublicSearchItemsMEDIAConstant`
  - `PublicSearchItemsOPTIONBOXConstant`
  - `PublicSearchItemsSEASONConstant`
  - `PublicSearchItemsSUBSCRIPTIONConstant`

### Phase 21 — `platform-sdk`: package `item` (admin-side)

> **7 file(s)** · **12 deprecated `const` block(s)** · **102 deprecated constant name(s)**

#### `platform-sdk/pkg/platformclient/item/delete_item_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/item/delete_item_parameters.go#L22)
- **Replacement:** `DeleteItemFeaturesToCheck<EnumValue>Constant`
- **Deprecated constants (6):**
  - `DeleteItemCAMPAIGNConstant`
  - `DeleteItemCATALOGConstant`
  - `DeleteItemDLCConstant`
  - `DeleteItemENTITLEMENTConstant`
  - `DeleteItemIAPConstant`
  - `DeleteItemREWARDConstant`

#### `platform-sdk/pkg/platformclient/item/query_item_references_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/item/query_item_references_parameters.go#L22)
- **Replacement:** `QueryItemReferencesFeaturesToCheck<EnumValue>Constant`
- **Deprecated constants (6):**
  - `QueryItemReferencesCAMPAIGNConstant`
  - `QueryItemReferencesCATALOGConstant`
  - `QueryItemReferencesDLCConstant`
  - `QueryItemReferencesENTITLEMENTConstant`
  - `QueryItemReferencesIAPConstant`
  - `QueryItemReferencesREWARDConstant`

#### `platform-sdk/pkg/platformclient/item/query_items_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/item/query_items_parameters.go#L22)
- **Replacement:** `QueryItemsAppType<EnumValue>Constant`
- **Deprecated constants (4):**
  - `QueryItemsDEMOConstant`
  - `QueryItemsDLCConstant`
  - `QueryItemsGAMEConstant`
  - `QueryItemsSOFTWAREConstant`

- **Location:** [Line 31](platform-sdk/pkg/platformclient/item/query_items_parameters.go#L31)
- **Replacement:** `QueryItemsItemType<EnumValue>Constant`
- **Deprecated constants (11):**
  - `QueryItemsAPPConstant`
  - `QueryItemsBUNDLEConstant`
  - `QueryItemsCODEConstant`
  - `QueryItemsCOINSConstant`
  - `QueryItemsEXTENSIONConstant`
  - `QueryItemsINGAMEITEMConstant`
  - `QueryItemsLOOTBOXConstant`
  - `QueryItemsMEDIAConstant`
  - `QueryItemsOPTIONBOXConstant`
  - `QueryItemsSEASONConstant`
  - `QueryItemsSUBSCRIPTIONConstant`

- **Location:** [Line 47](platform-sdk/pkg/platformclient/item/query_items_parameters.go#L47)
- **Replacement:** `QueryItemsSortBy<EnumValue>Constant`
- **Deprecated constants (12):**
  - `QueryItemsNameConstant`
  - `QueryItemsNameAscConstant`
  - `QueryItemsNameDescConstant`
  - `QueryItemsCreatedAtConstant`
  - `QueryItemsCreatedAtAscConstant`
  - `QueryItemsCreatedAtDescConstant`
  - `QueryItemsUpdatedAtConstant`
  - `QueryItemsUpdatedAtAscConstant`
  - `QueryItemsUpdatedAtDescConstant`
  - `QueryItemsDisplayOrderConstant`
  - `QueryItemsDisplayOrderAscConstant`
  - `QueryItemsDisplayOrderDescConstant`

#### `platform-sdk/pkg/platformclient/item/query_items_v2_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/item/query_items_v2_parameters.go#L22)
- **Replacement:** `QueryItemsV2AppType<EnumValue>Constant`
- **Deprecated constants (4):**
  - `QueryItemsV2DEMOConstant`
  - `QueryItemsV2DLCConstant`
  - `QueryItemsV2GAMEConstant`
  - `QueryItemsV2SOFTWAREConstant`

- **Location:** [Line 31](platform-sdk/pkg/platformclient/item/query_items_v2_parameters.go#L31)
- **Replacement:** `QueryItemsV2ItemStatus<EnumValue>Constant`
- **Deprecated constants (2):**
  - `QueryItemsV2ACTIVEConstant`
  - `QueryItemsV2INACTIVEConstant`

- **Location:** [Line 38](platform-sdk/pkg/platformclient/item/query_items_v2_parameters.go#L38)
- **Replacement:** `QueryItemsV2ItemType<EnumValue>Constant`
- **Deprecated constants (11):**
  - `QueryItemsV2APPConstant`
  - `QueryItemsV2BUNDLEConstant`
  - `QueryItemsV2CODEConstant`
  - `QueryItemsV2COINSConstant`
  - `QueryItemsV2EXTENSIONConstant`
  - `QueryItemsV2INGAMEITEMConstant`
  - `QueryItemsV2LOOTBOXConstant`
  - `QueryItemsV2MEDIAConstant`
  - `QueryItemsV2OPTIONBOXConstant`
  - `QueryItemsV2SEASONConstant`
  - `QueryItemsV2SUBSCRIPTIONConstant`

- **Location:** [Line 54](platform-sdk/pkg/platformclient/item/query_items_v2_parameters.go#L54)
- **Replacement:** `QueryItemsV2SortBy<EnumValue>Constant`
- **Deprecated constants (12):**
  - `QueryItemsV2NameConstant`
  - `QueryItemsV2NameAscConstant`
  - `QueryItemsV2NameDescConstant`
  - `QueryItemsV2CreatedAtConstant`
  - `QueryItemsV2CreatedAtAscConstant`
  - `QueryItemsV2CreatedAtDescConstant`
  - `QueryItemsV2UpdatedAtConstant`
  - `QueryItemsV2UpdatedAtAscConstant`
  - `QueryItemsV2UpdatedAtDescConstant`
  - `QueryItemsV2DisplayOrderConstant`
  - `QueryItemsV2DisplayOrderAscConstant`
  - `QueryItemsV2DisplayOrderDescConstant`

#### `platform-sdk/pkg/platformclient/item/query_uncategorized_items_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/item/query_uncategorized_items_parameters.go#L22)
- **Replacement:** `QueryUncategorizedItemsSortBy<EnumValue>Constant`
- **Deprecated constants (12):**
  - `QueryUncategorizedItemsNameConstant`
  - `QueryUncategorizedItemsNameAscConstant`
  - `QueryUncategorizedItemsNameDescConstant`
  - `QueryUncategorizedItemsCreatedAtConstant`
  - `QueryUncategorizedItemsCreatedAtAscConstant`
  - `QueryUncategorizedItemsCreatedAtDescConstant`
  - `QueryUncategorizedItemsUpdatedAtConstant`
  - `QueryUncategorizedItemsUpdatedAtAscConstant`
  - `QueryUncategorizedItemsUpdatedAtDescConstant`
  - `QueryUncategorizedItemsDisplayOrderConstant`
  - `QueryUncategorizedItemsDisplayOrderAscConstant`
  - `QueryUncategorizedItemsDisplayOrderDescConstant`

#### `platform-sdk/pkg/platformclient/item/search_item_type_config_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/item/search_item_type_config_parameters.go#L21)
- **Replacement:** `SearchItemTypeConfigItemType<EnumValue>Constant`
- **Deprecated constants (11):**
  - `SearchItemTypeConfigAPPConstant`
  - `SearchItemTypeConfigBUNDLEConstant`
  - `SearchItemTypeConfigCODEConstant`
  - `SearchItemTypeConfigCOINSConstant`
  - `SearchItemTypeConfigEXTENSIONConstant`
  - `SearchItemTypeConfigINGAMEITEMConstant`
  - `SearchItemTypeConfigLOOTBOXConstant`
  - `SearchItemTypeConfigMEDIAConstant`
  - `SearchItemTypeConfigOPTIONBOXConstant`
  - `SearchItemTypeConfigSEASONConstant`
  - `SearchItemTypeConfigSUBSCRIPTIONConstant`

#### `platform-sdk/pkg/platformclient/item/search_items_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/item/search_items_parameters.go#L22)
- **Replacement:** `SearchItemsItemType<EnumValue>Constant`
- **Deprecated constants (11):**
  - `SearchItemsAPPConstant`
  - `SearchItemsBUNDLEConstant`
  - `SearchItemsCODEConstant`
  - `SearchItemsCOINSConstant`
  - `SearchItemsEXTENSIONConstant`
  - `SearchItemsINGAMEITEMConstant`
  - `SearchItemsLOOTBOXConstant`
  - `SearchItemsMEDIAConstant`
  - `SearchItemsOPTIONBOXConstant`
  - `SearchItemsSEASONConstant`
  - `SearchItemsSUBSCRIPTIONConstant`

### Phase 22 — `platform-sdk`: packages `key_group`, `order`, `payment`

> **6 file(s)** · **8 deprecated `const` block(s)** · **63 deprecated constant name(s)**

#### `platform-sdk/pkg/platformclient/key_group/list_keys_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/key_group/list_keys_parameters.go#L22)
- **Replacement:** `ListKeysStatus<EnumValue>Constant`
- **Deprecated constants (2):**
  - `ListKeysACQUIREDConstant`
  - `ListKeysACTIVEConstant`

#### `platform-sdk/pkg/platformclient/order/public_query_user_orders_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/order/public_query_user_orders_parameters.go#L22)
- **Replacement:** `PublicQueryUserOrdersStatus<EnumValue>Constant`
- **Deprecated constants (11):**
  - `PublicQueryUserOrdersCHARGEBACKConstant`
  - `PublicQueryUserOrdersCHARGEBACKREVERSEDConstant`
  - `PublicQueryUserOrdersCHARGEDConstant`
  - `PublicQueryUserOrdersCLOSEDConstant`
  - `PublicQueryUserOrdersDELETEDConstant`
  - `PublicQueryUserOrdersFULFILLEDConstant`
  - `PublicQueryUserOrdersFULFILLFAILEDConstant`
  - `PublicQueryUserOrdersINITConstant`
  - `PublicQueryUserOrdersREFUNDEDConstant`
  - `PublicQueryUserOrdersREFUNDINGConstant`
  - `PublicQueryUserOrdersREFUNDFAILEDConstant`

#### `platform-sdk/pkg/platformclient/order/query_orders_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/order/query_orders_parameters.go#L22)
- **Replacement:** `QueryOrdersStatus<EnumValue>Constant`
- **Deprecated constants (11):**
  - `QueryOrdersCHARGEBACKConstant`
  - `QueryOrdersCHARGEBACKREVERSEDConstant`
  - `QueryOrdersCHARGEDConstant`
  - `QueryOrdersCLOSEDConstant`
  - `QueryOrdersDELETEDConstant`
  - `QueryOrdersFULFILLEDConstant`
  - `QueryOrdersFULFILLFAILEDConstant`
  - `QueryOrdersINITConstant`
  - `QueryOrdersREFUNDEDConstant`
  - `QueryOrdersREFUNDINGConstant`
  - `QueryOrdersREFUNDFAILEDConstant`

#### `platform-sdk/pkg/platformclient/order/query_user_orders_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/order/query_user_orders_parameters.go#L22)
- **Replacement:** `QueryUserOrdersStatus<EnumValue>Constant`
- **Deprecated constants (11):**
  - `QueryUserOrdersCHARGEBACKConstant`
  - `QueryUserOrdersCHARGEBACKREVERSEDConstant`
  - `QueryUserOrdersCHARGEDConstant`
  - `QueryUserOrdersCLOSEDConstant`
  - `QueryUserOrdersDELETEDConstant`
  - `QueryUserOrdersFULFILLEDConstant`
  - `QueryUserOrdersFULFILLFAILEDConstant`
  - `QueryUserOrdersINITConstant`
  - `QueryUserOrdersREFUNDEDConstant`
  - `QueryUserOrdersREFUNDINGConstant`
  - `QueryUserOrdersREFUNDFAILEDConstant`

#### `platform-sdk/pkg/platformclient/payment/query_payment_notifications_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/payment/query_payment_notifications_parameters.go#L22)
- **Replacement:** `QueryPaymentNotificationsNotificationSource<EnumValue>Constant`
- **Deprecated constants (9):**
  - `QueryPaymentNotificationsADYENConstant`
  - `QueryPaymentNotificationsALIPAYConstant`
  - `QueryPaymentNotificationsCHECKOUTConstant`
  - `QueryPaymentNotificationsNEONPAYConstant`
  - `QueryPaymentNotificationsPAYPALConstant`
  - `QueryPaymentNotificationsSTRIPEConstant`
  - `QueryPaymentNotificationsWALLETConstant`
  - `QueryPaymentNotificationsWXPAYConstant`
  - `QueryPaymentNotificationsXSOLLAConstant`

- **Location:** [Line 36](platform-sdk/pkg/platformclient/payment/query_payment_notifications_parameters.go#L36)
- **Replacement:** `QueryPaymentNotificationsStatus<EnumValue>Constant`
- **Deprecated constants (4):**
  - `QueryPaymentNotificationsERRORConstant`
  - `QueryPaymentNotificationsIGNOREDConstant`
  - `QueryPaymentNotificationsPROCESSEDConstant`
  - `QueryPaymentNotificationsWARNConstant`

#### `platform-sdk/pkg/platformclient/payment/query_payment_orders_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/payment/query_payment_orders_parameters.go#L22)
- **Replacement:** `QueryPaymentOrdersChannel<EnumValue>Constant`
- **Deprecated constants (2):**
  - `QueryPaymentOrdersEXTERNALConstant`
  - `QueryPaymentOrdersINTERNALConstant`

- **Location:** [Line 29](platform-sdk/pkg/platformclient/payment/query_payment_orders_parameters.go#L29)
- **Replacement:** `QueryPaymentOrdersStatus<EnumValue>Constant`
- **Deprecated constants (13):**
  - `QueryPaymentOrdersAUTHORISEDConstant`
  - `QueryPaymentOrdersAUTHORISEFAILEDConstant`
  - `QueryPaymentOrdersCHARGEBACKConstant`
  - `QueryPaymentOrdersCHARGEBACKREVERSEDConstant`
  - `QueryPaymentOrdersCHARGEDConstant`
  - `QueryPaymentOrdersCHARGEFAILEDConstant`
  - `QueryPaymentOrdersDELETEDConstant`
  - `QueryPaymentOrdersINITConstant`
  - `QueryPaymentOrdersNOTIFICATIONOFCHARGEBACKConstant`
  - `QueryPaymentOrdersREFUNDEDConstant`
  - `QueryPaymentOrdersREFUNDINGConstant`
  - `QueryPaymentOrdersREFUNDFAILEDConstant`
  - `QueryPaymentOrdersREQUESTFORINFORMATIONConstant`

### Phase 23 — `platform-sdk`: packages `payment_account`, `payment_station`

> **6 file(s)** · **6 deprecated `const` block(s)** · **47 deprecated constant name(s)**

#### `platform-sdk/pkg/platformclient/payment_account/public_delete_payment_account_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/payment_account/public_delete_payment_account_parameters.go#L21)
- **Replacement:** `PublicDeletePaymentAccountType<EnumValue>Constant`
- **Deprecated constants (2):**
  - `PublicDeletePaymentAccountCardConstant`
  - `PublicDeletePaymentAccountPaypalConstant`

#### `platform-sdk/pkg/platformclient/payment_station/get_payment_customization_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/payment_station/get_payment_customization_parameters.go#L22)
- **Replacement:** `GetPaymentCustomizationPaymentProvider<EnumValue>Constant`
- **Deprecated constants (9):**
  - `GetPaymentCustomizationADYENConstant`
  - `GetPaymentCustomizationALIPAYConstant`
  - `GetPaymentCustomizationCHECKOUTConstant`
  - `GetPaymentCustomizationNEONPAYConstant`
  - `GetPaymentCustomizationPAYPALConstant`
  - `GetPaymentCustomizationSTRIPEConstant`
  - `GetPaymentCustomizationWALLETConstant`
  - `GetPaymentCustomizationWXPAYConstant`
  - `GetPaymentCustomizationXSOLLAConstant`

#### `platform-sdk/pkg/platformclient/payment_station/get_payment_public_config_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/payment_station/get_payment_public_config_parameters.go#L22)
- **Replacement:** `GetPaymentPublicConfigPaymentProvider<EnumValue>Constant`
- **Deprecated constants (9):**
  - `GetPaymentPublicConfigADYENConstant`
  - `GetPaymentPublicConfigALIPAYConstant`
  - `GetPaymentPublicConfigCHECKOUTConstant`
  - `GetPaymentPublicConfigNEONPAYConstant`
  - `GetPaymentPublicConfigPAYPALConstant`
  - `GetPaymentPublicConfigSTRIPEConstant`
  - `GetPaymentPublicConfigWALLETConstant`
  - `GetPaymentPublicConfigWXPAYConstant`
  - `GetPaymentPublicConfigXSOLLAConstant`

#### `platform-sdk/pkg/platformclient/payment_station/get_payment_tax_value_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/payment_station/get_payment_tax_value_parameters.go#L21)
- **Replacement:** `GetPaymentTaxValuePaymentProvider<EnumValue>Constant`
- **Deprecated constants (9):**
  - `GetPaymentTaxValueADYENConstant`
  - `GetPaymentTaxValueALIPAYConstant`
  - `GetPaymentTaxValueCHECKOUTConstant`
  - `GetPaymentTaxValueNEONPAYConstant`
  - `GetPaymentTaxValuePAYPALConstant`
  - `GetPaymentTaxValueSTRIPEConstant`
  - `GetPaymentTaxValueWALLETConstant`
  - `GetPaymentTaxValueWXPAYConstant`
  - `GetPaymentTaxValueXSOLLAConstant`

#### `platform-sdk/pkg/platformclient/payment_station/pay_parameters.go`

- **Location:** [Line 23](platform-sdk/pkg/platformclient/payment_station/pay_parameters.go#L23)
- **Replacement:** `PayPaymentProvider<EnumValue>Constant`
- **Deprecated constants (9):**
  - `PayADYENConstant`
  - `PayALIPAYConstant`
  - `PayCHECKOUTConstant`
  - `PayNEONPAYConstant`
  - `PayPAYPALConstant`
  - `PaySTRIPEConstant`
  - `PayWALLETConstant`
  - `PayWXPAYConstant`
  - `PayXSOLLAConstant`

#### `platform-sdk/pkg/platformclient/payment_station/public_normalize_payment_return_url_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/payment_station/public_normalize_payment_return_url_parameters.go#L21)
- **Replacement:** `PublicNormalizePaymentReturnURLPaymentProvider<EnumValue>Constant`
- **Deprecated constants (9):**
  - `PublicNormalizePaymentReturnURLADYENConstant`
  - `PublicNormalizePaymentReturnURLALIPAYConstant`
  - `PublicNormalizePaymentReturnURLCHECKOUTConstant`
  - `PublicNormalizePaymentReturnURLNEONPAYConstant`
  - `PublicNormalizePaymentReturnURLPAYPALConstant`
  - `PublicNormalizePaymentReturnURLSTRIPEConstant`
  - `PublicNormalizePaymentReturnURLWALLETConstant`
  - `PublicNormalizePaymentReturnURLWXPAYConstant`
  - `PublicNormalizePaymentReturnURLXSOLLAConstant`

### Phase 24 — `platform-sdk`: packages `revocation`, `reward`, `store`, `subscription`

> **7 file(s)** · **14 deprecated `const` block(s)** · **56 deprecated constant name(s)**

#### `platform-sdk/pkg/platformclient/revocation/query_revocation_histories_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/revocation/query_revocation_histories_parameters.go#L22)
- **Replacement:** `QueryRevocationHistoriesSource<EnumValue>Constant`
- **Deprecated constants (4):**
  - `QueryRevocationHistoriesDLCConstant`
  - `QueryRevocationHistoriesIAPConstant`
  - `QueryRevocationHistoriesORDERConstant`
  - `QueryRevocationHistoriesOTHERConstant`

- **Location:** [Line 31](platform-sdk/pkg/platformclient/revocation/query_revocation_histories_parameters.go#L31)
- **Replacement:** `QueryRevocationHistoriesStatus<EnumValue>Constant`
- **Deprecated constants (2):**
  - `QueryRevocationHistoriesFAILConstant`
  - `QueryRevocationHistoriesSUCCESSConstant`

#### `platform-sdk/pkg/platformclient/reward/query_rewards_1_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/reward/query_rewards_1_parameters.go#L22)
- **Replacement:** `QueryRewards1SortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `QueryRewards1NamespaceConstant`
  - `QueryRewards1NamespaceAscConstant`
  - `QueryRewards1NamespaceDescConstant`
  - `QueryRewards1RewardCodeConstant`
  - `QueryRewards1RewardCodeAscConstant`
  - `QueryRewards1RewardCodeDescConstant`

#### `platform-sdk/pkg/platformclient/reward/query_rewards_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/reward/query_rewards_parameters.go#L22)
- **Replacement:** `QueryRewardsSortBy<EnumValue>Constant`
- **Deprecated constants (6):**
  - `QueryRewardsNamespaceConstant`
  - `QueryRewardsNamespaceAscConstant`
  - `QueryRewardsNamespaceDescConstant`
  - `QueryRewardsRewardCodeConstant`
  - `QueryRewardsRewardCodeAscConstant`
  - `QueryRewardsRewardCodeDescConstant`

#### `platform-sdk/pkg/platformclient/store/get_catalog_definition_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/store/get_catalog_definition_parameters.go#L21)
- **Replacement:** `GetCatalogDefinitionCatalogType<EnumValue>Constant`
- **Deprecated constants (5):**
  - `GetCatalogDefinitionAPPConstant`
  - `GetCatalogDefinitionCATEGORYConstant`
  - `GetCatalogDefinitionITEMConstant`
  - `GetCatalogDefinitionSECTIONConstant`
  - `GetCatalogDefinitionVIEWConstant`

#### `platform-sdk/pkg/platformclient/subscription/public_query_user_subscriptions_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/subscription/public_query_user_subscriptions_parameters.go#L22)
- **Replacement:** `PublicQueryUserSubscriptionsChargeStatus<EnumValue>Constant`
- **Deprecated constants (5):**
  - `PublicQueryUserSubscriptionsCHARGEDConstant`
  - `PublicQueryUserSubscriptionsCHARGEFAILEDConstant`
  - `PublicQueryUserSubscriptionsNEVERConstant`
  - `PublicQueryUserSubscriptionsRECURRINGCHARGINGConstant`
  - `PublicQueryUserSubscriptionsSETUPConstant`

- **Location:** [Line 32](platform-sdk/pkg/platformclient/subscription/public_query_user_subscriptions_parameters.go#L32)
- **Replacement:** `PublicQueryUserSubscriptionsStatus<EnumValue>Constant`
- **Deprecated constants (4):**
  - `PublicQueryUserSubscriptionsACTIVEConstant`
  - `PublicQueryUserSubscriptionsCANCELLEDConstant`
  - `PublicQueryUserSubscriptionsEXPIREDConstant`
  - `PublicQueryUserSubscriptionsINITConstant`

- **Location:** [Line 41](platform-sdk/pkg/platformclient/subscription/public_query_user_subscriptions_parameters.go#L41)
- **Replacement:** `PublicQueryUserSubscriptionsSubscribedBy<EnumValue>Constant`
- **Deprecated constants (2):**
  - `PublicQueryUserSubscriptionsPLATFORMConstant`
  - `PublicQueryUserSubscriptionsUSERConstant`

#### `platform-sdk/pkg/platformclient/subscription/query_subscriptions_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/subscription/query_subscriptions_parameters.go#L22)
- **Replacement:** `QuerySubscriptionsChargeStatus<EnumValue>Constant`
- **Deprecated constants (5):**
  - `QuerySubscriptionsCHARGEDConstant`
  - `QuerySubscriptionsCHARGEFAILEDConstant`
  - `QuerySubscriptionsNEVERConstant`
  - `QuerySubscriptionsRECURRINGCHARGINGConstant`
  - `QuerySubscriptionsSETUPConstant`

- **Location:** [Line 32](platform-sdk/pkg/platformclient/subscription/query_subscriptions_parameters.go#L32)
- **Replacement:** `QuerySubscriptionsStatus<EnumValue>Constant`
- **Deprecated constants (4):**
  - `QuerySubscriptionsACTIVEConstant`
  - `QuerySubscriptionsCANCELLEDConstant`
  - `QuerySubscriptionsEXPIREDConstant`
  - `QuerySubscriptionsINITConstant`

- **Location:** [Line 41](platform-sdk/pkg/platformclient/subscription/query_subscriptions_parameters.go#L41)
- **Replacement:** `QuerySubscriptionsSubscribedBy<EnumValue>Constant`
- **Deprecated constants (2):**
  - `QuerySubscriptionsPLATFORMConstant`
  - `QuerySubscriptionsUSERConstant`

#### `platform-sdk/pkg/platformclient/subscription/query_user_subscriptions_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/subscription/query_user_subscriptions_parameters.go#L22)
- **Replacement:** `QueryUserSubscriptionsChargeStatus<EnumValue>Constant`
- **Deprecated constants (5):**
  - `QueryUserSubscriptionsCHARGEDConstant`
  - `QueryUserSubscriptionsCHARGEFAILEDConstant`
  - `QueryUserSubscriptionsNEVERConstant`
  - `QueryUserSubscriptionsRECURRINGCHARGINGConstant`
  - `QueryUserSubscriptionsSETUPConstant`

- **Location:** [Line 32](platform-sdk/pkg/platformclient/subscription/query_user_subscriptions_parameters.go#L32)
- **Replacement:** `QueryUserSubscriptionsStatus<EnumValue>Constant`
- **Deprecated constants (4):**
  - `QueryUserSubscriptionsACTIVEConstant`
  - `QueryUserSubscriptionsCANCELLEDConstant`
  - `QueryUserSubscriptionsEXPIREDConstant`
  - `QueryUserSubscriptionsINITConstant`

- **Location:** [Line 41](platform-sdk/pkg/platformclient/subscription/query_user_subscriptions_parameters.go#L41)
- **Replacement:** `QueryUserSubscriptionsSubscribedBy<EnumValue>Constant`
- **Deprecated constants (2):**
  - `QueryUserSubscriptionsPLATFORMConstant`
  - `QueryUserSubscriptionsUSERConstant`

### Phase 25 — `platform-sdk`: packages `trade_action`, `wallet`

> **6 file(s)** · **6 deprecated `const` block(s)** · **52 deprecated constant name(s)**

#### `platform-sdk/pkg/platformclient/trade_action/get_trade_history_by_criteria_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/trade_action/get_trade_history_by_criteria_parameters.go#L22)
- **Replacement:** `GetTradeHistoryByCriteriaStatus<EnumValue>Constant`
- **Deprecated constants (3):**
  - `GetTradeHistoryByCriteriaFAILEDConstant`
  - `GetTradeHistoryByCriteriaINITConstant`
  - `GetTradeHistoryByCriteriaSUCCESSConstant`

#### `platform-sdk/pkg/platformclient/wallet/check_wallet_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/wallet/check_wallet_parameters.go#L21)
- **Replacement:** `CheckWalletOrigin<EnumValue>Constant`
- **Deprecated constants (11):**
  - `CheckWalletEpicConstant`
  - `CheckWalletGooglePlayConstant`
  - `CheckWalletIOSConstant`
  - `CheckWalletNintendoConstant`
  - `CheckWalletOculusConstant`
  - `CheckWalletOtherConstant`
  - `CheckWalletPlaystationConstant`
  - `CheckWalletSteamConstant`
  - `CheckWalletSystemConstant`
  - `CheckWalletTwitchConstant`
  - `CheckWalletXboxConstant`

#### `platform-sdk/pkg/platformclient/wallet/get_platform_wallet_config_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/wallet/get_platform_wallet_config_parameters.go#L21)
- **Replacement:** `GetPlatformWalletConfigPlatform<EnumValue>Constant`
- **Deprecated constants (9):**
  - `GetPlatformWalletConfigEpicConstant`
  - `GetPlatformWalletConfigGooglePlayConstant`
  - `GetPlatformWalletConfigIOSConstant`
  - `GetPlatformWalletConfigNintendoConstant`
  - `GetPlatformWalletConfigOculusConstant`
  - `GetPlatformWalletConfigOtherConstant`
  - `GetPlatformWalletConfigPlaystationConstant`
  - `GetPlatformWalletConfigSteamConstant`
  - `GetPlatformWalletConfigXboxConstant`

#### `platform-sdk/pkg/platformclient/wallet/query_wallets_parameters.go`

- **Location:** [Line 22](platform-sdk/pkg/platformclient/wallet/query_wallets_parameters.go#L22)
- **Replacement:** `QueryWalletsOrigin<EnumValue>Constant`
- **Deprecated constants (11):**
  - `QueryWalletsEpicConstant`
  - `QueryWalletsGooglePlayConstant`
  - `QueryWalletsIOSConstant`
  - `QueryWalletsNintendoConstant`
  - `QueryWalletsOculusConstant`
  - `QueryWalletsOtherConstant`
  - `QueryWalletsPlaystationConstant`
  - `QueryWalletsSteamConstant`
  - `QueryWalletsSystemConstant`
  - `QueryWalletsTwitchConstant`
  - `QueryWalletsXboxConstant`

#### `platform-sdk/pkg/platformclient/wallet/reset_platform_wallet_config_parameters.go`

- **Location:** [Line 21](platform-sdk/pkg/platformclient/wallet/reset_platform_wallet_config_parameters.go#L21)
- **Replacement:** `ResetPlatformWalletConfigPlatform<EnumValue>Constant`
- **Deprecated constants (9):**
  - `ResetPlatformWalletConfigEpicConstant`
  - `ResetPlatformWalletConfigGooglePlayConstant`
  - `ResetPlatformWalletConfigIOSConstant`
  - `ResetPlatformWalletConfigNintendoConstant`
  - `ResetPlatformWalletConfigOculusConstant`
  - `ResetPlatformWalletConfigOtherConstant`
  - `ResetPlatformWalletConfigPlaystationConstant`
  - `ResetPlatformWalletConfigSteamConstant`
  - `ResetPlatformWalletConfigXboxConstant`

#### `platform-sdk/pkg/platformclient/wallet/update_platform_wallet_config_parameters.go`

- **Location:** [Line 23](platform-sdk/pkg/platformclient/wallet/update_platform_wallet_config_parameters.go#L23)
- **Replacement:** `UpdatePlatformWalletConfigPlatform<EnumValue>Constant`
- **Deprecated constants (9):**
  - `UpdatePlatformWalletConfigEpicConstant`
  - `UpdatePlatformWalletConfigGooglePlayConstant`
  - `UpdatePlatformWalletConfigIOSConstant`
  - `UpdatePlatformWalletConfigNintendoConstant`
  - `UpdatePlatformWalletConfigOculusConstant`
  - `UpdatePlatformWalletConfigOtherConstant`
  - `UpdatePlatformWalletConfigPlaystationConstant`
  - `UpdatePlatformWalletConfigSteamConstant`
  - `UpdatePlatformWalletConfigXboxConstant`

---
*End of report*
