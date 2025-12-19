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

// AdminDeletePlatformCredentialsByPlatformIdCmd represents the AdminDeletePlatformCredentialsByPlatformId command
var AdminDeletePlatformCredentialsByPlatformIdCmd = &cobra.Command{
	Use:   "adminDeletePlatformCredentialsByPlatformId",
	Short: "Admin delete platform credentials by platform id",
	Long:  `Admin delete platform credentials by platform id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformCredentialService := &session.PlatformCredentialService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &platform_credential.AdminDeletePlatformCredentialsByPlatformIDParams{
			Namespace:  namespace,
			PlatformID: platformId,
		}
		errNoContent := platformCredentialService.AdminDeletePlatformCredentialsByPlatformIDShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeletePlatformCredentialsByPlatformIdCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeletePlatformCredentialsByPlatformIdCmd.MarkFlagRequired("namespace")
	AdminDeletePlatformCredentialsByPlatformIdCmd.Flags().String("platformId", "", "Platform id")
	_ = AdminDeletePlatformCredentialsByPlatformIdCmd.MarkFlagRequired("platformId")
}
