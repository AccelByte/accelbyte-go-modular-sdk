// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminSyncOculusSubscriptionsCmd represents the AdminSyncOculusSubscriptions command
var AdminSyncOculusSubscriptionsCmd = &cobra.Command{
	Use:   "adminSyncOculusSubscriptions",
	Short: "Admin sync oculus subscriptions",
	Long:  `Admin sync oculus subscriptions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.OculusSubscriptionSyncRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &iap.AdminSyncOculusSubscriptionsParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapService.AdminSyncOculusSubscriptionsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminSyncOculusSubscriptionsCmd.Flags().String("body", "", "Body")
	AdminSyncOculusSubscriptionsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSyncOculusSubscriptionsCmd.MarkFlagRequired("namespace")
	AdminSyncOculusSubscriptionsCmd.Flags().String("userId", "", "User id")
	_ = AdminSyncOculusSubscriptionsCmd.MarkFlagRequired("userId")
}
