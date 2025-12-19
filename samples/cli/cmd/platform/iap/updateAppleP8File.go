// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"log/slog"
	"os"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateAppleP8FileCmd represents the UpdateAppleP8File command
var UpdateAppleP8FileCmd = &cobra.Command{
	Use:   "updateAppleP8File",
	Short: "Update apple P8 file",
	Long:  `Update apple P8 file`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
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
		input := &iap.UpdateAppleP8FileParams{
			File:      file,
			Namespace: namespace,
		}
		ok, errOK := iapService.UpdateAppleP8FileShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateAppleP8FileCmd.Flags().String("file", "", "File")
	UpdateAppleP8FileCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateAppleP8FileCmd.MarkFlagRequired("namespace")
}
