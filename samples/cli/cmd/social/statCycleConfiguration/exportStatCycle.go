// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package statCycleConfiguration

import (
	"bytes"
	"log/slog"
	"os"

	social "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/stat_cycle_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ExportStatCycleCmd represents the ExportStatCycle command
var ExportStatCycleCmd = &cobra.Command{
	Use:   "exportStatCycle",
	Short: "Export stat cycle",
	Long:  `Export stat cycle`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statCycleConfigurationService := &social.StatCycleConfigurationService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		file, errFile := os.Create("file")
		slog.Info("Output", "file", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &stat_cycle_configuration.ExportStatCycleParams{
			Namespace: namespace,
		}
		ok, errOK := statCycleConfigurationService.ExportStatCycleShort(input, writer)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ExportStatCycleCmd.Flags().String("namespace", "", "Namespace")
	_ = ExportStatCycleCmd.MarkFlagRequired("namespace")
}
