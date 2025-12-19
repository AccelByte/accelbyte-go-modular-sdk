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

// CreateCategoryCmd represents the CreateCategory command
var CreateCategoryCmd = &cobra.Command{
	Use:   "createCategory",
	Short: "Create category",
	Long:  `Create category`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CategoryCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.CreateCategoryParams{
			Body:      body,
			Namespace: namespace,
			StoreID:   storeId,
		}
		created, errCreated := categoryService.CreateCategoryShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	CreateCategoryCmd.Flags().String("body", "", "Body")
	_ = CreateCategoryCmd.MarkFlagRequired("body")
	CreateCategoryCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateCategoryCmd.MarkFlagRequired("namespace")
	CreateCategoryCmd.Flags().String("storeId", "", "Store id")
	_ = CreateCategoryCmd.MarkFlagRequired("storeId")
}
