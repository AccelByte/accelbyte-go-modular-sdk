// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package globalAchievements

import (
	"encoding/json"
	"log/slog"

	achievement "github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclient/global_achievements"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminListUserContributionsCmd represents the AdminListUserContributions command
var AdminListUserContributionsCmd = &cobra.Command{
	Use:   "adminListUserContributions",
	Short: "Admin list user contributions",
	Long:  `Admin list user contributions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalAchievementsService := &achievement.GlobalAchievementsService{
			Client:          achievement.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		achievementCodes, _ := cmd.Flags().GetString("achievementCodes")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &global_achievements.AdminListUserContributionsParams{
			Namespace:        namespace,
			UserID:           userId,
			AchievementCodes: &achievementCodes,
			Limit:            &limit,
			Offset:           &offset,
			SortBy:           &sortBy,
			Tags:             tags,
		}
		ok, errOK := globalAchievementsService.AdminListUserContributionsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminListUserContributionsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListUserContributionsCmd.MarkFlagRequired("namespace")
	AdminListUserContributionsCmd.Flags().String("userId", "", "User id")
	_ = AdminListUserContributionsCmd.MarkFlagRequired("userId")
	AdminListUserContributionsCmd.Flags().String("achievementCodes", "", "Achievement codes")
	AdminListUserContributionsCmd.Flags().Int64("limit", 20, "Limit")
	AdminListUserContributionsCmd.Flags().Int64("offset", 0, "Offset")
	AdminListUserContributionsCmd.Flags().String("sortBy", "", "Sort by")
	AdminListUserContributionsCmd.Flags().String("tags", "", "Tags")
}
