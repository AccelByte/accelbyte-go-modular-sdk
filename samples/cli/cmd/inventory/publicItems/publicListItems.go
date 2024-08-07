// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicItems

import (
	inventory "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/public_items"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListItemsCmd represents the PublicListItems command
var PublicListItemsCmd = &cobra.Command{
	Use:   "publicListItems",
	Short: "Public list items",
	Long:  `Public list items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicItemsService := &inventory.PublicItemsService{
			Client:          inventory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		sourceItemId, _ := cmd.Flags().GetString("sourceItemId")
		tags, _ := cmd.Flags().GetString("tags")
		input := &public_items.PublicListItemsParams{
			InventoryID:  inventoryId,
			Namespace:    namespace,
			Limit:        &limit,
			Offset:       &offset,
			SortBy:       &sortBy,
			SourceItemID: &sourceItemId,
			Tags:         &tags,
		}
		ok, errOK := publicItemsService.PublicListItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListItemsCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = PublicListItemsCmd.MarkFlagRequired("inventoryId")
	PublicListItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListItemsCmd.MarkFlagRequired("namespace")
	PublicListItemsCmd.Flags().Int64("limit", 20, "Limit")
	PublicListItemsCmd.Flags().Int64("offset", 0, "Offset")
	PublicListItemsCmd.Flags().String("sortBy", "", "Sort by")
	PublicListItemsCmd.Flags().String("sourceItemId", "", "Source item id")
	PublicListItemsCmd.Flags().String("tags", "", "Tags")
}
