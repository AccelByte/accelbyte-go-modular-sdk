// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetUserEntitlementHistoriesCmd represents the GetUserEntitlementHistories command
var GetUserEntitlementHistoriesCmd = &cobra.Command{
	Use:   "getUserEntitlementHistories",
	Short: "Get user entitlement histories",
	Long:  `Get user entitlement histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &entitlement.GetUserEntitlementHistoriesParams{
			EntitlementID: entitlementId,
			Namespace:     namespace,
			UserID:        userId,
		}
		ok, errOK := entitlementService.GetUserEntitlementHistoriesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserEntitlementHistoriesCmd.Flags().String("entitlementId", "", "Entitlement id")
	_ = GetUserEntitlementHistoriesCmd.MarkFlagRequired("entitlementId")
	GetUserEntitlementHistoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserEntitlementHistoriesCmd.MarkFlagRequired("namespace")
	GetUserEntitlementHistoriesCmd.Flags().String("userId", "", "User id")
	_ = GetUserEntitlementHistoriesCmd.MarkFlagRequired("userId")
}
