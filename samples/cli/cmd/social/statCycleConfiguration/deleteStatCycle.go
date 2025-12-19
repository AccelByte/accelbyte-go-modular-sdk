// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package statCycleConfiguration

import (
	"log/slog"

	social "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/stat_cycle_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteStatCycleCmd represents the DeleteStatCycle command
var DeleteStatCycleCmd = &cobra.Command{
	Use:   "deleteStatCycle",
	Short: "Delete stat cycle",
	Long:  `Delete stat cycle`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statCycleConfigurationService := &social.StatCycleConfigurationService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		cycleId, _ := cmd.Flags().GetString("cycleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &stat_cycle_configuration.DeleteStatCycleParams{
			CycleID:   cycleId,
			Namespace: namespace,
		}
		errNoContent := statCycleConfigurationService.DeleteStatCycleShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteStatCycleCmd.Flags().String("cycleId", "", "Cycle id")
	_ = DeleteStatCycleCmd.MarkFlagRequired("cycleId")
	DeleteStatCycleCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteStatCycleCmd.MarkFlagRequired("namespace")
}
