// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package catalogChanges

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/catalog_changes"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UnselectAllRecordsCmd represents the UnselectAllRecords command
var UnselectAllRecordsCmd = &cobra.Command{
	Use:   "unselectAllRecords",
	Short: "Unselect all records",
	Long:  `Unselect all records`,
	RunE: func(cmd *cobra.Command, args []string) error {
		catalogChangesService := &platform.CatalogChangesService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &catalog_changes.UnselectAllRecordsParams{
			Namespace: namespace,
			StoreID:   storeId,
		}
		errNoContent := catalogChangesService.UnselectAllRecordsShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	UnselectAllRecordsCmd.Flags().String("namespace", "", "Namespace")
	_ = UnselectAllRecordsCmd.MarkFlagRequired("namespace")
	UnselectAllRecordsCmd.Flags().String("storeId", "", "Store id")
	_ = UnselectAllRecordsCmd.MarkFlagRequired("storeId")
}
