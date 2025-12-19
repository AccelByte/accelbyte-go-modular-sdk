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

// DeleteRewardCmd represents the DeleteReward command
var DeleteRewardCmd = &cobra.Command{
	Use:   "deleteReward",
	Short: "Delete reward",
	Long:  `Delete reward`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &seasonpass.RewardService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &reward.DeleteRewardParams{
			Code:      code,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		errNoContent := rewardService.DeleteRewardShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteRewardCmd.Flags().String("code", "", "Code")
	_ = DeleteRewardCmd.MarkFlagRequired("code")
	DeleteRewardCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteRewardCmd.MarkFlagRequired("namespace")
	DeleteRewardCmd.Flags().String("seasonId", "", "Season id")
	_ = DeleteRewardCmd.MarkFlagRequired("seasonId")
}
