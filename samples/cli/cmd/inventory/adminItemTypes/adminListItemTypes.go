// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminItemTypes

import (
	inventory "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/admin_item_types"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListItemTypesCmd represents the AdminListItemTypes command
var AdminListItemTypesCmd = &cobra.Command{
	Use:   "adminListItemTypes",
	Short: "Admin list item types",
	Long:  `Admin list item types`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemTypesService := &inventory.AdminItemTypesService{
			Client:          inventory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &admin_item_types.AdminListItemTypesParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := adminItemTypesService.AdminListItemTypesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListItemTypesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListItemTypesCmd.MarkFlagRequired("namespace")
	AdminListItemTypesCmd.Flags().Int64("limit", 20, "Limit")
	AdminListItemTypesCmd.Flags().Int64("offset", 0, "Offset")
	AdminListItemTypesCmd.Flags().String("sortBy", "", "Sort by")
}
