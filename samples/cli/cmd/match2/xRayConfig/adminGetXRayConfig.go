// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package xRayConfig

import (
	"log/slog"

	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/x_ray_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetXRayConfigCmd represents the AdminGetXRayConfig command
var AdminGetXRayConfigCmd = &cobra.Command{
	Use:   "adminGetXRayConfig",
	Short: "Admin get X ray config",
	Long:  `Admin get X ray config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayConfigService := &match2.XRayConfigService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &x_ray_config.AdminGetXRayConfigParams{
			Namespace: namespace,
		}
		ok, errOK := xRayConfigService.AdminGetXRayConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetXRayConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetXRayConfigCmd.MarkFlagRequired("namespace")
}
