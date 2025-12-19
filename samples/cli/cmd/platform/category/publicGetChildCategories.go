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

// PublicGetChildCategoriesCmd represents the PublicGetChildCategories command
var PublicGetChildCategoriesCmd = &cobra.Command{
	Use:   "publicGetChildCategories",
	Short: "Public get child categories",
	Long:  `Public get child categories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.PublicGetChildCategoriesParams{
			CategoryPath: categoryPath,
			Namespace:    namespace,
			Language:     &language,
			StoreID:      &storeId,
		}
		ok, errOK := categoryService.PublicGetChildCategoriesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetChildCategoriesCmd.Flags().String("categoryPath", "", "Category path")
	_ = PublicGetChildCategoriesCmd.MarkFlagRequired("categoryPath")
	PublicGetChildCategoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetChildCategoriesCmd.MarkFlagRequired("namespace")
	PublicGetChildCategoriesCmd.Flags().String("language", "", "Language")
	PublicGetChildCategoriesCmd.Flags().String("storeId", "", "Store id")
}
