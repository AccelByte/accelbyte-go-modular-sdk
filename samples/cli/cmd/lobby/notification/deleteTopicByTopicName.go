// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

import (
	lobby "github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteTopicByTopicNameCmd represents the DeleteTopicByTopicName command
var DeleteTopicByTopicNameCmd = &cobra.Command{
	Use:   "deleteTopicByTopicName",
	Short: "Delete topic by topic name",
	Long:  `Delete topic by topic name`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &notification.DeleteTopicByTopicNameParams{
			Namespace: namespace,
			Topic:     topic,
		}
		errNoContent := notificationService.DeleteTopicByTopicNameShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteTopicByTopicNameCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteTopicByTopicNameCmd.MarkFlagRequired("namespace")
	DeleteTopicByTopicNameCmd.Flags().String("topic", "", "Topic")
	_ = DeleteTopicByTopicNameCmd.MarkFlagRequired("topic")
}
