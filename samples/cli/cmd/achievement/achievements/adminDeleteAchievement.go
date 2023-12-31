// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievements

import (
	achievement "github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteAchievementCmd represents the AdminDeleteAchievement command
var AdminDeleteAchievementCmd = &cobra.Command{
	Use:   "adminDeleteAchievement",
	Short: "Admin delete achievement",
	Long:  `Admin delete achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          achievement.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &achievements.AdminDeleteAchievementParams{
			AchievementCode: achievementCode,
			Namespace:       namespace,
		}
		errNoContent := achievementsService.AdminDeleteAchievementShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteAchievementCmd.Flags().String("achievementCode", "", "Achievement code")
	_ = AdminDeleteAchievementCmd.MarkFlagRequired("achievementCode")
	AdminDeleteAchievementCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteAchievementCmd.MarkFlagRequired("namespace")
}
