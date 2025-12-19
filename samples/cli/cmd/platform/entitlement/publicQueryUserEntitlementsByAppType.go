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

// PublicQueryUserEntitlementsByAppTypeCmd represents the PublicQueryUserEntitlementsByAppType command
var PublicQueryUserEntitlementsByAppTypeCmd = &cobra.Command{
	Use:   "publicQueryUserEntitlementsByAppType",
	Short: "Public query user entitlements by app type",
	Long:  `Public query user entitlements by app type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appType, _ := cmd.Flags().GetString("appType")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &entitlement.PublicQueryUserEntitlementsByAppTypeParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			AppType:   appType,
		}
		ok, errOK := entitlementService.PublicQueryUserEntitlementsByAppTypeShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicQueryUserEntitlementsByAppTypeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryUserEntitlementsByAppTypeCmd.MarkFlagRequired("namespace")
	PublicQueryUserEntitlementsByAppTypeCmd.Flags().String("userId", "", "User id")
	_ = PublicQueryUserEntitlementsByAppTypeCmd.MarkFlagRequired("userId")
	PublicQueryUserEntitlementsByAppTypeCmd.Flags().Int32("limit", 20, "Limit")
	PublicQueryUserEntitlementsByAppTypeCmd.Flags().Int32("offset", 0, "Offset")
	PublicQueryUserEntitlementsByAppTypeCmd.Flags().String("appType", "", "App type")
	_ = PublicQueryUserEntitlementsByAppTypeCmd.MarkFlagRequired("appType")
}
