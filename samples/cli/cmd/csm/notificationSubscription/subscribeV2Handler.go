// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notificationSubscription

import (
	"encoding/json"
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/notification_subscription"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// SubscribeV2HandlerCmd represents the SubscribeV2Handler command
var SubscribeV2HandlerCmd = &cobra.Command{
	Use:   "subscribeV2Handler",
	Short: "Subscribe V2 handler",
	Long:  `Subscribe V2 handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationSubscriptionService := &csm.NotificationSubscriptionService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelSelfSubscribeNotificationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification_subscription.SubscribeV2HandlerParams{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		errNoContent := notificationSubscriptionService.SubscribeV2HandlerShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	SubscribeV2HandlerCmd.Flags().String("body", "", "Body")
	_ = SubscribeV2HandlerCmd.MarkFlagRequired("body")
	SubscribeV2HandlerCmd.Flags().String("app", "", "App")
	_ = SubscribeV2HandlerCmd.MarkFlagRequired("app")
	SubscribeV2HandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = SubscribeV2HandlerCmd.MarkFlagRequired("namespace")
}
