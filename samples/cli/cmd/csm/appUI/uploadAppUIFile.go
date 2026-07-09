// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appUI

import (
	"log/slog"
	"os"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/app_ui"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UploadAppUIFileCmd represents the UploadAppUIFile command
var UploadAppUIFileCmd = &cobra.Command{
	Use:   "uploadAppUIFile",
	Short: "Upload app UI file",
	Long:  `Upload app UI file`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appUIService := &csm.AppUIService{
			Client: csm.NewCsmHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		outputFile := cmd.Flag("file").Value.String()
		slog.Info("file", "value", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		appUiName, _ := cmd.Flags().GetString("appUiName")
		namespace, _ := cmd.Flags().GetString("namespace")
		version, _ := cmd.Flags().GetString("version")
		input := &app_ui.UploadAppUIFileParams{
			File:      file,
			AppUIName: appUiName,
			Namespace: namespace,
			Version:   &version,
		}
		ok, errOK := appUIService.UploadAppUIFileShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UploadAppUIFileCmd.Flags().String("file", "", "File")
	_ = UploadAppUIFileCmd.MarkFlagRequired("file")
	UploadAppUIFileCmd.Flags().String("appUiName", "", "App ui name")
	_ = UploadAppUIFileCmd.MarkFlagRequired("appUiName")
	UploadAppUIFileCmd.Flags().String("namespace", "", "Namespace")
	_ = UploadAppUIFileCmd.MarkFlagRequired("namespace")
	UploadAppUIFileCmd.Flags().String("version", "", "Version")
}
