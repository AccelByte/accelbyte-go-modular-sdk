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

// GetItemIdBySkuCmd represents the GetItemIdBySku command
var GetItemIdBySkuCmd = &cobra.Command{
	Use:   "getItemIdBySku",
	Short: "Get item id by sku",
	Long:  `Get item id by sku`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sku, _ := cmd.Flags().GetString("sku")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetItemIDBySkuParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			StoreID:    &storeId,
			Sku:        sku,
		}
		ok, errOK := itemService.GetItemIDBySkuShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetItemIdBySkuCmd.Flags().String("namespace", "", "Namespace")
	_ = GetItemIdBySkuCmd.MarkFlagRequired("namespace")
	GetItemIdBySkuCmd.Flags().Bool("activeOnly", false, "Active only")
	GetItemIdBySkuCmd.Flags().String("storeId", "", "Store id")
	GetItemIdBySkuCmd.Flags().String("sku", "", "Sku")
	_ = GetItemIdBySkuCmd.MarkFlagRequired("sku")
}
