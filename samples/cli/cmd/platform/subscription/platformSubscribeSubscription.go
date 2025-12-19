// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package subscription

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/subscription"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PlatformSubscribeSubscriptionCmd represents the PlatformSubscribeSubscription command
var PlatformSubscribeSubscriptionCmd = &cobra.Command{
	Use:   "platformSubscribeSubscription",
	Short: "Platform subscribe subscription",
	Long:  `Platform subscribe subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PlatformSubscribeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &subscription.PlatformSubscribeSubscriptionParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := subscriptionService.PlatformSubscribeSubscriptionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PlatformSubscribeSubscriptionCmd.Flags().String("body", "", "Body")
	_ = PlatformSubscribeSubscriptionCmd.MarkFlagRequired("body")
	PlatformSubscribeSubscriptionCmd.Flags().String("namespace", "", "Namespace")
	_ = PlatformSubscribeSubscriptionCmd.MarkFlagRequired("namespace")
	PlatformSubscribeSubscriptionCmd.Flags().String("userId", "", "User id")
	_ = PlatformSubscribeSubscriptionCmd.MarkFlagRequired("userId")
}
