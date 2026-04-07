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

// ResetStatCycleCmd represents the ResetStatCycle command
var ResetStatCycleCmd = &cobra.Command{
	Use:   "resetStatCycle",
	Short: "Reset stat cycle",
	Long:  `Reset stat cycle`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statCycleConfigurationService := &social.StatCycleConfigurationService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		cycleId, _ := cmd.Flags().GetString("cycleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &stat_cycle_configuration.ResetStatCycleParams{
			CycleID:   cycleId,
			Namespace: namespace,
		}
		errNoContent := statCycleConfigurationService.ResetStatCycleShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	ResetStatCycleCmd.Flags().String("cycleId", "", "Cycle id")
	_ = ResetStatCycleCmd.MarkFlagRequired("cycleId")
	ResetStatCycleCmd.Flags().String("namespace", "", "Namespace")
	_ = ResetStatCycleCmd.MarkFlagRequired("namespace")
}
