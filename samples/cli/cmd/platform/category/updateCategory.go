// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package category

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateCategoryCmd represents the UpdateCategory command
var UpdateCategoryCmd = &cobra.Command{
	Use:   "updateCategory",
	Short: "Update category",
	Long:  `Update category`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CategoryUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.UpdateCategoryParams{
			Body:         body,
			CategoryPath: categoryPath,
			Namespace:    namespace,
			StoreID:      storeId,
		}
		ok, errOK := categoryService.UpdateCategoryShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateCategoryCmd.Flags().String("body", "", "Body")
	_ = UpdateCategoryCmd.MarkFlagRequired("body")
	UpdateCategoryCmd.Flags().String("categoryPath", "", "Category path")
	_ = UpdateCategoryCmd.MarkFlagRequired("categoryPath")
	UpdateCategoryCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateCategoryCmd.MarkFlagRequired("namespace")
	UpdateCategoryCmd.Flags().String("storeId", "", "Store id")
	_ = UpdateCategoryCmd.MarkFlagRequired("storeId")
}
