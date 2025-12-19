// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"log/slog"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/profanity"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminProfanityExportCmd represents the AdminProfanityExport command
var AdminProfanityExportCmd = &cobra.Command{
	Use:   "adminProfanityExport",
	Short: "Admin profanity export",
	Long:  `Admin profanity export`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &chat.ProfanityService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminProfanityExportParams{
			Namespace: namespace,
		}
		ok, errOK := profanityService.AdminProfanityExportShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminProfanityExportCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminProfanityExportCmd.MarkFlagRequired("namespace")
}
