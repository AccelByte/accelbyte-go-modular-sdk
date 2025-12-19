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

// GetPublisherConfigCmd represents the GetPublisherConfig command
var GetPublisherConfigCmd = &cobra.Command{
	Use:   "getPublisherConfig",
	Short: "Get publisher config",
	Long:  `Get publisher config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &basic.ConfigService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		configKey, _ := cmd.Flags().GetString("configKey")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.GetPublisherConfigParams{
			ConfigKey: configKey,
			Namespace: namespace,
		}
		ok, errOK := configService.GetPublisherConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPublisherConfigCmd.Flags().String("configKey", "", "Config key")
	_ = GetPublisherConfigCmd.MarkFlagRequired("configKey")
	GetPublisherConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPublisherConfigCmd.MarkFlagRequired("namespace")
}
