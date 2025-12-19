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

// DeleteOculusSubscriptionGroupCmd represents the DeleteOculusSubscriptionGroup command
var DeleteOculusSubscriptionGroupCmd = &cobra.Command{
	Use:   "deleteOculusSubscriptionGroup",
	Short: "Delete oculus subscription group",
	Long:  `Delete oculus subscription group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sku, _ := cmd.Flags().GetString("sku")
		input := &iap_subscription.DeleteOculusSubscriptionGroupParams{
			Namespace: namespace,
			Sku:       sku,
		}
		errNoContent := iapSubscriptionService.DeleteOculusSubscriptionGroupShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteOculusSubscriptionGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteOculusSubscriptionGroupCmd.MarkFlagRequired("namespace")
	DeleteOculusSubscriptionGroupCmd.Flags().String("sku", "", "Sku")
	_ = DeleteOculusSubscriptionGroupCmd.MarkFlagRequired("sku")
}
