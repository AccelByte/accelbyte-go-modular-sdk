// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"log/slog"

	leaderboard "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/anonymization"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminAnonymizeUserLeaderboardAdminV1Cmd represents the AdminAnonymizeUserLeaderboardAdminV1 command
var AdminAnonymizeUserLeaderboardAdminV1Cmd = &cobra.Command{
	Use:   "adminAnonymizeUserLeaderboardAdminV1",
	Short: "Admin anonymize user leaderboard admin V1",
	Long:  `Admin anonymize user leaderboard admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &leaderboard.AnonymizationService{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AdminAnonymizeUserLeaderboardAdminV1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := anonymizationService.AdminAnonymizeUserLeaderboardAdminV1Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminAnonymizeUserLeaderboardAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAnonymizeUserLeaderboardAdminV1Cmd.MarkFlagRequired("namespace")
	AdminAnonymizeUserLeaderboardAdminV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminAnonymizeUserLeaderboardAdminV1Cmd.MarkFlagRequired("userId")
}
