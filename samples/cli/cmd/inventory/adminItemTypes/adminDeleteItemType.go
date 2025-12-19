// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminItemTypes

import (
	"log/slog"

	inventory "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/admin_item_types"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeleteItemTypeCmd represents the AdminDeleteItemType command
var AdminDeleteItemTypeCmd = &cobra.Command{
	Use:   "adminDeleteItemType",
	Short: "Admin delete item type",
	Long:  `Admin delete item type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemTypesService := &inventory.AdminItemTypesService{
			Client:          inventory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemTypeName, _ := cmd.Flags().GetString("itemTypeName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_item_types.AdminDeleteItemTypeParams{
			ItemTypeName: itemTypeName,
			Namespace:    namespace,
		}
		errNoContent := adminItemTypesService.AdminDeleteItemTypeShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteItemTypeCmd.Flags().String("itemTypeName", "", "Item type name")
	_ = AdminDeleteItemTypeCmd.MarkFlagRequired("itemTypeName")
	AdminDeleteItemTypeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteItemTypeCmd.MarkFlagRequired("namespace")
}
