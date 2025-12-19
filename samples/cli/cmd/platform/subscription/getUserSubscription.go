// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package subscription

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/subscription"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetUserSubscriptionCmd represents the GetUserSubscription command
var GetUserSubscriptionCmd = &cobra.Command{
	Use:   "getUserSubscription",
	Short: "Get user subscription",
	Long:  `Get user subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &subscription.GetUserSubscriptionParams{
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
			UserID:         userId,
		}
		ok, errOK := subscriptionService.GetUserSubscriptionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserSubscriptionCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserSubscriptionCmd.MarkFlagRequired("namespace")
	GetUserSubscriptionCmd.Flags().String("subscriptionId", "", "Subscription id")
	_ = GetUserSubscriptionCmd.MarkFlagRequired("subscriptionId")
	GetUserSubscriptionCmd.Flags().String("userId", "", "User id")
	_ = GetUserSubscriptionCmd.MarkFlagRequired("userId")
}
