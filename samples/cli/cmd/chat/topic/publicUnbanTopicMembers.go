// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	"encoding/json"
	"log/slog"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	topic_ "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/topic"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicUnbanTopicMembersCmd represents the PublicUnbanTopicMembers command
var PublicUnbanTopicMembersCmd = &cobra.Command{
	Use:   "publicUnbanTopicMembers",
	Short: "Public unban topic members",
	Long:  `Public unban topic members`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsPublicUnbanTopicMembersRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.PublicUnbanTopicMembersParams{
			Body:      body,
			Namespace: namespace,
			Topic:     topic,
		}
		ok, errOK := topicService.PublicUnbanTopicMembersShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicUnbanTopicMembersCmd.Flags().String("body", "", "Body")
	_ = PublicUnbanTopicMembersCmd.MarkFlagRequired("body")
	PublicUnbanTopicMembersCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUnbanTopicMembersCmd.MarkFlagRequired("namespace")
	PublicUnbanTopicMembersCmd.Flags().String("topic", "", "Topic")
	_ = PublicUnbanTopicMembersCmd.MarkFlagRequired("topic")
}
