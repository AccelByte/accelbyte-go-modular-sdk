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

// AdminGetAllConfigV1Cmd represents the AdminGetAllConfigV1 command
var AdminGetAllConfigV1Cmd = &cobra.Command{
	Use:   "adminGetAllConfigV1",
	Short: "Admin get all config V1",
	Long:  `Admin get all config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &match2.ConfigService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &config.AdminGetAllConfigV1Params{}
		ok, errOK := configService.AdminGetAllConfigV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
}
