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

// GetTodayLeaderboardRankingAdminV1Cmd represents the GetTodayLeaderboardRankingAdminV1 command
var GetTodayLeaderboardRankingAdminV1Cmd = &cobra.Command{
	Use:   "getTodayLeaderboardRankingAdminV1",
	Short: "Get today leaderboard ranking admin V1",
	Long:  `Get today leaderboard ranking admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		previousVersion, _ := cmd.Flags().GetInt64("previousVersion")
		input := &leaderboard_data.GetTodayLeaderboardRankingAdminV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
			PreviousVersion: &previousVersion,
		}
		ok, errOK := leaderboardDataService.GetTodayLeaderboardRankingAdminV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetTodayLeaderboardRankingAdminV1Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetTodayLeaderboardRankingAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	GetTodayLeaderboardRankingAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetTodayLeaderboardRankingAdminV1Cmd.MarkFlagRequired("namespace")
	GetTodayLeaderboardRankingAdminV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetTodayLeaderboardRankingAdminV1Cmd.Flags().Int64("offset", 0, "Offset")
	GetTodayLeaderboardRankingAdminV1Cmd.Flags().Int64("previousVersion", 0, "Previous version")
}
