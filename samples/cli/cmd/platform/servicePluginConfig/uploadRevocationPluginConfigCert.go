// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package servicePluginConfig

import (
	"log/slog"
	"os"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/service_plugin_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UploadRevocationPluginConfigCertCmd represents the UploadRevocationPluginConfigCert command
var UploadRevocationPluginConfigCertCmd = &cobra.Command{
	Use:   "uploadRevocationPluginConfigCert",
	Short: "Upload revocation plugin config cert",
	Long:  `Upload revocation plugin config cert`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
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
		input := &service_plugin_config.UploadRevocationPluginConfigCertParams{
			File:      file,
			Namespace: namespace,
		}
		ok, errOK := servicePluginConfigService.UploadRevocationPluginConfigCertShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UploadRevocationPluginConfigCertCmd.Flags().String("file", "", "File")
	UploadRevocationPluginConfigCertCmd.Flags().String("namespace", "", "Namespace")
	_ = UploadRevocationPluginConfigCertCmd.MarkFlagRequired("namespace")
}
