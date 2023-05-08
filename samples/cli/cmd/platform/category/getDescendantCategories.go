// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package category

import (
	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetDescendantCategoriesCmd represents the GetDescendantCategories command
var GetDescendantCategoriesCmd = &cobra.Command{
	Use:   "getDescendantCategories",
	Short: "Get descendant categories",
	Long:  `Get descendant categories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.GetDescendantCategoriesParams{
			CategoryPath: categoryPath,
			Namespace:    namespace,
			StoreID:      &storeId,
		}
		ok, errOK := categoryService.GetDescendantCategoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetDescendantCategoriesCmd.Flags().String("categoryPath", "", "Category path")
	_ = GetDescendantCategoriesCmd.MarkFlagRequired("categoryPath")
	GetDescendantCategoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetDescendantCategoriesCmd.MarkFlagRequired("namespace")
	GetDescendantCategoriesCmd.Flags().String("storeId", "", "Store id")
}
