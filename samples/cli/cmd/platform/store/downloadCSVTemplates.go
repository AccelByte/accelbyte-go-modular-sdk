// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"bytes"
	"log/slog"
	"os"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DownloadCSVTemplatesCmd represents the DownloadCSVTemplates command
var DownloadCSVTemplatesCmd = &cobra.Command{
	Use:   "downloadCSVTemplates",
	Short: "Download CSV templates",
	Long:  `Download CSV templates`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		file, errFile := os.Create("file")
		slog.Info("Output", "file", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &store.DownloadCSVTemplatesParams{
			Namespace: namespace,
		}
		ok, errOK := storeService.DownloadCSVTemplatesShort(input, writer)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DownloadCSVTemplatesCmd.Flags().String("namespace", "", "Namespace")
	_ = DownloadCSVTemplatesCmd.MarkFlagRequired("namespace")
}
