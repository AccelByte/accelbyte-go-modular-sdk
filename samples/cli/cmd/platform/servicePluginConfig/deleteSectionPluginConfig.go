// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package servicePluginConfig

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/service_plugin_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteSectionPluginConfigCmd represents the DeleteSectionPluginConfig command
var DeleteSectionPluginConfigCmd = &cobra.Command{
	Use:   "deleteSectionPluginConfig",
	Short: "Delete section plugin config",
	Long:  `Delete section plugin config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &service_plugin_config.DeleteSectionPluginConfigParams{
			Namespace: namespace,
		}
		errNoContent := servicePluginConfigService.DeleteSectionPluginConfigShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteSectionPluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteSectionPluginConfigCmd.MarkFlagRequired("namespace")
}
