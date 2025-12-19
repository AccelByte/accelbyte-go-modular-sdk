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

// PublicGetConfigV1Cmd represents the PublicGetConfigV1 command
var PublicGetConfigV1Cmd = &cobra.Command{
	Use:   "publicGetConfigV1",
	Short: "Public get config V1",
	Long:  `Public get config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &chat.ConfigService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.PublicGetConfigV1Params{
			Namespace: namespace,
		}
		ok, errOK := configService.PublicGetConfigV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetConfigV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetConfigV1Cmd.MarkFlagRequired("namespace")
}
