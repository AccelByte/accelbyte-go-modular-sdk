// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetItemBySkuCmd represents the PublicGetItemBySku command
var PublicGetItemBySkuCmd = &cobra.Command{
	Use:   "publicGetItemBySku",
	Short: "Public get item by sku",
	Long:  `Public get item by sku`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sku, _ := cmd.Flags().GetString("sku")
		autoCalcEstimatedPrice, _ := cmd.Flags().GetBool("autoCalcEstimatedPrice")
		language, _ := cmd.Flags().GetString("language")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.PublicGetItemBySkuParams{
			Namespace:              namespace,
			AutoCalcEstimatedPrice: &autoCalcEstimatedPrice,
			Language:               &language,
			Region:                 &region,
			StoreID:                &storeId,
			Sku:                    sku,
		}
		ok, errOK := itemService.PublicGetItemBySkuShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetItemBySkuCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetItemBySkuCmd.MarkFlagRequired("namespace")
	PublicGetItemBySkuCmd.Flags().Bool("autoCalcEstimatedPrice", false, "Auto calc estimated price")
	PublicGetItemBySkuCmd.Flags().String("language", "", "Language")
	PublicGetItemBySkuCmd.Flags().String("region", "", "Region")
	PublicGetItemBySkuCmd.Flags().String("storeId", "", "Store id")
	PublicGetItemBySkuCmd.Flags().String("sku", "", "Sku")
	_ = PublicGetItemBySkuCmd.MarkFlagRequired("sku")
}
