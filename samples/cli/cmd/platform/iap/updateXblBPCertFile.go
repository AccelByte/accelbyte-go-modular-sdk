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

// UpdateXblBPCertFileCmd represents the UpdateXblBPCertFile command
var UpdateXblBPCertFileCmd = &cobra.Command{
	Use:   "updateXblBPCertFile",
	Short: "Update xbl BP cert file",
	Long:  `Update xbl BP cert file`,
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
		password, _ := cmd.Flags().GetString("password")
		input := &iap.UpdateXblBPCertFileParams{
			File:      file,
			Password:  &password,
			Namespace: namespace,
		}
		ok, errOK := iapService.UpdateXblBPCertFileShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateXblBPCertFileCmd.Flags().String("file", "", "File")
	UpdateXblBPCertFileCmd.Flags().String("password", "", "Password")
	UpdateXblBPCertFileCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateXblBPCertFileCmd.MarkFlagRequired("namespace")
}
