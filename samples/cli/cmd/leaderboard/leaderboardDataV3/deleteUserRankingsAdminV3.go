// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardDataV3

import (
	"encoding/json"
	"log/slog"

	leaderboard "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data_v3"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteUserRankingsAdminV3Cmd represents the DeleteUserRankingsAdminV3 command
var DeleteUserRankingsAdminV3Cmd = &cobra.Command{
	Use:   "deleteUserRankingsAdminV3",
	Short: "Delete user rankings admin V3",
	Long:  `Delete user rankings admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataV3Service := &leaderboard.LeaderboardDataV3Service{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		leaderboardCodeString := cmd.Flag("leaderboardCode").Value.String()
		var leaderboardCode []string
		errLeaderboardCode := json.Unmarshal([]byte(leaderboardCodeString), &leaderboardCode)
		if errLeaderboardCode != nil {
			return errLeaderboardCode
		}
		input := &leaderboard_data_v3.DeleteUserRankingsAdminV3Params{
			Namespace:       namespace,
			UserID:          userId,
			LeaderboardCode: leaderboardCode,
		}
		errNoContent := leaderboardDataV3Service.DeleteUserRankingsAdminV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteUserRankingsAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteUserRankingsAdminV3Cmd.MarkFlagRequired("namespace")
	DeleteUserRankingsAdminV3Cmd.Flags().String("userId", "", "User id")
	_ = DeleteUserRankingsAdminV3Cmd.MarkFlagRequired("userId")
	DeleteUserRankingsAdminV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = DeleteUserRankingsAdminV3Cmd.MarkFlagRequired("leaderboardCode")
}
