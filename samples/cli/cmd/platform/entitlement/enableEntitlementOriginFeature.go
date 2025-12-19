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

// EnableEntitlementOriginFeatureCmd represents the EnableEntitlementOriginFeature command
var EnableEntitlementOriginFeatureCmd = &cobra.Command{
	Use:   "enableEntitlementOriginFeature",
	Short: "Enable entitlement origin feature",
	Long:  `Enable entitlement origin feature`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &entitlement.EnableEntitlementOriginFeatureParams{
			Namespace: namespace,
		}
		ok, errOK := entitlementService.EnableEntitlementOriginFeatureShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	EnableEntitlementOriginFeatureCmd.Flags().String("namespace", "", "Namespace")
	_ = EnableEntitlementOriginFeatureCmd.MarkFlagRequired("namespace")
}
