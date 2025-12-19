// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inbox

import (
	"log/slog"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	inbox_ "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/inbox"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetInboxUsersCmd represents the AdminGetInboxUsers command
var AdminGetInboxUsersCmd = &cobra.Command{
	Use:   "adminGetInboxUsers",
	Short: "Admin get inbox users",
	Long:  `Admin get inbox users`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		inbox, _ := cmd.Flags().GetString("inbox")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		status, _ := cmd.Flags().GetString("status")
		userId, _ := cmd.Flags().GetString("userId")
		input := &inbox_.AdminGetInboxUsersParams{
			Inbox:     inbox,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Status:    &status,
			UserID:    &userId,
		}
		ok, errOK := inboxService.AdminGetInboxUsersShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetInboxUsersCmd.Flags().String("inbox", "", "Inbox")
	_ = AdminGetInboxUsersCmd.MarkFlagRequired("inbox")
	AdminGetInboxUsersCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetInboxUsersCmd.MarkFlagRequired("namespace")
	AdminGetInboxUsersCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetInboxUsersCmd.Flags().Int64("offset", 0, "Offset")
	AdminGetInboxUsersCmd.Flags().String("status", "", "Status")
	AdminGetInboxUsersCmd.Flags().String("userId", "", "User id")
}
