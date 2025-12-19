// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ExistsAnyUserActiveEntitlementCmd represents the ExistsAnyUserActiveEntitlement command
var ExistsAnyUserActiveEntitlementCmd = &cobra.Command{
	Use:   "existsAnyUserActiveEntitlement",
	Short: "Exists any user active entitlement",
	Long:  `Exists any user active entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appIdsString := cmd.Flag("appIds").Value.String()
		var appIds []string
		errAppIds := json.Unmarshal([]byte(appIdsString), &appIds)
		if errAppIds != nil {
			return errAppIds
		}
		itemIdsString := cmd.Flag("itemIds").Value.String()
		var itemIds []string
		errItemIds := json.Unmarshal([]byte(itemIdsString), &itemIds)
		if errItemIds != nil {
			return errItemIds
		}
		platform, _ := cmd.Flags().GetString("platform")
		skusString := cmd.Flag("skus").Value.String()
		var skus []string
		errSkus := json.Unmarshal([]byte(skusString), &skus)
		if errSkus != nil {
			return errSkus
		}
		input := &entitlement.ExistsAnyUserActiveEntitlementParams{
			Namespace: namespace,
			UserID:    userId,
			AppIds:    appIds,
			ItemIds:   itemIds,
			Platform:  &platform,
			Skus:      skus,
		}
		ok, errOK := entitlementService.ExistsAnyUserActiveEntitlementShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ExistsAnyUserActiveEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = ExistsAnyUserActiveEntitlementCmd.MarkFlagRequired("namespace")
	ExistsAnyUserActiveEntitlementCmd.Flags().String("userId", "", "User id")
	_ = ExistsAnyUserActiveEntitlementCmd.MarkFlagRequired("userId")
	ExistsAnyUserActiveEntitlementCmd.Flags().String("appIds", "", "App ids")
	ExistsAnyUserActiveEntitlementCmd.Flags().String("itemIds", "", "Item ids")
	ExistsAnyUserActiveEntitlementCmd.Flags().String("platform", "", "Platform")
	ExistsAnyUserActiveEntitlementCmd.Flags().String("skus", "", "Skus")
}
