// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inbox

import (
	"log/slog"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/inbox"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetCategorySchemaCmd represents the AdminGetCategorySchema command
var AdminGetCategorySchemaCmd = &cobra.Command{
	Use:   "adminGetCategorySchema",
	Short: "Admin get category schema",
	Long:  `Admin get category schema`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		category, _ := cmd.Flags().GetString("category")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &inbox.AdminGetCategorySchemaParams{
			Category:  category,
			Namespace: namespace,
		}
		ok, errOK := inboxService.AdminGetCategorySchemaShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetCategorySchemaCmd.Flags().String("category", "", "Category")
	_ = AdminGetCategorySchemaCmd.MarkFlagRequired("category")
	AdminGetCategorySchemaCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetCategorySchemaCmd.MarkFlagRequired("namespace")
}
