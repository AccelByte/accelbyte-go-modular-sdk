// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	"log/slog"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/topic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminQueryUsersTopicCmd represents the AdminQueryUsersTopic command
var AdminQueryUsersTopicCmd = &cobra.Command{
	Use:   "adminQueryUsersTopic",
	Short: "Admin query users topic",
	Long:  `Admin query users topic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		includePastTopics, _ := cmd.Flags().GetBool("includePastTopics")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		topicSubType, _ := cmd.Flags().GetString("topicSubType")
		topicType, _ := cmd.Flags().GetString("topicType")
		input := &topic.AdminQueryUsersTopicParams{
			Namespace:         namespace,
			UserID:            userId,
			IncludePastTopics: &includePastTopics,
			Limit:             &limit,
			Offset:            &offset,
			TopicSubType:      &topicSubType,
			TopicType:         &topicType,
		}
		ok, errOK := topicService.AdminQueryUsersTopicShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminQueryUsersTopicCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryUsersTopicCmd.MarkFlagRequired("namespace")
	AdminQueryUsersTopicCmd.Flags().String("userId", "", "User id")
	_ = AdminQueryUsersTopicCmd.MarkFlagRequired("userId")
	AdminQueryUsersTopicCmd.Flags().Bool("includePastTopics", false, "Include past topics")
	AdminQueryUsersTopicCmd.Flags().Int64("limit", 20, "Limit")
	AdminQueryUsersTopicCmd.Flags().Int64("offset", 0, "Offset")
	AdminQueryUsersTopicCmd.Flags().String("topicSubType", "", "Topic sub type")
	AdminQueryUsersTopicCmd.Flags().String("topicType", "", "Topic type")
}
