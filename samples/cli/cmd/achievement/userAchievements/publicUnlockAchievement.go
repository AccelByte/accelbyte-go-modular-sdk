// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userAchievements

import (
	achievement "github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclient/user_achievements"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUnlockAchievementCmd represents the PublicUnlockAchievement command
var PublicUnlockAchievementCmd = &cobra.Command{
	Use:   "publicUnlockAchievement",
	Short: "Public unlock achievement",
	Long:  `Public unlock achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userAchievementsService := &achievement.UserAchievementsService{
			Client:          achievement.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_achievements.PublicUnlockAchievementParams{
			AchievementCode: achievementCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		errNoContent := userAchievementsService.PublicUnlockAchievementShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicUnlockAchievementCmd.Flags().String("achievementCode", "", "Achievement code")
	_ = PublicUnlockAchievementCmd.MarkFlagRequired("achievementCode")
	PublicUnlockAchievementCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUnlockAchievementCmd.MarkFlagRequired("namespace")
	PublicUnlockAchievementCmd.Flags().String("userId", "", "User id")
	_ = PublicUnlockAchievementCmd.MarkFlagRequired("userId")
}
