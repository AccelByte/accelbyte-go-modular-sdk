// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package category

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetChildCategoriesCmd represents the GetChildCategories command
var GetChildCategoriesCmd = &cobra.Command{
	Use:   "getChildCategories",
	Short: "Get child categories",
	Long:  `Get child categories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.GetChildCategoriesParams{
			CategoryPath: categoryPath,
			Namespace:    namespace,
			StoreID:      &storeId,
		}
		ok, errOK := categoryService.GetChildCategoriesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetChildCategoriesCmd.Flags().String("categoryPath", "", "Category path")
	_ = GetChildCategoriesCmd.MarkFlagRequired("categoryPath")
	GetChildCategoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetChildCategoriesCmd.MarkFlagRequired("namespace")
	GetChildCategoriesCmd.Flags().String("storeId", "", "Store id")
}
