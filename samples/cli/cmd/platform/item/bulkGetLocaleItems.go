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

// BulkGetLocaleItemsCmd represents the BulkGetLocaleItems command
var BulkGetLocaleItemsCmd = &cobra.Command{
	Use:   "bulkGetLocaleItems",
	Short: "Bulk get locale items",
	Long:  `Bulk get locale items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		itemIds, _ := cmd.Flags().GetString("itemIds")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		language, _ := cmd.Flags().GetString("language")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.BulkGetLocaleItemsParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			Language:   &language,
			Region:     &region,
			StoreID:    &storeId,
			ItemIds:    itemIds,
		}
		ok, errOK := itemService.BulkGetLocaleItemsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	BulkGetLocaleItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkGetLocaleItemsCmd.MarkFlagRequired("namespace")
	BulkGetLocaleItemsCmd.Flags().Bool("activeOnly", false, "Active only")
	BulkGetLocaleItemsCmd.Flags().String("language", "", "Language")
	BulkGetLocaleItemsCmd.Flags().String("region", "", "Region")
	BulkGetLocaleItemsCmd.Flags().String("storeId", "", "Store id")
	BulkGetLocaleItemsCmd.Flags().String("itemIds", "", "Item ids")
	_ = BulkGetLocaleItemsCmd.MarkFlagRequired("itemIds")
}
