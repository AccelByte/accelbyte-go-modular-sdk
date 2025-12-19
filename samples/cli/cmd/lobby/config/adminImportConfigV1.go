// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"log/slog"
	"os"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminImportConfigV1Cmd represents the AdminImportConfigV1 command
var AdminImportConfigV1Cmd = &cobra.Command{
	Use:   "adminImportConfigV1",
	Short: "Admin import config V1",
	Long:  `Admin import config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &lobby.ConfigService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		outputFile := cmd.Flag("file").Value.String()
		slog.Info("file", "value", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		input := &config.AdminImportConfigV1Params{
			File:      file,
			Namespace: namespace,
		}
		ok, errOK := configService.AdminImportConfigV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminImportConfigV1Cmd.Flags().String("file", "", "File")
	AdminImportConfigV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminImportConfigV1Cmd.MarkFlagRequired("namespace")
}
