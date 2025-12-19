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

// DeleteUserRankingByCycleIdAdminV3Cmd represents the DeleteUserRankingByCycleIdAdminV3 command
var DeleteUserRankingByCycleIdAdminV3Cmd = &cobra.Command{
	Use:   "deleteUserRankingByCycleIdAdminV3",
	Short: "Delete user ranking by cycle id admin V3",
	Long:  `Delete user ranking by cycle id admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataV3Service := &leaderboard.LeaderboardDataV3Service{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		cycleId, _ := cmd.Flags().GetString("cycleId")
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &leaderboard_data_v3.DeleteUserRankingByCycleIDAdminV3Params{
			CycleID:         cycleId,
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		errNoContent := leaderboardDataV3Service.DeleteUserRankingByCycleIDAdminV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteUserRankingByCycleIdAdminV3Cmd.Flags().String("cycleId", "", "Cycle id")
	_ = DeleteUserRankingByCycleIdAdminV3Cmd.MarkFlagRequired("cycleId")
	DeleteUserRankingByCycleIdAdminV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = DeleteUserRankingByCycleIdAdminV3Cmd.MarkFlagRequired("leaderboardCode")
	DeleteUserRankingByCycleIdAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteUserRankingByCycleIdAdminV3Cmd.MarkFlagRequired("namespace")
	DeleteUserRankingByCycleIdAdminV3Cmd.Flags().String("userId", "", "User id")
	_ = DeleteUserRankingByCycleIdAdminV3Cmd.MarkFlagRequired("userId")
}
