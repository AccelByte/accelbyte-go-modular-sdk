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

// AdminGetArchivedLeaderboardRankingDataV1HandlerCmd represents the AdminGetArchivedLeaderboardRankingDataV1Handler command
var AdminGetArchivedLeaderboardRankingDataV1HandlerCmd = &cobra.Command{
	Use:   "adminGetArchivedLeaderboardRankingDataV1Handler",
	Short: "Admin get archived leaderboard ranking data V1 handler",
	Long:  `Admin get archived leaderboard ranking data V1 handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		leaderboardCodes, _ := cmd.Flags().GetString("leaderboardCodes")
		slug, _ := cmd.Flags().GetString("slug")
		input := &leaderboard_data.AdminGetArchivedLeaderboardRankingDataV1HandlerParams{
			Namespace:        namespace,
			Slug:             &slug,
			LeaderboardCodes: leaderboardCodes,
		}
		ok, errOK := leaderboardDataService.AdminGetArchivedLeaderboardRankingDataV1HandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("namespace")
	AdminGetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().String("slug", "", "Slug")
	AdminGetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().String("leaderboardCodes", "", "Leaderboard codes")
	_ = AdminGetArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("leaderboardCodes")
}
