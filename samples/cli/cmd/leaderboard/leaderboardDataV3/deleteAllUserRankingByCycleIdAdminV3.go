// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardDataV3

import (
	leaderboard "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data_v3"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteAllUserRankingByCycleIdAdminV3Cmd represents the DeleteAllUserRankingByCycleIdAdminV3 command
var DeleteAllUserRankingByCycleIdAdminV3Cmd = &cobra.Command{
	Use:   "deleteAllUserRankingByCycleIdAdminV3",
	Short: "Delete all user ranking by cycle id admin V3",
	Long:  `Delete all user ranking by cycle id admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataV3Service := &leaderboard.LeaderboardDataV3Service{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		cycleId, _ := cmd.Flags().GetString("cycleId")
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_data_v3.DeleteAllUserRankingByCycleIDAdminV3Params{
			CycleID:         cycleId,
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
		}
		errNoContent := leaderboardDataV3Service.DeleteAllUserRankingByCycleIDAdminV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteAllUserRankingByCycleIdAdminV3Cmd.Flags().String("cycleId", "", "Cycle id")
	_ = DeleteAllUserRankingByCycleIdAdminV3Cmd.MarkFlagRequired("cycleId")
	DeleteAllUserRankingByCycleIdAdminV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = DeleteAllUserRankingByCycleIdAdminV3Cmd.MarkFlagRequired("leaderboardCode")
	DeleteAllUserRankingByCycleIdAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAllUserRankingByCycleIdAdminV3Cmd.MarkFlagRequired("namespace")
}
