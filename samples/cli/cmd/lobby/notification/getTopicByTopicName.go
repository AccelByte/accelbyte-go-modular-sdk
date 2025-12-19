// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

import (
	"log/slog"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetTopicByTopicNameCmd represents the GetTopicByTopicName command
var GetTopicByTopicNameCmd = &cobra.Command{
	Use:   "getTopicByTopicName",
	Short: "Get topic by topic name",
	Long:  `Get topic by topic name`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &notification.GetTopicByTopicNameParams{
			Namespace: namespace,
			Topic:     topic,
		}
		ok, errOK := notificationService.GetTopicByTopicNameShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetTopicByTopicNameCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTopicByTopicNameCmd.MarkFlagRequired("namespace")
	GetTopicByTopicNameCmd.Flags().String("topic", "", "Topic")
	_ = GetTopicByTopicNameCmd.MarkFlagRequired("topic")
}
