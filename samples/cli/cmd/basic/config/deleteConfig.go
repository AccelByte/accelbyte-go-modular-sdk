// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"log/slog"

	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteConfigCmd represents the DeleteConfig command
var DeleteConfigCmd = &cobra.Command{
	Use:   "deleteConfig",
	Short: "Delete config",
	Long:  `Delete config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &basic.ConfigService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		configKey, _ := cmd.Flags().GetString("configKey")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.DeleteConfigParams{
			ConfigKey: configKey,
			Namespace: namespace,
		}
		errNoContent := configService.DeleteConfigShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteConfigCmd.Flags().String("configKey", "", "Config key")
	_ = DeleteConfigCmd.MarkFlagRequired("configKey")
	DeleteConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteConfigCmd.MarkFlagRequired("namespace")
}
