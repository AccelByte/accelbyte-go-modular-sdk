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

// AdminTopicShardsCmd represents the AdminTopicShards command
var AdminTopicShardsCmd = &cobra.Command{
	Use:   "adminTopicShards",
	Short: "Admin topic shards",
	Long:  `Admin topic shards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.AdminTopicShardsParams{
			Namespace: namespace,
			Topic:     topic,
		}
		ok, errOK := topicService.AdminTopicShardsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminTopicShardsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminTopicShardsCmd.MarkFlagRequired("namespace")
	AdminTopicShardsCmd.Flags().String("topic", "", "Topic")
	_ = AdminTopicShardsCmd.MarkFlagRequired("topic")
}
