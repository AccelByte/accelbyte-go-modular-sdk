// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	"encoding/json"
	"log/slog"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/topic"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminFilterChatMessageCmd represents the AdminFilterChatMessage command
var AdminFilterChatMessageCmd = &cobra.Command{
	Use:   "adminFilterChatMessage",
	Short: "Admin filter chat message",
	Long:  `Admin filter chat message`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsMessageRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		detail, _ := cmd.Flags().GetBool("detail")
		input := &topic.AdminFilterChatMessageParams{
			Body:      body,
			Namespace: namespace,
			Detail:    &detail,
		}
		ok, errOK := topicService.AdminFilterChatMessageShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminFilterChatMessageCmd.Flags().String("body", "", "Body")
	_ = AdminFilterChatMessageCmd.MarkFlagRequired("body")
	AdminFilterChatMessageCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminFilterChatMessageCmd.MarkFlagRequired("namespace")
	AdminFilterChatMessageCmd.Flags().Bool("detail", false, "Detail")
}
