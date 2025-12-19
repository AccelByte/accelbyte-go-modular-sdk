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

// GetEntitlementConfigInfoCmd represents the GetEntitlementConfigInfo command
var GetEntitlementConfigInfoCmd = &cobra.Command{
	Use:   "getEntitlementConfigInfo",
	Short: "Get entitlement config info",
	Long:  `Get entitlement config info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		withoutCache, _ := cmd.Flags().GetBool("withoutCache")
		input := &entitlement.GetEntitlementConfigInfoParams{
			Namespace:    namespace,
			WithoutCache: &withoutCache,
		}
		ok, errOK := entitlementService.GetEntitlementConfigInfoShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetEntitlementConfigInfoCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEntitlementConfigInfoCmd.MarkFlagRequired("namespace")
	GetEntitlementConfigInfoCmd.Flags().Bool("withoutCache", false, "Without cache")
}
