// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardData

import (
	leaderboard "github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserRankingAdminV1Cmd represents the GetUserRankingAdminV1 command
var GetUserRankingAdminV1Cmd = &cobra.Command{
	Use:   "getUserRankingAdminV1",
	Short: "Get user ranking admin V1",
	Long:  `Get user ranking admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &leaderboard_data.GetUserRankingAdminV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		ok, errOK := leaderboardDataService.GetUserRankingAdminV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserRankingAdminV1Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetUserRankingAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	GetUserRankingAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserRankingAdminV1Cmd.MarkFlagRequired("namespace")
	GetUserRankingAdminV1Cmd.Flags().String("userId", "", "User id")
	_ = GetUserRankingAdminV1Cmd.MarkFlagRequired("userId")
}
