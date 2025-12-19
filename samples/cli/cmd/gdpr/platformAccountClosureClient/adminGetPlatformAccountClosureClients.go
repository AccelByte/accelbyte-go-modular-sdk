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

// AdminGetPlatformAccountClosureClientsCmd represents the AdminGetPlatformAccountClosureClients command
var AdminGetPlatformAccountClosureClientsCmd = &cobra.Command{
	Use:   "adminGetPlatformAccountClosureClients",
	Short: "Admin get platform account closure clients",
	Long:  `Admin get platform account closure clients`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformAccountClosureClientService := &gdpr.PlatformAccountClosureClientService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &platform_account_closure_client.AdminGetPlatformAccountClosureClientsParams{
			Namespace: namespace,
		}
		ok, errOK := platformAccountClosureClientService.AdminGetPlatformAccountClosureClientsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetPlatformAccountClosureClientsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlatformAccountClosureClientsCmd.MarkFlagRequired("namespace")
}
