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

// PublicBulkClaimUserRewardsCmd represents the PublicBulkClaimUserRewards command
var PublicBulkClaimUserRewardsCmd = &cobra.Command{
	Use:   "publicBulkClaimUserRewards",
	Short: "Public bulk claim user rewards",
	Long:  `Public bulk claim user rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &seasonpass.RewardService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &reward.PublicBulkClaimUserRewardsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := rewardService.PublicBulkClaimUserRewardsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicBulkClaimUserRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicBulkClaimUserRewardsCmd.MarkFlagRequired("namespace")
	PublicBulkClaimUserRewardsCmd.Flags().String("userId", "", "User id")
	_ = PublicBulkClaimUserRewardsCmd.MarkFlagRequired("userId")
}
