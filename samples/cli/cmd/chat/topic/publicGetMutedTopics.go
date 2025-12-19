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

// PublicGetMutedTopicsCmd represents the PublicGetMutedTopics command
var PublicGetMutedTopicsCmd = &cobra.Command{
	Use:   "publicGetMutedTopics",
	Short: "Public get muted topics",
	Long:  `Public get muted topics`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &topic.PublicGetMutedTopicsParams{
			Namespace: namespace,
		}
		ok, errOK := topicService.PublicGetMutedTopicsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetMutedTopicsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetMutedTopicsCmd.MarkFlagRequired("namespace")
}
