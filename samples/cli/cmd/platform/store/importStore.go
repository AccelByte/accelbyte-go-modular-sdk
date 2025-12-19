// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"log/slog"
	"os"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ImportStoreCmd represents the ImportStore command
var ImportStoreCmd = &cobra.Command{
	Use:   "importStore",
	Short: "Import store",
	Long:  `Import store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		outputFile := cmd.Flag("file").Value.String()
		slog.Info("file", "value", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &store.ImportStoreParams{
			File:      file,
			Namespace: namespace,
			StoreID:   &storeId,
		}
		ok, errOK := storeService.ImportStoreShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ImportStoreCmd.Flags().String("file", "", "File")
	ImportStoreCmd.Flags().String("namespace", "", "Namespace")
	_ = ImportStoreCmd.MarkFlagRequired("namespace")
	ImportStoreCmd.Flags().String("storeId", "", "Store id")
}
