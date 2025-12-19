// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	"log/slog"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	topic_ "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/topic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicDeleteChatCmd represents the PublicDeleteChat command
var PublicDeleteChatCmd = &cobra.Command{
	Use:   "publicDeleteChat",
	Short: "Public delete chat",
	Long:  `Public delete chat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		chatId, _ := cmd.Flags().GetString("chatId")
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.PublicDeleteChatParams{
			ChatID:    chatId,
			Namespace: namespace,
			Topic:     topic,
		}
		errNoContent := topicService.PublicDeleteChatShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDeleteChatCmd.Flags().String("chatId", "", "Chat id")
	_ = PublicDeleteChatCmd.MarkFlagRequired("chatId")
	PublicDeleteChatCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDeleteChatCmd.MarkFlagRequired("namespace")
	PublicDeleteChatCmd.Flags().String("topic", "", "Topic")
	_ = PublicDeleteChatCmd.MarkFlagRequired("topic")
}
