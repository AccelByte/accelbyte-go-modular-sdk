// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetBulkItemIdBySkusCmd represents the GetBulkItemIdBySkus command
var GetBulkItemIdBySkusCmd = &cobra.Command{
	Use:   "getBulkItemIdBySkus",
	Short: "Get bulk item id by skus",
	Long:  `Get bulk item id by skus`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		skuString := cmd.Flag("sku").Value.String()
		var sku []string
		errSku := json.Unmarshal([]byte(skuString), &sku)
		if errSku != nil {
			return errSku
		}
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetBulkItemIDBySkusParams{
			Namespace: namespace,
			Sku:       sku,
			StoreID:   &storeId,
		}
		ok, errOK := itemService.GetBulkItemIDBySkusShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetBulkItemIdBySkusCmd.Flags().String("namespace", "", "Namespace")
	_ = GetBulkItemIdBySkusCmd.MarkFlagRequired("namespace")
	GetBulkItemIdBySkusCmd.Flags().String("sku", "", "Sku")
	GetBulkItemIdBySkusCmd.Flags().String("storeId", "", "Store id")
}
