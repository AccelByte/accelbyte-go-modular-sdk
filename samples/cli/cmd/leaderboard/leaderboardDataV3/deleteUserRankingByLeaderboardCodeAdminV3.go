// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardDataV3

import (
	"log/slog"

	leaderboard "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data_v3"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteUserRankingByLeaderboardCodeAdminV3Cmd represents the DeleteUserRankingByLeaderboardCodeAdminV3 command
var DeleteUserRankingByLeaderboardCodeAdminV3Cmd = &cobra.Command{
	Use:   "deleteUserRankingByLeaderboardCodeAdminV3",
	Short: "Delete user ranking by leaderboard code admin V3",
	Long:  `Delete user ranking by leaderboard code admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataV3Service := &leaderboard.LeaderboardDataV3Service{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_data_v3.DeleteUserRankingByLeaderboardCodeAdminV3Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
		}
		errNoContent := leaderboardDataV3Service.DeleteUserRankingByLeaderboardCodeAdminV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteUserRankingByLeaderboardCodeAdminV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = DeleteUserRankingByLeaderboardCodeAdminV3Cmd.MarkFlagRequired("leaderboardCode")
	DeleteUserRankingByLeaderboardCodeAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteUserRankingByLeaderboardCodeAdminV3Cmd.MarkFlagRequired("namespace")
}
