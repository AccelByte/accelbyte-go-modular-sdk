[//]: # (Code generated. DO NOT EDIT.)

# Challenge Service Index

&nbsp;

## Operations

### Challenge Configuration Wrapper:  [ChallengeConfiguration](../../challenge-sdk/pkg/wrapper_challengeConfiguration.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/admin/namespaces/{namespace}/challenges` | GET | AdminGetChallengesShort | [AdminGetChallengesShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminGetChallengesShort](../../challenge-sdk/pkg/wrapper_challengeConfiguration.go) | [AdminGetChallengesShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminGetChallenges.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges` | POST | AdminCreateChallengeShort | [AdminCreateChallengeShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminCreateChallengeShort](../../challenge-sdk/pkg/wrapper_challengeConfiguration.go) | [AdminCreateChallengeShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminCreateChallenge.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/users/{userId}` | GET | AdminGetActiveChallengesShort | [AdminGetActiveChallengesShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminGetActiveChallengesShort](../../challenge-sdk/pkg/wrapper_challengeConfiguration.go) | [AdminGetActiveChallengesShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminGetActiveChallenges.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}` | GET | AdminGetChallengeShort | [AdminGetChallengeShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminGetChallengeShort](../../challenge-sdk/pkg/wrapper_challengeConfiguration.go) | [AdminGetChallengeShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminGetChallenge.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}` | PUT | AdminUpdateChallengeShort | [AdminUpdateChallengeShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminUpdateChallengeShort](../../challenge-sdk/pkg/wrapper_challengeConfiguration.go) | [AdminUpdateChallengeShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminUpdateChallenge.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}` | DELETE | AdminDeleteChallengeShort | [AdminDeleteChallengeShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminDeleteChallengeShort](../../challenge-sdk/pkg/wrapper_challengeConfiguration.go) | [AdminDeleteChallengeShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminDeleteChallenge.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods` | GET | AdminGetPeriodsShort | [AdminGetPeriodsShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminGetPeriodsShort](../../challenge-sdk/pkg/wrapper_challengeConfiguration.go) | [AdminGetPeriodsShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminGetPeriods.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize` | POST | AdminRandomizeChallengeShort | [AdminRandomizeChallengeShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminRandomizeChallengeShort](../../challenge-sdk/pkg/wrapper_challengeConfiguration.go) | [AdminRandomizeChallengeShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminRandomizeChallenge.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied` | DELETE | AdminDeleteTiedChallengeShort | [AdminDeleteTiedChallengeShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminDeleteTiedChallengeShort](../../challenge-sdk/pkg/wrapper_challengeConfiguration.go) | [AdminDeleteTiedChallengeShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminDeleteTiedChallenge.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule` | PUT | AdminUpdateTiedChallengeScheduleShort | [AdminUpdateTiedChallengeScheduleShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminUpdateTiedChallengeScheduleShort](../../challenge-sdk/pkg/wrapper_challengeConfiguration.go) | [AdminUpdateTiedChallengeScheduleShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminUpdateTiedChallengeSchedule.go) |

### Utilities Wrapper:  [Utilities](../../challenge-sdk/pkg/wrapper_utilities.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/admin/namespaces/{namespace}/challenges/item/references` | GET | AdminGetItemReferencesShort | [AdminGetItemReferencesShort](../../challenge-sdk/pkg/challengeclient/utilities/utilities_client.go) | [AdminGetItemReferencesShort](../../challenge-sdk/pkg/wrapper_utilities.go) | [AdminGetItemReferencesShort](../../samples/cli/cmd/challenge/utilities/adminGetItemReferences.go) |

### Goal Configuration Wrapper:  [GoalConfiguration](../../challenge-sdk/pkg/wrapper_goalConfiguration.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals` | GET | AdminGetGoalsShort | [AdminGetGoalsShort](../../challenge-sdk/pkg/challengeclient/goal_configuration/goal_configuration_client.go) | [AdminGetGoalsShort](../../challenge-sdk/pkg/wrapper_goalConfiguration.go) | [AdminGetGoalsShort](../../samples/cli/cmd/challenge/goalConfiguration/adminGetGoals.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals` | POST | AdminCreateGoalShort | [AdminCreateGoalShort](../../challenge-sdk/pkg/challengeclient/goal_configuration/goal_configuration_client.go) | [AdminCreateGoalShort](../../challenge-sdk/pkg/wrapper_goalConfiguration.go) | [AdminCreateGoalShort](../../samples/cli/cmd/challenge/goalConfiguration/adminCreateGoal.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}` | GET | AdminGetGoalShort | [AdminGetGoalShort](../../challenge-sdk/pkg/challengeclient/goal_configuration/goal_configuration_client.go) | [AdminGetGoalShort](../../challenge-sdk/pkg/wrapper_goalConfiguration.go) | [AdminGetGoalShort](../../samples/cli/cmd/challenge/goalConfiguration/adminGetGoal.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}` | PUT | AdminUpdateGoalsShort | [AdminUpdateGoalsShort](../../challenge-sdk/pkg/challengeclient/goal_configuration/goal_configuration_client.go) | [AdminUpdateGoalsShort](../../challenge-sdk/pkg/wrapper_goalConfiguration.go) | [AdminUpdateGoalsShort](../../samples/cli/cmd/challenge/goalConfiguration/adminUpdateGoals.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}` | DELETE | AdminDeleteGoalShort | [AdminDeleteGoalShort](../../challenge-sdk/pkg/challengeclient/goal_configuration/goal_configuration_client.go) | [AdminDeleteGoalShort](../../challenge-sdk/pkg/wrapper_goalConfiguration.go) | [AdminDeleteGoalShort](../../samples/cli/cmd/challenge/goalConfiguration/adminDeleteGoal.go) |

### Schedules Wrapper:  [Schedules](../../challenge-sdk/pkg/wrapper_schedules.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules` | GET | AdminListSchedulesByGoalShort | [AdminListSchedulesByGoalShort](../../challenge-sdk/pkg/challengeclient/schedules/schedules_client.go) | [AdminListSchedulesByGoalShort](../../challenge-sdk/pkg/wrapper_schedules.go) | [AdminListSchedulesByGoalShort](../../samples/cli/cmd/challenge/schedules/adminListSchedulesByGoal.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/schedules` | GET | AdminListSchedulesShort | [AdminListSchedulesShort](../../challenge-sdk/pkg/challengeclient/schedules/schedules_client.go) | [AdminListSchedulesShort](../../challenge-sdk/pkg/wrapper_schedules.go) | [AdminListSchedulesShort](../../samples/cli/cmd/challenge/schedules/adminListSchedules.go) |
| `/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules` | GET | PublicListSchedulesByGoalShort | [PublicListSchedulesByGoalShort](../../challenge-sdk/pkg/challengeclient/schedules/schedules_client.go) | [PublicListSchedulesByGoalShort](../../challenge-sdk/pkg/wrapper_schedules.go) | [PublicListSchedulesByGoalShort](../../samples/cli/cmd/challenge/schedules/publicListSchedulesByGoal.go) |
| `/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/schedules` | GET | PublicListSchedulesShort | [PublicListSchedulesShort](../../challenge-sdk/pkg/challengeclient/schedules/schedules_client.go) | [PublicListSchedulesShort](../../challenge-sdk/pkg/wrapper_schedules.go) | [PublicListSchedulesShort](../../samples/cli/cmd/challenge/schedules/publicListSchedules.go) |

### Plugins Wrapper:  [Plugins](../../challenge-sdk/pkg/wrapper_plugins.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/admin/namespaces/{namespace}/plugins/assignment` | GET | AdminGetAssignmentPluginShort | [AdminGetAssignmentPluginShort](../../challenge-sdk/pkg/challengeclient/plugins/plugins_client.go) | [AdminGetAssignmentPluginShort](../../challenge-sdk/pkg/wrapper_plugins.go) | [AdminGetAssignmentPluginShort](../../samples/cli/cmd/challenge/plugins/adminGetAssignmentPlugin.go) |
| `/challenge/v1/admin/namespaces/{namespace}/plugins/assignment` | PUT | AdminUpdateAssignmentPluginShort | [AdminUpdateAssignmentPluginShort](../../challenge-sdk/pkg/challengeclient/plugins/plugins_client.go) | [AdminUpdateAssignmentPluginShort](../../challenge-sdk/pkg/wrapper_plugins.go) | [AdminUpdateAssignmentPluginShort](../../samples/cli/cmd/challenge/plugins/adminUpdateAssignmentPlugin.go) |
| `/challenge/v1/admin/namespaces/{namespace}/plugins/assignment` | POST | AdminCreateAssignmentPluginShort | [AdminCreateAssignmentPluginShort](../../challenge-sdk/pkg/challengeclient/plugins/plugins_client.go) | [AdminCreateAssignmentPluginShort](../../challenge-sdk/pkg/wrapper_plugins.go) | [AdminCreateAssignmentPluginShort](../../samples/cli/cmd/challenge/plugins/adminCreateAssignmentPlugin.go) |
| `/challenge/v1/admin/namespaces/{namespace}/plugins/assignment` | DELETE | AdminDeleteAssignmentPluginShort | [AdminDeleteAssignmentPluginShort](../../challenge-sdk/pkg/challengeclient/plugins/plugins_client.go) | [AdminDeleteAssignmentPluginShort](../../challenge-sdk/pkg/wrapper_plugins.go) | [AdminDeleteAssignmentPluginShort](../../samples/cli/cmd/challenge/plugins/adminDeleteAssignmentPlugin.go) |

### Challenge Progression Wrapper:  [ChallengeProgression](../../challenge-sdk/pkg/wrapper_challengeProgression.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/admin/namespaces/{namespace}/progress/evaluate` | POST | AdminEvaluateProgressShort | [AdminEvaluateProgressShort](../../challenge-sdk/pkg/challengeclient/challenge_progression/challenge_progression_client.go) | [AdminEvaluateProgressShort](../../challenge-sdk/pkg/wrapper_challengeProgression.go) | [AdminEvaluateProgressShort](../../samples/cli/cmd/challenge/challengeProgression/adminEvaluateProgress.go) |
| `/challenge/v1/admin/namespaces/{namespace}/users/{userId}/progress/{challengeCode}` | GET | AdminGetUserProgressionShort | [AdminGetUserProgressionShort](../../challenge-sdk/pkg/challengeclient/challenge_progression/challenge_progression_client.go) | [AdminGetUserProgressionShort](../../challenge-sdk/pkg/wrapper_challengeProgression.go) | [AdminGetUserProgressionShort](../../samples/cli/cmd/challenge/challengeProgression/adminGetUserProgression.go) |
| `/challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate` | POST | EvaluateMyProgressShort | [EvaluateMyProgressShort](../../challenge-sdk/pkg/challengeclient/challenge_progression/challenge_progression_client.go) | [EvaluateMyProgressShort](../../challenge-sdk/pkg/wrapper_challengeProgression.go) | [EvaluateMyProgressShort](../../samples/cli/cmd/challenge/challengeProgression/evaluateMyProgress.go) |
| `/challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}` | GET | PublicGetUserProgressionShort | [PublicGetUserProgressionShort](../../challenge-sdk/pkg/challengeclient/challenge_progression/challenge_progression_client.go) | [PublicGetUserProgressionShort](../../challenge-sdk/pkg/wrapper_challengeProgression.go) | [PublicGetUserProgressionShort](../../samples/cli/cmd/challenge/challengeProgression/publicGetUserProgression.go) |
| `/challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index}` | GET | PublicGetPastUserProgressionShort | [PublicGetPastUserProgressionShort](../../challenge-sdk/pkg/challengeclient/challenge_progression/challenge_progression_client.go) | [PublicGetPastUserProgressionShort](../../challenge-sdk/pkg/wrapper_challengeProgression.go) | [PublicGetPastUserProgressionShort](../../samples/cli/cmd/challenge/challengeProgression/publicGetPastUserProgression.go) |

### Player Reward Wrapper:  [PlayerReward](../../challenge-sdk/pkg/wrapper_playerReward.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/admin/namespaces/{namespace}/users/rewards/claim` | POST | AdminClaimUsersRewardsShort | [AdminClaimUsersRewardsShort](../../challenge-sdk/pkg/challengeclient/player_reward/player_reward_client.go) | [AdminClaimUsersRewardsShort](../../challenge-sdk/pkg/wrapper_playerReward.go) | [AdminClaimUsersRewardsShort](../../samples/cli/cmd/challenge/playerReward/adminClaimUsersRewards.go) |
| `/challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim` | POST | AdminClaimUserRewardsByGoalCodeShort | [AdminClaimUserRewardsByGoalCodeShort](../../challenge-sdk/pkg/challengeclient/player_reward/player_reward_client.go) | [AdminClaimUserRewardsByGoalCodeShort](../../challenge-sdk/pkg/wrapper_playerReward.go) | [AdminClaimUserRewardsByGoalCodeShort](../../samples/cli/cmd/challenge/playerReward/adminClaimUserRewardsByGoalCode.go) |
| `/challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards` | GET | AdminGetUserRewardsShort | [AdminGetUserRewardsShort](../../challenge-sdk/pkg/challengeclient/player_reward/player_reward_client.go) | [AdminGetUserRewardsShort](../../challenge-sdk/pkg/wrapper_playerReward.go) | [AdminGetUserRewardsShort](../../samples/cli/cmd/challenge/playerReward/adminGetUserRewards.go) |
| `/challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim` | POST | AdminClaimUserRewardsShort | [AdminClaimUserRewardsShort](../../challenge-sdk/pkg/challengeclient/player_reward/player_reward_client.go) | [AdminClaimUserRewardsShort](../../challenge-sdk/pkg/wrapper_playerReward.go) | [AdminClaimUserRewardsShort](../../samples/cli/cmd/challenge/playerReward/adminClaimUserRewards.go) |
| `/challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim` | POST | PublicClaimUserRewardsByGoalCodeShort | [PublicClaimUserRewardsByGoalCodeShort](../../challenge-sdk/pkg/challengeclient/player_reward/player_reward_client.go) | [PublicClaimUserRewardsByGoalCodeShort](../../challenge-sdk/pkg/wrapper_playerReward.go) | [PublicClaimUserRewardsByGoalCodeShort](../../samples/cli/cmd/challenge/playerReward/publicClaimUserRewardsByGoalCode.go) |
| `/challenge/v1/public/namespaces/{namespace}/users/me/rewards` | GET | PublicGetUserRewardsShort | [PublicGetUserRewardsShort](../../challenge-sdk/pkg/challengeclient/player_reward/player_reward_client.go) | [PublicGetUserRewardsShort](../../challenge-sdk/pkg/wrapper_playerReward.go) | [PublicGetUserRewardsShort](../../samples/cli/cmd/challenge/playerReward/publicGetUserRewards.go) |
| `/challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim` | POST | PublicClaimUserRewardsShort | [PublicClaimUserRewardsShort](../../challenge-sdk/pkg/challengeclient/player_reward/player_reward_client.go) | [PublicClaimUserRewardsShort](../../challenge-sdk/pkg/wrapper_playerReward.go) | [PublicClaimUserRewardsShort](../../samples/cli/cmd/challenge/playerReward/publicClaimUserRewards.go) |

### Challenge List Wrapper:  [ChallengeList](../../challenge-sdk/pkg/wrapper_challengeList.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/public/namespaces/{namespace}/challenges` | GET | GetChallengesShort | [GetChallengesShort](../../challenge-sdk/pkg/challengeclient/challenge_list/challenge_list_client.go) | [GetChallengesShort](../../challenge-sdk/pkg/wrapper_challengeList.go) | [GetChallengesShort](../../samples/cli/cmd/challenge/challengeList/getChallenges.go) |
| `/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals` | GET | PublicGetScheduledGoalsShort | [PublicGetScheduledGoalsShort](../../challenge-sdk/pkg/challengeclient/challenge_list/challenge_list_client.go) | [PublicGetScheduledGoalsShort](../../challenge-sdk/pkg/wrapper_challengeList.go) | [PublicGetScheduledGoalsShort](../../samples/cli/cmd/challenge/challengeList/publicGetScheduledGoals.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `iam.ErrorResponse` | [IamErrorResponse ](../../challenge-sdk/pkg/challengeclientmodels/iam_error_response.go) |
| `iam.Permission` | [IamPermission ](../../challenge-sdk/pkg/challengeclientmodels/iam_permission.go) |
| `model.ChallengeReference` | [ModelChallengeReference ](../../challenge-sdk/pkg/challengeclientmodels/model_challenge_reference.go) |
| `model.ChallengeResponse` | [ModelChallengeResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_challenge_response.go) |
| `model.ClaimUserRewardsByGoalCodeRequest` | [ModelClaimUserRewardsByGoalCodeRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_claim_user_rewards_by_goal_code_request.go) |
| `model.ClaimUserRewardsReq` | [ModelClaimUserRewardsReq ](../../challenge-sdk/pkg/challengeclientmodels/model_claim_user_rewards_req.go) |
| `model.ClaimUsersRewardsRequest` | [ModelClaimUsersRewardsRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_claim_users_rewards_request.go) |
| `model.ClaimUsersRewardsResponse` | [ModelClaimUsersRewardsResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_claim_users_rewards_response.go) |
| `model.ClaimableUserReward` | [ModelClaimableUserReward ](../../challenge-sdk/pkg/challengeclientmodels/model_claimable_user_reward.go) |
| `model.CreateChallengeRequest` | [ModelCreateChallengeRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_create_challenge_request.go) |
| `model.CreateGoalRequest` | [ModelCreateGoalRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_create_goal_request.go) |
| `model.EvaluatePlayerProgressionRequest` | [ModelEvaluatePlayerProgressionRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_evaluate_player_progression_request.go) |
| `model.GetGoalsResponse` | [ModelGetGoalsResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_get_goals_response.go) |
| `model.GoalInSchedulesResponse` | [ModelGoalInSchedulesResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_goal_in_schedules_response.go) |
| `model.GoalMeta` | [ModelGoalMeta ](../../challenge-sdk/pkg/challengeclientmodels/model_goal_meta.go) |
| `model.GoalOrder` | [ModelGoalOrder ](../../challenge-sdk/pkg/challengeclientmodels/model_goal_order.go) |
| `model.GoalProgressionResponse` | [ModelGoalProgressionResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_goal_progression_response.go) |
| `model.GoalResponse` | [ModelGoalResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_goal_response.go) |
| `model.GoalSchedule` | [ModelGoalSchedule ](../../challenge-sdk/pkg/challengeclientmodels/model_goal_schedule.go) |
| `model.GoalScheduleRequest` | [ModelGoalScheduleRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_goal_schedule_request.go) |
| `model.ItemReference` | [ModelItemReference ](../../challenge-sdk/pkg/challengeclientmodels/model_item_reference.go) |
| `model.ItemReferenceResponse` | [ModelItemReferenceResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_item_reference_response.go) |
| `model.ListChallengeResponse` | [ModelListChallengeResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_list_challenge_response.go) |
| `model.ListPeriodsResponse` | [ModelListPeriodsResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_list_periods_response.go) |
| `model.ListScheduleByGoalResponse` | [ModelListScheduleByGoalResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_list_schedule_by_goal_response.go) |
| `model.ListSchedulesResponse` | [ModelListSchedulesResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_list_schedules_response.go) |
| `model.ListUserRewardsResponse` | [ModelListUserRewardsResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_list_user_rewards_response.go) |
| `model.Pagination` | [ModelPagination ](../../challenge-sdk/pkg/challengeclientmodels/model_pagination.go) |
| `model.PluginAsignmentAppConfig` | [ModelPluginAsignmentAppConfig ](../../challenge-sdk/pkg/challengeclientmodels/model_plugin_asignment_app_config.go) |
| `model.PluginAssignmentCustomConfig` | [ModelPluginAssignmentCustomConfig ](../../challenge-sdk/pkg/challengeclientmodels/model_plugin_assignment_custom_config.go) |
| `model.PluginAssignmentRequest` | [ModelPluginAssignmentRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_plugin_assignment_request.go) |
| `model.PluginAssignmentResponse` | [ModelPluginAssignmentResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_plugin_assignment_response.go) |
| `model.Predicate` | [ModelPredicate ](../../challenge-sdk/pkg/challengeclientmodels/model_predicate.go) |
| `model.Requirement` | [ModelRequirement ](../../challenge-sdk/pkg/challengeclientmodels/model_requirement.go) |
| `model.RequirementProgressionResponse` | [ModelRequirementProgressionResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_requirement_progression_response.go) |
| `model.ResetConfig` | [ModelResetConfig ](../../challenge-sdk/pkg/challengeclientmodels/model_reset_config.go) |
| `model.Reward` | [ModelReward ](../../challenge-sdk/pkg/challengeclientmodels/model_reward.go) |
| `model.Schedule` | [ModelSchedule ](../../challenge-sdk/pkg/challengeclientmodels/model_schedule.go) |
| `model.ScheduleByGoalResponse` | [ModelScheduleByGoalResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_schedule_by_goal_response.go) |
| `model.ScheduleResponse` | [ModelScheduleResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_schedule_response.go) |
| `model.UpdateChallengeRequest` | [ModelUpdateChallengeRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_update_challenge_request.go) |
| `model.UpdateChallengeScheduleRequest` | [ModelUpdateChallengeScheduleRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_update_challenge_schedule_request.go) |
| `model.UpdateGoalRequest` | [ModelUpdateGoalRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_update_goal_request.go) |
| `model.UserProgressionPeriodResponseMeta` | [ModelUserProgressionPeriodResponseMeta ](../../challenge-sdk/pkg/challengeclientmodels/model_user_progression_period_response_meta.go) |
| `model.UserProgressionResponse` | [ModelUserProgressionResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_user_progression_response.go) |
| `model.UserProgressionResponseMeta` | [ModelUserProgressionResponseMeta ](../../challenge-sdk/pkg/challengeclientmodels/model_user_progression_response_meta.go) |
| `model.UserReward` | [ModelUserReward ](../../challenge-sdk/pkg/challengeclientmodels/model_user_reward.go) |
| `models.Period` | [ModelsPeriod ](../../challenge-sdk/pkg/challengeclientmodels/models_period.go) |
| `response.Error` | [ResponseError ](../../challenge-sdk/pkg/challengeclientmodels/response_error.go) |
