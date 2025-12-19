// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"bytes"
	"log/slog"
	"os"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ExportRewardsCmd represents the ExportRewards command
var ExportRewardsCmd = &cobra.Command{
	Use:   "exportRewards",
	Short: "Export rewards",
	Long:  `Export rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		file, errFile := os.Create("file")
		slog.Info("Output", "value", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &reward.ExportRewardsParams{
			Namespace: namespace,
		}
		ok, errOK := rewardService.ExportRewardsShort(input, writer)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ExportRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = ExportRewardsCmd.MarkFlagRequired("namespace")
}
