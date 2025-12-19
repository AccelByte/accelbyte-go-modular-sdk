// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package globalConfiguration

import (
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/global_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeleteGlobalConfigurationCmd represents the AdminDeleteGlobalConfiguration command
var AdminDeleteGlobalConfigurationCmd = &cobra.Command{
	Use:   "adminDeleteGlobalConfiguration",
	Short: "Admin delete global configuration",
	Long:  `Admin delete global configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalConfigurationService := &session.GlobalConfigurationService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &global_configuration.AdminDeleteGlobalConfigurationParams{}
		noContent, errNoContent := globalConfigurationService.AdminDeleteGlobalConfigurationShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success", "response", noContent)

		return nil
	},
}

func init() {
}
