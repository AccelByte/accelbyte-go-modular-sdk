// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetReward1Cmd represents the GetReward1 command
var GetReward1Cmd = &cobra.Command{
	Use:   "getReward1",
	Short: "Get reward 1",
	Long:  `Get reward 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		rewardId, _ := cmd.Flags().GetString("rewardId")
		input := &reward.GetReward1Params{
			Namespace: namespace,
			RewardID:  rewardId,
		}
		ok, errOK := rewardService.GetReward1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetReward1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetReward1Cmd.MarkFlagRequired("namespace")
	GetReward1Cmd.Flags().String("rewardId", "", "Reward id")
	_ = GetReward1Cmd.MarkFlagRequired("rewardId")
}
