// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardData

import (
	leaderboard "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetCurrentWeekLeaderboardRankingPublicV1Cmd represents the GetCurrentWeekLeaderboardRankingPublicV1 command
var GetCurrentWeekLeaderboardRankingPublicV1Cmd = &cobra.Command{
	Use:   "getCurrentWeekLeaderboardRankingPublicV1",
	Short: "Get current week leaderboard ranking public V1",
	Long:  `Get current week leaderboard ranking public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_data.GetCurrentWeekLeaderboardRankingPublicV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		ok, errOK := leaderboardDataService.GetCurrentWeekLeaderboardRankingPublicV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetCurrentWeekLeaderboardRankingPublicV1Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetCurrentWeekLeaderboardRankingPublicV1Cmd.MarkFlagRequired("leaderboardCode")
	GetCurrentWeekLeaderboardRankingPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetCurrentWeekLeaderboardRankingPublicV1Cmd.MarkFlagRequired("namespace")
	GetCurrentWeekLeaderboardRankingPublicV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetCurrentWeekLeaderboardRankingPublicV1Cmd.Flags().Int64("offset", 0, "Offset")
}
