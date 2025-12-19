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

// PublicGetMyAppEntitlementOwnershipByAppIdCmd represents the PublicGetMyAppEntitlementOwnershipByAppId command
var PublicGetMyAppEntitlementOwnershipByAppIdCmd = &cobra.Command{
	Use:   "publicGetMyAppEntitlementOwnershipByAppId",
	Short: "Public get my app entitlement ownership by app id",
	Long:  `Public get my app entitlement ownership by app id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		appId, _ := cmd.Flags().GetString("appId")
		input := &entitlement.PublicGetMyAppEntitlementOwnershipByAppIDParams{
			Namespace: namespace,
			AppID:     appId,
		}
		ok, errOK := entitlementService.PublicGetMyAppEntitlementOwnershipByAppIDShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetMyAppEntitlementOwnershipByAppIdCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetMyAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("namespace")
	PublicGetMyAppEntitlementOwnershipByAppIdCmd.Flags().String("appId", "", "App id")
	_ = PublicGetMyAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("appId")
}
