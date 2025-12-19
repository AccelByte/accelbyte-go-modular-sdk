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

// PublicGetRootCategoriesCmd represents the PublicGetRootCategories command
var PublicGetRootCategoriesCmd = &cobra.Command{
	Use:   "publicGetRootCategories",
	Short: "Public get root categories",
	Long:  `Public get root categories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.PublicGetRootCategoriesParams{
			Namespace: namespace,
			Language:  &language,
			StoreID:   &storeId,
		}
		ok, errOK := categoryService.PublicGetRootCategoriesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetRootCategoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetRootCategoriesCmd.MarkFlagRequired("namespace")
	PublicGetRootCategoriesCmd.Flags().String("language", "", "Language")
	PublicGetRootCategoriesCmd.Flags().String("storeId", "", "Store id")
}
