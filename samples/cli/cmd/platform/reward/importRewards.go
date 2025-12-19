// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"log/slog"
	"os"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ImportRewardsCmd represents the ImportRewards command
var ImportRewardsCmd = &cobra.Command{
	Use:   "importRewards",
	Short: "Import rewards",
	Long:  `Import rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		replaceExisting, _ := cmd.Flags().GetBool("replaceExisting")
		outputFile := cmd.Flag("file").Value.String()
		slog.Info("file", "value", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		input := &reward.ImportRewardsParams{
			File:            file,
			Namespace:       namespace,
			ReplaceExisting: replaceExisting,
		}
		errOK := rewardService.ImportRewardsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	ImportRewardsCmd.Flags().String("file", "", "File")
	ImportRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = ImportRewardsCmd.MarkFlagRequired("namespace")
	ImportRewardsCmd.Flags().Bool("replaceExisting", false, "Replace existing")
	_ = ImportRewardsCmd.MarkFlagRequired("replaceExisting")
}
