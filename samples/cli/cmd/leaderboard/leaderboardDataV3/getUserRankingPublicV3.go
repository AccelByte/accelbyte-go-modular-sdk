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

// GetUserRankingPublicV3Cmd represents the GetUserRankingPublicV3 command
var GetUserRankingPublicV3Cmd = &cobra.Command{
	Use:   "getUserRankingPublicV3",
	Short: "Get user ranking public V3",
	Long:  `Get user ranking public V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataV3Service := &leaderboard.LeaderboardDataV3Service{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		previousVersion, _ := cmd.Flags().GetInt64("previousVersion")
		input := &leaderboard_data_v3.GetUserRankingPublicV3Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
			PreviousVersion: &previousVersion,
		}
		ok, errOK := leaderboardDataV3Service.GetUserRankingPublicV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserRankingPublicV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetUserRankingPublicV3Cmd.MarkFlagRequired("leaderboardCode")
	GetUserRankingPublicV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserRankingPublicV3Cmd.MarkFlagRequired("namespace")
	GetUserRankingPublicV3Cmd.Flags().String("userId", "", "User id")
	_ = GetUserRankingPublicV3Cmd.MarkFlagRequired("userId")
	GetUserRankingPublicV3Cmd.Flags().Int64("previousVersion", 0, "Previous version")
}
