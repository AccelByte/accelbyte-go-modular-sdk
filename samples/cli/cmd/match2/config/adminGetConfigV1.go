// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"log/slog"

	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetConfigV1Cmd represents the AdminGetConfigV1 command
var AdminGetConfigV1Cmd = &cobra.Command{
	Use:   "adminGetConfigV1",
	Short: "Admin get config V1",
	Long:  `Admin get config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &match2.ConfigService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.AdminGetConfigV1Params{
			Namespace: namespace,
		}
		ok, errOK := configService.AdminGetConfigV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetConfigV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetConfigV1Cmd.MarkFlagRequired("namespace")
}
