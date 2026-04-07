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

// UploadRevocationPluginConfigCertV2Cmd represents the UploadRevocationPluginConfigCertV2 command
var UploadRevocationPluginConfigCertV2Cmd = &cobra.Command{
	Use:   "uploadRevocationPluginConfigCertV2",
	Short: "Upload revocation plugin config cert V2",
	Long:  `Upload revocation plugin config cert V2`,
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
		input := &service_plugin_config.UploadRevocationPluginConfigCertV2Params{
			File:      file,
			Namespace: namespace,
		}
		ok, errOK := servicePluginConfigService.UploadRevocationPluginConfigCertV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UploadRevocationPluginConfigCertV2Cmd.Flags().String("file", "", "File")
	UploadRevocationPluginConfigCertV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UploadRevocationPluginConfigCertV2Cmd.MarkFlagRequired("namespace")
}
