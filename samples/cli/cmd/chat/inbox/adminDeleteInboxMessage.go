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

// AdminDeleteInboxMessageCmd represents the AdminDeleteInboxMessage command
var AdminDeleteInboxMessageCmd = &cobra.Command{
	Use:   "adminDeleteInboxMessage",
	Short: "Admin delete inbox message",
	Long:  `Admin delete inbox message`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		messageId, _ := cmd.Flags().GetString("messageId")
		namespace, _ := cmd.Flags().GetString("namespace")
		force, _ := cmd.Flags().GetBool("force")
		input := &inbox.AdminDeleteInboxMessageParams{
			MessageID: messageId,
			Namespace: namespace,
			Force:     &force,
		}
		errOK := inboxService.AdminDeleteInboxMessageShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteInboxMessageCmd.Flags().String("messageId", "", "Message id")
	_ = AdminDeleteInboxMessageCmd.MarkFlagRequired("messageId")
	AdminDeleteInboxMessageCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteInboxMessageCmd.MarkFlagRequired("namespace")
	AdminDeleteInboxMessageCmd.Flags().Bool("force", false, "Force")
}
