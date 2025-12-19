// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iapSubscription

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap_subscription"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetThirdPartyUserSubscriptionDetailsCmd represents the GetThirdPartyUserSubscriptionDetails command
var GetThirdPartyUserSubscriptionDetailsCmd = &cobra.Command{
	Use:   "getThirdPartyUserSubscriptionDetails",
	Short: "Get third party user subscription details",
	Long:  `Get third party user subscription details`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap_subscription.GetThirdPartyUserSubscriptionDetailsParams{
			ID:        id_,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapSubscriptionService.GetThirdPartyUserSubscriptionDetailsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetThirdPartyUserSubscriptionDetailsCmd.Flags().String("id", "", "Id")
	_ = GetThirdPartyUserSubscriptionDetailsCmd.MarkFlagRequired("id")
	GetThirdPartyUserSubscriptionDetailsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetThirdPartyUserSubscriptionDetailsCmd.MarkFlagRequired("namespace")
	GetThirdPartyUserSubscriptionDetailsCmd.Flags().String("userId", "", "User id")
	_ = GetThirdPartyUserSubscriptionDetailsCmd.MarkFlagRequired("userId")
}
