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

// PublicGetMyEntitlementOwnershipByItemIdCmd represents the PublicGetMyEntitlementOwnershipByItemId command
var PublicGetMyEntitlementOwnershipByItemIdCmd = &cobra.Command{
	Use:   "publicGetMyEntitlementOwnershipByItemId",
	Short: "Public get my entitlement ownership by item id",
	Long:  `Public get my entitlement ownership by item id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		itemId, _ := cmd.Flags().GetString("itemId")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		input := &entitlement.PublicGetMyEntitlementOwnershipByItemIDParams{
			Namespace:        namespace,
			EntitlementClazz: &entitlementClazz,
			ItemID:           itemId,
		}
		ok, errOK := entitlementService.PublicGetMyEntitlementOwnershipByItemIDShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetMyEntitlementOwnershipByItemIdCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetMyEntitlementOwnershipByItemIdCmd.MarkFlagRequired("namespace")
	PublicGetMyEntitlementOwnershipByItemIdCmd.Flags().String("entitlementClazz", "", "Entitlement clazz")
	PublicGetMyEntitlementOwnershipByItemIdCmd.Flags().String("itemId", "", "Item id")
	_ = PublicGetMyEntitlementOwnershipByItemIdCmd.MarkFlagRequired("itemId")
}
