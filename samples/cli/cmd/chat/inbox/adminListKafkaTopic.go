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

// AdminListKafkaTopicCmd represents the AdminListKafkaTopic command
var AdminListKafkaTopicCmd = &cobra.Command{
	Use:   "adminListKafkaTopic",
	Short: "Admin list kafka topic",
	Long:  `Admin list kafka topic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &inbox.AdminListKafkaTopicParams{
			Namespace: namespace,
		}
		ok, errOK := inboxService.AdminListKafkaTopicShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminListKafkaTopicCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListKafkaTopicCmd.MarkFlagRequired("namespace")
}
