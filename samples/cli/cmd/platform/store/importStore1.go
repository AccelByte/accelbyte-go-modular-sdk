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

// ImportStore1Cmd represents the ImportStore1 command
var ImportStore1Cmd = &cobra.Command{
	Use:   "importStore1",
	Short: "Import store 1",
	Long:  `Import store 1`,
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
		strictMode, _ := cmd.Flags().GetBool("strictMode")
		input := &store.ImportStore1Params{
			File:       file,
			Namespace:  namespace,
			StoreID:    &storeId,
			StrictMode: &strictMode,
		}
		ok, errOK := storeService.ImportStore1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ImportStore1Cmd.Flags().String("file", "", "File")
	ImportStore1Cmd.Flags().String("namespace", "", "Namespace")
	_ = ImportStore1Cmd.MarkFlagRequired("namespace")
	ImportStore1Cmd.Flags().String("storeId", "", "Store id")
	ImportStore1Cmd.Flags().Bool("strictMode", false, "Strict mode")
}
