// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminInventoryConfigurations

import (
	"log/slog"

	inventory "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/admin_inventory_configurations"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminListInventoryConfigurationsCmd represents the AdminListInventoryConfigurations command
var AdminListInventoryConfigurationsCmd = &cobra.Command{
	Use:   "adminListInventoryConfigurations",
	Short: "Admin list inventory configurations",
	Long:  `Admin list inventory configurations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminInventoryConfigurationsService := &inventory.AdminInventoryConfigurationsService{
			Client:          inventory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		code, _ := cmd.Flags().GetString("code")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &admin_inventory_configurations.AdminListInventoryConfigurationsParams{
			Namespace: namespace,
			Code:      &code,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := adminInventoryConfigurationsService.AdminListInventoryConfigurationsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminListInventoryConfigurationsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListInventoryConfigurationsCmd.MarkFlagRequired("namespace")
	AdminListInventoryConfigurationsCmd.Flags().String("code", "", "Code")
	AdminListInventoryConfigurationsCmd.Flags().Int64("limit", 20, "Limit")
	AdminListInventoryConfigurationsCmd.Flags().Int64("offset", 0, "Offset")
	AdminListInventoryConfigurationsCmd.Flags().String("sortBy", "", "Sort by")
}
