// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inbox

import (
	"encoding/json"
	"log/slog"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	inbox_ "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/inbox"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUnsendInboxMessageCmd represents the AdminUnsendInboxMessage command
var AdminUnsendInboxMessageCmd = &cobra.Command{
	Use:   "adminUnsendInboxMessage",
	Short: "Admin unsend inbox message",
	Long:  `Admin unsend inbox message`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsUnsendInboxMessageRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		inbox, _ := cmd.Flags().GetString("inbox")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &inbox_.AdminUnsendInboxMessageParams{
			Body:      body,
			Inbox:     inbox,
			Namespace: namespace,
		}
		ok, errOK := inboxService.AdminUnsendInboxMessageShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminUnsendInboxMessageCmd.Flags().String("body", "", "Body")
	_ = AdminUnsendInboxMessageCmd.MarkFlagRequired("body")
	AdminUnsendInboxMessageCmd.Flags().String("inbox", "", "Inbox")
	_ = AdminUnsendInboxMessageCmd.MarkFlagRequired("inbox")
	AdminUnsendInboxMessageCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUnsendInboxMessageCmd.MarkFlagRequired("namespace")
}
