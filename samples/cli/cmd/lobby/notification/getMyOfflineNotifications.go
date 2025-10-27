// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

import (
	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetMyOfflineNotificationsCmd represents the GetMyOfflineNotifications command
var GetMyOfflineNotificationsCmd = &cobra.Command{
	Use:   "getMyOfflineNotifications",
	Short: "Get my offline notifications",
	Long:  `Get my offline notifications`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification.GetMyOfflineNotificationsParams{
			Namespace: namespace,
		}
		ok, errOK := notificationService.GetMyOfflineNotificationsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetMyOfflineNotificationsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetMyOfflineNotificationsCmd.MarkFlagRequired("namespace")
}
