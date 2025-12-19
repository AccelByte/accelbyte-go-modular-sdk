// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformAccountClosureClient

import (
	"log/slog"

	gdpr "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/platform_account_closure_client"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeletePlatformAccountClosureClientCmd represents the AdminDeletePlatformAccountClosureClient command
var AdminDeletePlatformAccountClosureClientCmd = &cobra.Command{
	Use:   "adminDeletePlatformAccountClosureClient",
	Short: "Admin delete platform account closure client",
	Long:  `Admin delete platform account closure client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformAccountClosureClientService := &gdpr.PlatformAccountClosureClientService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platform, _ := cmd.Flags().GetString("platform")
		input := &platform_account_closure_client.AdminDeletePlatformAccountClosureClientParams{
			Namespace: namespace,
			Platform:  platform,
		}
		errNoContent := platformAccountClosureClientService.AdminDeletePlatformAccountClosureClientShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeletePlatformAccountClosureClientCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeletePlatformAccountClosureClientCmd.MarkFlagRequired("namespace")
	AdminDeletePlatformAccountClosureClientCmd.Flags().String("platform", "", "Platform")
	_ = AdminDeletePlatformAccountClosureClientCmd.MarkFlagRequired("platform")
}
