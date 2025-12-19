// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notificationSubscriptionV3

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/notification_subscription_v3"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteSubscriptionAppNotificationV3Cmd represents the DeleteSubscriptionAppNotificationV3 command
var DeleteSubscriptionAppNotificationV3Cmd = &cobra.Command{
	Use:   "deleteSubscriptionAppNotificationV3",
	Short: "Delete subscription app notification V3",
	Long:  `Delete subscription app notification V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationSubscriptionV3Service := &csm.NotificationSubscriptionV3Service{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		emailAddress, _ := cmd.Flags().GetString("emailAddress")
		userId, _ := cmd.Flags().GetString("userId")
		input := &notification_subscription_v3.DeleteSubscriptionAppNotificationV3Params{
			App:          app,
			Namespace:    namespace,
			EmailAddress: &emailAddress,
			UserID:       &userId,
		}
		errNoContent := notificationSubscriptionV3Service.DeleteSubscriptionAppNotificationV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteSubscriptionAppNotificationV3Cmd.Flags().String("app", "", "App")
	_ = DeleteSubscriptionAppNotificationV3Cmd.MarkFlagRequired("app")
	DeleteSubscriptionAppNotificationV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteSubscriptionAppNotificationV3Cmd.MarkFlagRequired("namespace")
	DeleteSubscriptionAppNotificationV3Cmd.Flags().String("emailAddress", "", "Email address")
	DeleteSubscriptionAppNotificationV3Cmd.Flags().String("userId", "", "User id")
}
