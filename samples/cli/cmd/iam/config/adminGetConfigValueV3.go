// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetConfigValueV3Cmd represents the AdminGetConfigValueV3 command
var AdminGetConfigValueV3Cmd = &cobra.Command{
	Use:   "adminGetConfigValueV3",
	Short: "Admin get config value V3",
	Long:  `Admin get config value V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &iam.ConfigService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		configKey, _ := cmd.Flags().GetString("configKey")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.AdminGetConfigValueV3Params{
			ConfigKey: configKey,
			Namespace: namespace,
		}
		ok, errOK := configService.AdminGetConfigValueV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetConfigValueV3Cmd.Flags().String("configKey", "", "Config key")
	_ = AdminGetConfigValueV3Cmd.MarkFlagRequired("configKey")
	AdminGetConfigValueV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetConfigValueV3Cmd.MarkFlagRequired("namespace")
}
