// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"log/slog"

	seasonpass "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient/reward"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// QueryRewardsCmd represents the QueryRewards command
var QueryRewardsCmd = &cobra.Command{
	Use:   "queryRewards",
	Short: "Query rewards",
	Long:  `Query rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &seasonpass.RewardService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		q, _ := cmd.Flags().GetString("q")
		input := &reward.QueryRewardsParams{
			Namespace: namespace,
			SeasonID:  seasonId,
			Q:         &q,
		}
		ok, errOK := rewardService.QueryRewardsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QueryRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryRewardsCmd.MarkFlagRequired("namespace")
	QueryRewardsCmd.Flags().String("seasonId", "", "Season id")
	_ = QueryRewardsCmd.MarkFlagRequired("seasonId")
	QueryRewardsCmd.Flags().String("q", "", "Q")
}
