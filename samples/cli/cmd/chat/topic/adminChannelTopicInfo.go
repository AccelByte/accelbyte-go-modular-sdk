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

// AdminChannelTopicInfoCmd represents the AdminChannelTopicInfo command
var AdminChannelTopicInfoCmd = &cobra.Command{
	Use:   "adminChannelTopicInfo",
	Short: "Admin channel topic info",
	Long:  `Admin channel topic info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.AdminChannelTopicInfoParams{
			Namespace: namespace,
			Topic:     topic,
		}
		ok, errOK := topicService.AdminChannelTopicInfoShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminChannelTopicInfoCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminChannelTopicInfoCmd.MarkFlagRequired("namespace")
	AdminChannelTopicInfoCmd.Flags().String("topic", "", "Topic")
	_ = AdminChannelTopicInfoCmd.MarkFlagRequired("topic")
}
