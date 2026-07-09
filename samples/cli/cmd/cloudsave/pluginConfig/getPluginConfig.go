// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pluginConfig

import (
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/plugin_config"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetPluginConfigCmd represents the GetPluginConfig command
var GetPluginConfigCmd = &cobra.Command{
	Use:   "getPluginConfig",
	Short: "Get plugin config",
	Long:  `Get plugin config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		pluginConfigService := &cloudsave.PluginConfigService{
			Client: cloudsave.NewCloudsaveHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &plugin_config.GetPluginConfigParams{
			Namespace: namespace,
		}
		ok, errOK := pluginConfigService.GetPluginConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPluginConfigCmd.MarkFlagRequired("namespace")
}
