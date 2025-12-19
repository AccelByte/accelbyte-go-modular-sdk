// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardData

import (
	"log/slog"

	leaderboard "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetUserRankingPublicV1Cmd represents the GetUserRankingPublicV1 command
var GetUserRankingPublicV1Cmd = &cobra.Command{
	Use:   "getUserRankingPublicV1",
	Short: "Get user ranking public V1",
	Long:  `Get user ranking public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		previousVersion, _ := cmd.Flags().GetInt64("previousVersion")
		input := &leaderboard_data.GetUserRankingPublicV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
			PreviousVersion: &previousVersion,
		}
		ok, errOK := leaderboardDataService.GetUserRankingPublicV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserRankingPublicV1Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetUserRankingPublicV1Cmd.MarkFlagRequired("leaderboardCode")
	GetUserRankingPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserRankingPublicV1Cmd.MarkFlagRequired("namespace")
	GetUserRankingPublicV1Cmd.Flags().String("userId", "", "User id")
	_ = GetUserRankingPublicV1Cmd.MarkFlagRequired("userId")
	GetUserRankingPublicV1Cmd.Flags().Int64("previousVersion", 0, "Previous version")
}
