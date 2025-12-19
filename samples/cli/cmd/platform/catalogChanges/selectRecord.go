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

// SelectRecordCmd represents the SelectRecord command
var SelectRecordCmd = &cobra.Command{
	Use:   "selectRecord",
	Short: "Select record",
	Long:  `Select record`,
	RunE: func(cmd *cobra.Command, args []string) error {
		catalogChangesService := &platform.CatalogChangesService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		changeId, _ := cmd.Flags().GetString("changeId")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &catalog_changes.SelectRecordParams{
			ChangeID:  changeId,
			Namespace: namespace,
			StoreID:   storeId,
		}
		errNoContent := catalogChangesService.SelectRecordShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	SelectRecordCmd.Flags().String("changeId", "", "Change id")
	_ = SelectRecordCmd.MarkFlagRequired("changeId")
	SelectRecordCmd.Flags().String("namespace", "", "Namespace")
	_ = SelectRecordCmd.MarkFlagRequired("namespace")
	SelectRecordCmd.Flags().String("storeId", "", "Store id")
	_ = SelectRecordCmd.MarkFlagRequired("storeId")
}
