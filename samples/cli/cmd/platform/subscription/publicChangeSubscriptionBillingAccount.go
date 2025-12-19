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

// PublicChangeSubscriptionBillingAccountCmd represents the PublicChangeSubscriptionBillingAccount command
var PublicChangeSubscriptionBillingAccountCmd = &cobra.Command{
	Use:   "publicChangeSubscriptionBillingAccount",
	Short: "Public change subscription billing account",
	Long:  `Public change subscription billing account`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &subscription.PublicChangeSubscriptionBillingAccountParams{
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
			UserID:         userId,
		}
		ok, errOK := subscriptionService.PublicChangeSubscriptionBillingAccountShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicChangeSubscriptionBillingAccountCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicChangeSubscriptionBillingAccountCmd.MarkFlagRequired("namespace")
	PublicChangeSubscriptionBillingAccountCmd.Flags().String("subscriptionId", "", "Subscription id")
	_ = PublicChangeSubscriptionBillingAccountCmd.MarkFlagRequired("subscriptionId")
	PublicChangeSubscriptionBillingAccountCmd.Flags().String("userId", "", "User id")
	_ = PublicChangeSubscriptionBillingAccountCmd.MarkFlagRequired("userId")
}
