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

// CancelSubscriptionCmd represents the CancelSubscription command
var CancelSubscriptionCmd = &cobra.Command{
	Use:   "cancelSubscription",
	Short: "Cancel subscription",
	Long:  `Cancel subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CancelRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		userId, _ := cmd.Flags().GetString("userId")
		force, _ := cmd.Flags().GetBool("force")
		input := &subscription.CancelSubscriptionParams{
			Body:           body,
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
			UserID:         userId,
			Force:          &force,
		}
		ok, errOK := subscriptionService.CancelSubscriptionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	CancelSubscriptionCmd.Flags().String("body", "", "Body")
	_ = CancelSubscriptionCmd.MarkFlagRequired("body")
	CancelSubscriptionCmd.Flags().String("namespace", "", "Namespace")
	_ = CancelSubscriptionCmd.MarkFlagRequired("namespace")
	CancelSubscriptionCmd.Flags().String("subscriptionId", "", "Subscription id")
	_ = CancelSubscriptionCmd.MarkFlagRequired("subscriptionId")
	CancelSubscriptionCmd.Flags().String("userId", "", "User id")
	_ = CancelSubscriptionCmd.MarkFlagRequired("userId")
	CancelSubscriptionCmd.Flags().Bool("force", false, "Force")
}
