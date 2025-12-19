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

// AdminBanTopicMembersCmd represents the AdminBanTopicMembers command
var AdminBanTopicMembersCmd = &cobra.Command{
	Use:   "adminBanTopicMembers",
	Short: "Admin ban topic members",
	Long:  `Admin ban topic members`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsBanTopicMemberParam
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.AdminBanTopicMembersParams{
			Body:      body,
			Namespace: namespace,
			Topic:     topic,
		}
		ok, errOK := topicService.AdminBanTopicMembersShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminBanTopicMembersCmd.Flags().String("body", "", "Body")
	_ = AdminBanTopicMembersCmd.MarkFlagRequired("body")
	AdminBanTopicMembersCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBanTopicMembersCmd.MarkFlagRequired("namespace")
	AdminBanTopicMembersCmd.Flags().String("topic", "", "Topic")
	_ = AdminBanTopicMembersCmd.MarkFlagRequired("topic")
}
