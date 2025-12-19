// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"log/slog"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ExportConfigCmd represents the ExportConfig command
var ExportConfigCmd = &cobra.Command{
	Use:   "exportConfig",
	Short: "Export config",
	Long:  `Export config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &chat.ConfigService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.ExportConfigParams{
			Namespace: namespace,
		}
		ok, errOK := configService.ExportConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ExportConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = ExportConfigCmd.MarkFlagRequired("namespace")
}
