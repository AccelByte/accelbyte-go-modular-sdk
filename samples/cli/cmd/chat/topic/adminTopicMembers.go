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

// AdminTopicMembersCmd represents the AdminTopicMembers command
var AdminTopicMembersCmd = &cobra.Command{
	Use:   "adminTopicMembers",
	Short: "Admin topic members",
	Long:  `Admin topic members`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		isBanned, _ := cmd.Flags().GetBool("isBanned")
		isModerator, _ := cmd.Flags().GetBool("isModerator")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		shardId, _ := cmd.Flags().GetString("shardId")
		input := &topic_.AdminTopicMembersParams{
			Namespace:   namespace,
			Topic:       topic,
			IsBanned:    &isBanned,
			IsModerator: &isModerator,
			Limit:       &limit,
			Offset:      &offset,
			ShardID:     &shardId,
		}
		ok, errOK := topicService.AdminTopicMembersShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminTopicMembersCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminTopicMembersCmd.MarkFlagRequired("namespace")
	AdminTopicMembersCmd.Flags().String("topic", "", "Topic")
	_ = AdminTopicMembersCmd.MarkFlagRequired("topic")
	AdminTopicMembersCmd.Flags().Bool("isBanned", false, "Is banned")
	AdminTopicMembersCmd.Flags().Bool("isModerator", false, "Is moderator")
	AdminTopicMembersCmd.Flags().Int64("limit", 20, "Limit")
	AdminTopicMembersCmd.Flags().Int64("offset", 0, "Offset")
	AdminTopicMembersCmd.Flags().String("shardId", "", "Shard id")
}
