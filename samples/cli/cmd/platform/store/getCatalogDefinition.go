// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetCatalogDefinitionCmd represents the GetCatalogDefinition command
var GetCatalogDefinitionCmd = &cobra.Command{
	Use:   "getCatalogDefinition",
	Short: "Get catalog definition",
	Long:  `Get catalog definition`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		catalogType, _ := cmd.Flags().GetString("catalogType")
		input := &store.GetCatalogDefinitionParams{
			Namespace:   namespace,
			CatalogType: catalogType,
		}
		ok, errOK := storeService.GetCatalogDefinitionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetCatalogDefinitionCmd.Flags().String("namespace", "", "Namespace")
	_ = GetCatalogDefinitionCmd.MarkFlagRequired("namespace")
	GetCatalogDefinitionCmd.Flags().String("catalogType", "", "Catalog type")
	_ = GetCatalogDefinitionCmd.MarkFlagRequired("catalogType")
}
