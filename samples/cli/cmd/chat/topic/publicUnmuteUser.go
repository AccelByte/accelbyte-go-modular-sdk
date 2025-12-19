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

// PublicUnmuteUserCmd represents the PublicUnmuteUser command
var PublicUnmuteUserCmd = &cobra.Command{
	Use:   "publicUnmuteUser",
	Short: "Public unmute user",
	Long:  `Public unmute user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.APIUnmuteUserRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.PublicUnmuteUserParams{
			Body:      body,
			Namespace: namespace,
			Topic:     topic,
		}
		errNoContent := topicService.PublicUnmuteUserShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicUnmuteUserCmd.Flags().String("body", "", "Body")
	_ = PublicUnmuteUserCmd.MarkFlagRequired("body")
	PublicUnmuteUserCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUnmuteUserCmd.MarkFlagRequired("namespace")
	PublicUnmuteUserCmd.Flags().String("topic", "", "Topic")
	_ = PublicUnmuteUserCmd.MarkFlagRequired("topic")
}
