// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userAchievements

import (
	"encoding/json"
	"log/slog"

	achievement "github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclient/user_achievements"
	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclientmodels"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminBatchQueryUserAchievementsCmd represents the AdminBatchQueryUserAchievements command
var AdminBatchQueryUserAchievementsCmd = &cobra.Command{
	Use:   "adminBatchQueryUserAchievements",
	Short: "Admin batch query user achievements",
	Long:  `Admin batch query user achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userAchievementsService := &achievement.UserAchievementsService{
			Client: achievement.NewAchievementHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *achievementclientmodels.ModelsBatchQueryUserAchievementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_achievements.AdminBatchQueryUserAchievementsParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := userAchievementsService.AdminBatchQueryUserAchievementsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminBatchQueryUserAchievementsCmd.Flags().String("body", "", "Body")
	_ = AdminBatchQueryUserAchievementsCmd.MarkFlagRequired("body")
	AdminBatchQueryUserAchievementsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBatchQueryUserAchievementsCmd.MarkFlagRequired("namespace")
	AdminBatchQueryUserAchievementsCmd.Flags().String("userId", "", "User id")
	_ = AdminBatchQueryUserAchievementsCmd.MarkFlagRequired("userId")
}
