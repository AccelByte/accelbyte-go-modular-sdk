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

// GetUserEntitlementCmd represents the GetUserEntitlement command
var GetUserEntitlementCmd = &cobra.Command{
	Use:   "getUserEntitlement",
	Short: "Get user entitlement",
	Long:  `Get user entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &entitlement.GetUserEntitlementParams{
			EntitlementID: entitlementId,
			Namespace:     namespace,
			UserID:        userId,
		}
		ok, errOK := entitlementService.GetUserEntitlementShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserEntitlementCmd.Flags().String("entitlementId", "", "Entitlement id")
	_ = GetUserEntitlementCmd.MarkFlagRequired("entitlementId")
	GetUserEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserEntitlementCmd.MarkFlagRequired("namespace")
	GetUserEntitlementCmd.Flags().String("userId", "", "User id")
	_ = GetUserEntitlementCmd.MarkFlagRequired("userId")
}
