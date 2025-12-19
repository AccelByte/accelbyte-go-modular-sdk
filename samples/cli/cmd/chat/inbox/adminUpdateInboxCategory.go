// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inbox

import (
	"encoding/json"
	"log/slog"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/inbox"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateInboxCategoryCmd represents the AdminUpdateInboxCategory command
var AdminUpdateInboxCategoryCmd = &cobra.Command{
	Use:   "adminUpdateInboxCategory",
	Short: "Admin update inbox category",
	Long:  `Admin update inbox category`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsUpdateInboxCategoryRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		category, _ := cmd.Flags().GetString("category")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &inbox.AdminUpdateInboxCategoryParams{
			Body:      body,
			Category:  category,
			Namespace: namespace,
		}
		errOK := inboxService.AdminUpdateInboxCategoryShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUpdateInboxCategoryCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateInboxCategoryCmd.MarkFlagRequired("body")
	AdminUpdateInboxCategoryCmd.Flags().String("category", "", "Category")
	_ = AdminUpdateInboxCategoryCmd.MarkFlagRequired("category")
	AdminUpdateInboxCategoryCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateInboxCategoryCmd.MarkFlagRequired("namespace")
}
