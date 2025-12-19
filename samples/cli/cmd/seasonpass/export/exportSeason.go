// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package export

import (
	"bytes"
	"log/slog"
	"os"

	seasonpass "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient/export"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ExportSeasonCmd represents the ExportSeason command
var ExportSeasonCmd = &cobra.Command{
	Use:   "exportSeason",
	Short: "Export season",
	Long:  `Export season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		exportService := &seasonpass.ExportService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		file, errFile := os.Create("file")
		slog.Info("Output", "file", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &export.ExportSeasonParams{
			Namespace: namespace,
		}
		ok, errOK := exportService.ExportSeasonShort(input, writer)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ExportSeasonCmd.Flags().String("namespace", "", "Namespace")
	_ = ExportSeasonCmd.MarkFlagRequired("namespace")
}
