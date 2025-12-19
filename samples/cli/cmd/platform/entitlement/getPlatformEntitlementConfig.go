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

// GetPlatformEntitlementConfigCmd represents the GetPlatformEntitlementConfig command
var GetPlatformEntitlementConfigCmd = &cobra.Command{
	Use:   "getPlatformEntitlementConfig",
	Short: "Get platform entitlement config",
	Long:  `Get platform entitlement config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platform, _ := cmd.Flags().GetString("platform")
		input := &entitlement.GetPlatformEntitlementConfigParams{
			Namespace: namespace,
			Platform:  platform,
		}
		ok, errOK := entitlementService.GetPlatformEntitlementConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPlatformEntitlementConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPlatformEntitlementConfigCmd.MarkFlagRequired("namespace")
	GetPlatformEntitlementConfigCmd.Flags().String("platform", "", "Platform")
	_ = GetPlatformEntitlementConfigCmd.MarkFlagRequired("platform")
}
