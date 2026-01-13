// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformCredential

import (
	"log/slog"
	"os"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/platform_credential"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUploadPlatformCredentialsCmd represents the AdminUploadPlatformCredentials command
var AdminUploadPlatformCredentialsCmd = &cobra.Command{
	Use:   "adminUploadPlatformCredentials",
	Short: "Admin upload platform credentials",
	Long:  `Admin upload platform credentials`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformCredentialService := &session.PlatformCredentialService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		outputFile := cmd.Flag("file").Value.String()
		slog.Info("file", "value", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		password, _ := cmd.Flags().GetString("password")
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		description, _ := cmd.Flags().GetString("description")
		input := &platform_credential.AdminUploadPlatformCredentialsParams{
			Description: &description,
			File:        file,
			Password:    password,
			Namespace:   namespace,
			PlatformID:  platformId,
		}
		errOK := platformCredentialService.AdminUploadPlatformCredentialsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUploadPlatformCredentialsCmd.Flags().String("description", "", "Description")
	AdminUploadPlatformCredentialsCmd.Flags().String("file", "", "File")
	_ = AdminUploadPlatformCredentialsCmd.MarkFlagRequired("file")
	AdminUploadPlatformCredentialsCmd.Flags().String("password", "", "Password")
	_ = AdminUploadPlatformCredentialsCmd.MarkFlagRequired("password")
	AdminUploadPlatformCredentialsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUploadPlatformCredentialsCmd.MarkFlagRequired("namespace")
	AdminUploadPlatformCredentialsCmd.Flags().String("platformId", "", "Platform id")
	_ = AdminUploadPlatformCredentialsCmd.MarkFlagRequired("platformId")
}
