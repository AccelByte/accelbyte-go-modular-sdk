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

// GetLootBoxPluginConfigCmd represents the GetLootBoxPluginConfig command
var GetLootBoxPluginConfigCmd = &cobra.Command{
	Use:   "getLootBoxPluginConfig",
	Short: "Get loot box plugin config",
	Long:  `Get loot box plugin config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &service_plugin_config.GetLootBoxPluginConfigParams{
			Namespace: namespace,
		}
		ok, errOK := servicePluginConfigService.GetLootBoxPluginConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetLootBoxPluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetLootBoxPluginConfigCmd.MarkFlagRequired("namespace")
}
