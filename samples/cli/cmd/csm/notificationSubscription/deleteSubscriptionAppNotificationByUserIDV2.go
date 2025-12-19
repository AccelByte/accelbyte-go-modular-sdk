// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notificationSubscription

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/notification_subscription"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteSubscriptionAppNotificationByUserIDV2Cmd represents the DeleteSubscriptionAppNotificationByUserIDV2 command
var DeleteSubscriptionAppNotificationByUserIDV2Cmd = &cobra.Command{
	Use:   "deleteSubscriptionAppNotificationByUserIDV2",
	Short: "Delete subscription app notification by user IDV2",
	Long:  `Delete subscription app notification by user IDV2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationSubscriptionService := &csm.NotificationSubscriptionService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &notification_subscription.DeleteSubscriptionAppNotificationByUserIDV2Params{
			App:       app,
			Namespace: namespace,
			UserID:    userId,
		}
		errOK := notificationSubscriptionService.DeleteSubscriptionAppNotificationByUserIDV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteSubscriptionAppNotificationByUserIDV2Cmd.Flags().String("app", "", "App")
	_ = DeleteSubscriptionAppNotificationByUserIDV2Cmd.MarkFlagRequired("app")
	DeleteSubscriptionAppNotificationByUserIDV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteSubscriptionAppNotificationByUserIDV2Cmd.MarkFlagRequired("namespace")
	DeleteSubscriptionAppNotificationByUserIDV2Cmd.Flags().String("userId", "", "User id")
	_ = DeleteSubscriptionAppNotificationByUserIDV2Cmd.MarkFlagRequired("userId")
}
