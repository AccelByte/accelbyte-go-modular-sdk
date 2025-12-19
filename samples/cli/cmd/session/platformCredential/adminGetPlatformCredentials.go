// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformCredential

import (
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/platform_credential"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetPlatformCredentialsCmd represents the AdminGetPlatformCredentials command
var AdminGetPlatformCredentialsCmd = &cobra.Command{
	Use:   "adminGetPlatformCredentials",
	Short: "Admin get platform credentials",
	Long:  `Admin get platform credentials`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformCredentialService := &session.PlatformCredentialService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &platform_credential.AdminGetPlatformCredentialsParams{
			Namespace: namespace,
		}
		ok, errOK := platformCredentialService.AdminGetPlatformCredentialsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetPlatformCredentialsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlatformCredentialsCmd.MarkFlagRequired("namespace")
}
